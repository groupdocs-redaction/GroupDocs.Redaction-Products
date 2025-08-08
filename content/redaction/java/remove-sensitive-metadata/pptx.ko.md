
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: ko
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java로 PPTX 파일에서 메타데이터 제거하기"
head_description: "GroupDocs.Redaction for Java를 사용하여 PPTX 파일의 숨겨진 메타데이터를 삭제하거나 편집하세요. 콘텐츠를 보호하고 문서를 깔끔하게 유지하세요."

############################# Header ############################
title: "Java 도구로 PPTX의 메타데이터 정리하기" 
description: "Java을 사용하여 메타데이터에 저장된 개인 정보를 삭제하세요. 개인 및 비즈니스 문서 모두에 적합합니다."
subtitle: "GroupDocs.Redaction for Java의 주요 기능" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java란 무엇인가요?"
    link: "/redaction/java/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction는 Java 개발자에게 PPTX 파일에서 개인 콘텐츠를 제거하는 도구를 제공합니다. 텍스트를 삭제하고, 이미지를 숨기고, 메타데이터를 쉽게 정리할 수 있습니다.

############################# Steps ############################
steps:
    enable: true
    title: "Pptx 파일에서 메타데이터 제거하기"
    content: |
      GroupDocs.Redaction로 귀하의 Java 프로젝트에서 숨겨진 메타데이터를 몇 단계로 정리할 수 있습니다.
      
      1. Redactor를 설정하고 Pptx 파일을 로드하세요.
      2. 어떤 메타데이터 필드를 지울지 선택하세요.
      3. 레다크션 프로세스를 실행합니다.
      4. 메타데이터가 제거된 파일을 저장하세요.
   
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
        // PPTX의 메타데이터 제거하기

        // 레다크터를 사용하여 파일을 엽니다
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // 제거할 메타데이터 필드를 준비하세요
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
  title: "사용할 수 있는 더 많은 레다크션 도구"
  description: "GroupDocs.Redaction for Java는 모든 주요 파일 형식에서 민감한 정보를 지울 수 있도록 돕습니다. 문서를 깨끗하고 공유하기 쉽게 유지하세요."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "개인 정보 보호 기능 встроенные"
  features:
    # feature loop
    - title: "민감한 텍스트 제거"
      content: "문서에서 이름, 이메일 등 개인 정보를 찾아 삭제하세요."

    # feature loop
    - title: "이미지 일부 가리기"
      content: "개인적 세부 정보가 포함된 이미지의 특정 부분을 가립니다."

    # feature loop
    - title: "메타데이터 정리"
      content: "공유하기 전에 작성자 또는 제목과 같은 숨겨진 정보를 삭제하세요."
      
  code_samples_ext:
    # code sample ext loop
    - title: "메타데이터 필드 제거 예제"
      content: |
        이 예시는 PPTX 파일에서 작성자 및 제목과 같은 메타데이터를 삭제하는 방법을 보여줍니다.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  레다크터로 PPTX 파일을 엽니다
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // 작성자 메타데이터를 지정합니다
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // 제목 메타데이터를 지정합니다
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // 레다크션 규칙을 적용합니다
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // 레다크션된 파일을 저장합니다
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
    title: "Java로 PPTX에서 메타데이터 제거하기"
    exclude: "PPTX"
    description: "Java를 사용하여 숨겨진 데이터를 삭제하여 PPTX 파일을 관리하세요. 공유하기 전에 문서를 안전하게 유지하세요."
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