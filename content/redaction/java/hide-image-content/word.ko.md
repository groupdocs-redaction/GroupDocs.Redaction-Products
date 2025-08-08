
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: ko
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java를 사용한 WORD에서 이미지 숨기기"
head_description: "GroupDocs.Redaction for Java을 사용하여 WORD 파일에서 민감한 이미지를 색상 오버레이로 커버하세요. 문서 레이아웃을 변경하지 않고 개인 데이터를 보호하세요."

############################# Header ############################
title: "Java를 사용한 WORD 파일의 민감한 이미지 보호" 
description: "Java를 통해 Word 파일의 개인 및 비즈니스 비주얼을 안전하게 보호하세요. 빠르고 신뢰할 수 있는 이미지 레닥션이 간편하게 이루어집니다."
subtitle: "GroupDocs.Redaction for Java의 주요 기능" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java 소개"
    link: "/redaction/java/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java은 Java 개발자에게 WORD 파일에서 콘텐츠를 숨기거나 지우는 간편한 도구를 제공합니다. 다양한 형식에서 텍스트, 이미지 및 메타데이터를 레닥션하세요.

############################# Steps ############################
steps:
    enable: true
    title: "Word 파일에서 기밀 데이터 보호"
    content: |
      GroupDocs.Redaction for Java은 Java 애플리케이션에서 문서 내부의 개인 정보를 쉽게 숨길 수 있도록 도와줍니다.
      
      1. Redactor를 초기화하고 Word 파일을 로드합니다.
      2. 필요한 레닥션 설정을 정의합니다.
      3. 이미지 영역을 강조하고 오버레이 색상을 선택합니다.
      4. 레닥션을 실행하고 업데이트된 문서를 저장합니다.
   
    code:
      platform: "java"
      copy_title: "복사"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "샘플 수정 내용"
      install:
        command: |
          <dependencies>
            <dependency>
              <groupId>com.groupdocs</groupId>
              <artifactId>groupdocs-redaction</artifactId>
              <version>{0}</version>
            </dependency>
          </dependencies>

          <repositories>
            <repository>
              <id>repository.groupdocs.com</id>
              <name>GroupDocs Repository</name>
              <url>https://repository.groupdocs.com/repo/</url>
            </repository>
          </repositories>
        copy_tip: "클릭하여 복사"
        copy_done: "복사됨"
      links:
        #  loop
        - title: "더 많은 예시"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "문서"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // WORD에서 민감한 이미지 콘텐츠 숨기기

        // Redactor를 사용하여 파일을 로드합니다.
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // 오버레이 색상 및 크기를 선택합니다.
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // 커버할 이미지 영역을 표시합니다.
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // 오버레이를 적용하고 파일을 저장합니다.
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "숨기기 및 콘텐츠 삭제 도구"
  description: "GroupDocs.Redaction for Java은 여러 파일 형식에서 민감한 데이터를 숨기거나 삭제하는 데 도움을 줍니다. 문서를 안전하고 잘 구조화된 상태로 유지하세요."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "효과적인 레닥션 기능"
  features:
    # feature loop
    - title: "텍스트 찾기 및 교체"
      content: "문서에서 개인 텍스트를 검색하고 교체하여 데이터 보안을 유지하세요."

    # feature loop
    - title: "이미지 영역 커버"
      content: "전체 이미지를 숨기거나 선택된 지역을 레닥션하여 개인 정보를 보장합니다."

    # feature loop
    - title: "메타데이터 지우기"
      content: "기밀 정보 보호를 위해 숨겨진 메타데이터를 제거하거나 수정하세요."
      
  code_samples_ext:
    # code sample ext loop
    - title: "오버레이를 사용하여 이미지 데이터 숨기기"
      content: |
        이 샘플은 오버레이를 사용하여 문서에서 민감한 이미지 콘텐츠를 보호하는 방법을 보여줍니다.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  문서를 로드합니다.
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // 오버레이 크기, 위치 및 색상을 설정합니다.
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // 첫 페이지의 이미지 영역을 표시합니다.
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // 해당 영역을 오버레이로 커버합니다.
              redactor.apply(redaction);

              // 레닥션된 문서를 저장합니다.
              SaveOptions save_options = new SaveOptions();
              save_options.setAddSuffix(true);
              save_options.setRasterizeToPDF(false);
              redactor.save(save_options);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "복사"
        install:
          command: |
            <dependencies>
              <dependency>
                <groupId>com.groupdocs</groupId>
                <artifactId>groupdocs-redaction</artifactId>
                <version>{0}</version>
              </dependency>
            </dependencies>
            <repositories>
              <repository>
                <id>repository.groupdocs.com</id>
                <name>GroupDocs Repository</name>
                <url>https://repository.groupdocs.com/repo/</url>
              </repository>
            </repositories>
          copy_tip: "클릭하여 복사"
          copy_done: "복사됨"
        top_links:
          #  loop
          - title: "결과 다운로드"
            icon: "download"
            link: "/examples/redaction/formats/hide-image-content.pdf"
        links:
          #  loop
          - title: "더 많은 예시"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "문서"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "시작할 준비가 되셨나요?"
  description: "GroupDocs.Redaction 기능을 무료로 사용해 보시거나 라이센스를 요청하세요"
  items:
    #  loop
    - title: "Maven 다운로드"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "라이센스"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Java을 사용한 WORD 파일 숨기기"
    exclude: "WORD"
    description: "Java를 사용하여 WORD 파일의 민감한 데이터를 숨기거나 삭제하세요. 문서를 안전하게 보관하는 효과적인 방법입니다."
    items: 
        # format loop 1
        - name: "PDF 수정"
          format: "PDF"
          link: "/redaction/java/hide-image-content//pdf/"
          description: "Adobe 휴대용 문서 형식"

        # format loop 2
        - name: "Word 문서 수정"
          format: "WORD"
          link: "/redaction/java/hide-image-content//word/"
          description: "MS Word 및 Open Office 문서"
          
        # format loop 3
        - name: "Excel 문서 수정"
          format: "EXCEL"
          link: "/redaction/java/hide-image-content//excel/"
          description: "MS Excel 및 Open Office 스프레드시트"

        # format loop 4
        - name: "PowerPoint 수정"
          format: "POWERPOINT"
          link: "/redaction/java/hide-image-content//powerpoint/"
          description: "MS PowerPoint 및 Open Office 프레젠테이션"

        # format loop 5
        - name: "이미지 수정"
          format: "IMAGE"
          link: "/redaction/java/hide-image-content//image/"
          description: "인기 이미지 형식"

        # format loop 6
        - name: "사진 수정"
          format: "PHOTO"
          link: "/redaction/java/hide-image-content//photo/"
          description: "사진 형식"

        # format loop 7
        - name: "DOCX 수정"
          format: "DOCX"
          link: "/redaction/java/hide-image-content//docx/"
          description: "Microsoft Word Open XML 문서"
          
        # format loop 8
        - name: "XLSX 수정"
          format: "XLSX"
          link: "/redaction/java/hide-image-content//xlsx/"
          description: "Microsoft Excel Open XML 스프레드시트"
          
        # format loop 9
        - name: "PPTX 수정"
          format: "PPTX"
          link: "/redaction/java/hide-image-content//pptx/"
          description: "PowerPoint Open XML 프레젠테이션"

        # format loop 10
        - name: "JPEG 수정"
          format: "JPEG"
          link: "/redaction/java/hide-image-content//jpeg/"
          description: "JPEG 이미지"


---