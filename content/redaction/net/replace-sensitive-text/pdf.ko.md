
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: ko
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#로 PDF의 민감한 텍스트 제거하기"
head_description: "GroupDocs.Redaction for .NET를 사용하여 PDF 파일의 개인 정보를 보호하세요. 민감한 데이터를 빠르게 검색하고 교정할 수 있습니다."

############################# Header ############################
title: ".NET를 이용한 PDF 문서의 민감한 텍스트 제거" 
description: "C#와 GroupDocs.Redaction for .NET를 사용하여 PDF 파일의 콘텐츠를 완벽하게 제어하세요. 개인 정보, 법적 데이터 또는 기밀 데이터를 효과적으로 정리할 수 있습니다."
subtitle: "GroupDocs.Redaction for .NET로 할 수 있는 일" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET란?"
    link: "/redaction/net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET는 C# 개발자에게 PDF 콘텐츠를 교정하는 데 필요한 모든 도구를 제공합니다. 인기 있는 파일 형식에서 텍스트, 이미지, 주석 및 메타데이터를 정리합니다.

############################# Steps ############################
steps:
    enable: true
    title: "Pdf 파일 내용 제거 방법"
    content: |
      GroupDocs.Redaction for .NET를 사용하여 어떤 .NET 앱에서든 문서를 보호하세요. 민감한 텍스트를 빠르고 정확하게 제거할 수 있습니다.
      
      1. Redactor를 초기화하고 Pdf 파일을 로드합니다.
      2. 필요한 교정 옵션을 설정합니다.
      3. 검색할 텍스트와 대체할 텍스트를 지정합니다.
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
        // PDF 파일의 텍스트 교정 방법

        // Redactor 생성자를 사용하여 파일을 로드합니다.
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // 교정 기본 설정을 선택합니다.
            // 검색할 내용과 대체할 내용을 선택합니다.
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // 교정을 적용하고 새로운 PDF 파일을 저장합니다.
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "문서 교정을 위한 추가 기능"
  description: "GroupDocs.Redaction for .NET는 여러 파일 형식에서 민감한 콘텐츠를 제거하거나 숨기는 데 도움을 줍니다. 문서를 안전하게 공유할 수 있도록 깨끗하게 유지하세요."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "교정 도구 및 옵션"
  features:
    # feature loop
    - title: "기밀 텍스트 교체"
      content: "파일 어디에서나 일치하는 텍스트를 찾고 교체합니다. 정규 표현식 및 스마트 검색 옵션을 지원합니다."

    # feature loop
    - title: "민감한 이미지 숨기기"
      content: "오버레이를 사용하여 이미지나 특정 영역을 덮습니다. 페이지 설정, 색상 및 기타를 조정할 수 있습니다."

    # feature loop
    - title: "숨겨진 메타데이터 정리"
      content: "저자명, 타임스탬프 또는 댓글과 같은 숨겨진 데이터를 제거하여 개인 정보를 보호합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "정규 표현식으로 텍스트 교정하기"
      content: |
        정규 표현식을 사용하여 이메일이나 ID와 같은 민감한 텍스트 패턴을 검색하고 교정합니다.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  정리할 문서를 엽니다.
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // EMAIL 정규 표현식 패턴과 대체할 텍스트를 정의합니다.
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // 교정 규칙을 적용합니다.
              redactor.Apply(redaction);

              // 최종 교정된 파일을 저장합니다.
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
    title: ".NET로 PDF의 콘텐츠 교정하기"
    exclude: "PDF"
    description: ".NET 도구를 사용하여 PDF 파일에서 텍스트를 교정하여 공식 및 개인 데이터를 보호합니다. 문서를 안전하고 비공개로 유지하세요."
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