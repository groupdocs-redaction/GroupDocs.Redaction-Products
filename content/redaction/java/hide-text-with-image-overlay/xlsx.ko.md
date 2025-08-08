
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: ko
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java 오버레이로 XLSX의 텍스트 차단"
head_description: "GroupDocs.Redaction for Java는 색상 블록을 사용하여 XLSX 파일에서 민감한 정보를 숨길 수 있게 해줍니다. 레이아웃을 유지하면서 데이터 숨기기."

############################# Header ############################
title: "Java를 사용하여 XLSX에서 데이터 숨기기" 
description: "Java와 GroupDocs.Redaction for Java를 사용하여 XLSX 파일에서 개인 콘텐츠를 마스킹하면서 형식에 영향을 주지 않습니다."
subtitle: "GroupDocs.Redaction for Java의 주요 기능" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java의 장점"
    link: "/redaction/java/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java는 Java 개발자가 XLSX 스프레드시트에서 콘텐츠를 숨기거나 정리하는 데 빠르고 효과적인 도구를 제공합니다.

############################# Steps ############################
steps:
    enable: true
    title: "Xlsx 문서에서 정보 보호하기"
    content: |
      GroupDocs.Redaction for Java를 사용하여 간단한 코드로 파일을 안전하게 유지하십시오 Java.
      
      1. 파일 경로로 Redactor 생성.
      2. 레다션 로직을 설정합니다.
      3. 키워드 및 오버레이 색상 선택.
      4. 레다션하고 파일을 저장합니다.
   
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
        // XLSX에서 블록을 사용하여 정보 숨기기

        // Redactor로 파일 로드
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // 레다션 기본 설정 지정
            // 텍스트 및 색상 추가
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 업데이트된 문서 저장
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "내장된 개인정보 보호 기능"
  description: "GroupDocs.Redaction for Java를 사용하여 구조를 손상시키지 않고 파일에서 콘텐츠를 차단하거나 삭제합니다."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "쉬운 개인정보 도구"
  features:
    # feature loop
    - title: "텍스트 편집 또는 숨기기"
      content: "보호가 필요한 텍스트를 찾아 차단합니다."

    # feature loop
    - title: "이미지 부분 가리기"
      content: "차트 영역이나 이미지 위에 색상 블록을 적용합니다."

    # feature loop
    - title: "숨겨진 정보 제거하기"
      content: "사용자 정보나 파일 기록과 같은 메타데이터를 삭제합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "정규 표현식을 사용하여 콘텐츠 레다션"
      content: |
        패턴 일치로 텍스트를 자동으로 찾고 숨기세요.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  스프레드시트 열기
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // 패턴 및 오버레이 색상 정의하기
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // 레다션 규칙 적용
              redactor.apply(redaction);

              // 결과 내보내기
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
    title: "Java로 XLSX 시트 레다션"
    exclude: "XLSX"
    description: "Java의 도구를 사용하여 XLSX에서 민감한 데이터를 숨기거나 정리합니다."
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