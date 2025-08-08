
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ko
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#를 통해 WORD에서 텍스트 숨기기"
head_description: "GroupDocs.Redaction for .NET은 색상의 블록으로 WORD에서 민감한 텍스트를 숨기는 작업을 간편하게 합니다. 중요 내용을 가리는 동안 문서를 완전하게 유지하세요."

############################# Header ############################
title: ".NET을 사용하여 WORD 파일에서 오버레이 텍스트 수정" 
description: "C#으로 작성된 정사각형 오버레이를 사용하여 WORD 파일에서 중요한 정보를 보호하세요. 보안 및 규정 준수에 이상적입니다."
subtitle: "GroupDocs.Redaction for .NET의 기능 살펴보기" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET 알아보기"
    link: "/redaction/net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       C#로 작업하는 개발자는 GroupDocs.Redaction for .NET을 사용하여 WORD 문서의 일부를 숨기거나 제거할 수 있습니다. 몇 줄의 코드로 이름, 숫자 또는 기타 데이터를 숨길 수 있습니다.

############################# Steps ############################
steps:
    enable: true
    title: "Word 파일에서 개인 데이터 수정하기"
    content: |
      GroupDocs.Redaction for .NET은 .NET 개발자가 신속하게 민감한 콘텐츠를 제거할 수 있도록 도와줍니다. 파일을 보호하려면 다음 단계를 따르세요.
      
      1. Word 파일의 경로로 Redactor를 초기화합니다.
      2. 콘텐츠를 수정할 규칙을 설정합니다.
      3. 텍스트 패턴을 선택하고 가릴 색상을 고릅니다.
      4. 수정을 적용하고 수정된 파일을 저장합니다.
   
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
        // 이미지 오버레이를 사용하여 WORD에서 텍스트 수정

        // Redactor로 파일을 로드합니다.
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // 어떤 내용을 수정할지 정의합니다.
            // 일치하는 텍스트와 오버레이 색상을 추가합니다.
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 수정을 실행하고 최종 파일을 저장합니다.
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "추가 수정 도구"
  description: "GroupDocs.Redaction for .NET을 사용하면 레이아웃을 유지하면서도 가시적 및 숨겨진 정보를 제거하여 파일을 정리할 수 있습니다."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "깨끗하고 안전한 출력"
  features:
    # feature loop
    - title: "노출된 텍스트 대체"
      content: "중요 데이터 유출 가능성이 있는 단어나 구문을 숨깁니다."

    # feature loop
    - title: "이미지 덮기"
      content: "민감한 비주얼을 단단한 블록으로 가립니다."

    # feature loop
    - title: "숨겨진 정보 지우기"
      content: "파일을 비공식적으로 유지하기 위해 배경 메타데이터를 지웁니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "정규 표현식으로 일치하는 텍스트 숨기기"
      content: |
        이 샘플은 정규 표현식을 사용하여 민감한 콘텐츠를 찾고 가리는 방법을 보여줍니다.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  수정할 문서를 엽니다.
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // 패턴과 색상을 선택합니다.
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // 수정 규칙을 실행합니다.
              redactor.Apply(redaction);

              // 수정된 복사본을 저장하고 검토합니다.
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
    title: ".NET를 사용하여 WORD 파일 보호하기"
    exclude: "WORD"
    description: ".NET를 사용하여 WORD 형식에서 텍스트를 숨기거나 메타데이터를 삭제하여 레이아웃이나 서식을 깨뜨리지 않고 보호하세요."
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