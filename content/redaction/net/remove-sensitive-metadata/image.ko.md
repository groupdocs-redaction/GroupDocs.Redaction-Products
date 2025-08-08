
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: ko
format: Image
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#를 사용하여 IMAGE에서 숨겨진 메타데이터 제거하기"
head_description: "GroupDocs.Redaction for .NET을 사용하여 IMAGE 파일의 메타데이터를 정리하세요. 개인 세부 정보가 개인으로 남도록 하세요."

############################# Header ############################
title: ".NET를 통한 IMAGE 파일의 메타데이터 삭제" 
description: "C#를 사용하여 IMAGE 파일을 안전하게 유지하세요. 비즈니스 및 개인 데이터를 쉽게 보호하세요."
subtitle: "GroupDocs.Redaction for .NET로 얻는 것" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET에 대해"
    link: "/redaction/net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction는 C# 사용자가 IMAGE 파일에서 원하지 않는 텍스트, 이미지 부분 및 메타데이터를 제거할 수 있도록 돕습니다.

############################# Steps ############################
steps:
    enable: true
    title: "Image 파일에서 메타데이터 정리하기"
    content: |
      GroupDocs.Redaction으로 .NET 앱에서 파일 메타데이터를 정리하는 작업을 시작하세요.
      
      1. Redactor를 생성하고 Image 파일을 엽니다.
      2. 숨겨진 메타데이터 항목 제거 옵션을 선택합니다.
      3. 수정 설정을 적용합니다.
      4. 결과를 저장합니다.
   
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
        // IMAGE 파일에서 숨겨진 메타데이터 제거하기

        // Redactor로 파일을 엽니다.
        using (Redactor redactor  = new Redactor("input.png"))
        {
            // 메타데이터에 대한 수정 규칙 추가합니다.
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // 처리하고 저장합니다.
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "어떤 문서에서든 콘텐츠 정리하기"
  description: "GroupDocs.Redaction for .NET는 개인 텍스트, 이미지 부분 또는 숨겨진 필드를 제거합니다. 문서를 안전하게 공유할 수 있도록 합니다."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "주요 기능"
  features:
    # feature loop
    - title: "텍스트 수정"
      content: "개인 단어 및 숫자를 찾아 제거하세요."

    # feature loop
    - title: "이미지 가리기"
      content: "시각적 정보를 가리기 위해 이미지 마스크를 추가하세요."

    # feature loop
    - title: "메타데이터 수정"
      content: "정보 유출이 가능할 수 있는 메타데이터 필드를 정리하세요."
      
  code_samples_ext:
    # code sample ext loop
    - title: "민감한 메타데이터 지우기"
      content: |
        이 샘플은 IMAGE 문서에서 특정 메타데이터 필드를 제거하는 방법을 설명합니다.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  수정기를 사용하여 IMAGE 파일을 엽니다.
          using (Redactor redactor  = new Redactor("source.png"))
          {
              // 저자 필드를 대상으로 합니다.
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // 제목 필드를 대상으로 합니다.
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // 필드를 수정합니다.
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // 문서를 저장합니다.
              var saveOptions = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(saveOptions);
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: ".NET을 사용하여 IMAGE에서 메타데이터 제거하기"
    exclude: "IMAGE"
    description: ".NET를 사용하여 IMAGE 문서에서 민감한 데이터를 지우세요. 공유하거나 보관하기에 안전한 상태로 유지하세요."
    items: 
        # format loop 1
        - name: "PDF 수정"
          format: "PDF"
          link: "/redaction/net/remove-sensitive-metadata//pdf/"
          description: "Adobe 휴대용 문서 형식"

        # format loop 2
        - name: "Word 문서 수정"
          format: "WORD"
          link: "/redaction/net/remove-sensitive-metadata//word/"
          description: "MS Word 및 Open Office 문서"
          
        # format loop 3
        - name: "Excel 문서 수정"
          format: "EXCEL"
          link: "/redaction/net/remove-sensitive-metadata//excel/"
          description: "MS Excel 및 Open Office 스프레드시트"

        # format loop 4
        - name: "PowerPoint 수정"
          format: "POWERPOINT"
          link: "/redaction/net/remove-sensitive-metadata//powerpoint/"
          description: "MS PowerPoint 및 Open Office 프레젠테이션"

        # format loop 5
        - name: "이미지 수정"
          format: "IMAGE"
          link: "/redaction/net/remove-sensitive-metadata//image/"
          description: "인기 이미지 형식"

        # format loop 6
        - name: "사진 수정"
          format: "PHOTO"
          link: "/redaction/net/remove-sensitive-metadata//photo/"
          description: "사진 형식"

        # format loop 7
        - name: "DOCX 수정"
          format: "DOCX"
          link: "/redaction/net/remove-sensitive-metadata//docx/"
          description: "Microsoft Word Open XML 문서"
          
        # format loop 8
        - name: "XLSX 수정"
          format: "XLSX"
          link: "/redaction/net/remove-sensitive-metadata//xlsx/"
          description: "Microsoft Excel Open XML 스프레드시트"
          
        # format loop 9
        - name: "PPTX 수정"
          format: "PPTX"
          link: "/redaction/net/remove-sensitive-metadata//pptx/"
          description: "PowerPoint Open XML 프레젠테이션"

        # format loop 10
        - name: "JPEG 수정"
          format: "JPEG"
          link: "/redaction/net/remove-sensitive-metadata//jpeg/"
          description: "JPEG 이미지"


---