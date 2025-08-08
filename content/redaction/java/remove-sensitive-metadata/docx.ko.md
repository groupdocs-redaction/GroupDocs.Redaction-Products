
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: ko
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java로 DOCX의 메타데이터 삭제하기"
head_description: "GroupDocs.Redaction for Java를 사용하여 DOCX 파일의 숨겨진 메타데이터를 정리하세요. 귀하의 문서가 개인 정보를 노출하지 않도록 하세요."

############################# Header ############################
title: "Java를 사용하여 DOCX 문서의 메타데이터 정리하기" 
description: "Java을 사용하여 DOCX 파일에서 원하지 않는 메타데이터를 제거하세요. 파일은 공유나 보관 시 개인적이고 안전하게 유지하세요."
subtitle: "GroupDocs.Redaction for Java 내부의 주요 도구" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java는 무엇인가요?"
    link: "/redaction/java/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction는 Java 개발자가 DOCX 파일에서 개인 콘텐츠를 제거하는 데 도움을 줍니다. 텍스트, 이미지 및 메타데이터를 쉽게 레다크션하세요.

############################# Steps ############################
steps:
    enable: true
    title: "Docx 파일에서 숨겨진 정보 지우기"
    content: |
      GroupDocs.Redaction는 귀하의 Java 앱에서 메타데이터를 쉽게 삭제할 수 있도록 도와줍니다.
      
      1. Redactor를 초기화하고 Docx 파일을 로드합니다.
      2. 특정 메타데이터 필드를 제거하도록 도구를 설정하세요.
      3. 숨겨진 정보를 삭제하기 위해 레다크션을 적용합니다.
      4. 업데이트된 파일을 저장하십시오.
   
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
        // DOCX 파일에서 메타데이터 삭제하기

        // Redactor로 파일을 엽니다
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // 삭제할 메타데이터를 선택합니다
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
  title: "문서에서 민감한 데이터 보호하기"
  description: "GroupDocs.Redaction for Java을 사용하면 모든 유형의 파일에서 개인 콘텐츠를 숨길 수 있습니다. 숨겨진 데이터가 공유되지 않도록 하세요."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "메타데이터, 텍스트 및 이미지 레다크션 도구"
  features:
    # feature loop
    - title: "텍스트 레다크션"
      content: "문서 전반에 걸쳐 민감한 텍스트를 찾아 삭제하세요."

    # feature loop
    - title: "이미지 오버레이"
      content: "개인적 시각을 숨기기 위해 이미지의 일부를 가립니다."

    # feature loop
    - title: "메타데이터 정리"
      content: "숨겨진 정보를 드러낼 수 있는 백그라운드 메타데이터를 제거하세요."
      
  code_samples_ext:
    # code sample ext loop
    - title: "메타데이터 제거 방법"
      content: |
        이 예시는 DOCX 파일에서 작성자 및 제목과 같은 숨겨진 속성을 삭제하는 방법을 보여줍니다.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  귀하의 DOCX 문서를 엽니다
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // 청소할 작성자 필드를 선택하세요
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // 청소할 제목 필드를 선택하세요
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // 레다크션을 실행하세요
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // 최종 파일을 저장하세요
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
    title: "Java로 DOCX에서 메타데이터 정리하기"
    exclude: "DOCX"
    description: "Java를 사용하여 DOCX 문서에서 숨겨진 메타데이터를 제거하세요. 프라이버시 및 데이터 보호에 탁월합니다."
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