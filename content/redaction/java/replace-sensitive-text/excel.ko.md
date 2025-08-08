
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: ko
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java을 사용하여 EXCEL에서 개인 텍스트 제거"
head_description: "GroupDocs.Redaction for Java과 Java으로 EXCEL 스프레드시트를 안전하게 유지하세요. 빠르고 간단한 삭제."

############################# Header ############################
title: "Java로 EXCEL 파일에서 텍스트 편집 또는 제거" 
description: "GroupDocs.Redaction for Java 및 Java을 사용하여 EXCEL 파일을 정리하세요. 비즈니스 또는 개인 데이터를 보호하기에 좋습니다."
subtitle: "GroupDocs.Redaction for Java으로 할 수 있는 일" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java을 소개합니다."
    link: "/redaction/java/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java은 Java 개발자에게 EXCEL 파일을 정리하는 모든 것을 제공합니다. 텍스트, 이미지, 메타데이터 및 노트를 정밀하게 편집하거나 숨깁니다.

############################# Steps ############################
steps:
    enable: true
    title: "Excel 파일에서 콘텐츠 삭제 방법"
    content: |
      GroupDocs.Redaction for Java을 사용하여 공유하고 싶지 않은 텍스트를 제거하거나 가립니다.
      
      1. Redactor를 생성하고 Excel 파일을 로드합니다.
      2. 삭제 설정을 선택합니다.
      3. 찾을 사항과 대체할 내용을 정의합니다.
      4. 삭제를 실행하고 파일을 저장합니다.
   
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
        // EXCEL 파일에서 텍스트를 삭제하는 방법

        // Redactor로 파일을 로드합니다.
        final Redactor redactor = new Redactor("input.xlsx");
        try
        {
            // 삭제 규칙을 설정합니다.
            // 대상 텍스트와 대체 입력
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 적용하고 정리된 파일을 저장합니다.
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "더 많은 삭제 도구"
  description: "GroupDocs.Redaction for Java은 다양한 문서 유형에서 개인 콘텐츠를 정리하는 데 도움을 줍니다. 공유하기 전에 개인 정보를 보호하세요."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "텍스트, 이미지 및 메타데이터 삭제 기능"
  features:
    # feature loop
    - title: "민감한 텍스트 대체"
      content: "파일 전반에 걸쳐 일치하는 단어 또는 숫자를 찾아 변경합니다. 검색 패턴 또는 정확한 일치 사용."

    # feature loop
    - title: "이미지의 일부 숨기기"
      content: "이미지 또는 셀을 가리기 위해 오버레이 상자를 추가합니다. 색상, 크기 및 위치 선택 가능."

    # feature loop
    - title: "배경 정보 제거"
      content: "저자, 타임스탬프 또는 문서 주석과 같은 숨겨진 데이터를 지웁니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "정규 표현식으로 패턴 삭제"
      content: |
        정규 표현식을 사용하여 이메일 주소나 계좌 번호와 같은 패턴을 찾아 숨깁니다.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  정리할 파일을 엽니다.
          final Redactor redactor = new Redactor("source.xlsx");
          try
          {
              // 이메일 정규 표현식을 만들고 대체 텍스트를 설정합니다.
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // 삭제 프로세스를 실행합니다.
              redactor.apply(redaction);

              // 업데이트된 버전을 저장합니다.
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
    title: "Java로 EXCEL에서 콘텐츠 삭제"
    exclude: "EXCEL"
    description: "Java을 사용하여 EXCEL 파일에서 개인 데이터를 정리하고 보호하세요. 스프레드시트를 안전하게 유지하는 스마트한 방법입니다."
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