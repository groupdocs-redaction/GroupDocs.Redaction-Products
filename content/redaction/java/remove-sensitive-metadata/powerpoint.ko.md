
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: ko
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java로 POWERPOINT에서 메타데이터 제거하기"
head_description: "GroupDocs.Redaction for Java를 사용하여 POWERPOINT 파일의 숨겨진 메타데이터를 정리하세요. 문서를 안전하게 유지하고 보호하세요."

############################# Header ############################
title: "Java를 이용하여 POWERPOINT의 메타데이터 삭제하기" 
description: "Java를 위해 만들어진 사용자 친화적인 도구로 파일을 보호하세요. 몇 단계만으로 메타데이터를 제거하세요."
subtitle: "GroupDocs.Redaction for Java으로 얻는 것" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java란 무엇인가요?"
    link: "/redaction/java/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction는 Java 개발자에게 POWERPOINT 파일에서 내용을 정리할 수 있는 레다크션 도구입니다. 텍스트, 이미지 및 메타데이터를 청소할 수 있도록 돕습니다.

############################# Steps ############################
steps:
    enable: true
    title: "Powerpoint 파일에서 메타데이터를 청소하는 방법"
    content: |
      GroupDocs.Redaction로 귀하의 Java 앱에서 문서의 메타데이터를 신속하게 정리합니다.
      
      1. Redactor 객체를 생성하고 문서를 로드합니다.
      2. 삭제할 메타데이터 필드를 선택하십시오.
      3. 레다크션 설정을 적용하십시오.
      4. 숨겨진 데이터 없이 문서를 내보내세요.
   
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
        // POWERPOINT 파일에서 메타데이터 제거하기

        // 레다크터로 파일을 엽니다
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // 제거할 메타데이터를 설정합니다
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // 파일을 정리하고 저장하세요
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "레다크션으로 파일을 안전하게 유지하기"
  description: "GroupDocs.Redaction for Java은 개인적이거나 숨겨진 내용을 청소하여 문서가 안전하게 공유되도록 합니다. 다양한 파일 형식을 지원합니다."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "어떤 내용을 레다크션할 수 있는지"
  features:
    # feature loop
    - title: "민감한 텍스트 제거"
      content: "파일에서 개인적이나 기밀적인 단어를 찾아 삭제하세요."

    # feature loop
    - title: "이미지 영역 가리기"
      content: "보여주지 말아야 할 이미지의 일부를 가립니다."

    # feature loop
    - title: "메타데이터 정리"
      content: "숨겨진 세부정보를 삭제하기 위해 필드를 제거합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "숨겨진 메타데이터 필드 제거하기"
      content: |
        이 샘플은 POWERPOINT 문서에서 작성자와 제목 등의 정보를 지우는 방법을 보여줍니다.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  레다크터로 파일을 엽니다
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // 작성자 필드를 삭제합니다
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // 제목 필드를 삭제합니다
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // 레다크션을 적용합니다
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // 업데이트된 문서를 저장합니다
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
    title: "Java를 사용하여 POWERPOINT에서 메타데이터 정리하기"
    exclude: "POWERPOINT"
    description: "Java를 사용하여 POWERPOINT 파일에서 개인 정보를 지우는 간단한 방법입니다. 문서를 안전하게 유지하세요."
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