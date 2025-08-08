
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ko
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C# 오버레이로 POWERPOINT의 민감한 텍스트 숨기기"
head_description: "GroupDocs.Redaction for .NET은 간단한 오버레이 수정으로 POWERPOINT 파일의 일부를 숨길 수 있습니다. 구조를 변경하지 않고 문서를 안전하게 유지하세요."

############################# Header ############################
title: ".NET을 사용하여 POWERPOINT에서 텍스트 수정" 
description: "C# 및 GroupDocs.Redaction for .NET을 사용하여 POWERPOINT 파일의 콘텐츠를 보호하기 위해 오버레이 블록을 사용하세요."
subtitle: "GroupDocs.Redaction for .NET 내부 도구" 

############################# About ############################
about:
    enable: true
    title: "이 도구에 대하여"
    link: "/redaction/net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET은 C# 사용자가 POWERPOINT 문서를 정리하기 위해 텍스트, 메타데이터 또는 이미지를 커버하거나 삭제하도록 돕습니다.

############################# Steps ############################
steps:
    enable: true
    title: "Powerpoint 문서에서 콘텐츠 보호하기"
    content: |
      .NET 앱에서 GroupDocs.Redaction for .NET을 사용하여 파일을 배포 전에 정리합니다.
      
      1. 새 Redactor 인스턴스에 파일 경로를 전달합니다.
      2. 수정할 대상을 결정합니다.
      3. 텍스트 패턴과 오버레이 색상을 설정합니다.
      4. 수정하고 업데이트된 파일을 저장합니다.
   
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
        // POWERPOINT에서 세부사항을 숨기기 위해 오버레이 텍스트 사용하기

        // Redactor를 사용하여 파일을 엽니다.
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // 수정할 설정을 조정합니다.
            // 숨길 텍스트와 차단 색상을 선택합니다.
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 작업을 실행하고 수정된 파일을 저장합니다.
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "민감한 데이터 숨기기"
  description: "GroupDocs.Redaction for .NET을 사용하여 법적, 비즈니스 또는 개인 파일에서 데이터를 보호하세요."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "유연한 문서 수정"
  features:
    # feature loop
    - title: "텍스트 교체"
      content: "단어나 번호를 찾아서 대체하거나 숨깁니다."

    # feature loop
    - title: "사진 또는 섹션 수정"
      content: "페이지의 이미지나 특정 지점에 오버레이를 추가합니다."

    # feature loop
    - title: "불필요한 데이터 삭제"
      content: "숨겨진 정보를 드러낼 수 있는 메타데이터를 제거합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "정규 표현식을 사용해 찾고 수정하기"
      content: |
        이 예제는 정규 표현식이 텍스트를 식별하고 숨기는 데 어떻게 도움이 되는지 보여줍니다.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  수정이 필요한 파일을 엽니다.
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // 정규 표현식을 사용해 규칙을 설정합니다.
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // 수정 프로세스를 실행합니다.
              redactor.Apply(redaction);

              // 정리된 버전을 저장합니다.
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
    title: ".NET를 사용하여 POWERPOINT에서 콘텐츠 숨기기"
    exclude: "POWERPOINT"
    description: ".NET를 사용하여 POWERPOINT 파일에서 오버레이를 추가하거나 데이터를 지워 개인 내용을 보호하세요."
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