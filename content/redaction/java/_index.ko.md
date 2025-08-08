---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: ko
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

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
head_title: "Java를 사용하여 문서에서 기밀 데이터 제거"
head_description: "GroupDocs.Redaction for Java으로 민감한 정보를 보호하십시오. PDF, 오피스 파일 및 이미지에서 개인 콘텐츠를 숨기고 레드랙션하거나 삭제합니다."

############################# Header ############################
title: "GroupDocs.Redaction로 기밀 데이터 보호"
description: "신뢰할 수 있는 Java 툴킷을 사용하여 PDF, Word, Excel, PowerPoint 및 이미지 형식에서 개인 데이터를 쉽게 제거하고 텍스트를 레드랙션하며 메타데이터를 정리하십시오."
words:
  for: "을 위한"

actions:
  main: "Maven 다운로드"
  main_link: "https://releases.groupdocs.com/java/repo/com/groupdocs/groupdocs-redaction/"
  alt: "라이센스"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/java/"
  title: "시작할 준비가 되셨나요?"
  description: "GroupDocs.Redaction 기능을 무료로 사용해 보거나 라이센스를 요청하세요."

release:
  title: "{0} 버전 출시됨"
  notes: "새로운 기능보기"
  downloads: "다운로드"

code:
  title: "문서 콘텐츠 레드랙션 단계"
  more: "더 많은 예시"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
  install: |
    <dependency>
      <groupId>com.groupdocs</groupId>
      <artifactId>groupdocs-redaction</artifactId>
      <version>{0}</version>
    </dependency>
  content: |
    ```java {style=abap}  
    // Redactor 인스턴스로 소스 파일을 로드합니다.
    final Redactor redactor = new Redactor("sample.pdf");
    try
    {
        // 레드랙션 기준 및 설정을 정의합니다.
        ReplacementOptions ro = new ReplacementOptions("[redacted]");
        ExactPhraseRedaction red = new ExactPhraseRedaction("Data", ro);

        // 레드랙션 작업을 실행합니다.
        RedactorChangeLog result = redactor.apply(red);

        // 레드랙션을 적용한 파일을 저장합니다.
        redactor.save();
    }
    finally { redactor.close(); }
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction 개요"
  description: "Java 애플리케이션에 전문가 레드랙션 도구를 통합하세요."
  features:
    # feature loop
    - title: "민감한 텍스트 제거"
      content: "GroupDocs.Redaction for Java를 사용하면 개인 텍스트를 검색하고 사용자 지정 오버레이 또는 교체를 사용하여 숨길 수 있습니다. PDF, Word, Excel 및 기타 형식과 호환되며, 규정 준수 및 안전한 문서 공유에 적합합니다."

    # feature loop
    - title: "이미지 숨기기"
      content: "요구 사항에 따라 이미지를 완전하거나 부분적으로 식별하고 마스킹합니다. 감지 규칙 및 영역 좌표를 정의하여 비주얼 데이터를 효율적으로 보호합니다."

    # feature loop
    - title: "임베디드 메타데이터 정리"
      content: "파일에는 저자 이름, 생성 도구 또는 장치 세부 정보와 같은 숨겨진 정보가 포함될 수 있습니다. GroupDocs.Redaction for Java는 Word, Excel, 이미지 및 기타 형식에서 메타데이터를 감지하고 정리할 수 있게 해줍니다."

    # feature loop
    - title: "임베디드 객체 레드랙션"
      content: "PDF 주석, 댓글 및 기타 임베디드 항목을 레드랙션하여 문서를 철저하게 정리하여 기밀 정보가 남지 않게 합니다."

############################# Platforms ############################
platforms:
  enable: true
  title: "플랫폼 독립성"
  description: "GroupDocs.Redaction for Java은 주요 운영 체제, 프레임워크 및 개발 플랫폼에서 작동합니다."
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
    - title: "Eclipse"
      image: "eclipse"
    # platform loop
    - title: "IntelliJ"
      image: "intellij"
    # platform loop
    - title: "Windows"
      image: "windows"
    # platform loop
    - title: "Linux"
      image: "linux"
    # platform loop
    - title: "Maven"
      image: "maven"

############################# File formats ############################
formats:
  enable: true
  title: "지원되는 파일 형식"
  description: |
    GroupDocs.Redaction for Java은 제공된 [파일 형식](https://docs.groupdocs.com/redaction/java/supported-document-formats/)으로 작업하는 것을 지원합니다.
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
  title: "GroupDocs.Redaction로 할 수 있는 일"
  description: "PDF, 오피스 문서 및 이미지에서 내용을 빠르게 찾아서 레드랙션합니다."

  items:
    # feature loop
    - icon: "search"
      title: "정확한 검색"
      content: "대소문자 구분 및 대소문자 무시 검색 모드를 통해 정확한 일치를 찾아 레드랙션합니다."

    # feature loop
    - icon: "text"
      title: "텍스트 찾기 및 교체"
      content: "문서 전반에서 기밀 텍스트를 자동으로 감지하고 대체하거나 삭제합니다."

    # feature loop
    - icon: "image"
      title: "사용자 지정 이미지로 오버레이하기"
      content: "텍스트를 마스킹하기 위해 이미지 블록을 사용하고, 레이아웃을 보존하면서 세부정보를 숨깁니다."

    # feature loop
    - icon: "search"
      title: "고급 레드랙션에 Regex 사용"
      content: "복잡한 패턴을 감지하고 지능적으로 레드랙션하기 위해 정규식을 활용합니다."

    # feature loop
    - icon: "table"
      title: "특정 영역 레드랙션"
      content: "정확한 타겟팅을 통해 선택한 페이지 또는 구역에만 레드랙션을 제한합니다."

    # feature loop
    - icon: "template"
      title: "메타데이터 필드 청소"
      content: "작성자, 회사 또는 추적 데이터와 같은 문서 메타데이터를 식별하고 정리합니다."

    # feature loop
    - icon: "pdf"
      title: "원하는 형식으로 내보내기"
      content: "레이아웃 무결성을 잃지 않고 PDF 또는 다른 지원 형식으로 레드랙션된 파일을 저장합니다."

    # feature loop
    - icon: "template"
      title: "모든 메타데이터 지우기"
      content: "한 번의 명령으로 지원되는 파일에서 메타데이터를 완전히 제거합니다."

    # feature loop
    - icon: "hyperlink"
      title: "자동화된 레드랙션 정책"
      content: "일관된 배치 레드랙션을 위해 XML에 저장된 재사용 가능한 레드랙션 구성을 생성합니다."


############################# Code samples ############################
code_samples:
  enable: true
  title: "코드 샘플"
  description: "GroupDocs.Redaction for Java 일반 사용 사례 예제입니다."
  items:
    # code sample loop
    - title: "정규식을 사용한 레드랙션"
      content: |
        GroupDocs.Redaction for Java은 Java 개발자가 [정규식을 사용하여 레드랙션](https://docs.groupdocs.com/redaction/java/text-redactions/#use-regular-expression)하고 선택적으로 이미지 마스킹을 적용할 수 있도록 합니다:
        {{< landing/code title="정규식을 사용한 Word 문서 레드랙션">}}
        ```java {style=abap}
        // Redactor 클래스를 인스턴스화합니다.
        final Redactor redactor = new Redactor("source.docx");
        try
        {
            // 정규식을 사용하여 레드랙션 규칙을 정의합니다.
            ReplacementOptions replacement = new ReplacementOptions(java.awt.Color.BLUE);
            RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);

            // 모든 일치하는 텍스트를 파란색 사각형 오버레이로 마스킹합니다.
            redactor.apply(redaction);

            // 레드랙션된 Word 문서를 저장합니다.
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "모든 메타데이터 제거"
      content: |
        우리 API를 사용하여 [여러 파일 유형의 메타데이터를 삭제](https://docs.groupdocs.com/redaction/java/metadata-redactions/#clean-metadata)할 수 있습니다.
        {{< landing/code title="프레젠테이션에서 모든 메타데이터 제거">}}
        ```java {style=abap}   
        // Redactor에 프레젠테이션의 경로를 제공합니다.
        final Redactor redactor  = new Redactor("source.pptx");
        try 
        {
            // 레드랙션 옵션을 구성합니다.
            EraseMetadataRedaction red = new EraseMetadataRedaction(MetadataFilters.All);

            // 프레젠테이션에서 모든 메타데이터를 삭제합니다.
            redactor.apply(red);

            // 정리된 프레젠테이션 파일을 저장합니다.
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}

---
