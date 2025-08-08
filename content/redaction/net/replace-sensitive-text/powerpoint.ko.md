
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: ko
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#로 POWERPOINT에서 개인 텍스트 제거하기"
head_description: "GroupDocs.Redaction for .NET와 C#을 사용하여 POWERPOINT 파일에서 개인 정보를 보호하세요. 빠르고 간편한 교정입니다."

############################# Header ############################
title: ".NET를 이용한 POWERPOINT 문서의 민감한 텍스트 편집 또는 숨기기" 
description: "프레젠테이션을 깨끗하고 비공개로 유지하세요. GroupDocs.Redaction for .NET과 C#을 사용하여 공유하고 싶지 않은 내용을 제거하세요."
subtitle: "GroupDocs.Redaction for .NET로 할 수 있는 일" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET란?"
    link: "/redaction/net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET는 C# 사용자가 POWERPOINT 문서에서 민감한 콘텐츠를 제거하기 위한 도구를 제공합니다. 텍스트, 이미지, 주석 및 메타데이터를 처리합니다.

############################# Steps ############################
steps:
    enable: true
    title: "Powerpoint 프레젠테이션 정리 단계"
    content: |
      GroupDocs.Redaction for .NET를 사용하여 .NET 앱에서 민감한 콘텐츠를 제거하거나 가릴 수 있는 몇 가지 단계입니다.
      
      1. 새 Redactor를 시작하고 Powerpoint 파일을 로드합니다.
      2. 적용할 교정 규칙을 선택합니다.
      3. 찾을 텍스트와 대체할 내용을 설정합니다.
      4. 교정을 실행하고 파일을 저장합니다.
   
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
        // POWERPOINT 프레젠테이션 교정하기

        // Redactor로 파일을 엽니다.
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // 교정 설정을 선택합니다.
            // 검색할 텍스트와 대체할 내용을 설정합니다.
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // 변경 사항을 적용하고 업데이트된 파일을 저장합니다.
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "사용할 수 있는 교정 기능"
  description: "GroupDocs.Redaction for .NET는 다양한 파일 유형에서 민감한 텍스트, 이미지 및 숨겨진 데이터를 찾고 숨기는 데 도움을 줍니다. 안전하게 파일을 공유할 수 있습니다."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "사용 가능한 교정 옵션"
  features:
    # feature loop
    - title: "숨겨진 텍스트 치환하기"
      content: "파일에서 개인 키워드 또는 문구를 찾아서 교체합니다. 정규 표현식도 지원됩니다."

    # feature loop
    - title: "이미지 가리기"
      content: "은폐 블록을 사용하여 원하시는 이미지를 가리세요. 모양, 크기, 색상을 조절하세요."

    # feature loop
    - title: "숨겨진 세부정보 삭제"
      content: "저자 이름, 수정 이력 또는 주석 등의 메타데이터를 정리하여 파일을 깔끔하게 유지합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "정규 표현식 패턴으로 교정하기"
      content: |
        정규 표현식을 이용해 이메일 주소나 ID 등 데이터를 찾아 정리합니다. 반복 가능한 교정이 가능합니다.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  정리할 파일을 엽니다.
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // EMAIL 정규 표현식 패턴을 작성하고 대체 내용을 설정합니다.
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // 교정 설정을 적용합니다.
              redactor.Apply(redaction);

              // 교정된 버전을 저장합니다.
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: ".NET로 POWERPOINT 파일 정리하기"
    exclude: "POWERPOINT"
    description: ".NET를 사용하여 POWERPOINT 문서에서 개인 텍스트를 숨겨서 안전하게 공유하세요. 빠르고 신뢰할 수 있는 결과를 제공합니다."
    items: 
        # format loop 1
        - name: "PDF 수정"
          format: "PDF"
          link: "/redaction/net/replace-sensitive-text//pdf/"
          description: "Adobe 휴대용 문서 형식"

        # format loop 2
        - name: "Word 문서 수정"
          format: "WORD"
          link: "/redaction/net/replace-sensitive-text//word/"
          description: "MS Word 및 Open Office 문서"
          
        # format loop 3
        - name: "Excel 문서 수정"
          format: "EXCEL"
          link: "/redaction/net/replace-sensitive-text//excel/"
          description: "MS Excel 및 Open Office 스프레드시트"

        # format loop 4
        - name: "PowerPoint 수정"
          format: "POWERPOINT"
          link: "/redaction/net/replace-sensitive-text//powerpoint/"
          description: "MS PowerPoint 및 Open Office 프레젠테이션"

        # format loop 5
        - name: "DOCX 수정"
          format: "DOCX"
          link: "/redaction/net/replace-sensitive-text//docx/"
          description: "Microsoft Word Open XML 문서"
          
        # format loop 6
        - name: "XLSX 수정"
          format: "XLSX"
          link: "/redaction/net/replace-sensitive-text//xlsx/"
          description: "Microsoft Excel Open XML 스프레드시트"
          
        # format loop 7
        - name: "PPTX 수정"
          format: "PPTX"
          link: "/redaction/net/replace-sensitive-text//pptx/"
          description: "PowerPoint Open XML 프레젠테이션"


---