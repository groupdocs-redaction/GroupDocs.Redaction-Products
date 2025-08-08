
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: ko
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java로 WORD에서 메타데이터 삭제하기"
head_description: "GroupDocs.Redaction for Java로 WORD 파일에서 숨겨진 메타데이터를 신속하게 제거할 수 있습니다. 문서를 안전하고 비밀로 유지하세요."

############################# Header ############################
title: "Java로 WORD 파일에서 숨겨진 메타데이터 정리하기" 
description: "Java 도구를 사용하여 개인 정보를 제거하여 WORD 파일을 보호하세요. 비즈니스 및 개인 사용에 적합합니다."
subtitle: "GroupDocs.Redaction for Java가 당신을 도와줍니다" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java에 대해 알아보기"
    link: "/redaction/java/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction는 Java 개발자에게 WORD 파일에서 데이터를 제거하는 데 필요한 모든 것을 제공합니다. 메타데이터, 텍스트, 이미지를 정리하세요.

############################# Steps ############################
steps:
    enable: true
    title: "Word 파일에서 메타데이터 지우기"
    content: |
      GroupDocs.Redaction를 사용하여 귀하의 Java 앱에서 문서의 메타데이터를 청소하세요.
      
      1. Redactor 객체를 시작하고 Word 파일을 로드합니다.
      2. 숨겨진 메타데이터 필드를 삭제하기 위한 규칙을 정의하세요.
      3. 메타데이터를 삭제하기 위해 레다크션을 적용합니다.
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
        // WORD에서 숨겨진 메타데이터 제거하기

        // Redactor로 파일을 로드합니다
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // 메타데이터 레다크션 설정을 구성하세요
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // 레다크션을 실행하고 저장하세요
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "개인 정보 제거를 위한 더 많은 도구"
  description: "GroupDocs.Redaction for Java를 사용하여 다양한 파일 형식에서 텍스트, 이미지 및 메타데이터를 청소하세요. 민감한 데이터를 노출하지 않고 파일을 공유하세요."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "메타데이터 및 내용 레다크션 기능"
  features:
    # feature loop
    - title: "개인 텍스트 삭제"
      content: "파일에서 민감한 내용을 검색하고 제거하거나 변경하세요."

    # feature loop
    - title: "이미지 영역 가리기"
      content: "개인적인 세부 정보를 포함할 수 있는 이미지의 특정 부분을 숨기세요."

    # feature loop
    - title: "메타데이터 필드 제거"
      content: "작성자, 제목 등을 삭제하여 프라이버시를 보장하세요."
      
  code_samples_ext:
    # code sample ext loop
    - title: "문서의 메타데이터 필드 정리하기"
      content: |
        이 샘플은 WORD 파일에서 작성자와 제목과 같은 메타데이터를 삭제하는 방법을 설명합니다.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  파일을 처리합니다
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // 작성자 필드를 지웁니다
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // 제목 필드를 지웁니다
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // 레다크션을 수행합니다
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // 깨끗한 파일을 저장합니다
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
    title: "Java로 WORD에서 메타데이터 삭제하기"
    exclude: "WORD"
    description: "Java는 WORD 파일에서 숨겨진 메타데이터를 삭제할 수 있도록 돕습니다. 문서를 안전하게 보호하는 간단한 방법입니다."
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