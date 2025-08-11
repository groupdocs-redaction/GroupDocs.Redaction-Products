---
############################# Static ############################
layout: "landing"
date: 2025-08-11T19:33:04
draft: false

lang: ko
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Drop-down ############################
supported_platforms:
  items:
    # supported_platforms loop
    - title: ".NET"
      tag: "net"
    # supported_platforms loop
    - title: "Java"
      tag: "java"
    # supported_platforms loop
    - title: "Python"
      tag: "python-net"

############################# Head ############################
head_title: "Python을 사용하여 문서에서 기밀 정보 지우기"
head_description: "GroupDocs.Redaction for Python via .NET을 사용하여 파일을 안전하게 지키십시오. PDF, Word, Excel, PowerPoint 및 이미지 파일에서 민감한 콘텐츠를 신속하게 레드랙션, 숨기거나 삭제할 수 있습니다."

############################# Header ############################
title: "GroupDocs.Redaction으로 문서 안전하게 유지하기"
description: "고급 Python 툴킷을 사용하여 PDF, 오피스 파일 및 이미지에서 개인 데이터를 쉽게 제거하고 텍스트를 레드랙션하며 숨겨진 메타데이터를 정리합니다."
words:
  for: "을 위한"

actions:
  main: "PyPi 다운로드"
  main_link: "https://pypi.org/project/groupdocs-redaction-net/"
  alt: "라이센스"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
  title: "시작할 준비가 되셨나요?"
  description: "GroupDocs.Redaction 기능을 무료로 사용해 보거나 라이센스를 요청하세요."

release:
  title: "{0} 버전 출시됨"
  notes: "새로운 기능보기"
  downloads: "다운로드"

