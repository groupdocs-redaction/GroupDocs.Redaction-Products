
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "ko/redaction/java/metadata/title/docm"
otherformats: BMP DOC DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "메타데이터 수정 | Java"
ad_description: "Java 에 있는 DOCM 메타데이터에서 제목을 수정했습니다."
############################# Head ############################
head_title: "GroupDocs.Redaction API를 사용하여 Java 에 있는 DOCM 파일에서 제목 수정하기"
head_description: "GroupDocs.Redaction 는 30개 이상의 문서 유형에서 기밀 정보를 제거하거나 편집할 수 있는 강력한 삭제 API입니다."

############################# Header ############################
title: "GroupDocs.Redaction API를 사용하여 Java 에 있는 DOCM 파일에서 제목 수정하기"
description: "GroupDocs.Redaction 는 30개 이상의 문서 유형에서 기밀 정보를 제거하거나 편집할 수 있는 강력한 삭제 API입니다."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "메타데이터 삭제란 무엇인가요?"
    content: |
        문서를 원본 형식으로 저장하려면 메타데이터를 삭제하거나 수정하여 모든 기밀 데이터를 제거해야 합니다.이러한 목적으로 GroupDocs.Redaction 는 메타데이터 수정 API를 제공합니다. GroupDocs.Redaction API를 사용하면 PDF 에서 수정된 문서를 저장하거나, 모든 페이지를 래스터 이미지로 변환하거나, 편집된 문서를 추가 편집을 위해 원래 형식으로 저장할 수 있습니다.PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX 등 모든 파일 형식에는 일부 메타데이터 속성이 있습니다.이러한 속성에는 작성자 이름, 범주, 회사 이름, 설명, 작성 시간, 최종 업데이트 등이 포함됩니다. 다양한 도구와 기술을 사용하여 볼 수 있는 파일과 관련된 숨겨진 데이터도 있습니다.GroupDocs.Redaction API를 사용하면 이러한 모든 메타데이터 속성에 메타데이터 수정을 적용할 수 있습니다.원하는 메타데이터를 필터링하여 변경하거나 삭제할 수 있습니다.이 가이드에서는 GroupDocs.Redaction API를 사용하여 Java 의 DOCM 파일에서 제목을 수정하는 방법을 설명합니다.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Java 에서 제목 메타데이터 수정"
      content_left: |
        다음 코드를 사용하면 DOCM 문서에서 민감한 데이터를 검색하고 삭제할 수 있습니다.필터 (예: MetadataFilter.title) 를 설정하여 교정 범위를 설정할 수 있습니다.그러면 “Title” 속성을 제외한 모든 메타데이터 항목에서 정규 표현식 일치가 취소된 상태로 남습니다. 

      title_right: "DOCM 메타데이터를 수정하는 방법"
      content_right: |
        * [편집자](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) 클래스 인스턴스 생성 및 DOCM 파일 업로드
        * [MetadataSearchredAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 클래스의 인스턴스를 생성하여 문서의 메타데이터에서 민감한 데이터를 찾아 바꾸십시오.
        * 필터를 설정하여 수정 범위를 설정합니다 (예: 아래 코드에서 MetadataFilters.title 사용).
        * [메타데이터 SearchredAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 의 객체를 사용하여 save 메서드 호출 

      gisthash: "c23f466bec11e0405e2a3e74be681d09"
      gistfile: "RedactTitleMetadata.java"
      
    - title_left: "Java 에서 DOCM 개의 메타데이터를 제거합니다."
      content_left: |
        EraseMetadataredAction 클래스를 사용하여 문서의 모든 또는 특정 메타데이터를 빈 (공백 또는 최소) 값으로 바꿀 수 있습니다.다음 코드는 DOCM 문서에서 메타데이터 속성을 필터링한 다음 제거하는 방법을 보여 줍니다. 아래 예제에서는 문서의 모든 속성을 비워 둡니다. 
        
      title_right: "DOCM 파일에서 제목 메타데이터 지우기"
      content_right: |
        * [편집자](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) 클래스 인스턴스 생성 및 DOCM 파일 업로드
        * [MetadataSearchredAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 클래스의 인스턴스를 생성하여 문서의 메타데이터를 제거합니다.
        * 필터를 설정하여 수정 범위를 설정합니다 (예: MetadataFilter.all을 아래 코드에서 MetadataFilter.title로 바꾸기).
        * [메타데이터 SearchredAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 의 객체를 사용하여 save 메서드 호출 
        
      gisthash: "84586804ee996134fd12f2061f989fd5"
      gistfile: "CleanMetadata.java"

    - title_left: "시스템 요구 사항"
      content_left: |
        GroupDocs.Redaction for Java API는 모든 주요 플랫폼 및 운영 체제에서 지원됩니다.전체 시스템 요구 사항 안내서를 보려면 [시스템 요구 사항](https://docs.groupdocs.com/redaction/java/system-requirements) 을 방문하십시오. 아래 코드를 실행하기 전에 시스템에 다음과 같은 사전 요구 사항이 설치되어 있는지 확인하십시오.
        * 운영 체제: 마이크로소프트 Windows, Linux, Mac OS
        * 개발 환경: 넷빈즈, 인텔리지 IDEA, 이클립스 등
        * Java 런타임 환경: J2SE 6.0 이상
        * [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction) 에서 GroupDocs.Redaction for Java 의 최신 버전을 다운로드하십시오.
        
      title_right: "GroupDocs.Redaction 를 사용하는 이유"
      content_right: |
        * 사용자가 사용자 지정 문서 형식 및 수정 유형을 추가할 수 있도록 허용
        * 민감한 정보를 제거하는 데 추가 소프트웨어가 필요하지 않습니다.
        * 페이지 범위 렌더링 문서를 PDF 로 설정하는 기능
        * 작성자 이름, 버전, 제목, 주제, 설명 등 다양한 유형의 메타데이터를 쉽게 수정할 수 있습니다.
        * 문서 정보 추출 - 파일 유형, 페이지 수 등
        

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