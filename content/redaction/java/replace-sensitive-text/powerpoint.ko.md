
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: ko
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java을 사용하여 POWERPOINT에서 개인 텍스트 제거"
head_description: "GroupDocs.Redaction for Java과 Java으로 POWERPOINT 파일의 민감한 데이터를 보호하세요. 빠르고 쉽게 텍스트를 삭제합니다."

############################# Header ############################
title: "Java로 POWERPOINT 문서에서 민감한 텍스트 편집 또는 숨김" 
description: "Java과 GroupDocs.Redaction for Java을 사용하여 POWERPOINT 파일의 민감한 콘텐츠를 보호하세요. 개인적이든 비즈니스든 데이터는 비공개로 유지됩니다."
subtitle: "GroupDocs.Redaction for Java으로 할 수 있는 일" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java을 소개합니다."
    link: "/redaction/java/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java은 Java 개발자에게 POWERPOINT 콘텐츠를 삭제하는 데 필요한 모든 것을 제공합니다. 텍스트, 이미지, 주석, 댓글 및 메타데이터를 인기 있는 파일 형식에서 정리하세요.

############################# Steps ############################
steps:
    enable: true
    title: "Powerpoint 문서에서 콘텐츠를 정리하는 단계"
    content: |
      GroupDocs.Redaction for Java을 사용하여 Java 앱에서 개인 콘텐츠를 제거하거나 숨깁니다. 간단하고 빠른 삭제.
      
      1. Redactor를 초기화하고 Powerpoint 파일을 로드합니다.
      2. 필요한 삭제 옵션을 설정합니다.
      3. 검색할 텍스트와 대체할 텍스트를 지정합니다.
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
        // POWERPOINT 파일에서 텍스트를 삭제하는 방법

        // Redactor 생성자로 파일 로드
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // 삭제 기본 설정 설정
            // 검색할 사항과 대체할 내용을 선택합니다.
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 삭제를 적용하고 새로운 POWERPOINT 파일을 저장합니다.
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "추가 삭제 도구"
  description: "GroupDocs.Redaction for Java은 여러 파일 형식에서 민감한 콘텐츠를 숨기거나 삭제하는 데 도움을 줍니다. 문서를 정리하고 안전하게 공유하세요."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "삭제 도구와 옵션"
  features:
    # feature loop
    - title: "기밀 텍스트 대체"
      content: "파일 내 어디에서나 일치하는 텍스트를 찾아 대체합니다. 정규 표현식 및 스마트 검색 옵션 지원."

    # feature loop
    - title: "민감한 이미지 숨기기"
      content: "오버레이로 이미지를 덮거나 특정 영역을 덮습니다. 페이지 설정, 색상 등을 조정합니다."

    # feature loop
    - title: "숨겨진 메타데이터 정리"
      content: "저자, 타임스탬프 또는 개인 정보를 보호하기 위해 주석 삭제."
      
  code_samples_ext:
    # code sample ext loop
    - title: "정규 표현식 기반 삭제"
      content: |
        정규 표현식을 사용하여 이메일이나 ID와 같은 민감한 텍스트 패턴을 검색하고 삭제합니다.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  정리할 문서를 엽니다.
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // EMAIL 정규 표현식 패턴과 대체 텍스트를 정의합니다.
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // 삭제 규칙을 적용합니다.
              redactor.apply(redaction);

              // 최종 삭제된 파일을 저장합니다.
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
    title: "Java로 POWERPOINT에서 콘텐츠 삭제"
    exclude: "POWERPOINT"
    description: "Java의 도구를 사용하여 POWERPOINT 파일의 개인적이고 민감한 세부정보를 보호하세요. 파일을 안전하게 유지하는 방법입니다."
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