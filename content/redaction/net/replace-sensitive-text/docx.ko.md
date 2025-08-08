
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: ko
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#로 DOCX에서 개인 텍스트 제거하기"
head_description: "GroupDocs.Redaction for .NET와 C#을 사용하여 DOCX 파일에서 개인 콘텐츠를 빠르게 보호합니다."

############################# Header ############################
title: ".NET와 함께 DOCX 문서에서 민감한 텍스트 찾고 숨기기" 
description: "개인용이든 비즈니스용이든 GroupDocs.Redaction for .NET와 C#를 사용하여 개인 정보를 보이지 않게 유지하세요."
subtitle: "GroupDocs.Redaction for .NET가 당신에게 도움이 되는 방법" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET란?"
    link: "/redaction/net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET는 C# 개발자에게 DOCX 파일에서 민감한 콘텐츠를 찾고 정리하는 도구를 제공합니다. 텍스트, 이미지, 주석 등을 처리합니다.

############################# Steps ############################
steps:
    enable: true
    title: "Docx 파일에서 콘텐츠 제거 방법"
    content: |
      GroupDocs.Redaction for .NET를 사용하여 개인 텍스트를 정리하기 위한 간편한 단계입니다.
      
      1. 새 Redactor를 시작하고 Docx 파일을 로드합니다.
      2. 원하는 교정 설정을 선택합니다.
      3. 찾을 텍스트와 대체할 텍스트를 입력합니다.
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
        // DOCX 파일에서 텍스트 교정하기

        // Redactor를 사용하여 파일을 로드합니다.
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // 필요에 맞는 교정 옵션을 선택합니다.
            // 검색할 내용을 설정하고 대체할 내용을 선택합니다.
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // 도구를 실행하고 교정된 파일을 저장합니다.
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "추가 교정 기능"
  description: "GroupDocs.Redaction for .NET를 사용하면 다양한 파일 유형의 숨겨진 또는 보이는 콘텐츠를 쉽게 제거할 수 있습니다. 안전하게 공유하기 좋습니다."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "교정 도구 개요"
  features:
    # feature loop
    - title: "개인 텍스트 교체"
      content: "파일 어디에서나 특정 텍스트를 검색하고 교체합니다. 일반 텍스트 또는 패턴 모두 지원합니다."

    # feature loop
    - title: "민감한 이미지 가리기"
      content: "이미지의 일부 또는 전체 페이지를 오버레이로 가립니다. 색상, 크기 및 위치를 제어합니다."

    # feature loop
    - title: "숨겨진 데이터 삭제"
      content: "이름, 댓글 또는 타임스탬프와 같은 메타데이터를 제거하여 남는 것이 없도록 합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "정규 표현식으로 패턴 찾고 교정하기"
      content: |
        정규 표현식을 사용하여 특정 데이터 유형(예: 이메일 주소 또는 ID 번호)을 검색하고 자동으로 정리합니다.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  정리할 파일을 엽니다.
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // EMAIL 정규 표현식 규칙과 대체 문자열을 생성합니다.
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // 설정에 따라 교정을 실행합니다.
              redactor.Apply(redaction);

              // 업데이트된 파일을 저장합니다.
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
    title: ".NET로 DOCX 데이터 교정하기"
    exclude: "DOCX"
    description: ".NET를 사용하여 DOCX 문서에 있는 개인 또는 공식 정보를 숨기세요. 간단하고 효과적입니다."
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