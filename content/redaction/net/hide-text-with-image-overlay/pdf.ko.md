
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ko
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#를 사용하여 PDF의 민감한 텍스트 숨기기"
head_description: "GroupDocs.Redaction for .NET을 사용하면 색깔이 입혀진 사각형 오버레이를 통해 PDF 파일에서 민감한 텍스트를 숨길 수 있습니다. 원본 레이아웃을 변경하지 않고 개인 데이터를 안전하게 보호하세요."

############################# Header ############################
title: ".NET를 사용하여 PDF 문서에서 민감한 텍스트 숨기기" 
description: "C#를 사용하여 PDF 파일 콘텐츠를 제어하세요. 법적, 재무적, 개인적 정보를 보호하기 위해 수정 작업을 사용할 수 있습니다."
subtitle: "GroupDocs.Redaction for .NET 기능" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET에 대하여"
    link: "/redaction/net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET은 C# 개발자에게 PDF 파일에서 콘텐츠를 숨기거나 제거할 수 있는 도구를 제공합니다. 텍스트, 이미지 또는 다양한 파일 유형의 메타데이터를 가릴 수 있습니다.

############################# Steps ############################
steps:
    enable: true
    title: "Pdf 문서에서 비즈니스 데이터 보호하기"
    content: |
      GroupDocs.Redaction for .NET: 귀하의 .NET 앱이 문서를 안전하게 유지할 수 있도록 돕기 위해 설계되었습니다. 개인 정보를 신속하게 수정하세요.
      
      1. Redactor 인스턴스를 생성하고 수정하려는 Pdf 파일의 경로를 제공합니다.
      2. 원하는 결과를 얻기 위해 수정 설정을 구성합니다.
      3. 검색할 텍스트 패턴을 설정하고 오버레이 색상을 선택합니다.
      4. 문서를 수정하고 변경 사항을 저장합니다.
   
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
        // PDF에서 오버레이 이미지를 사용하여 민감한 텍스트 숨기기

        // Redactor 생성자에게 파일 경로를 전달합니다.
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // 수정 옵션을 설정합니다.
            // 텍스트 패턴과 오버레이 색상을 정의합니다.
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // PDF 파일을 수정하고 업데이트된 파일을 저장합니다.
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "문서에서 콘텐츠 수정하기"
  description: "GroupDocs.Redaction for .NET을 사용하면 다양한 파일 유형에서 콘텐츠를 제거하거나 숨길 수 있습니다. 문서를 쉽게 읽고 공유하면서도 민감한 정보를 보호할 수 있습니다."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "고급 수정 옵션"
  features:
    # feature loop
    - title: "어디서든 텍스트 수정"
      content: "문서에서 일치하는 텍스트를 검색하고 대체하여 기밀 데이터를 보호합니다."

    # feature loop
    - title: "이미지 가리기"
      content: "개인적인 비주얼을 숨기기 위해 전체 이미지 또는 선택한 영역에 오버레이를 놓습니다."

    # feature loop
    - title: "메타데이터 처리"
      content: "원치 않는 데이터 유출을 방지하기 위해 숨겨진 메타데이터를 지우거나 변경합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "정규 표현식을 사용하여 텍스트 숨기기"
      content: |
        이 예제는 정규 표현식을 사용하여 텍스트를 찾고 숨기는 방법을 보여줍니다.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  수정할 문서를 로드합니다.
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // 수정 설정을 정의합니다: 텍스트 패턴과 색상.
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // 내용에 수정 작업을 적용합니다.
              redactor.Apply(redaction);

              // 수정된 버전을 저장합니다.
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
    title: ".NET 수정으로 PDF 콘텐츠 보호하기"
    exclude: "PDF"
    description: ".NET을 사용하여 PDF 파일의 콘텐츠를 가리거나 제거하세요. 민감하거나 공식적인 문서를 안전하게 보호하는 스마트한 선택입니다."
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