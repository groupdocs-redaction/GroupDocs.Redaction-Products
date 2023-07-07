---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "ko/redaction/java/regex/docx"
otherformats: CSV DOC DOCM DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Java에서 정규 표현식을 통해 DOCX 텍스트 수정"
head_description: "GroupDocs.Redaction의 Java API를 통해 개발자는 PDF DOC DOCX RTF XLSX CSV PPT PPTX의 텍스트 및 Java의 정규 표현식을 사용하는 이미지를 수정할 수 있습니다."

############################# Header ############################
title: "정규 표현식 및 Java을 사용하여 DOCX 파일에서 텍스트를 제거하는 방법"
description: "GroupDocs.Redaction의 Java API를 사용하면 정규 표현식을 사용하여 워드 프로세서 문서, 워크시트, 프리젠테이션, PDF 및 이미지에서 민감한 텍스트를 수정하거나 숨기거나 제거할 수 있습니다."

################### SubMenu/Download Button #####################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "텍스트 위생이란 무엇입니까?"
    content: |
        텍스트 편집 또는 삭제는 디지털 문서에서 기밀이거나 원치 않는 텍스트나 정보를 제거하는 과정이며 이를 포함하는 문서나 단락의 나머지 부분은 그대로 둡니다. Redaction은 민감한 정보를 숨기거나 영구적으로 제거하여 사용자와 조직이 민감한 정보를 보호할 수 있도록 도와줍니다. GroupDocs.Redaction Java API 사용자는 이제 워드 프로세싱 문서, 워크시트, 프리젠테이션, PDF 및 래스터 이미지 파일에서 민감한 텍스트를 수정하거나 숨기거나 제거할 수 있습니다. API는 문서의 개인 정보 편집을 위한 다양한 옵션과 방법을 제공합니다. 정규식, 텍스트(면제 코드) 또는 그래픽(색상 사각형) 교정 사용 등을 사용하여 검색 및 교정을 지원합니다. API를 다운로드하여 문서 편집 프로세스를 자동화하고 기본 및 고급 기능을 살펴보십시오.

############################# Steps ############################
steps:
    enable: true
    block:
    - title_left: "Java에서 정규 표현식을 사용하여 DOCX 수정"
      content_left: |
        GroupDocs.Redaction를 사용하면 문서에서 민감하거나 사적인 성격의 데이터를 쉽게 수정할 수 있습니다. 가장 인기 있는 교정 사례는 문서에서 텍스트를 제거하는 것입니다. 

        다음 코드는 정규식을 사용하여 문서의 특정 부분에 텍스트 교정을 적용하는 데 사용할 수 있습니다. 사용자가 패턴 "AA BB CCCCCC"와 일치하는 모든 숫자를 파란색 사각형으로 바꿀 수 있습니다.

      title_right: "DOCX에서 민감한 데이터 제거"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) 클래스 인스턴스 생성 및 DOCX 파일 업로드
        * [RegexRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/RegexRedaction) 클래스의 인스턴스 생성
        * RegexRedaction 클래스의 개체로 redactor.apply 메서드 호출
        * redactor.save 메서드를 호출하여 변경 사항을 저장합니다. 

      gisthash: "6dea616a14aeeff21698dc03be62a341"
      gistfile: "RegularExpressionRedaction.java"
      
    - title_left: "시스템 요구 사항"
      content_left: |
        GroupDocs.Redaction for Java API는 모든 주요 플랫폼 및 운영체제에서 지원됩니다. 전체 시스템 요구 사항 가이드를 보려면 [시스템 요구 사항](https://docs.groupdocs.com/redaction/java/system-requirements)을 방문하세요. 아래 코드를 실행하기 전에 시스템에 다음 전제 조건이 설치되어 있는지 확인하세요. :
        * 운영 체제: Microsoft Windows, Linux, MacOS
        * 개발 환경: NetBeans, Intellij IDEA, Eclipse 등
        * Java 런타임 환경: J2SE 6.0 이상
        * [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction)에서 GroupDocs.Redaction for Java의 최신 버전을 다운로드하세요.
        
      title_right: "GroupDocs.Redaction를 사용하는 이유"
      content_right: |
        * 사용자가 사용자 정의 문서 형식 및 교정 유형을 추가하도록 허용
        * 민감한 정보를 제거하기 위해 추가 소프트웨어가 필요하지 않습니다.
        * 페이지 범위 렌더링 문서를 PDF로 설정하는 기능
        * 저자 이름, 버전, 제목, 주제, 설명 등 다양한 유형의 메타데이터를 쉽게 편집할 수 있는 방법
        * 문서 정보 추출 - 파일 형식, 페이지 수 등

############################# Demos ############################
demos:
    enable: true
############################# About Formats ############################
about_formats:
    enable: true
############################# More Formats ############################
more_formats:
    enable: true

############################# Back to top ###############################
back_to_top:
    enable: true
---