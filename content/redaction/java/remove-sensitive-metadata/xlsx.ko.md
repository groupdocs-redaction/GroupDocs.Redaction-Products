
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: ko
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java로 XLSX에서 메타데이터 제거하기"
head_description: "GroupDocs.Redaction for Java는 XLSX 파일의 숨겨진 메타데이터를 정리하는 데 도움을 줍니다. 문서를 개인적으로 유지하고 원하지 않는 세부 정보를 제거하세요."

############################# Header ############################
title: "Java에서 XLSX 파일의 메타데이터 제거하기" 
description: "Java를 사용하여 XLSX 문서에서 개인적이거나 숨겨진 세부 정보를 제거하세요. 업무 및 개인 용도에 이상적입니다."
subtitle: "GroupDocs.Redaction for Java로 할 수 있는 일" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java에 대해"
    link: "/redaction/java/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction는 Java 개발자들에게 XLSX 파일에서 텍스트, 메타데이터를 제어할 도구를 제공합니다. 필요에 따라 내용 삭제를 지원합니다.

############################# Steps ############################
steps:
    enable: true
    title: "Xlsx 파일에서 메타데이터 삭제하기"
    content: |
      GroupDocs.Redaction는 귀하의 Java 프로젝트에서 민감한 메타데이터를 신속하게 제거하도록 돕습니다.
      
      1. Redactor를 시작하고 Xlsx 파일을 엽니다.
      2. 제거할 메타데이터 필드를 선택하세요.
      3. 레다크션을 실행하여 파일에서 지웁니다.
      4. 청소된 버전을 저장하세요.
   
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
        // XLSX 파일에서 숨겨진 메타데이터 제거하기

        // Redactor를 사용하여 파일을 엽니다
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // 제거할 메타데이터 필드를 선택하세요
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // 레다크션을 적용하고 파일을 저장하세요
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "민감한 정보 숨기기"
  description: "GroupDocs.Redaction for Java을 사용하여 여러 문서 유형에서 개인 데이터를 청소할 수 있습니다. 파일을 안전하게 유지하는 간단한 방법입니다."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "내용 청소 기능"
  features:
    # feature loop
    - title: "텍스트 삭제"
      content: "민감한 텍스트를 검색하고 제거하세요."

    # feature loop
    - title: "이미지 내용 가리기"
      content: "일부 이미지 섹션을 오버레이로 숨깁니다."

    # feature loop
    - title: "메타데이터 삭제"
      content: "개인 또는 비즈니스 세부 정보를 공개할 수 있는 배경 정보를 제거하세요."
      
  code_samples_ext:
    # code sample ext loop
    - title: "메타데이터 제거 예제"
      content: |
        이 예시는 XLSX 파일에서 작성자나 제목과 같은 메타데이터를 제거하는 방법을 보여줍니다.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  문서를 엽니다
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // 레다크션할 작성자 필드를 선택합니다
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // 레다크션할 제목 필드를 선택합니다
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // 레다크션 도구를 실행합니다
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // 결과를 저장합니다
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
    title: "Java를 사용하여 XLSX에서 메타데이터 정리하기"
    exclude: "XLSX"
    description: "Java 도구를 사용하여 XLSX 파일에서 숨겨진 데이터를 제거하세요. 깨끗하고 안전한 문서를 공유하세요."
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