code:
  title: "문서 콘텐츠 레드랙션"
  more: "더 많은 예시"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
  install: "pip install groupdocs-redaction-net"
  content: |
    ```python {style=abap}
    import groupdocs.redaction as gr
    import groupdocs.redaction.redactions as grr

    def run():

        # 레드랙션 매개변수를 조정합니다.
        repl_opt = grr.ReplacementOptions("[redacted]")
        red = grr.ExactPhraseRedaction("Data", repl_opt)

        # 파일을 Redactor 인스턴스에 로드합니다.
        with gr.Redactor("sample.pdf") as redactor:

            # 레드랙션 과정을 시작합니다.
            result = redactor.apply(red)
        
            # 정리된 파일을 내보냅니다.
            result_path = redactor.save()
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction 개요"
  description: "Python 프로젝트에 강력한 레드랙션 기능을 통합하십시오."
  features:
    # feature loop
    - title: "민감한 텍스트 레드랙션"
      content: "GroupDocs.Redaction for Python via .NET을 사용하여 민감한 단어 또는 구를 자동으로 찾고 덮을 수 있습니다. PDF, Word 문서 및 기타 형식에서 텍스트를 교체하거나 마스킹하여 보호합니다."

    # feature loop
    - title: "이미지 숨기기"
      content: "기술이 이미지를 감지하고 선택한 기준에 따라 흐리게 하거나 숨기거나 차단할 수 있습니다. 특정 지역을 정의하거나 완전한 제어를 위해 자동 감지를 허용합니다."

    # feature loop
    - title: "숨겨진 메타데이터 제거"
      content: "저자 또는 장치 정보와 같은 메타데이터에 숨겨진 개인 또는 추적 세부 정보를 제거합니다. GroupDocs.Redaction for Python via .NET은 문서가 완전히 정리되도록 보장합니다."

    # feature loop
    - title: "특별한 요소 레드랙션"
      content: "텍스트를 넘어서 주석, 주석 및 기타 파일 특정 요소를 레드랙션하여 완전한 기밀성을 달성합니다."

############################# Platforms ############################
platforms:
  enable: true
  title: "플랫폼 독립성"
  description: "GroupDocs.Redaction for Python via .NET은 모든 주요 운영 체제에서 작동하며, 인기 있는 프레임워크 및 일반 패키지 관리자와 통합됩니다."
  items:
    # platform loop
    - title: "Amazon"
      image: "amazon"
    # platform loop
    - title: "Docker"
      image: "docker"
    # platform loop
    - title: "Azure"
      image: "azure"
    # platform loop
    - title: "VS Code"
      image: "vs_code"
    # platform loop
    - title: "ReSharper"
      image: "resharper"
    # platform loop
    - title: "macOS"
      image: "finder"
    # platform loop
    - title: "Linux"
      image: "linux"
    # platform loop
    - title: "NuGet"
      image: "nuget"

############################# File formats ############################
formats:
  enable: true
  title: "지원되는 파일 형식"
  description: |
    GroupDocs.Redaction for Python via .NET은 다음 [파일 형식](https://docs.groupdocs.com/redaction/python-net/supported-document-formats/)을 지원합니다.
  groups:
    # group loop
    - color: "green"
      content: |
        ### MS 오피스 형식
        * **Word:** DOCX, DOC, DOCM, DOT, DOTX, DOTM,
        * **Excel:** XLSX, XLS, XLSM, XLSB, 
        * **PowerPoint:** PPT, PPTX
    # group loop
    - color: "blue"
      content: |
        ### 기타 오피스 형식
        * **이동식:** PDF 
        * **OpenDocument:** ODT, ODS, OTS, ODP, OTT
        * **텍스트 형식:** RTF, CSV, TXT, TSV
      # group loop
    - color: "red"
      content: |
        ### 기타 형식
        * **웹:** HTM, HTML, MD
        * **이미지:** BMP, GIF, JPEG, PNG, TIFF, WEBP
        * **전자책:** DJVU 
        
        

############################# Features ############################
features:
  enable: true
  title: "GroupDocs.Redaction for Python via .NET의 주요 기능"
  description: "PDF, 이미지 및 오피스 파일에서 민감한 콘텐츠를 쉽고 빠르게 스캔, 찾아 레드랙션합니다."

  items:
    # feature loop
    - icon: "search"
      title: "사용자 맞춤형 검색"
      content: "정확한 일치 또는 키워드를 제거하기 위해 유연한 검색 모드를 사용하십시오."

    # feature loop
    - icon: "text"
      title: "텍스트 찾기, 교체 또는 삭제"
      content: "민감한 데이터를 찾고 안전한 텍스트로 대체하거나 완전히 지웁니다."

    # feature loop
    - icon: "image"
      title: "시각적 마스킹"
      content: "색상 있는 도형이나 패턴을 덮어 레드랙션된 부분을 시각적으로 가립니다."

    # feature loop
    - icon: "search"
      title: "Regex 기반 탐지"
      content: "고급 텍스트 검색에서 정확한 탐지를 위해 정규식을 활용합니다."

    # feature loop
    - icon: "table"
      title: "대상 레드랙션"
      content: "특정 페이지나 정의된 영역에만 레드랙션을 적용하여 시간을 아끼고 주요 영역에 집중합니다."

    # feature loop
    - icon: "template"
      title: "메타데이터 정리"
      content: "파일에서 작성자, 회사 또는 타임스탬프와 같은 메타데이터 필드를 쉽게 지웁니다."

    # feature loop
    - icon: "pdf"
      title: "수출 옵션"
      content: "처리된 문서를 PDF 또는 다른 호환 형식으로 레이아웃 무결성을 잃지 않고 저장합니다."

    # feature loop
    - icon: "template"
      title: "전체 메타데이터 삭제"
      content: "데이터 보호 최대화를 위해 한 번의 클릭으로 모든 임베디드 메타데이터를 지웁니다."

    # feature loop
    - icon: "hyperlink"
      title: "재사용 가능한 XML 정책"
      content: "미래 작업 자동화를 위해 맞춤 레드랙션 구성을 XML 템플릿으로 저장합니다."


############################# Code samples ############################
code_samples:
  enable: true
  title: "코드 샘플"
  description: "GroupDocs.Redaction for Python via .NET이 레드랙션 작업을 어떻게 단순화하는지 탐색하십시오."
  items:
    # code sample loop
    - title: "정규식 기반 텍스트 레드랙션"
      content: |
        개발자는 Python를 사용하여 [정규식 기반 규칙](https://docs.groupdocs.com/redaction/python-net/text-redactions/#use-regular-expression)을 적용해 민감한 텍스트를 찾아 이미지 마스크로 덮을 수 있습니다:
        {{< landing/code title="정규식을 사용한 Word 문서 레드랙션">}}
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr
        import groupdocs.pydrawing as grd

        def run():

            # 정규식을 사용하여 레드랙션 규칙을 정의합니다.
            color = grd.Color.from_argb(255, 220, 20, 60)
            repl_opt = grr.ReplacementOptions(color)
            reg_red = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

            # Redactor 클래스를 인스턴스화합니다.
            with gr.Redactor("source.docx") as redactor:

                # 모든 일치하는 텍스트를 파란색 사각형 오버레이로 마스킹합니다.
                result = redactor.apply(reg_red)
        
                # 레드랙션된 Word 문서를 저장합니다.
                redactor.save()
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "메타데이터 제거"
      content: |
        API를 사용하여 [메타데이터를 지우는 방법](https://docs.groupdocs.com/redaction/python-net/metadata-redactions/#clean-metadata)을 지원되는 여러 파일 유형으로 제거할 수 있습니다.
        {{< landing/code title="프레젠테이션에서 모든 메타데이터 제거">}}
        ```python {style=abap}   
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # 레드랙션 옵션을 구성합니다.
        red = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Redactor에 프레젠테이션의 경로를 제공합니다.
        with gr.Redactor("source.pptx") as redactor:

            # 프레젠테이션에서 모든 메타데이터를 삭제합니다.
            result = redactor.apply(red)
        
            # 정리된 프레젠테이션 파일을 저장합니다.
            redactor.save()
        ```
        {{< /landing/code >}}

---
