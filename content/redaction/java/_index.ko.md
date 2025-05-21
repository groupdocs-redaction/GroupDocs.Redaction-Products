---
############################# Static ############################
layout: "product"
date: 2021-04-27T09:31:06+03:00
draft: false

product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java 교정 API | PDF Word Excel 이미지에서 민감한 데이터 숨기기"
head_description: "Java 문서 수정 API — 다양한 수정 유형을 통해 PDF, Word, Excel, PowerPoint 프레젠테이션 및 래스터 이미지에서 개인 데이터를 숨깁니다."

############################# Header ############################
title: "Java API를 통한 개인 정보 삭제"
description: "Java 수정 API를 사용하여 문서, 워크시트, 프레젠테이션, PDF 및 래스터 이미지 파일에서 개인 정보 및 메타데이터를 제외하거나 숨길 수 있습니다."
button:
    enable: true

############################# SubMenu ############################
submenu:
    enable: true
    
    left:
        img_alt: "GroupDocs.Redaction for Java"
        image: "https://www.groupdocs.cloud/templates/groupdocs/images/product-logos/groupdocs-redaction-java.png"
        product: "GroupDocs.Redaction"
        platform: "Java"

    middle:
        button:
            # button loop
            - link: "#overview"
              text: "개요"

            # button loop
            - link: "#features"
              text: "특징"

            # button loop
            - link: "#support"
              text: "서포트"

            # button loop
            - link: "https://products.groupdocs.app/redaction"
              text: "라이브 데모"

            # button loop
            - link: "https://purchase.groupdocs.com/pricing/redaction/java"
              text: "가격 책정"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/java/"
        link_buy: "https://purchase.groupdocs.com"

