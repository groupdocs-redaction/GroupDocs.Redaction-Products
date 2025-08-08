
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: ko
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java 오버레이로 WORD에서 텍스트 레다션"
head_description: "GroupDocs.Redaction for Java를 사용하여 문서 구조를 유지하면서 WORD 파일에서 민감한 텍스트를 색 블록으로 가릴 수 있습니다."

############################# Header ############################
title: "Java와 함께 WORD 파일에서 레이아웃 마스킹" 
description: "Java와 GroupDocs.Redaction for Java를 사용하여 WORD 문서에서 중요한 세부정보를 숨깁니다."
subtitle: "GroupDocs.Redaction for Java의 기능" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java 소개"
    link: "/redaction/java/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java는 Java 사용자가 WORD 레다션을 완벽하게 제어할 수 있도록 도와줍니다. 원하는 것을 숨기십시오—텍스트, 비주얼 또는 메타데이터.

############################# Steps ############################
steps:
    enable: true
    title: "Word 형식에서 개인 정보 보호"
    content: |
      GroupDocs.Redaction for Java은 Java 개발자에게 파일을 정리하고 콘텐츠를 안전하게 보호하는 빠른 방법을 제공합니다.
      
      1. Redactor를 시작하고 Word 파일을 로드합니다.
      2. 레다션 옵션을 선택합니다.
      3. 텍스트 패턴 및 오버레이 색상을 추가합니다.
      4. 레다션을 실행하고 파일을 저장합니다.
   
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
        // WORD에서 오버레이를 사용하여 텍스트 숨기기

        // Redactor로 문서를 여세요
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // 레다션 기본 설정을 설정합니다.
            // 키워드 추가 후 색상 선택
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 레다션을 적용하고 결과 저장
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "레다션 기능 추가"
  description: "GroupDocs.Redaction for Java를 사용하여 파일에서 가시적 및 숨겨진 콘텐츠를 제거하면서 레이아웃을 유지하세요."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "간단하고 깔끔한 출력"
  features:
    # feature loop
    - title: "텍스트 교체"
      content: "보여 주면 안 되는 단어 또는 용어를 가립니다."

    # feature loop
    - title: "비주얼 마스킹"
      content: "사진이나 그 일부분을 숨기기 위해 색상 오버레이를 사용합니다."

    # feature loop
    - title: "메타데이터 지우기"
      content: "파일 속성에 숨겨진 세부정보를 제거합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "정규 표현식으로 레다션"
      content: |
        정규 표현식을 사용하여 특정 콘텐츠를 자동으로 숨기는 방법을 알아보세요.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  레다션할 문서를 로드하세요.
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // 정규식 패턴과 오버레이 색상을 정의하세요.
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // 레다션을 적용합니다.
              redactor.apply(redaction);

              // 정리된 버전을 저장합니다.
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Java를 사용하여 WORD에서 콘텐츠 레다션"
    exclude: "WORD"
    description: "Java를 사용하여 민감한 데이터를 숨기거나 제거하여 WORD 문서를 비공식적으로 유지하세요."
    items: 
        # format loop 1
        - name: "PDF 수정"
          format: "PDF"
          link: "/redaction/java/hide-text-with-image-overlay//pdf/"
          description: "Adobe 휴대용 문서 형식"

        # format loop 2
        - name: "Word 문서 수정"
          format: "WORD"
          link: "/redaction/java/hide-text-with-image-overlay//word/"
          description: "MS Word 및 Open Office 문서"
          
        # format loop 3
        - name: "Excel 문서 수정"
          format: "EXCEL"
          link: "/redaction/java/hide-text-with-image-overlay//excel/"
          description: "MS Excel 및 Open Office 스프레드시트"

        # format loop 4
        - name: "PowerPoint 수정"
          format: "POWERPOINT"
          link: "/redaction/java/hide-text-with-image-overlay//powerpoint/"
          description: "MS PowerPoint 및 Open Office 프레젠테이션"

        # format loop 5
        - name: "DOCX 수정"
          format: "DOCX"
          link: "/redaction/java/hide-text-with-image-overlay//docx/"
          description: "Microsoft Word Open XML 문서"
          
        # format loop 6
        - name: "XLSX 수정"
          format: "XLSX"
          link: "/redaction/java/hide-text-with-image-overlay//xlsx/"
          description: "Microsoft Excel Open XML 스프레드시트"
          
        # format loop 7
        - name: "PPTX 수정"
          format: "PPTX"
          link: "/redaction/java/hide-text-with-image-overlay//pptx/"
          description: "PowerPoint Open XML 프레젠테이션"


---