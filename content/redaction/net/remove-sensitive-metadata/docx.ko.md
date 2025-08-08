
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: ko
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#를 사용하여 DOCX에서 메타데이터 삭제하기"
head_description: "GroupDocs.Redaction for .NET을 사용하여 DOCX 파일의 숨겨진 메타데이터를 삭제하거나 변경하세요. 문서를 쉽게 개인적 세부 사항으로부터 보호하세요."

############################# Header ############################
title: ".NET를 사용한 DOCX 파일의 메타데이터 삭제" 
description: "C#를 사용하여 DOCX 파일에서 민감한 메타데이터를 정리하세요. 귀사의 사업 및 개인 데이터를 보호하세요."
subtitle: "GroupDocs.Redaction for .NET의 대표 기능" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET란?"
    link: "/redaction/net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction은 C# 개발자에게 DOCX 파일에서 콘텐츠를 숨기거나 제거하는 도구를 제공합니다. 텍스트, 이미지 및 메타데이터를 빠르게 정리할 수 있습니다.

############################# Steps ############################
steps:
    enable: true
    title: "Docx 파일에서 숨겨진 데이터 정리하기"
    content: |
      GroupDocs.Redaction는 귀하의 .NET 프로젝트가 원치 않는 메타데이터를 빠르게 제거하도록 돕습니다.
      
      1. Redactor 인스턴스를 만들고 Docx 파일을 엽니다.
      2. 메타데이터 항목 대상의 수정 설정을 합니다.
      3. 문서를 정리하기 위해 변경 사항을 적용합니다.
      4. 정리된 파일을 저장합니다.
   
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
        // DOCX 문서에서 메타데이터 지우기

        // Redactor를 사용하여 파일을 로드합니다.
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // 메타데이터 제거 설정을 구성합니다.
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // 변경 사항을 적용하고 저장합니다.
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "문서에서 민감한 정보 숨기기"
  description: "GroupDocs.Redaction for .NET는 다양한 파일 유형에서 민감한 콘텐츠를 정리할 수 있도록 합니다. 문서를 안전하게 공유하거나 저장할 수 있습니다."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "스마트 수정 옵션"
  features:
    # feature loop
    - title: "개인 텍스트 제거"
      content: "파일에서 개인 또는 사업 관련 텍스트를 검색하고 삭제합니다."

    # feature loop
    - title: "이미지 마스킹"
      content: "비밀 콘텐츠를 숨기기 위해 이미지나 선택한 영역을 가리세요."

    # feature loop
    - title: "메타데이터 삭제"
      content: "배경 세부 정보를 유출하지 않기 위해 숨겨진 메타데이터 항목을 삭제합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "메타데이터 필드 정리하기"
      content: |
        이 예제는 DOCX 파일에서 숨겨진 데이터를 제거하는 방법을 보여줍니다.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  DOCX 파일을 로드합니다.
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // 제거를 위해 저자 필드를 대상으로 합니다.
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // 제거를 위해 제목 필드를 대상으로 합니다.
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // 수정 프로세스를 실행합니다.
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // 업데이트된 파일을 저장합니다.
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
    title: ".NET을 사용한 DOCX의 메타데이터 삭제"
    exclude: "DOCX"
    description: ".NET을 이용하여 DOCX 파일에서 원치 않는 메타데이터를 제거하세요. 파일의 숨겨진 세부 사항을 보호하는 간단한 방법입니다."
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