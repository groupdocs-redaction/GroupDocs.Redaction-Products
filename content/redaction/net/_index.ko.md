---
layout: "product"
date: 2021-04-27T09:31:06+03:00
draft: false

product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

head_title: "C# .NET 수정 API | PDF Word Excel 이미지에서 개인 텍스트 숨기기"
head_description: ".NET용 문서 수정 API. PDF, Microsoft Word, Excel, ‎프레젠테이션 및 래스터 이미지에서 민감한 콘텐츠 수정, 숨기기 또는 제거."

title: "수정 API를 통한 기밀 데이터 보호"
description: "‎.NET API를 사용하여 문서, 워크시트, 프레젠테이션, PDF 및 래스터 이미지 파일에서 민감한 콘텐츠 및 메타데이터 수정, 숨기기 또는 제거."
button:
    enable: true

submenu:
    enable: true
    
    left:
        img_alt: "GroupDocs.Redaction for .NET"
        image: "https://www.groupdocs.cloud/templates/groupdocs/images/product-logos/groupdocs-redaction-net.png"
        product: "GroupDocs.Redaction"
        platform: ".NET"

    middle:
        button:
            - link: "#overview"
              text: "개요"

            - link: "#features"
              text: "특징"

            - link: "#support"
              text: "지원하다"

            - link: "https://products.groupdocs.app/redaction"
              text: "라이브 데모"

            - link: "https://purchase.groupdocs.com/pricing/redaction/net"
              text: "가격"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/net/"
        link_buy: "https://purchase.groupdocs.com"

