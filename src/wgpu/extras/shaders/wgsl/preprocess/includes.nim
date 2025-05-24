#:_______________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  LGPLv3  |
#:_______________________________________________________
## @fileoverview
## `@include` resolver implementation for wgsl shaders.
##  - Resolution is recursive, nested includes will work.
##  - Each file is imported only once.
##  - Circular includes are ignored.
##
## On a .wgsl file:
##   Use '@include path/to/your/library_code', without the wgsl extension.
##   The preprocessor will pull 'path/to/your/library_code.wgsl', and all its contents/dependencies, into your shader.
##
## Resolve imports on your nim code with:
## ```nim
## let (resolvedCode, lineAnnotations) = wgsl.resolveIncludes("path/to/your/shader.wgsl")
## ```
##
## When compilation fails, the error message can be remapped to proper file names and lines using:
## ```nim
## let remappedError = wgsl.remapErrors(errorMessage, lineAnnotations)
## ```

# @deps std
import std/strformat
import std/strutils
import std/re
import std/sets


type LineAnnotation* = object
  line*: int
  filename*: string

#_______________________________________
# @section Prototypes
#_____________________________
proc resolve( filename: string, imported: var HashSet[string]): (string, seq[LineAnnotation])
proc remapErrorHeaders(error: string, mappings: seq[LineAnnotation]): string
proc remapErrorLineNumbers(error: string, mappings: seq[LineAnnotation]): string

#_______________________________________
# @section Api
#_____________________________
proc resolveImports*(filename: string): (string, seq[LineAnnotation]) =
  ## @descr
  ##  Resolves all @import statements in the [filename] WGSL shader file.
  ##  Returns a tuple containing the resolved shader code and line number mappings.
  var imported: HashSet[string] = initHashSet[string]()
  return resolve(filename, imported)

proc remapErrors*(error: string, mappings: seq[LineAnnotation]): string =
  ## @descr
  ##  Remaps error messages to reference original source files and line numbers.
  ##  Receives the error message and the line number mappings.
  ##  Returns the remapped error message with correct file references and line numbers.
  error
    .remapErrorHeaders(mappings)
    .remapErrorLineNumbers(mappings)

#_______________________________________
# @section Implementation
#_____________________________
proc resolve(
  filename: string, 
  imported: var HashSet[string]
): (string, seq[LineAnnotation]) =
  if filename in imported:
    return ("", @[])

  imported.incl(filename)

  var resolvedCode = ""
  var annotations: seq[LineAnnotation] = @[]
  let code = readFile(filename).split("\n")

  for number, line in code:
    let strippedLine = line.strip()

    if not strippedLine.startsWith("@import"):
      annotations.add(LineAnnotation(line: number + 1, filename: filename))
      resolvedCode &= line & "\n"
    else:
      let toImport = strippedLine.split(" ")[1].strip()
      let (importedCode, importedAnnotations) = resolve(toImport & ".wgsl", imported)
      resolvedCode &= importedCode
      annotations.add(importedAnnotations)

  return (resolvedCode, annotations)
#___________________
proc remapErrorHeaders(error: string, mappings: seq[LineAnnotation]): string =
  result = error
  let pattern = re"(wgsl):(\d+):(\d+)"
  var matches: array[3, string]
  var position = 0

  while position < result.len:
    let matchPos = result.find(pattern, matches, position)

    if matchPos == -1:
      break

    let line = parseInt(matches[1])
    let column = parseInt(matches[2])

    let beforeMatch = result[0..<matchPos]
    let matchLen = matches[0].len + matches[1].len + matches[2].len + 2
    let afterMatch = result[matchPos + matchLen..^1]
    let mapping = mappings[line - 1]

    let replacement = fmt"{mapping.filename}:{mapping.line}:{column}"

    result = fmt"{beforeMatch}{replacement}{afterMatch}"
    position = matchPos + replacement.len

  return result
#___________________
proc remapErrorLineNumbers(error: string, mappings: seq[LineAnnotation]): string =
  result = error
  let pattern = re"([ ]*)(\d+)[ ]│"
  var matches: array[2, string]
  var position = 0

  while position < result.len:
    let matchPos = result.find(pattern, matches, position)

    if matchPos == -1:
      break

    let lineString = matches[1]
    let line = parseInt(lineString)

    let beforeMatch = result[0..<matchPos]
    let matchLen = matches[0].len + lineString.len + " │".len
    let afterMatch = result[matchPos + matchLen..^1]
    let mapping = mappings[line - 1]

    let padding = " ".repeat(matchLen)
    let replacement = fmt"{padding}{mapping.line} │"
    let paddedReplacement = replacement.substr(replacement.len - matchLen, replacement.len - 1)

    result = fmt"{beforeMatch}{paddedReplacement}{afterMatch}"
    position = matchPos + replacement.len

  return result
