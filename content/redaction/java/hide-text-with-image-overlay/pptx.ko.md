
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: ko
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java 오버레이로 PPTX 프레젠테이션의 텍스트 숨기기"
head_description: "GroupDocs.Redaction for Java는 색상 오버레이를 사용하여 PPTX 파일에서 민감한 콘텐츠를 차단합니다. 슬라이드를 손상시키지 않으면서 주요 정보를 숨깁니다."

############################# Header ############################
title: "Java를 활용하여 PPTX 프레젠테이션에서 텍스트 마스킹" 
description: "Java와 GroupDocs.Redaction for Java를 사용하여 PPTX 슬라이드에서 개인 정보나 비즈니스 세부정보를 보호합니다."
subtitle: "GroupDocs.Redaction for Java의 기능 탐색" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java의 기능"
    link: "/redaction/java/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java는 Java 개발자가 PPTX 프레젠테이션에서 텍스트, 이미지 또는 메타데이터를 숨기거나 제거할 수 있도록 도와줍니다.

############################# Steps ############################
steps:
    enable: true
    title: "Pptx 슬라이드에서 개인 콘텐츠 레다션"
    content: |
      GroupDocs.Redaction for Java은 Java 개발자를 위한 콘텐츠 보호를 간단하게 만듭니다.
      
      1. 프레젠테이션 경로로 Redactor를 설정합니다.
      2. 레다션 동작을 선택합니다.
      3. 텍스트 패턴과 오버레이 색상을 추가합니다.
      4. 슬라이드를 레다션하고 저장합니다.
   
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
        // PPTX의 텍스트를 차단하기 위해 오버레이 사용

        // 프레젠테이션으로 Redactor 초기화
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // 레다션 기본 설정 선택
            // 텍스트 및 오버레이 색상 설정
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 레다션 수행 후 슬라이드 덱 저장
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "강력한 레다션 도구"
  description: "GroupDocs.Redaction for Java를 사용하여 레이아웃이나 포맷을 변경하지 않고 프레젠테이션의 민감한 콘텐츠를 차단하거나 제거하세요."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "슬라이드 전반에 걸쳐 작동하는 기능"
  features:
    # feature loop
    - title: "텍스트 숨기기 또는 바꾸기"
      content: "보여주지 말아야 할 이름, 용어 또는 메모를 보호합니다."

    # feature loop
    - title: "시각적 영역 가리기"
      content: "슬라이드의 사진이나 그래픽 섹션에 오버레이를 추가합니다."

    # feature loop
    - title: "메타데이터 지우기"
      content: "저자 정보나 편집 이력을 드러낼 수 있는 비하인드 씬 정보를 삭제합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "정규 표현식으로 텍스트 레다션"
      content: |
        정규 표현식을 사용하여 민감한 단어를 찾아서 가리도록 합니다.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  프레젠테이션 파일 열기
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // 검색 패턴과 오버레이 색상 설정
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // 레다션 규칙 실행
              redactor.apply(redaction);

              // 최종 버전 저장
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
    title: "Java 도구로 PPTX 슬라이드 보호하기"
    exclude: "PPTX"
    description: "Java 레다션 기능을 사용하여 PPTX 프레젠테이션에서 민감한 콘텐츠를 덮거나 완전히 제거합니다."
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