overview:
    enable: true
    content: |
      .NET용 GroupDocs.Redaction은 Microsoft Word, Excel, PowerPoint 및 PDF와 같은 다양한 파일 형식에서 민감하고 분류된 데이터를 지우는 데 도움이 되는 API 라이브러리입니다. Redaction API의 단일 형식 독립 인터페이스는 텍스트 수정, 메타데이터 수정, 주석 수정 및 표 형식 문서 수정과 같은 다양한 유형의 수정을 지원합니다. .NET API용 GroupDocs.Redaction ‎또한 암호로 보호된 파일을 수정할 수 있습니다. 문서를 원본 형식으로 저장할 수 있을 뿐만 아니라 원본 페이지의 래스터 이미지로 삭제된 PDF 문서를 생성할 수 있습니다.
    tabs:
      enable: true
      
      tab_one:
        description: |
          다음은 .NET용 GroupDocs.Redaction의 개요입니다.
      
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
            * 사용자 정의
      
      tab_two:
        description: |
          .NET용 GroupDocs.Redaction은 다음 [문서 파일 형식](https://docs.groupdocs.com/redaction/net/supported-document-formats/)을 지원합니다.

        right:
          enable: true
          table:
            - title: "텍스트, 메타데이터 및 주석 수정"
              content: |
                * **단어**: DOC, DOCX, DOT, ODT, DOTX, DOCM, DOTM, RTF
                * **엑셀**: XLS, XLSX, XLT, XLTX, XLSM, XLTM, CSV
                * **파워포인트**: PPT, PPTX, PPS, PPSX, POTX, PPTM, PPSM, POTM
                * **고정 레이아웃**: PDF
                * **래스터 이미지**: JPG, BMP, PNG, GIF, TIFF

      tab_three:
        description: |
          .NET용 GroupDocs.Redaction은 다음 운영 체제, 프레임워크 및 패키지 관리자를 지원합니다.‎
        
        left:
          enable: true
          table:
            - icon: "fab fa-windows"
              title: "운영체제"
              content: |
                * 윈도우 데스크탑
                * 윈도우 서버
                * 윈도우 애저
                * 리눅스

            - icon: "fas fa-code"
              title: "지원되는 프레임워크"
              content: |
                * .NET 프레임워크 2.0 이상
                * .NET 표준 2.0
                * .NET 코어 2.0

        right:
          enable: true
          table:
            - icon: "fas fa-box"
              title: "패키지 관리자"
              content: |
                * 누겟

            - icon: "fas fa-tools"
              title: "개발 환경"
              content: |
                * 마이크로소프트 비주얼 스튜디오
                * 자마린.안드로이드
                * 자마린.IOS
                * 자마린.맥
                * 모노디벨롭

features:
    enable: true
    title: ".NET 기능을 위한 GroupDocs.Redaction"

    feature:
      - icon: "fas fa-copy"
        content: "정확한 구문 수정을 위해 대소문자 구분 검색 수행"

      - icon: "fas fa-eye"
        content: "색상 상자를 사용하여 문자열 교체 대신 수정된 텍스트 숨기기"

      - icon: "fas fa-bolt"
        content: "정규식 검색을 사용하여 텍스트 찾기 및 수정"
      
      - icon: "fas fa-file-powerpoint"
        content: "문서의 분류된 메타데이터 정보 전체 또는 조합 필터링"

      - icon: "fas fa-code"
        content: "특정 문서의 전체 메타데이터 정보를 빠르게 삭제"

      - icon: "fas fa-cloud"
        content: "수정 범위를 Excel의 특정 워크시트 및/또는 열로 설정"

      - icon: "fas fa-remove-format"
        content: "문서에서 모든 또는 특정 주석 및 기타 주석 제거"

      - icon: "fas fa-comment-slash"
        content: "주석 텍스트에서 민감한 데이터 검색 및 제거‎"

      - icon: "fas fa-location-arrow"
        content: "자신의 형식 및 수정 작업 가능"

      - icon: "fas fa-border-all"
        content: "래스터 이미지 형식 및 이미지 영역 수정 지원"

      - icon: "fas fa-wrench"
        content: "XML 파일에 일련의 교정 규칙(정책) 지정"

      - icon: "fas fa-columns"
        content: "PDF로 변환하는 동안 페이지 범위 및 PDF 준수 수준 지정"

      - icon: "fas fa-file-word"
        content: "이미지 파일에서 EXIF 메타데이터 편집 또는 삭제"

      - icon: "fas fa-envelope"
        content: "PDF, Word 및 프레젠테이션 문서에 포함된 이미지 수정"

      - icon: "fas fa-print"
        content: "XML 파일로 교정 정책 저장"

    more_feature:
      - title: "손쉬운 제어로 분류된 데이터 수정"
        content: |
          .NET API용 GroupDocs.Redaction을 사용하면 지원되는 문서에서 중요한 분류 정보를 숨기거나 지우는 방법을 완벽하게 제어할 수 있습니다. Redaction API를 사용하는 것은 매우 간단하고 간단합니다.  

          다음 예에서는 지원되는 문서를 로드하고 ‎C#을 사용하여 파란색 색상 상자와 "2자리, 공백 또는 없음, 2자리, 다시 공백 및 6자리"(예: 12 34 567890)와 일치하는 모든 ‎텍스트를 수정합니다. 완료되면 접미사 "_Redacted"를 추가하여 이름을 변경하여 문서를 원래 형식으로 저장합니다.‎

          ```cs
          // Redactor 클래스의 인스턴스 생성
          using (Redactor redactor = new Redactor("sample.docx"))
          {‎
            // 수정 적용
            redactor.Apply(new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", new ReplacementOptions(System.Drawing.Color.Blue)));
            redactor.Save();
          ‎}‎
          ```

support:
    enable: true

solutions:
    enable: true
    title: "GroupDocs.Redaction은 다른 인기 있는 개발 환경을 위한 문서 보기 API를 제공합니다."

    solution:
        - img_alt: "GroupDocs.Redaction for Java"
          image: "https://www.groupdocs.cloud/templates/groupdocs/images/product-logos/groupdocs-redaction-java.png"
          product: "GroupDocs.Redaction"
          platform: "Java"
          link: "/redaction/java/"

back_to_top:
  enable: true
---
