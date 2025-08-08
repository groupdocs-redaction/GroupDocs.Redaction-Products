
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: ko
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java를 사용한 IMAGE에서 이미지 숨기기"
head_description: "GroupDocs.Redaction for Java을 사용하여 IMAGE 파일에서 민감한 이미지 영역을 색상 오버레이로 마스킹하세요. 문서 레이아웃을 변경하지 않고 중요한 데이터를 안전하게 유지하세요."

############################# Header ############################
title: "Java를 사용한 IMAGE 파일에서 개인 이미지 보호" 
description: "Java을 통해 IMAGE 파일에서 비즈니스 및 개인 이미지를 안전하게 보호하세요. 신속하고 신뢰할 수 있는 데이터 보호를 위한 간편한 도구입니다."
subtitle: "GroupDocs.Redaction for Java의 주요 기능" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java 소개"
    link: "/redaction/java/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java은 Java 개발자에게 IMAGE 파일에서 콘텐츠를 숨기거나 삭제하는 도구를 제공합니다. 텍스트, 이미지 및 메타데이터를 신속하게 마스킹하여 문서를 보호하세요.

############################# Steps ############################
steps:
    enable: true
    title: "Image 파일에서 콘텐츠 보호를 위한 오버레이 사용"
    content: |
      귀하의 Java 애플리케이션 안에서 민감한 영역을 신속하게 커버하세요.
      
      1. Redactor 객체를 생성하고 Image 파일 경로를 지정합니다.
      2. 필요한 레닥션 옵션을 설정합니다.
      3. 이미지 섹션을 선택하고 오버레이 색상을 선택합니다.
      4. 레닥션을 처리하고 마스킹된 파일을 저장합니다.
   
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
        // IMAGE에서 이미지 콘텐츠 숨기기

        // Redactor로 파일을 로드합니다.
        final Redactor redactor = new Redactor("input.png");
        try
        {
            // 오버레이 차원 및 색상을 설정합니다.
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // 보호할 영역을 선택합니다.
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
  title: "모든 문서에서 민감한 콘텐츠 레닥션"
  description: "GroupDocs.Redaction for Java은 여러 파일 형식에서 개인 데이터를 숨기거나 삭제할 수 있도록 돕습니다. 배포를 위해 문서가 깔끔하고 안전하게 유지되도록 보장하세요."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "완벽한 레닥션 도구"
  features:
    # feature loop
    - title: "텍스트 찾아서 교체하기"
      content: "문서에서 민감한 텍스트를 찾아서 교체하여 정보를 보호하세요."

    # feature loop
    - title: "비밀 이미지를 오버레이로 숨기기"
      content: "전체 이미지나 특정 부분을 숨기기 위해 오버레이를 적용하세요."

    # feature loop
    - title: "메타데이터 정리"
      content: "데이터 노출을 방지하기 위해 숨겨진 메타데이터를 삭제하거나 수정하세요."
      
  code_samples_ext:
    # code sample ext loop
    - title: "오버레이로 이미지 영역 마스킹"
      content: |
        이 코드 예제는 오버레이를 사용하여 민감한 이미지 부분을 숨기는 방법을 보여줍니다.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  편집을 위해 파일을 엽니다.
          final Redactor redactor = new Redactor("source.png");
          try
          {
              // 오버레이 크기, 색상 및 위치를 정의합니다.
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // 첫 페이지에서 이미지 영역을 선택합니다.
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // 오버레이를 적용하여 콘텐츠를 마스킹합니다.
              redactor.apply(redaction);

              // 변경된 파일을 저장합니다.
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
    title: "Java 레닥션을 사용한 IMAGE 파일 보호"
    exclude: "IMAGE"
    description: "Java를 사용하여 IMAGE 파일에서 민감한 데이터를 숨기거나 삭제하세요. 문서 보호를 위한 신뢰할 수 있는 솔루션입니다."
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