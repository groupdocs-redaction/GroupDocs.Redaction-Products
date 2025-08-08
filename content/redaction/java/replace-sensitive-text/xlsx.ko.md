
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: ko
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java을 사용하여 XLSX에서 개인 텍스트 제거"
head_description: "GroupDocs.Redaction for Java을 사용하여 XLSX 데이터의 안전을 유지하세요. 텍스트 및 메타데이터를 삭제하는 효과적인 방법."

############################# Header ############################
title: "Java을 사용하여 XLSX 파일을 정리" 
description: "Java과 GroupDocs.Redaction for Java으로 XLSX 파일에서 민감한 콘텐츠를 제거하세요. 스프레드시트를 안전하게 유지하세요."
subtitle: "GroupDocs.Redaction for Java으로 할 수 있는 일" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java를 사용하는 이유"
    link: "/redaction/java/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java은 Java 개발자에게 XLSX 파일을 정리할 수 있는 도구를 제공합니다. 텍스트, 메타데이터, 이미지 등을 몇 줄의 코드로 삭제하세요.

############################# Steps ############################
steps:
    enable: true
    title: "Xlsx 파일에서 데이터 삭제"
    content: |
      Java 앱에서 GroupDocs.Redaction for Java을 사용하여 공유하기 전에 텍스트나 숨겨진 콘텐츠를 제거하세요.
      
      1. Redactor 인스턴스를 생성하고 파일을 로드합니다.
      2. 원하는 삭제 옵션을 선택합니다.
      3. 찾을 텍스트와 대체할 텍스트를 선택합니다.
      4. 삭제를 적용하고 문서를 저장합니다.
   
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
        // XLSX 스프레드시트에서 삭제하는 방법

        // Redactor를 생성하고 파일을 로드합니다.
        final Redactor redactor = new Redactor("input.xlsx");
        try
        {
            // 삭제 설정을 선택합니다.
            // 검색 및 대체 텍스트를 입력합니다.
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 변경 사항을 적용하고 저장합니다.
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "유용한 삭제 도구"
  description: "GroupDocs.Redaction for Java은 다양한 파일에서 개인 콘텐츠를 제거하는 데 도움을 줍니다. 형식을 잃지 않고 문서를 정리하세요."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "스마트 콘텐츠 보호"
  features:
    # feature loop
    - title: "텍스트 검색 및 대체"
      content: "셀에서 민감한 데이터를 찾아 업데이트하거나 숨깁니다."

    # feature loop
    - title: "비주얼 가리기"
      content: "색상 오버레이를 사용하여 차트, 이미지 또는 범위를 숨깁니다."

    # feature loop
    - title: "메타데이터 정리"
      content: "저자 정보, 생성 날짜 및 기타 배경 데이터를 제거합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "정규 표현식 사용하여 삭제"
      content: |
        정규 표현식을 사용하여 계좌 번호와 같은 값을 찾고 삭제합니다.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  처리할 파일을 엽니다.
          final Redactor redactor = new Redactor("source.xlsx");
          try
          {
              // 이메일 정규 표현식 규칙과 대체 문자열을 추가합니다.
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // 삭제 규칙을 적용합니다.
              redactor.apply(redaction);

              // 업데이트된 파일을 저장합니다.
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
    title: "Java로 XLSX 콘텐츠 삭제"
    exclude: "XLSX"
    description: "Java의 삭제 및 콘텐츠 제거 기능을 사용하여 XLSX 파일의 데이터를 정리하고 보호하세요."
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