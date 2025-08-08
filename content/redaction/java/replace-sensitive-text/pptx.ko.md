
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: ko
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java를 사용하여 PPTX에서 개인 텍스트 제거"
head_description: "GroupDocs.Redaction for Java과 Java으로 PPTX 프레젠테이션의 민감한 세부정보를 보호하세요. 빠른 결과를 제공하는 간단한 삭제."

############################# Header ############################
title: "Java로 PPTX 파일의 텍스트 정리" 
description: "GroupDocs.Redaction for Java과 Java을 사용하여 PPTX 슬라이드에서 콘텐츠를 숨기거나 제거하세요. 비즈니스, 법률 또는 개인적 용도로 적합합니다."
subtitle: "GroupDocs.Redaction for Java으로 할 수 있는 일" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java을 소개합니다."
    link: "/redaction/java/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java은 Java 개발자에게 PPTX 파일의 콘텐츠를 수정하거나 숨기는 안정적인 방법을 제공합니다. 텍스트, 이미지, 메타데이터 및 주석을 완벽하게 관리하세요.

############################# Steps ############################
steps:
    enable: true
    title: "Pptx 프레젠테이션에서 콘텐츠 삭제하는 방법"
    content: |
      GroupDocs.Redaction for Java을 사용하면 Java 프레젠테이션을 몇 단계 만에 정리할 수 있습니다.
      
      1. Redactor를 생성하고 Pptx 파일을 로드합니다.
      2. 필요에 맞는 삭제 설정을 선택합니다.
      3. 검색어와 대체 콘텐츠를 설정합니다.
      4. 변경 사항을 적용하고 업데이트된 파일을 저장합니다.
   
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
        // PPTX 프레젠테이션에서 텍스트 삭제

        // Redactor를 사용하여 문서를 로드합니다.
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // 삭제 옵션을 설정합니다.
            // 찾을 텍스트와 대체할 내용을 선택합니다.
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 삭제하고 파일을 저장합니다.
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "더 많은 삭제 도구"
  description: "GroupDocs.Redaction for Java은 다양한 파일에서 민감한 콘텐츠를 숨기거나 삭제하는 데 간단합니다. 데이터를 공유하기 전에 안전하게 유지하세요."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "텍스트, 이미지 및 메타데이터 제거 옵션"
  features:
    # feature loop
    - title: "어디서든 텍스트 대체"
      content: "슬라이드 전반에 걸쳐 단어 또는 구문을 검색하고 대체합니다. 정확한 텍스트 또는 패턴으로 작동합니다."

    # feature loop
    - title: "비ual 콘텐츠 가리기"
      content: "슬라이드 또는 이미지의 일부를 오버레이 상자로 가립니다."

    # feature loop
    - title: "메타데이터 제거"
      content: "저자, 생성일 또는 개인 정보가 포함될 수 있는 메모와 같은 배경 데이터를 삭제합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "정규 표현식 기반 삭제"
      content: |
        정규 표현식을 사용하여 이메일, 전화번호 또는 코드와 같은 패턴을 찾아 제거합니다.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  파일을 엽니다.
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // 이메일 정규 표현식 패턴과 대체 내용을 추가합니다.
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // 패턴에 따라 삭제를 적용합니다.
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "Java로 PPTX에서 콘텐츠 삭제"
    exclude: "PPTX"
    description: "Java을 사용하여 PPTX 문서에서 개인적이며 민감한 세부 정보를 제거하세요. 파일을 안전하게 유지하는 신뢰할 수 있는 방법입니다."
    items: 
        # format loop 1
        - name: "PDF 수정"
          format: "PDF"
          link: "/redaction/java/replace-sensitive-text//pdf/"
          description: "Adobe 휴대용 문서 형식"

        # format loop 2
        - name: "Word 문서 수정"
          format: "WORD"
          link: "/redaction/java/replace-sensitive-text//word/"
          description: "MS Word 및 Open Office 문서"
          
        # format loop 3
        - name: "Excel 문서 수정"
          format: "EXCEL"
          link: "/redaction/java/replace-sensitive-text//excel/"
          description: "MS Excel 및 Open Office 스프레드시트"

        # format loop 4
        - name: "PowerPoint 수정"
          format: "POWERPOINT"
          link: "/redaction/java/replace-sensitive-text//powerpoint/"
          description: "MS PowerPoint 및 Open Office 프레젠테이션"

        # format loop 5
        - name: "DOCX 수정"
          format: "DOCX"
          link: "/redaction/java/replace-sensitive-text//docx/"
          description: "Microsoft Word Open XML 문서"
          
        # format loop 6
        - name: "XLSX 수정"
          format: "XLSX"
          link: "/redaction/java/replace-sensitive-text//xlsx/"
          description: "Microsoft Excel Open XML 스프레드시트"
          
        # format loop 7
        - name: "PPTX 수정"
          format: "PPTX"
          link: "/redaction/java/replace-sensitive-text//pptx/"
          description: "PowerPoint Open XML 프레젠테이션"


---