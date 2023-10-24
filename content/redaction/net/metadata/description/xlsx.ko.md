
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "ko/redaction/net/metadata/description/xlsx"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLT XLTM XLTX  

############################# Head ############################
head_title: "C# 문서의 메타데이터 수정"
head_description: "다양한 형식의 문서에 필터를 적용하여 C# 에서 민감한 메타데이터를 수정합니다."

############################# Header ############################
title: "C# 의 XLSX 문서에서 설명 메타데이터를 수정했습니다."
description: "GroupDocs.Redaction 의 API를 사용하면 문서의 메타데이터에서 기밀 데이터를 검색하고 업데이트하거나 제거할 수 있습니다."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "메타데이터 삭제란 무엇인가요?"
    content: |
        대부분의 사람들은 문서의 텍스트 수정에 관심이 있습니다.하지만 메타데이터 수정도 마찬가지로 중요합니다.메타데이터는 다른 사람과 공유하고 싶지 않을 수도 있는 기밀 정보를 포함할 수 있는 문서의 숨겨진 데이터입니다.메타데이터 수정이란 전자 문서에서 원치 않는 정보나 기밀 정보를 제거하는 것을 말합니다.문서의 메타데이터에는 작성자 이름, 범주, 회사 이름, 의견, 작성 시간, 최종 업데이트 등이 포함됩니다.원하지 않는 메타데이터 필드를 완전히 삭제하거나 해당 값을 업데이트해야 하는 경우가 있습니다.GroupDocs.Redaction API를 사용하면 이러한 모든 메타데이터 속성에 메타데이터 수정을 적용할 수 있습니다.원하는 메타데이터를 필터링하여 변경하거나 삭제할 수 있습니다.이 가이드에서는 C# 의 XLSX 문서에서 설명 메타데이터를 수정하는 방법을 설명합니다.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "XLSX 문서에서 설명 삭제하기"
      content_left: |
        다음 코드를 사용하면 XLSX 문서에서 민감한 데이터를 검색하고 삭제할 수 있습니다.필터 (예: MetadataFilter.Description) 를 설정하여 수정 범위를 설정할 수 있습니다.그러면 “Description” 속성을 제외한 모든 메타데이터 항목에서 정규 표현식 일치가 취소된 상태로 남습니다.
        

      title_right: "XLSX 메타데이터를 수정하는 방법"
      content_right: |
        * [편집자](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) 클래스 인스턴스 생성 및 XLSX 파일 업로드
        * [MetadataSearchredAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) 클래스의 인스턴스를 생성하여 문서 메타데이터에서 민감한 데이터를 찾아 바꾸십시오.
        * 필터를 설정하여 수정 범위를 설정합니다 (예: 아래 코드의 MetadataFilter.Description 사용).
        * [메타데이터 검색](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) 의 객체를 사용하여 [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) 메서드를 호출합니다.        
      gisthash: "15e3f0329c4e24c0f77f785b87753e0d"
      gistfile: "RedactDescriptionMetadata.cs"

    - title_left: "C# 에서 XLSX 개의 메타데이터를 제거합니다."
      content_left: |
        EraseMetadataredAction 클래스를 사용하여 문서의 모든 또는 특정 메타데이터를 빈 (공백 또는 최소) 값으로 바꿀 수 있습니다.다음 코드는 XLSX 문서에서 메타데이터 속성을 필터링한 다음 제거하는 방법을 보여 줍니다. 아래 예제에서는 문서의 모든 속성을 비워 둡니다.
        
        
      title_right: "XLSX 메타데이터 지우기"
      content_right: |
        * [편집자](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) 클래스 인스턴스 생성 및 XLSX 파일 업로드
        * [EraseMetadataredAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) 인스턴스를 생성하여 문서의 메타데이터를 제거합니다.
        * 필터를 설정하여 수정 범위를 설정합니다 (예: MetadataFilter.all을 MetadaFilter로 교체). 아래 코드의 설명 
        * [메타데이터 검색](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) 의 객체를 사용하여 [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) 메서드를 호출합니다.
        
      gisthash: "cef91d8d8f160aaf560218d1abd520e2"
      gistfile: "CleanMetadata.cs"

    - title_left: "시스템 요구 사항"
      content_left: |
        GroupDocs.Redaction for .NET 는 .NET 플랫폼이 설치된 모든 32비트 또는 64비트 운영 체제를 지원합니다.외부 소프트웨어 또는 타사 도구를 설치할 필요가 없습니다.전체 시스템 요구 사항 안내서를 보려면 [시스템 요구 사항](https://docs.groupdocs.com/redaction/net/system-requirements) 을 방문하십시오.
        
      title_right: "설치 지침"
      content_right: |
        명령줄에서 ``nuget install GroupDocs.Redaction ````로 설치하거나 비주얼 스튜디오의 패키지 관리자 콘솔을 통해 ```Install-Package GroupDocs.Redaction `````를 사용하여 설치합니다. 
        또는 오프라인 MSI 설치 프로그램이나 DLL을 [다운로드](https://downloads.groupdocs.com/redaction/net) 에서 ZIP 파일로 가져와서 프로젝트에서 수동으로 참조할 수도 있습니다.

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