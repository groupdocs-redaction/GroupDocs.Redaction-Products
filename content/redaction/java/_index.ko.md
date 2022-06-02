---
layout: "product"
date: 2021-04-27T09:31:06+03:00
draft: false

product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

head_title: "자바 수정 API | PDF Word Excel 이미지에서 민감한 데이터 숨기기"
head_description: "Java 문서 수정 API – 다양한 수정 유형을 통해 PDF, Word, Excel, PowerPoint 프레젠테이션 및 래스터 이미지에서 개인 데이터 숨기기."

title: "Java API를 통해 개인 정보 수정"
description: "Java 수정 API를 사용하여 문서, 워크시트, 프레젠테이션, PDF 및 래스터 이미지 파일에서 개인 정보 및 메타데이터 제외 또는 숨기기."
button:
    enable: true

submenu:
    enable: true
    
    left:
        img_alt: "GroupDocs.Redaction for Java"
        image: "https://www.groupdocs.cloud/templates/groupdocs/images/product-logos/groupdocs-redaction-java.png"
        product: "GroupDocs.Redaction"
        platform: "Java"

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

            - link: "https://purchase.groupdocs.com/pricing/redaction/java"
              text: "가격"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/java/"
        link_buy: "https://purchase.groupdocs.com"

overview:
    enable: true
    content: |
      Java API용 GroupDocs.Redaction을 사용하면 개발자가 Microsoft Word, Excel, PowerPoint, PDF 및 이미지와 같은 인기 있는 파일 형식에서 중요한 데이터를 제거하여 사용 및 배포할 수 있지만 기밀 정보도 보호할 수 있습니다. 교정 라이브러리는 텍스트, 메타데이터 및 주석 교정 유형을 통해 주민등록번호, 의료 정보, 금융, 소유권, 법률 또는 거래 세부 정보를 포함한 모든 유형의 분류 정보를 교정할 수 있는 단일 형식 독립 인터페이스를 제공합니다. 문서를 원본 형식으로 저장하고 원본 페이지의 래스터 이미지로 삭제된 PDF 문서를 만들 수 있습니다.
    tabs:
      enable: true     
      
      tab_one:
        description: |
          다음은 Java용 GroupDocs.Redaction의 개요입니다.

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
          Java용 GroupDocs.Redaction은 다음 [문서 파일 형식](https://docs.groupdocs.com/redaction/java/supported-document-formats/)을 지원합니다.

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
          Java용 GroupDocs.Redaction은 다음 운영 체제, 프레임워크 및 패키지 ‎관리자를 지원합니다.‎
        
        left:
          enable: true
          table:
            - icon: "fab fa-windows"
              title: "운영체제"
              content: |
                * 마이크로소프트 윈도우 데스크탑
                * 마이크로소프트 윈도우 서버
                * 리눅스
                * 맥 OS

            - icon: "fas fa-code"
              title: "지원되는 프레임워크"
              content: |
                * 자바 7(1.7) 이상

        right:
          enable: true
          table:
            - icon: "fas fa-cogs"
              title: "개발 환경"
              content: |
                * 넷빈
                * IntelliJ 아이디어
                * 이클립스
            - icon: "fas fa-tools"
              title: "빌드 자동화 도구"
              content: |
                * 메이븐

features:
    enable: true
    title: "Java 기능을 위한 GroupDocs.Redaction"

    feature:
      - icon: "fas fa-copy"
        content: "검색 문자열과 정확히 일치하는 항목 검색 및 수정"

      - icon: "fas fa-eye"
        content: "수정 프로세스를 제어하고 특정 일치 항목을 건너뜁니다."

      - icon: "fas fa-bolt"
        content: "정규식을 사용하여 찾기 및 수정"
      
      - icon: "fas fa-file-powerpoint"
        content: "사무실 형식 및 PDF에 대한 내장 지원"

      - icon: "fas fa-code"
        content: "메타데이터 삭제 또는 메타데이터 값 수정"

      - icon: "fas fa-cloud"
        content: "특정 워크시트 및 열에 대한 수정 제한"

      - icon: "fas fa-remove-format"
        content: "주석 제거 또는 텍스트 수정"

      - icon: "fas fa-comment-slash"
        content: "텍스트(예외 코드) 또는 그래픽(색 사각형) 교정 사용‎"

      - icon: "fas fa-location-arrow"
        content: "문서를 원본 형식으로 저장하거나 원본 페이지의 래스터 이미지가 포함된 PDF로 저장"

      - icon: "fas fa-border-all"
        content: "래스터 이미지 형식 및 이미지 영역 수정 지원"

      - icon: "fas fa-wrench"
        content: "사용자 지정 수정 및 형식 구현을 위한 통합 인터페이스"

      - icon: "fas fa-columns"
        content: "이미지 파일에서 EXIF 메타데이터 편집 또는 제거"

      - icon: "fas fa-file-word"
        content: "PDF, Word 및 프레젠테이션 문서에 포함된 이미지 수정"

    more_feature:
      - title: "기밀 데이터를 수정하여 개인 정보 보호"
        content: |
          Java 라이브러리용 GroupDocs.Redaction은 개발자가 다양한 교정 유형을 사용하여 지원되는 문서에서 텍스트와 이미지를 수정할 수 있도록 합니다. Redaction API를 사용하는 것은 간단하고 간단합니다.  

          다음 코드 예제에서는 수정 범위가 특정 워크시트 및/또는 열로 제한될 수 있는 Microsoft Excel 스프레드시트와 같은 표 형식 문서를 사용합니다. 필터를 사용하여 "고객" 워크시트의 전자 메일이 있는 두 번째 열을 수정하고 문서의 다른 모든 전자 메일은 그대로 둡니다.
          
          ```java
          final Redactor redactor  = new Redactor("sample.xlsx");
          try
          {
              CellFilter filter = new CellFilter();
              filter.setColumnIndex(1);
              filter.setWorkSheetName("Customers");
              Pattern expression = Pattern.compile("^\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$");
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

support:
    enable: true

solutions:
    enable: true
    title: "GroupDocs.Redaction은 다른 인기 있는 개발 환경을 위한 문서 보기 API를 제공합니다."

    solution:
        - img_alt: "GroupDocs.Redaction for .NET"
          image: "https://www.groupdocs.cloud/templates/groupdocs/images/product-logos/groupdocs-redaction-net.png"
          product: "GroupDocs.Redaction"
          platform: ".NET"
          link: "/redaction/net/"

back_to_top:
  enable: true
---
