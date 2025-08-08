
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ko
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#을 사용하여 오버레이로 DOCX의 민감한 텍스트 가리기"
head_description: "GroupDocs.Redaction for .NET을 사용하여 DOCX 파일에서 개인 텍스트를 간단한 정사각형 오버레이로 보호하세요. 문서 레이아웃은 변경하지 않고 데이터를 숨길 수 있습니다."

############################# Header ############################
title: ".NET을 사용하여 DOCX에서 텍스트 가리기" 
description: "C# 코드를 사용하여 DOCX 문서에서 민감한 콘텐츠를 숨깁니다. 법적, 비즈니스 또는 개인 문서 보호에 적합합니다."
subtitle: "GroupDocs.Redaction for .NET 기능" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET이란?"
    link: "/redaction/net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET은 C# 개발자가 DOCX 파일에서 개인 콘텐츠를 숨기거나 삭제하는 데 도움을 줍니다. 다양한 파일 형식에서 텍스트, 이미지, 메타데이터를 차단할 수 있습니다.

############################# Steps ############################
steps:
    enable: true
    title: "Docx 문서에서 개인 데이터 제거하기"
    content: |
      GroupDocs.Redaction for .NET은 .NET 개발자가 몇 줄의 코드로 문서를 정리할 수 있도록 돕습니다.
      
      1. Redactor를 생성하고 파일 경로를 제공합니다.
      2. 수정 작업이 작동할 방식을 정의합니다.
      3. 숨길 텍스트를 입력하고 오버레이 색상을 선택합니다.
      4. 파일을 수정하고 저장합니다.
   
    code:
      platform: "net"
      copy_title: "복사"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "샘플 수정 내용"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "클릭하여 복사"
        copy_done: "복사됨"
      links:
        #  loop
        - title: "더 많은 예시"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "문서"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // 오버레이 블록을 사용하여 DOCX에서 텍스트 숨기기

        // Redactor를 생성하고 파일을 로드합니다.
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // 수정 기본 설정을 설정합니다.
            // 숨길 텍스트를 입력하고 블록 색상을 설정합니다.
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 수정하고 업데이트된 문서를 저장합니다.
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "문서 정리의 다양한 방법"
  description: "GroupDocs.Redaction for .NET과 함께 다양한 파일 유형을 수정하여 콘텐츠를 안전하고 전문적으로 유지하세요."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "내장된 스마트 수정 기능"
  features:
    # feature loop
    - title: "텍스트 수정 또는 제거"
      content: "특정 구문을 찾아서 숨기거나 대체합니다."

    # feature loop
    - title: "이미지 영역 숨기기"
      content: "사진이나 스캔 페이지에서 민감한 부분을 가립니다."

    # feature loop
    - title: "숨겨진 메타데이터 지우기"
      content: "사용자 또는 시스템 데이터를 노출할 수 있는 숨겨진 정보를 삭제합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "콘텐츠 수정용 정규 표현식"
      content: |
        정규 표현식이 민감한 단어를 찾고 숨기는 방법을 보여줍니다.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  대상 파일을 엽니다.
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // 패턴과 색상을 설정합니다.
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // 수정 논리를 적용합니다.
              redactor.Apply(redaction);

              // 수정된 문서를 내보냅니다.
              var save_opt = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_opt);
          }
          ```
        platform: "net"
        copy_title: "복사"
        install:
          command: "dotnet add package GroupDocs.Redaction"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "문서"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "시작할 준비가 되셨나요?"
  description: "GroupDocs.Redaction 기능을 무료로 사용해 보시거나 라이센스를 요청하세요"
  items:
    #  loop
    - title: "Nuget 다운로드"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "라이센스"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: ".NET으로 DOCX에서 콘텐츠 숨기기"
    exclude: "DOCX"
    description: ".NET을 사용하여 DOCX 문서에서 민감한 데이터를 가리거나 완전히 제거하세요."
    items: 
        # format loop 1
        - name: "PDF 수정"
          format: "PDF"
          link: "/redaction/net/hide-text-with-image-overlay//pdf/"
          description: "Adobe 휴대용 문서 형식"

        # format loop 2
        - name: "Word 문서 수정"
          format: "WORD"
          link: "/redaction/net/hide-text-with-image-overlay//word/"
          description: "MS Word 및 Open Office 문서"
          
        # format loop 3
        - name: "Excel 문서 수정"
          format: "EXCEL"
          link: "/redaction/net/hide-text-with-image-overlay//excel/"
          description: "MS Excel 및 Open Office 스프레드시트"

        # format loop 4
        - name: "PowerPoint 수정"
          format: "POWERPOINT"
          link: "/redaction/net/hide-text-with-image-overlay//powerpoint/"
          description: "MS PowerPoint 및 Open Office 프레젠테이션"

        # format loop 5
        - name: "DOCX 수정"
          format: "DOCX"
          link: "/redaction/net/hide-text-with-image-overlay//docx/"
          description: "Microsoft Word Open XML 문서"
          
        # format loop 6
        - name: "XLSX 수정"
          format: "XLSX"
          link: "/redaction/net/hide-text-with-image-overlay//xlsx/"
          description: "Microsoft Excel Open XML 스프레드시트"
          
        # format loop 7
        - name: "PPTX 수정"
          format: "PPTX"
          link: "/redaction/net/hide-text-with-image-overlay//pptx/"
          description: "PowerPoint Open XML 프레젠테이션"


---