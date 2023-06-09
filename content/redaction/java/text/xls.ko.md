













---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "ko/redaction/java/text/xls"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Java 의 정확한 구문/정규 표현식을 통해 XLS 텍스트 수정"
head_description: "GroupDocs.Redactions Java API를 사용하면 개발자가 Java의 정확한 구문 또는 정규식을 통해 PDF DOC DOCX RTF XLSX CSV PPT PPTX 및 이미지의 텍스트를 수정할 수 있습니다."

############################# Header ############################
title: "Java를 사용하여 XLS 파일에서 텍스트를 수정, 숨기거나 제거하는 방법"
description: "GroupDocs.Redactions Java API를 사용하면 워드 프로세싱 문서, 워크시트, 프레젠테이션, PDF 및 이미지에서 민감한 텍스트를 수정, 숨기거나 제거할 수 있습니다."

################### SubMenu/Download Button #####################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "텍스트 교정이란 무엇입니까?"
    content: |
        텍스트 교정은 디지털 문서에서 기밀 또는 원치 않는 텍스트 또는 정보를 제거하는 동시에 문서 또는 이를 포함하는 단락의 나머지 부분은 그대로 두는 프로세스입니다. 수정은 사용자와 조직이 민감한 정보를 숨기거나 영구적으로 제거하여 보호하는 데 도움이 됩니다. GroupDocs.Redaction Java API 사용자는 이제 워드 프로세싱 문서, 워크시트, 프레젠테이션, PDF 및 래스터 이미지 파일에서 민감한 텍스트를 수정, 숨기거나 제거할 수 있습니다. API는 문서의 개인 정보를 수정할 수 있는 다양한 옵션과 방법을 제공합니다. 정확히 일치 또는 정규식을 사용하여 검색 및 수정, 텍스트(예외 코드) 또는 그래픽(색 사각형) 수정 사용 등을 지원합니다. API를 다운로드하고 기본 및 고급 기능을 탐색하여 문서 수정 프로세스를 자동화해 보십시오. 

############################# Steps ############################
steps:
    enable: true
    block:
    - title_left: "자바에서 XLS 정확한 구문 수정"
      content_left: |
        GroupDocs.Redaction을 사용하면 문서에서 민감하거나 사적인 성격의 데이터를 쉽게 수정할 수 있습니다. 가장 인기 있는 교정 사례는 문서에서 텍스트를 제거하는 것입니다. 

        다음 코드는 정확한 구문을 통해 문서의 특정 부분에 텍스트 수정을 적용하는 데 사용할 수 있습니다. 이를 통해 사용자는 개인의 정확한 문구 "Michal Clark"을 개인(또는 면제 코드)으로 바꿀 수 있습니다.

      title_right: "XLS에서 민감한 정보 삭제"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) 클래스의 인스턴스 생성 및 XLS 파일 업로드
        * ExactPhraseRedaction 클래스의 새 인스턴스로 Redactor.apply 메소드 호출
        * [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction) 객체로 redactor.save 메소드 호출
        * redactor.save 메소드를 호출하여 변경 사항 저장 

      gisthash: "3202859fc19b5dfd14e8f073b70a18f8"
      gistfile: "redact_exact_phrase.java"
      
    - title_left: "XLS에서 대소문자를 구분하는 텍스트 수정"
      content_left: |
        다음 예제를 통해 사용자는 정확한 단계의 대소문자 구분 교정을 수행하여 문서 내의 특정 텍스트 척을 제거하거나 숨길 수 있습니다. 기본적으로 정확한 단계 검색은 대소문자를 구분하지 않습니다. 
        
      title_right: "Java를 통해 대소문자 구분 교정 수행"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) 클래스의 인스턴스 생성 및 XLS 파일 업로드
        * ExactPhraseRedaction 클래스의 새 인스턴스로 Redactor.apply 메소드 호출
        * [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction) 객체로 redactor.save 메소드 호출
        * redactor.save 메소드를 호출하여 변경 사항 저장 
        
      gisthash: "a43e3ce358f93df92373b5441bc579fb"
      gistfile: "case_sensitive_redaction.java"

    - title_left: "색상 상자를 통해 XLS 의 텍스트 수정"
      content_left: |
        수정된 텍스트를 제거하거나 거기에 문자열을 배치하는 대신 수정된 텍스트 위에 색상 상자를 배치할 수도 있습니다. 이 경우 일치하는 텍스트가 제거되고 색상이 지정된 사각형이 수정된 텍스트 위에 배치됩니다.
        
      title_right: "색상 상자를 사용하여 Java에서 텍스트 제거"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) 클래스의 인스턴스 생성 및 XLS 파일 업로드
        * ExactPhraseRedaction 클래스의 새 인스턴스로 Redactor.apply 메소드 호출
        * [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction) 객체로 redactor.save 메소드 호출
        * redactor.save 메소드를 호출하여 변경 사항 저장 
        
      gisthash: "6d83e791388b6834a372dc90f4b455f6"
      gistfile: "redact_text_using_color_box.java"

    - title_left: "시스템 요구 사항"
      content_left: |
        Java API용 GroupDocs.Redaction은 모든 주요 플랫폼 및 운영 체제에서 지원됩니다. 전체 시스템 요구 사항 가이드를 보려면 [시스템 요구 사항](https://docs.groupdocs.com/redaction/java/system-requirements)을 방문하십시오. 아래 코드를 실행하기 전에 다음 전제 조건이 시스템에 설치되어 있는지 확인하십시오. :
        * 운영 체제: 마이크로소프트 윈도우, 리눅스, 맥OS
        * 개발환경: NetBeans, Intellij IDEA, Eclipse 등
        * 자바 런타임 환경: J2SE 6.0 이상
        * [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction)에서 Java용 GroupDocs.Redaction 최신 버전을 다운로드합니다.
        
      title_right: "GroupDocs.Redaction을 사용하는 이유"
      content_right: |
        * 사용자가 사용자 정의 문서 형식 및 수정 유형을 추가할 수 있도록 허용
        * 민감한 정보를 제거하기 위해 추가 소프트웨어가 필요하지 않습니다.
        * 페이지 범위 렌더링 문서를 PDF로 설정하는 기능
        * 다양한 유형의 메타데이터를 수정하는 쉬운 방법: 저자 이름, 버전, 제목, 주제, 설명 등
        * 문서 정보 추출 - 파일 형식, 페이지 수 등

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