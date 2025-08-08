---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: ko
product: "Redaction"
product_tag: "redaction"
platform: "Net"
platform_tag: "net"

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
head_title: ".NET를 사용하여 문서에서 민감한 데이터 레드랙션"
head_description: "GroupDocs.Redaction for .NET으로 비즈니스 문서를 보호하세요. PDF, Word, Excel, PowerPoint 및 이미지 파일에서 기밀 콘텐츠를 쉽게 레드랙션, 숨기거나 삭제할 수 있습니다."

############################# Header ############################
title: "GroupDocs.Redaction로 콘텐츠 보호"
description: "PDF, Word 문서, 스프레드시트, 프레젠테이션 및 이미지에서 민감한 정보와 메타데이터를 레드랙션, 숨기거나 영구적으로 제거하는 강력한 .NET 솔루션입니다."
words:
  for: "을 위한"

actions:
  main: "Nuget 다운로드"
  main_link: "https://www.nuget.org/packages/GroupDocs.Redaction"
  alt: "라이센스"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/net/"
  title: "시작할 준비가 되셨나요?"
  description: "GroupDocs.Redaction 기능을 무료로 사용해 보거나 라이센스를 요청하세요."

release:
  title: "{0} 버전 출시됨"
  notes: "새로운 기능보기"
  downloads: "다운로드"

