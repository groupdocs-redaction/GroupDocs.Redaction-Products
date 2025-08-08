
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ko
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#의 오버레이 수정으로 EXCEL의 콘텐츠 숨기기"
head_description: "GroupDocs.Redaction for .NET을 사용하여 EXCEL 문서의 텍스트를 색상의 블록으로 가리세요. 개인 콘텐츠를 보호하는 간단한 방법입니다."

############################# Header ############################
title: ".NET의 EXCEL 파일에 대한 오버레이 수정" 
description: "C# 코드를 사용하여 EXCEL 파일 내부의 텍스트를 숨기고 데이터를 보호합니다. 문서 안전을 위한 깔끔한 솔루션입니다."
subtitle: "GroupDocs.Redaction for .NET의 포함 사항" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET을 선택해야 하는 이유"
    link: "/redaction/net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET은 C# 개발자가 EXCEL 파일에서 콘텐츠를 수정하거나 삭제할 수 있도록 설계되었습니다. 텍스트, 메타데이터 및 이미지를 처리하는 데 사용하세요.

############################# Steps ############################
steps:
    enable: true
    title: "Excel 형식의 민감한 정보 수정하기"
    content: |
      GroupDocs.Redaction for .NET은 .NET 개발자가 공유 전에 문서를 정리하는 간단한 도구입니다.
      
      1. Redactor를 시작하고 Excel 파일을 로드합니다.
      2. 작업을 위해 수정 설정을 결정합니다.
      3. 수정할 키워드나 문구를 추가하고 색상을 선택합니다.
      4. 도구를 실행하고 변경 사항을 저장합니다.
   
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
        // EXCEL에서 텍스트를 가리기 위해 오버레이 사용하기

        // Redactor를 생성하고 파일을 로드합니다.
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // 수정 규칙을 선택합니다.
            // 숨길 텍스트를 입력하고 색상을 선택합니다.
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 수정 작업을 적용하고 파일을 저장합니다.
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "데이터 보호를 위한 주요 기능"
  description: "GroupDocs.Redaction for .NET을 사용하면 레이아웃이나 의미를 잃지 않고 문서 내부의 데이터를 숨기거나 삭제할 수 있습니다."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "문서 안전을 위해 설계됨"
  features:
    # feature loop
    - title: "텍스트 콘텐츠 변경"
      content: "선택된 단어를 문서 전역에서 교체하거나 숨깁니다."

    # feature loop
    - title: "시각 자료 수정"
      content: "간단한 블록으로 사진이나 영역을 숨깁니다."

    # feature loop
    - title: "메타데이터 클리어"
      content: "저자 이름이나 타임스탬프와 같은 배경 데이터를 제거합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "정규 표현식 텍스트 수정"
      content: |
        파일에서 콘텐츠를 찾고 숨기기 위해 정규 표현식을 사용하는 방법입니다.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  처리할 문서를 로드합니다.
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // 패턴 및 오버레이 설정을 추가합니다.
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // 변경 사항을 적용합니다.
              redactor.Apply(redaction);

              // 수정된 문서를 저장하고 닫습니다.
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
    title: ".NET로 EXCEL 파일 수정하기"
    exclude: "EXCEL"
    description: ".NET 기능을 사용하여 EXCEL에서 민감한 콘텐츠를 가리거나 지우세요."
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