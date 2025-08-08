
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: ko
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java을 사용하여 DOCX에서 개인 텍스트 제거"
head_description: "GroupDocs.Redaction for Java을 사용하여 DOCX 파일의 콘텐츠를 안전하게 보호하세요. 텍스트, 이미지 및 메타데이터에 대한 빠르고 간단한 삭제."

############################# Header ############################
title: "Java를 사용하여 DOCX 문서에서 텍스트 편집 또는 제거" 
description: "Java과 GroupDocs.Redaction for Java을 사용하여 DOCX 파일에서 개인적 또는 비즈니스 콘텐츠를 보호하세요."
subtitle: "GroupDocs.Redaction for Java으로 할 수 있는 일" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java란?"
    link: "/redaction/java/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java은 Java 개발자가 DOCX 파일을 정리하고 삭제할 수 있도록 도와줍니다. 텍스트, 사진, 주석 및 숨겨진 데이터를 쉽게 제거하세요.

############################# Steps ############################
steps:
    enable: true
    title: "Docx 파일에서 콘텐츠 삭제하는 방법"
    content: |
      Java 프로젝트에서 GroupDocs.Redaction for Java을 사용하여 파일을 정리하여 공유하기 전에.
      
      1. Redactor를 만들고 파일을 로드합니다.
      2. 삭제 옵션을 선택합니다.
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
        // DOCX 파일에서 콘텐츠 삭제

        // Redactor를 사용하여 문서를 로드합니다.
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // 삭제 옵션 설정
            // 찾을 내용과 대체할 내용을 정의합니다.
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 삭제를 적용하고 저장합니다.
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "삭제 옵션"
  description: "GroupDocs.Redaction for Java을 사용하면 다양한 파일 형식에서 민감한 콘텐츠를 정리할 수 있습니다. 문서 구조를 잃지 않고 안전하게 유지하세요."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "콘텐츠 제거 도구"
  features:
    # feature loop
    - title: "텍스트 대체"
      content: "특정 콘텐츠를 찾아 문서 전반에 걸쳐 대체합니다."

    # feature loop
    - title: "이미지 또는 부분 가리기"
      content: "민감한 비주얼을 색상 오버레이로 가립니다."

    # feature loop
    - title: "숨겨진 데이터 제거"
      content: "저자 이름, 타임스탬프 또는 문서 속성과 같은 메타데이터를 삭제합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "정규표현식 기반 삭제"
      content: |
        정규 표현식을 사용하여 전화번호나 이메일과 같은 패턴을 감지하고 삭제합니다.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  문서를 로드합니다.
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // 이메일 정규 표현식 패턴과 대체 텍스트를 설정합니다.
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // 삭제를 실행합니다.
              redactor.apply(redaction);

              // 정리된 파일을 저장합니다.
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
    title: "Java로 DOCX 파일 정리"
    exclude: "DOCX"
    description: "Java이 제공하는 도구를 사용하여 DOCX 문서의 민감한 콘텐츠를 삭제하거나 대체하세요."
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