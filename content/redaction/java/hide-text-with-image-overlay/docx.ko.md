
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: ko
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java를 사용한 DOCX의 텍스트 숨기기"
head_description: "GroupDocs.Redaction for Java를 사용하여 DOCX 파일에서 개인 텍스트를 차단하세요. 레이아웃을 변경하지 않으면서 민감한 데이터를 숨기세요."

############################# Header ############################
title: "Java에서 오버레이로 DOCX 텍스트 보호하기" 
description: "빠르게 DOCX 파일에서 개인, 법적 또는 비즈니스 세부정보를 Java와 GroupDocs.Redaction for Java로 숨깁니다."
subtitle: "GroupDocs.Redaction for Java의 주요 도구" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java란"
    link: "/redaction/java/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java는 Java 개발자에게 DOCX 파일을 정리하는 도구를 제공합니다. 이름, 숫자 또는 메모를 쉽고 빠르게 레다션합니다.

############################# Steps ############################
steps:
    enable: true
    title: "Docx의 민감한 콘텐츠 표시"
    content: |
      GroupDocs.Redaction for Java를 사용하여 Java 프로젝트에서 문서를 쉽게 정리합니다.
      
      1. 파일로 Redactor를 초기화합니다.
      2. 레다ctions 방식 설정.
      3. 숨길 텍스트 및 오버레이 색상 선택.
      4. 레다 레션을 적용하고 파일을 저장합니다.
   
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
        // DOCX에서 오버레이로 텍스트 가리기

        // Redactor를 생성하고 문서를 로드합니다.
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // 레다션 옵션 선택
            // 텍스트 및 색상 선택
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 레다션된 버전 저장
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "일상적인 사용을 위한 레다션 도구"
  description: "GroupDocs.Redaction for Java는 사용 가능성을 유지하면서 문서 전반에 걸쳐 민감한 세부 정보를 숨길 수 있는 간단한 옵션을 제공합니다."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "쉬운 레다션 옵션"
  features:
    # feature loop
    - title: "찾고 텍스트 변경"
      content: "몇 초 만에 단어를 숨기거나 바꿉니다."

    # feature loop
    - title: "이미지의 일부 차단"
      content: "사진 또는 스캔된 콘텐츠의 부분을 마스킹합니다."

    # feature loop
    - title: "배경 정보 지우기"
      content: "작성자 또는 날짜와 같은 숨겨진 메타데이터를 제거합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "정규 표현식을 사용하여 텍스트 찾고 숨기기"
      content: |
        패턴 일치를 사용하여 주요 구를 자동으로 숨깁니다.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  레다션할 문서를 엽니다.
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // 정규식 패턴과 오버레이 스타일을 설정합니다.
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // 레다션 로직 적용
              redactor.apply(redaction);

              // 정리된 문서를 저장합니다.
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
    title: "Java를 사용하여 DOCX 파일 레다이션"
    exclude: "DOCX"
    description: "Java의 도구를 사용하여 DOCX에서 민감한 콘텐츠를 숨기거나 제거하세요."
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