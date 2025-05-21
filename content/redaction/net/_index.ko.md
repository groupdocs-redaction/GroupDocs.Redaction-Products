---
############################# Static ############################
layout: "product"
date: 2021-04-27T09:31:06+03:00
draft: false

product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C# .NET 편집 API | PDF Word Excel 이미지에서 비공개 텍스트 숨기기"
head_description: ".NET 에 대한 문서 편집 API.PDF, Microsoft Word, Excel, 프레젠테이션 및 래스터 이미지에서 민감한 콘텐츠를 수정하거나 숨기거나 제거할 수 있습니다."

############################# Header ############################
title: "편집 API를 통한 기밀 데이터 보호"
description: ".NET API를 사용하여 문서, 워크시트, 프레젠테이션, PDF 및 래스터 이미지 파일에서 민감한 콘텐츠 및 메타데이터를 편집, 숨기거나 제거할 수 있습니다."
button:
    enable: true

############################# SubMenu ############################
submenu:
    enable: true
    
    left:
        img_alt: "GroupDocs.Redaction for .NET"
        image: "https://www.groupdocs.cloud/templates/groupdocs/images/product-logos/groupdocs-redaction-net.png"
        product: "GroupDocs.Redaction"
        platform: ".NET"

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
            - link: "https://purchase.groupdocs.com/pricing/redaction/net"
              text: "가격 책정"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/net/"
        link_buy: "https://purchase.groupdocs.com"

############################# Overview ############################
overview:
    enable: true
    content: |
      GroupDocs.Redaction for .NET 는 Microsoft Word, Excel, PowerPoint 및 PDF 과 같은 다양한 파일 형식에서 민감하고 기밀화된 데이터를 지우는 데 도움이 되는 API 라이브러리입니다.Redaction API의 단일 형식 독립 인터페이스는 텍스트 편집, 메타데이터 편집, 주석 수정 및 표 형식 문서 편집과 같은 다양한 유형의 삭제를 지원합니다. GroupDocs.Redaction for .NET API를 사용하면 암호로 보호된 파일을 수정할 수도 있습니다.문서를 원래 형식으로 저장하고 원본 페이지의 래스터 이미지가 포함된 정리된 PDF 문서를 만들 수 있습니다.
    tabs:
      enable: true
      
      ## TAB ONE ##
      tab_one:
        description: |
          다음은 .NET 에 대한 GroupDocs.Redaction 에 대한 개요입니다.
      
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
          GroupDocs.Redaction for .NET 는 다음과 같은 [문서 파일 형식](https://docs.groupdocs.com/redaction//supported-document-formats/net) 을 지원합니다.

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
          GroupDocs.Redaction for .NET 는 다음 운영 체제, 프레임워크 및 패키지 관리자를 지원합니다.
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "운영 체제"
              content: |
                * Windows Desktop
                * Windows Server
                * Windows Azure
                * Linux

            # table loop
            - icon: "fas fa-code"
              title: "지원되는 프레임워크"
              content: |
                * .NET Framework 2.0 이상
                * .NET Standard 2.0
                * .NET Core 2.0

        right:
          enable: true
          table:
            # table loop
            - icon: "빠른 팩스 박스"
              title: "패키지 매니저"
              content: |
                * NuGet

            # table loop
            - icon: "빠른 팬 도구"
              title: "개발 환경"
              content: |
                * Microsoft Visual Studio
                * Xamarin.Android
                * Xamarin.IOS
                * Xamarin.Mac
                * MonoDevelop

############################# Features ############################
features:
    enable: true
    title: ".NET 개의 특징에 대해 GroupDocs.Redaction"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "정확한 구문 교정을 위한 대소문자 구분 검색 수행"

      # feature loop
      - icon: "fas fa-eye"
        content: "색상 상자를 사용하여 문자열을 바꾸는 대신 편집된 텍스트를 숨깁니다."

      # feature loop
      - icon: "fas fa-bolt"
        content: "정규 표현식 검색을 사용하여 모든 텍스트를 찾아 삭제합니다."
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "문서의 분류된 메타데이터 정보 전체 또는 임의 조합을 필터링합니다."

      # feature loop
      - icon: "fas fa-code"
        content: "특정 문서의 전체 메타데이터 정보를 빠르게 지울 수 있습니다."

      # feature loop
      - icon: "fas fa-cloud"
        content: "교정 범위를 Excel 의 특정 워크시트 및/또는 열로 설정"

      # feature loop
      - icon: "fas fa-remove-format"
        content: "문서에서 전체 또는 특정 주석 및 기타 주석을 제거합니다."

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "주석 텍스트에서 민감한 데이터 검색 및 제거"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "자신만의 형식 및 편집으로 작업할 수 있는 능력"

      # feature loop
      - icon: "fas fa-border-all"
        content: "래스터 이미지 형식 및 이미지 영역 교정 지원"

      # feature loop
      - icon: "fas fa-wrench"
        content: "XML 파일에 일련의 수정 규칙 (정책) 지정"

      # feature loop
      - icon: "fas fa-columns"
        content: "PDF 로 변환하는 동안 페이지 범위 및 PDF 규정 준수 수준 지정"

      # feature loop
      - icon: "fas fa-file-word"
        content: "이미지 파일에서 EXIF 개의 메타데이터 편집 또는 삭제"

      # feature loop
      - icon: "fas fa-envelope"
        content: "PDF, Word 및 프레젠테이션 문서 내에 포함된 이미지 수정"

      # feature loop
      - icon: "fas fa-print"
        content: "수정 정책을 XML 파일로 저장"

    more_feature:
      # more_feature_loop
      - title: "기밀 데이터를 쉽고 제어하여 수정"
        content: |
          GroupDocs.Redaction for .NET API를 사용하면 지원되는 문서에서 중요한 기밀 정보를 숨기거나 지우는 방법을 완벽하게 제어할 수 있습니다.Redaction API를 사용하는 것은 매우 간단하고 간단합니다.  

          다음 예제에서는 지원되는 문서를 로드하여 “2자리, 공백 또는 없음, 2자리, 다시 공백 6자리” (예: 12 34 567890) 와 일치하는 텍스트를 모두 삭제하고 C# 를 사용하는 파란색 상자와 일치시킵니다.이 작업이 완료되면 “편집됨”이라는 접미사를 추가하여 이름을 변경하여 문서를 원래 형식으로 저장합니다.

          ```cs
          // 리액터 클래스의 인스턴스 생성
          using (Redactor redactor = new Redactor("sample.docx"))
          {
            // 수정 적용
            redactor.Apply(new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", new ReplacementOptions(System.Drawing.Color.Blue)));
            redactor.Save();
          }
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
        - img_alt: "GroupDocs.Redaction for Java"
          image: "/border/groupdocs-redaction-java.svg"
          product: "GroupDocs.Redaction"
          platform: "Java"
          link: "/redaction/java/"

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