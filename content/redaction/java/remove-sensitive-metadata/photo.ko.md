
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: ko
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java로 PHOTO에서 메타데이터 삭제하기"
head_description: "GroupDocs.Redaction for Java은 PHOTO 파일에서 숨겨진 데이터를 제거하여 개인 또는 비즈니스 세부 정보에 노출되지 않도록 도와줍니다."

############################# Header ############################
title: "Java로 PHOTO에서 메타데이터 제거하기" 
description: "GroupDocs.Redaction for Java 도구를 사용하여 개인적인 메타데이터를 제거하고 PHOTO 파일을 안전하게 유지하세요."
subtitle: "GroupDocs.Redaction for Java의 주요 기능" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java에 대해 알아보기"
    link: "/redaction/java/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction는 Java 개발자에게 PHOTO 파일에서 텍스트, 이미지, 메타데이터를 포함한 민감한 콘텐츠를 숨길 수 있는 도구를 제공합니다.

############################# Steps ############################
steps:
    enable: true
    title: "Photo 파일에서 메타데이터 어떻게 제거하나요?"
    content: |
      GroupDocs.Redaction을 사용하여 귀하의 Java 앱에서 문서의 메타데이터를 지우세요.
      
      1. Redactor를 시작하고 Photo 파일을 열어보세요.
      2. 숨겨진 필드를 삭제할 규칙을 설정하세요.
      3. 레다크션을 적용하여 파일을 청소하세요.
      4. 업데이트된 파일을 저장하세요.
   
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
        // PHOTO 파일에서 메타데이터 정리하기

        // Redactor를 사용하여 파일을 엽니다
        final Redactor redactor = new Redactor("input.jpeg");
        try
        {
            // 레다크션할 메타데이터 필드를 선택하세요
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // 변경 사항을 적용하고 저장하세요
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "문서에서 개인 정보 제거하기"
  description: "GroupDocs.Redaction for Java은 민감한 텍스트, 이미지 콘텐츠 및 메타데이터를 삭제하여 파일을 청청하는 데 도움을 줍니다. 프라이버시 및 보안을 위한 훌륭한 도구입니다."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "유용한 레다크션 기능"
  features:
    # feature loop
    - title: "텍스트 청소"
      content: "노출하고 싶지 않은 단어 또는 숫자를 찾아 삭제합니다."

    # feature loop
    - title: "이미지 레다크션"
      content: "민감한 콘텐츠가 포함된 이미지 일부를 가립니다."

    # feature loop
    - title: "메타데이터 삭제"
      content: "파일 세부 정보를 청소하여 개인 정보를 담고 있는 내용을 지웁니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "숨겨진 메타데이터 필드 삭제하기"
      content: |
        이 예시는 PHOTO 문서에서 작성자 및 제목과 같은 필드를 제거하는 방법을 보여줍니다.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  PHOTO 파일을 레다크터에서 엽니다
          final Redactor redactor = new Redactor("source.jpeg");
          try
          {
              // 작성자 필드를 레다크션합니다
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // 제목 필드를 레다크션합니다
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // 프로세스를 실행합니다
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // 정리된 파일을 저장합니다
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "Java로 PHOTO에서 메타데이터 제거하기"
    exclude: "PHOTO"
    description: "Java를 사용하여 PHOTO 문서를 보호하기 위해 숨겨진 메타데이터를 제거하세요."
    items: 
        # format loop 1
        - name: "PDF 수정"
          format: "PDF"
          link: "/redaction/java/remove-sensitive-metadata//pdf/"
          description: "Adobe 휴대용 문서 형식"

        # format loop 2
        - name: "Word 문서 수정"
          format: "WORD"
          link: "/redaction/java/remove-sensitive-metadata//word/"
          description: "MS Word 및 Open Office 문서"
          
        # format loop 3
        - name: "Excel 문서 수정"
          format: "EXCEL"
          link: "/redaction/java/remove-sensitive-metadata//excel/"
          description: "MS Excel 및 Open Office 스프레드시트"

        # format loop 4
        - name: "PowerPoint 수정"
          format: "POWERPOINT"
          link: "/redaction/java/remove-sensitive-metadata//powerpoint/"
          description: "MS PowerPoint 및 Open Office 프레젠테이션"

        # format loop 5
        - name: "이미지 수정"
          format: "IMAGE"
          link: "/redaction/java/remove-sensitive-metadata//image/"
          description: "인기 이미지 형식"

        # format loop 6
        - name: "사진 수정"
          format: "PHOTO"
          link: "/redaction/java/remove-sensitive-metadata//photo/"
          description: "사진 형식"

        # format loop 7
        - name: "DOCX 수정"
          format: "DOCX"
          link: "/redaction/java/remove-sensitive-metadata//docx/"
          description: "Microsoft Word Open XML 문서"
          
        # format loop 8
        - name: "XLSX 수정"
          format: "XLSX"
          link: "/redaction/java/remove-sensitive-metadata//xlsx/"
          description: "Microsoft Excel Open XML 스프레드시트"
          
        # format loop 9
        - name: "PPTX 수정"
          format: "PPTX"
          link: "/redaction/java/remove-sensitive-metadata//pptx/"
          description: "PowerPoint Open XML 프레젠테이션"

        # format loop 10
        - name: "JPEG 수정"
          format: "JPEG"
          link: "/redaction/java/remove-sensitive-metadata//jpeg/"
          description: "JPEG 이미지"


---