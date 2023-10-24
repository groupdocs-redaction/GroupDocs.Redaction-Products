
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "ko/redaction/net/metadata/doc"
otherformats: BMP DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: ".NET의 PDF, DOCX, PPT, PPTX, XLS, XLSX에 메타데이터 수정 적용"
head_description: "GroupDocs.Redactions .NET API를 사용하면 소프트웨어 개발자가 메타데이터 수정을 PDF DOC DOCX RTF XLSX CSV PPT PPTX 및 이미지와 같은 다양한 파일 형식에 적용할 수 있습니다."

############################# Header ############################
title: "PDF, DOCX, PPT, PPTX, XLS, XLSX 등의 메타데이터 수정 및 필터링"
description: "GroupDocs.Redactions .NET API를 사용하면 소프트웨어 개발자가 PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX 및 기타 여러 파일 형식의 메타데이터를 수정하거나 필터링할 수 있습니다."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "메타데이터 수정이란 무엇입니까?"
    content: |
        메타데이터는 다른 데이터에 대한 정보를 제공하는 일종의 데이터입니다. 즉, 많은 사람들이 메타데이터를 데이터에 대한 참조로 생각합니다. 데이터를 쉽게 추적하고 관리하는 데 사용할 수 있는 데이터에 대한 기본 정보를 요약하는 데 도움이 됩니다. .NET용 GroupDocs.Redaction은 소프트웨어 개발자가 외부 소프트웨어나 타사 도구를 설치하지 않고도 다양한 문서 유형에서 중요하고 분류된 정보를 수정할 수 있는 강력한 기본 API입니다. 작성자, 회사, 범주, 문서 크기, 만든 날짜, 제목, LastPrinted, 댓글 등과 같은 다양한 필터를 지원합니다. 사용자가 워드 프로세싱 문서, Excel 워크시트, 프레젠테이션, PDF 및 래스터 이미지 파일과 같은 널리 사용되는 다양한 문서 형식에 메타데이터 수정을 적용하는 데 도움이 됩니다. 개발자는 필터를 적용하거나 검색을 사용하여 메타데이터를 업데이트, 교체 또는 지울 수도 있습니다. 또한 개발자는 한 번의 호출로 여러 수정 사항을 쉽게 적용할 수 있습니다. 따라서 API를 다운로드하고 기본 및 고급 기능을 탐색하여 문서 및 메타데이터 수정 프로세스를 자동화하는 것이 좋습니다.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "C#의 DOC 문서에서 메타데이터를 정리하는 방법"
      content_left: |
        .NET용 GroupDocs.Redaction은 프로그래머가 필터를 사용하거나 정규 표현식으로 검색하여 널리 사용되는 수많은 문서 유형에서 분류된 정보를 수정, 숨기거나 대체할 수 있는 강력한 API입니다.
        다음 .NET 코드 예제에서는 메타데이터 수정을 적용하여 문서의 모든 또는 특정 메타데이터를 비어 있거나 최소값으로 바꾸는 방법을 보여줍니다.

      title_right: "DOC 파일에 메타데이터 수정 적용"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) 클래스의 인스턴스 생성
        * [EraseMetadataRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction)의 EraseMetadataRedaction 객체로 Redactor.Apply 메소드 호출
        * Redactor.Save 메소드를 호출하여 문서를 "*_Redacted.*" 파일에 원본 형식으로 저장        
      gisthash: "8f1bc20dff33c9a45c01a9e251555bf1"
      gistfile: "how_to_clean_metadata_dotnet.cs"

    - title_left: ".NET을 통해 DOC 파일에서 메타데이터 수정"
      content_left: |
        GroupDocs.Redaction .NET API를 사용하면 외부 종속성 없이 몇 줄의 코드로 문서 자동화 및 보고 작업을 포함할 수 있으므로 개발자의 작업이 쉬워집니다.
        다음 C# .NET 코드 예제는 소프트웨어 개발자가 몇 줄의 코드로 문서의 메타데이터에서 중요한 데이터를 제거하는 방법을 보여줍니다.
        
      title_right: "DOC 파일의 메타데이터 수정"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) 클래스의 인스턴스 생성
        * [MetadataRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metataredaction) 클래스의 인스턴스 생성
        * [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) 메서드 호출 
        * Redactor.Save 메소드를 호출하여 문서를 "*_Redacted.*" 파일에 원본 형식으로 저장
        
      gisthash: "8dee499186930d60909dffa54579c9f4"
      gistfile: "how_to_redact_metadata_dotnet.cs"

    - title_left: "시스템 요구 사항"
      content_left: |
        .NET API용 GroupDocs.Redaction은 모든 주요 플랫폼 및 운영 체제에서 지원됩니다. 전체 시스템 요구 사항 가이드를 보려면 [시스템 요구 사항](https://docs.groupdocs.com/redaction/net/system-requirements/)을 방문하십시오. 아래 코드를 실행하기 전에 다음 전제 조건이 컴퓨터에 설치되어 있는지 확인하십시오. 체계:
        * 운영 체제: Microsoft Windows, Linux, MacOS
        * 개발 환경: Visual Studio, Xamarin, MonoDevelop 등
        * 프레임워크: .NET Framework, .NET Standard, .NET Core, Mono
        * [NuGet](https://www.nuget.org/packages/GroupDocs.Redaction/)에서 최신 버전의 GroupDocs.Redaction .NET API 다운로드
        
      title_right: "GroupDocs.Redaction을 사용하는 이유"
      content_right: |
        * 사용자가 사용자 정의 문서 형식 및 수정 유형을 추가할 수 있습니다.
        * 민감한 정보를 제거하기 위해 추가 소프트웨어가 필요하지 않습니다.
        * 페이지 범위 렌더링 문서를 PDF로 설정하는 기능
        * 작성자 이름, 버전, 제목, 주제, 설명 등 다양한 유형의 메타데이터를 수정하는 쉬운 방법
        * 문서 정보 추출 - 파일 형식, 페이지 수 등
        * 여러 데이터 형식에 대한 완벽한 지원

############################# Demos ############################
demos:
    enable: true
############################# More Formats ############################
more_formats:
    enable: true

############################# Back to top ###############################
back_to_top:
    enable: true
---