############################# Overview ############################
overview:
    enable: true
    content: |
      GroupDocs.Redaction for Java API를 사용하면 개발자가 Microsoft Word, Excel, PowerPoint, PDF 및 이미지와 같이 널리 사용되는 파일 형식에서 민감한 데이터를 제거하여 사용 및 배포하는 동시에 기밀 정보도 보호할 수 있습니다.편집 라이브러리는 형식에 구애받지 않는 단일 인터페이스를 제공하여 텍스트, 메타데이터 및 주석 수정 유형을 통해 주민등록번호, 의료 정보, 재무, 독점, 법률 또는 거래 세부 정보 등 모든 유형의 기밀 정보를 수정할 수 있습니다.문서를 원래 형식으로 저장하고 원본 페이지의 래스터 이미지가 포함된 정리된 PDF 문서를 만들 수 있습니다.
    tabs:
      enable: true
      
      ## TAB ONE ##
      tab_one:
        description: |
          다음은 Java 에 대한 GroupDocs.Redaction 에 대한 개요입니다.
      
        right:
          enable: true
          icon: "fab fa-html5"
          title: "개요"
          content: |
            * 텍스트 수정
            * 메타데이터 수정
            * 주석 수정
            * 표 형식 문서 수정
            * 보호된 파일 수정
            * 사용자 지정
      
      ## TAB TWO ##
      tab_two:
        description: |
          GroupDocs.Redaction for Java 는 다음과 같은 [문서 파일 형식](https://docs.groupdocs.com/redaction//supported-document-formats/java) 을 지원합니다.

        right:
          enable: true
          table:
            # table loop
            - title: "텍스트, 메타데이터 및 댓글 수정"
              content: |
                * **Word**: DOC, DOCX, DOT, ODT, DOTX, DOCM, DOTM, RTF
                * **Excel**: XLS, XLSX, XLT, XLTX, XLSM, XLTM, CSV
                * **PowerPoint**: PPT, PPTX, PPS, PPSX, POTX, PPTM, PPSM, POTM
                * **고정 레이아웃**: PDF
                * **래스터 이미지**: JPG, BMP, PNG, GIF, TIFF

      ## TAB THREE ##
      tab_three:
        description: |
          GroupDocs.Redaction for Java 는 다음 운영 체제, 프레임워크 및 패키지 관리자를 지원합니다.
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "운영 체제"
              content: |
                * 마이크로소프트 Windows Desktop
                * 마이크로소프트 Windows Server
                * Linux
                * Mac 개의 운영 체제

            # table loop
            - icon: "fas fa-code"
              title: "지원되는 프레임워크"
              content: |
                * Java 7 (1.7) 이상

        right:
          enable: true
          table:
            # table loop
            - icon: "빠른 FA-COG"
              title: "개발 환경"
              content: |
                * 넷빈즈
                * 인텔리제이 아이디어
                * 이클립스

            # table loop
            - icon: "빠른 팬 도구"
              title: "빌드 자동화 도구"
              content: |
                * 메이븐

############################# Features ############################
features:
    enable: true
    title: "Java 개의 특징에 대해 GroupDocs.Redaction"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "검색 문자열과 정확히 일치하는 항목 검색 및 삭제"

      # feature loop
      - icon: "fas fa-eye"
        content: "수정 프로세스를 제어하고 특정 매치를 건너뛰세요."

      # feature loop
      - icon: "fas fa-bolt"
        content: "정규 표현식을 사용하여 찾기 및 수정하기"
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "오피스 포맷 및 PDF 에 대한 기본 지원"

      # feature loop
      - icon: "fas fa-code"
        content: "메타데이터 삭제 또는 메타데이터 값 수정"

      # feature loop
      - icon: "fas fa-cloud"
        content: "수정을 특정 워크시트 및 열로 제한"

      # feature loop
      - icon: "fas fa-remove-format"
        content: "주석 제거 또는 텍스트 수정"

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "텍스트 (예외 코드) 또는 그래픽 (색상이 지정된 직사각형) 교정 사용"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "문서를 원본 형식으로 저장하거나 원본 페이지의 래스터 이미지와 함께 PDF 로 저장합니다."

      # feature loop
      - icon: "fas fa-border-all"
        content: "래스터 이미지 형식 및 이미지 영역 교정 지원"

      # feature loop
      - icon: "fas fa-wrench"
        content: "사용자 지정 편집 및 형식 구현을 위한 통합 인터페이스"

      # feature loop
      - icon: "fas fa-columns"
        content: "이미지 파일에서 EXIF 개의 메타데이터 편집 또는 제거"

      # feature loop
      - icon: "fas fa-file-word"
        content: "PDF, Word 및 프레젠테이션 문서 내에 포함된 이미지 수정"

    more_feature:
      # more_feature_loop
      - title: "기밀 데이터를 삭제하여 프라이버시를 보장하세요"
        content: |
          GroupDocs.Redaction for Java 라이브러리를 사용하면 개발자가 다양한 수정 유형을 사용하여 지원되는 문서의 텍스트와 이미지를 수정할 수 있습니다.편집 API를 사용하는 것은 간단하고 간단합니다.  

          다음 코드 예제에서는 수정 범위를 특정 워크시트 및/또는 열로 제한할 수 있는 Microsoft Excel 스프레드시트와 같은 표 형식 문서를 사용합니다.필터를 사용하여 “고객” 워크시트에서 이메일이 있는 두 번째 열을 삭제하고 문서의 다른 모든 이메일은 그대로 유지합니다.

          ```java
          // 리액터 클래스의 인스턴스 생성
          final Redactor redactor  = new Redactor("sample.xlsx");
          try
          {
              CellFilter filter = new CellFilter();
              filter.setColumnIndex(1);
              filter.setWorkSheetName("Customers");
              Pattern expression = Pattern.compile("^\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$");
              // 수정 적용
              RedactorChangeLog result = redactor.apply(new CellColumnRedaction(filter, expression, new ReplacementOptions("[customer email]")));
              if (result.getStatus() != RedactionStatus.Failed)
              {
                  SaveOptions so = new SaveOptions();
                  so.setAddSuffix(true);
                  so.setRasterizeToPDF(false);
                  redactor.save(so);
              };
          }
          finally { redactor.close(); }
          ```

############################# Support ############################
support:
    enable: true

############################# Solutions ############################
solutions:
    enable: true
    title: "GroupDocs.Redaction 는 널리 사용되는 다른 개발 환경을 위한 문서 보기 API를 제공합니다."

    solution:
        # solution loop
        - img_alt: "GroupDocs.Redaction for .NET"
          image: "/border/groupdocs-redaction-net.svg"
          product: "GroupDocs.Redaction"
          platform: ".NET"
          link: "/redaction/net/"

        # solution loop
        - img_alt: "GroupDocs.Redaction for Python via .NET"
          image: "/border/groupdocs-redaction-python-net.svg"
          product: "GroupDocs.Redaction"
          platform: "Python via .NET"
          link: "/redaction/python-net/"

############################# Back to top ###############################
back_to_top:
  enable: true
---