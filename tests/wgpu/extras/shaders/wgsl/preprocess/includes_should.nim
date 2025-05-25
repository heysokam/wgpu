import unittest
import strutils
import ../../../../../../src/wgpu/extras/shaders/wgsl/preprocess/includes

suite "Includes should":
  test "add the contents of the file in the @include directive":
    let includerFilename = "tests/include_cases/include_once.wgsl"
    let includedFilename = "tests/include_cases/single_line_inclusion.wgsl"

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

  test "@include the same file only once":
    let includerFilename = "tests/include_cases/include_twice.wgsl"
    let includedFilename = "tests/include_cases/single_line_inclusion.wgsl"

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

    check resolvedCode == expectedCode
    check annotations == expectedAnnotations

  test "properly annotate line numbers":
    let includerFilename = "tests/include_cases/include_multi_line.wgsl"
    let includedFilename = "tests/include_cases/multi_line_inclusion.wgsl"

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

    check resolvedCode == expectedCode
    check annotations == expectedAnnotations

  test "resolve circular inclusions ignoring already included files":
    let circularInclusionFilename1 = "tests/include_cases/circular_inclusion_1.wgsl"
    let circularInclusionFilename2 = "tests/include_cases/circular_inclusion_2.wgsl"
    let circularInclusionFilename3 = "tests/include_cases/circular_inclusion_3.wgsl"

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

    check resolvedCode == expectedCode
    check annotations == expectedAnnotations

  test "fail to include non-existing files":
    let nonExistingFile = "non-existing.wgsl"

    try:
      let _ = resolve(nonExistingFile)
      fail()
    except IOError:
      let e = getCurrentException()
      check e.msg == "cannot open: " & nonExistingFile
    except Exception:
      fail()

  test "end":
    echo ""
