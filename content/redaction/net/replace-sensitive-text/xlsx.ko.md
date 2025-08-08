
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: ko
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#로 XLSX에서 개인 텍스트 제거하기"
head_description: "GroupDocs.Redaction for .NET와 C#을 사용하여 XLSX 파일에서 개인 콘텐츠를 빠르게 정리합니다."

############################# Header ############################
title: ".NET와 함께 XLSX 문서에서 민감한 텍스트 편집 또는 숨기기" 
description: "GroupDocs.Redaction for .NET와 C#을 사용하여 XLSX 파일에서 개인 또는 비즈니스 정보를 제거하고 안전하게 공유할 수 있게 합니다."
subtitle: "GroupDocs.Redaction for .NET 로 할 수 있는 일" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET란?"
    link: "/redaction/net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET는 C# 개발자가 XLSX 파일에서 민감한 정보를 검색하고 제거할 수 있는 도구를 제공합니다. 텍스트, 이미지, 노트 및 파일 데이터를 처리합니다.

############################# Steps ############################
steps:
    enable: true
    title: "Xlsx 파일에서 텍스트 제거 방법"
    content: |
      GroupDocs.Redaction for .NET를 사용하여 .NET 프로젝트에서 민감한 정보를 숨기거나 삭제하는 단계를 따르세요.
      
      1. Redactor를 생성하고 Xlsx 파일을 로드합니다.
      2. 필요에 맞는 교정 설정을 선택합니다.
      3. 찾을 텍스트와 대체할 내용을 입력합니다.
      4. 교정을 실행하고 업데이트된 파일을 저장합니다.
   
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
        // XLSX 파일에서 텍스트 교정하기

        // Redactor를 사용하여 파일을 엽니다.
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // 교정 옵션을 선택합니다.
            // 검색할 내용과 대체할 내용을 설정합니다.
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // 교정을 적용하고 정리된 파일을 저장합니다.
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "교정을 위한 추가 도구"
  description: "GroupDocs.Redaction for .NET는 다양한 콘텐츠(텍스트, 이미지, 메타데이터)를 정리하는 데 도움을 주므로 파일을 안전하게 공유할 수 있습니다."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "교정 옵션"
  features:
    # feature loop
    - title: "민감한 텍스트 교체"
      content: "파일을 검색하고 기밀 정보를 교체합니다. 일반 텍스트 및 패턴을 지원합니다."

    # feature loop
    - title: "이미지 영역 가리기"
      content: "오버레이를 사용하여 시각적 데이터를 숨깁니다. 색상, 영역 크기 및 페이지 레이아웃을 선택합니다."

    # feature loop
    - title: "여분의 데이터 삭제"
      content: "저자 이름, 타임스탬프 또는 내부 노트와 같은 메타데이터를 삭제하여 유출을 방지합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "정규 표현식을 이용한 교정"
      content: |
        정규 표현식을 사용하여 전화번호, 이메일 또는 다른 개인 세부정보와 같은 패턴을 찾아 정리합니다.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  정리할 파일을 엽니다.
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // EMAIL 정규 표현식 규칙을 작성하고 대체할 내용을 선택합니다.
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // 패턴에 따라 교정을 실행합니다.
              redactor.Apply(redaction);

              // 교정된 파일을 저장합니다.
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
    title: ".NET로 XLSX에서 정보 숨기기"
    exclude: "XLSX"
    description: ".NET 도구를 사용하여 XLSX 문서에서 개인 또는 민감한 텍스트를 제거합니다. 데이터를 비공개로 유지하세요."
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