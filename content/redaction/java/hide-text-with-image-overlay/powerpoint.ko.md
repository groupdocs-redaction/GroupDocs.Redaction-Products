
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: ko
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java 오버레이로 POWERPOINT에서 텍스트 보호"
head_description: "GroupDocs.Redaction for Java를 통해 간단한 오버레이 상자를 사용하여 POWERPOINT 슬라이드에서 개인 텍스트를 차단할 수 있습니다. 레이아웃을 변경하지 않고도 가능합니다."

############################# Header ############################
title: "Java를 사용한 POWERPOINT의 텍스트 숨기기" 
description: "Java와 GroupDocs.Redaction for Java를 사용하여 POWERPOINT 슬라이드를 안전하게 보호하여 민감한 내용을 마스킹합니다."
subtitle: "GroupDocs.Redaction for Java 내부" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java 소개"
    link: "/redaction/java/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java는 Java 개발자가 POWERPOINT 슬라이드에서 텍스트, 이미지 또는 메타데이터를 차단하거나 삭제하는 데 도움을 줍니다.

############################# Steps ############################
steps:
    enable: true
    title: "공유 전 Powerpoint 프레젠테이션 청소하기"
    content: |
      GroupDocs.Redaction for Java를 사용하여 Java 앱에서 슬라이드의 민감한 부분을 숨기거나 제거하세요.
      
      1. 슬라이드 덱 경로로 새로운 Redactor를 생성하세요.
      2. 레다션 기본 설정을 정의하세요.
      3. 텍스트 패턴과 오버레이 색상을 설정하세요.
      4. 레다션을 실행하고 파일을 저장하세요.
   
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
        // POWERPOINT의 텍스트 영역 오버레이

        // Redactor와 함께 파일 열기
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // 레다션 설정 조정
            // 텍스트를 입력하고 오버레이 색상 선택
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 레다션 후 업데이트된 파일 저장
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "민감한 슬라이드용 간단한 레다션"
  description: "GroupDocs.Redaction for Java는 사용 사례에 관계없이 슬라이드에서 콘텐츠를 차단하거나 제거하는 것을 쉽게 만듭니다."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "조정 가능한 레다션 도구"
  features:
    # feature loop
    - title: "텍스트 찾아 바꾸기"
      content: "슬라이드에서 민감한 구문이나 레이블을 보호하세요."

    # feature loop
    - title: "비주얼의 일부 가리기"
      content: "선택한 슬라이드 영역이나 이미지에 오버레이를 추가하세요."

    # feature loop
    - title: "숨겨진 콘텐츠 제거하기"
      content: "슬라이드 메타데이터나 수정 노트를 공유 전에 지웁니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "텍스트 레다션을 위한 정규 표현식"
      content: |
        패턴 일치를 사용하여 텍스트를 찾고 레다션하는 법을 배웁니다.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  슬라이드 덱 열기
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // 정규 표현식 규칙 적용
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // 레다션 실행
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
    title: "Java로 POWERPOINT의 슬라이드 보호하기"
    exclude: "POWERPOINT"
    description: "Java의 오버레이 레다션 및 클린업 도구를 사용하여 POWERPOINT 슬라이드를 비공식적으로 유지하세요."
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