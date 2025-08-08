
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: ko
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java를 사용하여 PDF에서 민감한 텍스트 삭제"
head_description: "GroupDocs.Redaction for Java을 사용하여 PDF 파일에서 개인 정보를 찾아 제거하세요. 간단하고 빠르며 신뢰할 수 있는 텍스트 삭제."

############################# Header ############################
title: "Java로 PDF 파일에서 민감한 데이터 삭제" 
description: "Java와 GroupDocs.Redaction for Java을 사용하여 PDF 파일을 정리하세요. 개인적, 법적 또는 비즈니스 내용을 삭제하세요."
subtitle: "GroupDocs.Redaction for Java으로 할 수 있는 일" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java에 대하여"
    link: "/redaction/java/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java은 Java 개발자에게 PDF 파일을 정리하는 간단한 방법을 제공합니다. 텍스트, 이미지, 주석 및 숨겨진 데이터를 제거하거나 대체하세요.

############################# Steps ############################
steps:
    enable: true
    title: "Pdf 파일에서 텍스트 삭제하는 방법"
    content: |
      GroupDocs.Redaction for Java을 사용하면 Java 개발자가 민감한 콘텐츠를 몇 단계 만에 제거할 수 있습니다.
      
      1. Redactor를 생성하고 Pdf 파일을 로드합니다.
      2. 원하는 삭제 설정을 선택합니다.
      3. 검색할 텍스트와 대체할 텍스트를 입력합니다.
      4. 삭제를 적용하고 파일을 저장합니다.
   
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
        // PDF 파일을 정리하는 방법

        // Redactor를 생성하고 문서를 로드합니다.
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // 삭제 규칙을 설정합니다.
            // 제거할 텍스트와 대체할 내용을 추가합니다.
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 삭제를 적용하고 새 파일을 저장합니다.
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "더 많은 삭제 기능"
  description: "GroupDocs.Redaction for Java은 다양한 형식에서 민감한 정보를 제거합니다. 파일을 읽을 수 있도록 하면서 텍스트, 이미지 및 메타데이터를 삭제하세요."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "텍스트 및 이미지 삭제 도구"
  features:
    # feature loop
    - title: "텍스트 찾기 및 대체"
      content: "모든 단어 또는 구문을 검색하고 대체합니다. 일반 텍스트 또는 정규 표현식으로 작동합니다."

    # feature loop
    - title: "이미지 내용 가리기"
      content: "색상 오버레이를 사용하여 사진이나 이미지 일부를 숨깁니다."

    # feature loop
    - title: "메타데이터 정리"
      content: "공유하기 전에 저자 이름, 날짜 또는 기타 숨겨진 세부정보를 제거합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "정규 표현식으로 텍스트 삭제"
      content: |
        정규 표현식을 사용하여 이메일, ID 또는 사용자 정의 형식과 같은 패턴을 찾아 숨깁니다.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  편집할 문서를 엽니다.
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // 이메일 정규 표현식 패턴과 대체 텍스트를 추가합니다.
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // 일치하는 내용에 대해 삭제를 적용합니다.
              redactor.apply(redaction);

              // 삭제된 버전을 저장합니다.
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
    title: "Java로 PDF 파일 삭제"
    exclude: "PDF"
    description: "Java의 도구를 사용하여 PDF 콘텐츠를 삭제하여 개인적 또는 비즈니스 정보를 보호하세요."
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