code:
  title: "파일 콘텐츠 레드랙션 방법"
  more: "더 많은 예시"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
  install: "dotnet add package GroupDocs.Redaction"
  content: |
    ```csharp {style=abap}   
    // 입력 파일을 Redactor 인스턴스에 전달합니다.
    using (Redactor redactor = new Redactor("source.pdf"))
    {
        // 레드랙션 옵션을 구성합니다.
        var repl_opt = new ReplacementOptions("[redacted]");
        var red = new ExactPhraseRedaction("Data", repl_opt);

        // 레드랙션 처리 과정을 실행합니다.
        RedactorChangeLog result = redactor.Apply(red);

        // 레드랙션된 파일을 저장합니다.
        if (result.Status != RedactionStatus.Failed)
        {
            redactor.Save();
        }
    }  
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction 개요"
  description: ".NET 애플리케이션에 전문가 수준의 콘텐츠 레드랙션을 추가하세요."
  features:
    # feature loop
    - title: "텍스트 콘텐츠 레드랙션"
      content: "GroupDocs.Redaction for .NET는 민감한 텍스트를 찾아서 레드랙션할 수 있도록 합니다. 텍스트는 색상이 다른 이미지 오버레이를 사용하여 교체되거나 숨길 수 있습니다. PDF 및 오피스 문서 등 다양한 형식에서 지원되며, 개인 데이터를 보호하고 비즈니스 규정을 준수하는 데 도움을 줍니다."

    # feature loop
    - title: "이미지 레드랙션"
      content: "문서 페이지에서 이미지를 완전하거나 부분적으로 자동으로 감지하고 레드랙션합니다. 민감한 비주얼 콘텐츠를 효과적으로 마스크하기 위해 검색 기준 및 타겟 영역을 지정합니다."

    # feature loop
    - title: "파일 메타데이터 관리"
      content: "많은 파일 형식에는 Word 파일 내 저자 이름이나 이미지의 EXIF 데이터와 같은 숨겨진 메타데이터가 포함되어 있습니다. GroupDocs.Redaction for .NET을 사용하면 전체 데이터 프라이버시를 보장하기 위해 이 정보를 쉽게 찾아서 레드랙션할 수 있습니다."

    # feature loop
    - title: "문서 객체 레드랙션"
      content: "주석, 댓글 및 PDF와 같은 형식의 임베디드 객체와 같은 문서 특정 요소를 레드랙션하여 완전한 콘텐츠 보호를 보장합니다."

############################# Platforms ############################
platforms:
  enable: true
  title: "플랫폼 독립성"
  description: "GroupDocs.Redaction for .NET은 다양한 운영 체제, 개발 프레임워크 및 패키지 관리자와 호환됩니다."
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
    GroupDocs.Redaction for .NET은 제공된 [파일 형식](https://docs.groupdocs.com/redaction/net/supported-document-formats/)으로 작업하는 것을 지원합니다.
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
  title: "GroupDocs.Redaction for .NET 기능"
  description: "PDF, 오피스 파일 및 이미지에서 고속과 정확도로 데이터를 추출하고 레드랙션합니다."

  items:
    # feature loop
    - icon: "search"
      title: "유연한 검색"
      content: "문서 내 특정 구 또는 용어를 레드랙션하기 위해 대소문자 구분 또는 대소문자 무시 검색을 수행합니다."

    # feature loop
    - icon: "text"
      title: "텍스트 교체 또는 제거"
      content: "문서 전반에서 민감한 텍스트를 찾아 교체하거나 삭제합니다."

    # feature loop
    - icon: "image"
      title: "이미지로 텍스트 숨기기"
      content: "텍스트를 교체하는 대신 색상이 있는 이미지 오버레이를 사용하여 시각적으로 레드랙션된 내용을 마스킹합니다."

    # feature loop
    - icon: "search"
      title: "고급 검색 기능"
      content: "정규식을 사용하여 복잡한 데이터 세트 전반에서 정확하고 유연한 콘텐츠 레드랙션을 수행합니다."

    # feature loop
    - icon: "table"
      title: "범위 제한 레드랙션"
      content: "특정 페이지 또는 정의된 페이지 영역을 타겟팅하여 관련 섹션에만 레드랙션을 한정합니다."

    # feature loop
    - icon: "template"
      title: "메타데이터 레드랙션"
      content: "문서 소유권 및 작성 세부 정보를 보호하기 위해 메타데이터 속성을 찾아 레드랙션합니다."

    # feature loop
    - icon: "pdf"
      title: "유연한 출력 형식"
      content: "레이아웃 무결성을 유지하면서 PDF 또는 지원되는 형식으로 레드랙션된 파일을 내보냅니다."

    # feature loop
    - icon: "template"
      title: "완전한 메타데이터 삭제"
      content: "단일 작업으로 문서의 모든 메타데이터를 삭제하여 절대적인 프라이버시를 보장합니다."

    # feature loop
    - icon: "hyperlink"
      title: "XML 기반 레드랙션 규칙"
      content: "여러 파일에서 일관된 자동 처리할 수 있도록 XML 형식으로 레드랙션 정책을 정의합니다."


############################# Code samples ############################
code_samples:
  enable: true
  title: "코드 샘플"
  description: "GroupDocs.Redaction for .NET의 일반 사용 예시입니다"
  items:
    # code sample loop
    - title: "정규식을 사용한 레드랙션"
      content: |
        GroupDocs.Redaction for .NET은 C# 개발자가 [정규식을 사용하여 레드랙션](https://docs.groupdocs.com/redaction/net/text-redactions/#use-regular-expression)하고 이미지 오버레이로 숨길 수 있도록 합니다:
        {{< landing/code title="정규식을 사용한 Word 문서 레드랙션">}}
        ```csharp {style=abap}
        // Redactor 클래스를 인스턴스화합니다.
        using (Redactor redactor = new Redactor("source.docx"))
        {
            // 정규식을 사용하여 레드랙션 규칙을 정의합니다.
            var replacement = new ReplacementOptions(System.Drawing.Color.Blue);
            var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);
            
            // 모든 일치하는 텍스트를 파란색 사각형 오버레이로 마스킹합니다.
            redactor.Apply(redaction);

            // 레드랙션된 Word 문서를 저장합니다.
            redactor.Save();
        }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "메타데이터 정리"
      content: |
        API를 사용하면 지원되는 파일 형식의 모든 메타데이터를 [쉽게 제거](https://docs.groupdocs.com/redaction/net/metadata-redactions/#clean-metadata)할 수 있습니다:
        {{< landing/code title="프레젠테이션에서 모든 메타데이터 제거">}}
        ```csharp {style=abap}   
        // Redactor에 프레젠테이션의 경로를 제공합니다.
        using (Redactor redactor = new Redactor("source.pptx"))
        {
            // 레드랙션 옵션을 구성합니다.
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // 프레젠테이션에서 모든 메타데이터를 삭제합니다.
            redactor.Apply(redaction);

            // 정리된 프레젠테이션 파일을 저장합니다.
            redactor.Save();
        }
        ```
        {{< /landing/code >}}

---
