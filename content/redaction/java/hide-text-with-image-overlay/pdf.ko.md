
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: ko
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java를 사용한 PDF의 개인 정보 보호"
head_description: "GroupDocs.Redaction for Java는 색상 박스를 사용하여 PDF 파일에서 민감한 정보를 숨길 수 있게 해줍니다. 파일의 모양을 변경하지 않고 데이터를 보호하세요."

############################# Header ############################
title: "Java에서 오버레이를 사용하여 PDF 문서의 텍스트 마스킹" 
description: "Java를 통해 PDF 파일 내용을 완벽하게 제어하세요. 재단을 사용하여 금융, 법적 또는 개인 정보를 보호합니다."
subtitle: "GroupDocs.Redaction for Java의 주요 기능" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java가 제공하는 기능"
    link: "/redaction/java/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java는 Java 개발자에게 PDF 파일에서 콘텐츠를 숨기거나 제거하는 간단한 방법을 제공합니다. 다양한 문서 유형에서 텍스트, 이미지 및 메타데이터를 덮어주세요.

############################# Steps ############################
steps:
    enable: true
    title: "Pdf 파일에서 기밀 정보 보호하기"
    content: |
      GroupDocs.Redaction for Java는 Java 개발자가 간단한 단계로 개인 콘텐츠를 숨길 수 있도록 해줍니다.
      
      1. Redactor를 시작하고 Pdf 파일을 로드합니다.
      2. 레다션 환경 설정을 구성합니다.
      3. 찾을 내용을 선택하고 오버레이 색상을 설정합니다.
      4. 레다션을 적용하고 문서를 저장합니다.
   
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
        // 색상 오버레이를 사용하여 PDF에서 텍스트 커버

        // Redactor에 파일 경로 전달
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // 레다션 설정 조정
            // 대상 텍스트 및 색설정
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 레다션 적용 후 PDF 저장
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "문서에서 보이는 내용 제어"
  description: "GroupDocs.Redaction for Java는 파일의 일부를 차단하거나 제거하면서도 쉽게 보기 및 공유할 수 있도록 해줍니다."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "강력한 레다션 도구"
  features:
    # feature loop
    - title: "대상 텍스트 숨기기"
      content: "문서를 검색하고 특정 단어 또는 구문을 숨겨 개인정보를 보호합니다."

    # feature loop
    - title: "이미지 가리기"
      content: "비주얼을 완전 또는 부분적으로 숨기기 위한 오버레이를 추가합니다."

    # feature loop
    - title: "메타데이터 제거"
      content: "우발적 노출을 피하기 위해 숨겨진 문서 세부정보를 제거합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "정규 표현식을 사용하여 텍스트 숨기기"
      content: |
        이 예제에서는 특정 콘텐츠를 찾고 숨기기 위해 정규 표현식을 사용합니다.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  처리할 파일을 로드합니다.
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // 텍스트 패턴과 오버레이 색상을 설정합니다.
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // 레다션을 적용합니다.
              redactor.apply(redaction);

              // 변경 사항을 저장합니다.
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
    title: "Java를 사용하여 PDF 파일 보호하기"
    exclude: "PDF"
    description: "Java를 사용하여 PDF 문서에서 콘텐츠를 덮거나 지웁니다. 개인 정보를 안전하게 보호하는 좋은 방법입니다."
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