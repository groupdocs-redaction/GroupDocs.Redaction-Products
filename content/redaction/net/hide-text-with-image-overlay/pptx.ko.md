
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ko
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#를 사용하여 PPTX에서 텍스트 수정하기"
head_description: "GroupDocs.Redaction for .NET은 색깔이 입혀진 정사각형으로 PPTX 문서의 개인 정보를 숨길 수 있습니다. 레이아웃을 그대로 유지하면서 보호하세요."

############################# Header ############################
title: ".NET을 사용하여 PPTX에서 텍스트 수정하기" 
description: "C# 및 GroupDocs.Redaction for .NET과 함께 PPTX 파일에서 민감한 데이터를 가리거나 보호하기가 간단합니다."
subtitle: "GroupDocs.Redaction for .NET 탐색하기" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET의 기능"
    link: "/redaction/net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET은 C#를 사용하여 PPTX 문서에서 콘텐츠를 숨기거나 제거할 수 있는 권한을 제공합니다. 몇 단계로 이름부터 메모까지 모든 것을 숨길 수 있습니다.

############################# Steps ############################
steps:
    enable: true
    title: "Pptx 파일에서 개인 콘텐츠 숨기기"
    content: |
      GroupDocs.Redaction for .NET을 사용하면 .NET 개발자가 몇 가지 간단한 단계로 문서를 보호할 수 있습니다.
      
      1. 정리할 파일의 경로로 Redactor를 시작합니다.
      2. 필요에 맞는 수정 규칙을 선택합니다.
      3. 일치할 패턴과 이미지 오버레이 색상을 선택합니다.
      4. 수정 작업을 실행하고 업데이트된 파일을 저장합니다.
   
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
        // PPTX에서 텍스트를 가리기 위해 오버레이 사용하기

        // Redactor를 초기화하여 파일을 엽니다.
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // 수정이 어떻게 작동할지를 정의합니다.
            // 숨길 항목과 오버레이 색상을 설정합니다.
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 작업을 실행하고 변경 사항을 저장합니다.
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "파일을 보호하는 다양한 방법"
  description: "GroupDocs.Redaction for .NET는 구조를 변경하지 않고도 다양한 형식의 데이터를 숨기거나 제거할 수 있는 도구를 제공합니다."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "중요한 기능"
  features:
    # feature loop
    - title: "필요에 따라 텍스트 대체"
      content: "키 정보를 무단 사용자로부터 지키기 위해 텍스트를 바꿉니다."

    # feature loop
    - title: "이미지 영역 숨기기"
      content: "오버레이 상자를 그려 전체 이미지 또는 특정 부분을 숨깁니다."

    # feature loop
    - title: "숨겨진 데이터 지우기"
      content: "프라이빗 세부정보를 드러낼 수 있는 포함된 메타데이터를 삭제합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "정규 표현식 수정"
      content: |
        이 예제는 정규 표현식을 사용하여 텍스트를 검색하고 숨기는 방법을 보여줍니다.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  수정할 파일을 엽니다.
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // 수정 규칙을 설정합니다: 검색 텍스트와 블록 색상.
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // 수정 논리를 적용합니다.
              redactor.Apply(redaction);

              // 수정된 결과를 저장합니다.
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
    title: ".NET 도구로 PPTX 텍스트 보호하기"
    exclude: "PPTX"
    description: ".NET을 사용하여 PPTX 파일에서 개인 영역을 가리거나 숨겨진 데이터를 제거하세요."
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