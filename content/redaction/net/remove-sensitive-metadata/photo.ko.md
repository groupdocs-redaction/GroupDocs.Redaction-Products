
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: ko
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#를 사용하여 PHOTO에서 메타데이터 삭제하기"
head_description: "GroupDocs.Redaction for .NET은 PHOTO 파일에서 숨겨진 데이터를 제거하여 개인 또는 기업 정보를 드러낼 수 있습니다."

############################# Header ############################
title: ".NET를 통해 PHOTO에서 메타데이터 제거하기" 
description: "C#를 사용하여 숨겨진 정보를 제거하여 문서를 안전하게 보호하세요."
subtitle: "GroupDocs.Redaction for .NET의 하이라이트" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET에 대해"
    link: "/redaction/net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction는 C# 개발자들이 PHOTO 파일에서 텍스트, 이미지 및 메타데이터를 숨기는 데 도움을 주는 도구입니다.

############################# Steps ############################
steps:
    enable: true
    title: "Photo 파일에서 메타데이터 삭제하기"
    content: |
      귀하의 .NET 프로젝트에서 문서 메타데이터를 정리하기 위해 GroupDocs.Redaction을 사용하세요.
      
      1. Redactor를 시작하고 Photo 파일을 엽니다.
      2. 메타데이터를 삭제하기 위한 규칙을 설정합니다.
      3. 수정을 실행하여 문서를 정리합니다.
      4. 결과 파일을 저장합니다.
   
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
        // PHOTO 문서에서 메타데이터 삭제하기

        // Redactor를 사용하여 문서를 로드합니다.
        using (Redactor redactor  = new Redactor("input.jpeg"))
        {
            // 메타데이터 필드를 수정하여 삭제합니다.
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // 문서를 정리하고 저장합니다.
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "파일에서 개인 정보 삭제하기"
  description: "GroupDocs.Redaction for .NET는 텍스트, 이미지 및 파일 세부 정보를 제거하는 방법을 제공합니다. 데이터 보안에 이상적입니다."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "유용한 수정 기능"
  features:
    # feature loop
    - title: "텍스트 정리"
      content: "공유하면 안 되는 텍스트를 스캔하여 지워주세요."

    # feature loop
    - title: "이미지 영역 가리기"
      content: "개인 정보가 포함된 이미지 부분 위에 가리개를 추가하세요."

    # feature loop
    - title: "메타데이터 삭제"
      content: "공유 또는 게시 전에 숨겨진 파일 데이터를 삭제합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "숨겨진 메타데이터 필드 삭제하기"
      content: |
        이 예제는 PHOTO 문서에서 메타데이터를 제거하는 방법을 안내합니다.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  PHOTO 파일을 로드합니다.
          using (Redactor redactor  = new Redactor("source.jpeg"))
          {
              // 저자 필드를 수정합니다.
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // 제목 필드를 수정합니다.
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // 문서를 처리합니다.
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // 정리된 결과를 저장합니다.
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
    title: ".NET을 사용하여 PHOTO 메타데이터 수정하기"
    exclude: "PHOTO"
    description: ".NET를 사용하여 PHOTO 파일의 민감한 데이터를 제거하세요. 안전하게 공유하세요."
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