#:_______________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  LGPLv3  |
#:_______________________________________________________
# @deps std
import std/strutils
import std/os
# @deps wgpu
import wgpu/extras/shaders/wgsl/preprocess/includes
# @deps tests
import minitest

const casesDir = currentSourcePath().parentDir()/"cases"

describe "Includes should":
  it "must add the contents of the file in the @include directive":
    let includerFilename = casesDir/"include_once.wgsl"
    let includedFilename = casesDir/"singleline.wgsl"

    let expectedCode = """
    before
    single line inclusion
    after
    """.dedent()

    let expectedAnnotations = @[
      LineAnnotation(line: 1, filename: includerFilename),
      LineAnnotation(line: 1, filename: includedFilename),
      LineAnnotation(line: 3, filename: includerFilename),
    ]

    let (resolvedCode, annotations) = resolve(includerFilename)

    check resolvedCode == expectedCode
    check annotations == expectedAnnotations

  it "must @include the same file only once":
    let includerFilename = casesDir/"include_twice.wgsl"
    let includedFilename = casesDir/"singleline.wgsl"

    let expectedCode = """
    before
    single line inclusion
    after
    """.dedent()

    let expectedAnnotations = @[
      LineAnnotation(line: 1, filename: includerFilename),
      LineAnnotation(line: 1, filename: includedFilename),
      LineAnnotation(line: 4, filename: includerFilename),
    ]

    let (resolvedCode, annotations) = resolve(includerFilename)

    expect resolvedCode == expectedCode
    expect annotations == expectedAnnotations

  it "must properly annotate line numbers":
    let includerFilename = casesDir/"include_multiline.wgsl"
    let includedFilename = casesDir/"multiline.wgsl"

    let expectedCode = """
    before
    multiple
    lines
    inclusion
    after
    """.dedent()

    let expectedAnnotations = @[
      LineAnnotation(line: 1, filename: includerFilename),
      LineAnnotation(line: 1, filename: includedFilename),
      LineAnnotation(line: 2, filename: includedFilename),
      LineAnnotation(line: 3, filename: includedFilename),
      LineAnnotation(line: 3, filename: includerFilename),
    ]

    let (resolvedCode, annotations) = resolve(includerFilename)

    expect resolvedCode == expectedCode
    expect annotations == expectedAnnotations

  it "must ignore circular inclusions for already included files":
    let circularInclusionFilename1 = casesDir/"include_circular1.wgsl"
    let circularInclusionFilename2 = casesDir/"include_circular2.wgsl"
    let circularInclusionFilename3 = casesDir/"include_circular3.wgsl"

    let expectedCode = """
    begin circular inclusion 1
    begin circular inclusion 2
    begin circular inclusion 3
    end circular inclusion 3
    end circular inclusion 2
    end circular inclusion 1
    """.dedent()

    let expectedAnnotations = @[
      LineAnnotation(line: 1, filename: circularInclusionFilename1),
      LineAnnotation(line: 1, filename: circularInclusionFilename2),
      LineAnnotation(line: 1, filename: circularInclusionFilename3),
      LineAnnotation(line: 3, filename: circularInclusionFilename3),
      LineAnnotation(line: 3, filename: circularInclusionFilename2),
      LineAnnotation(line: 3, filename: circularInclusionFilename1),
    ]

    let (resolvedCode, annotations) = resolve(circularInclusionFilename1)

    expect resolvedCode == expectedCode
    expect annotations == expectedAnnotations

  it "must fail to include non-existing files":
    let nonExistingFile = "non-existing.wgsl"
    expect nonExistingFile.fileExists() == false

    try:
      let _ = resolve(nonExistingFile)
      fail()
    except IOError:
      let e = getCurrentException()
      check e.msg == "cannot open: " & nonExistingFile
    except Exception:
      fail()

  it "end": echo ""

