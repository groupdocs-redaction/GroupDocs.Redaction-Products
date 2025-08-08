
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: ko
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#을 사용하여 XLSX 파일의 메타데이터 정리하기"
head_description: "GroupDocs.Redaction for .NET를 사용하여 XLSX 파일의 메타데이터를 안전하게 제거할 수 있습니다. 개인 정보를 드러낼 수 있는 숨겨진 정보를 정리하세요."

############################# Header ############################
title: ".NET를 사용한 XLSX 파일의 메타데이터 삭제" 
description: "C#를 사용하여 XLSX 파일의 민감한 세부 정보를 보호하세요. 개인 및 작업 문서를 위한 간편한 수정."
subtitle: "GroupDocs.Redaction for .NET의 가능성 탐구하기" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction에 대해"
    link: "/redaction/net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction는 C# 개발자에게 XLSX 문서에서 콘텐츠를 정리하기 위한 도구를 제공합니다. 텍스트, 이미지 및 메타데이터를 간단하게 마스킹하거나 삭제합니다.

############################# Steps ############################
steps:
    enable: true
    title: "Xlsx 파일에서 메타데이터 정리하기"
    content: |
      GroupDocs.Redaction을 사용하면 .NET 앱이 빠르게 숨겨진 데이터를 제거할 수 있습니다.
      
      1. Redactor를 설정하고 Xlsx 파일을 엽니다.
      2. 어떤 메타데이터를 삭제할 것인지 정의합니다.
      3. 수정 규칙을 적용합니다.
      4. 최종 파일을 저장합니다.
   
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
        // XLSX에서 숨겨진 메타데이터 정리하기

        // Redactor로 파일을 엽니다.
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // 삭제할 메타데이터를 설정합니다.
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // 수정을 적용하고 저장합니다.
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "문서에서 민감한 정보 보호하기"
  description: "GroupDocs.Redaction for .NET를 사용하여 다양한 파일 형식에서 콘텐츠를 제거하거나 숨길 수 있습니다. 파일을 비공식적으로 안전하게 유지하고 준비되도록 합니다."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "올인원 수정 기능"
  features:
    # feature loop
    - title: "텍스트 교체 또는 삭제"
      content: "민감한 텍스트를 찾아 제거하여 개인 데이터를 보호하세요."

    # feature loop
    - title: "이미지 섹션 숨기기"
      content: "사적인 시각 정보를 가리기 위해 오버레이를 사용하세요."

    # feature loop
    - title: "메타데이터 제거"
      content: "개인 또는 사업 세부 사항을 포함할 수 있는 숨겨진 메타데이터 필드를 정리하세요."
      
  code_samples_ext:
    # code sample ext loop
    - title: "메타데이터 삭제 방법"
      content: |
        이 샘플 코드는 XLSX 문서의 메타데이터 속성을 제거합니다.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  문서를 엽니다.
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // 저자 메타데이터를 대상으로 합니다.
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // 제목 메타데이터를 대상으로 합니다.
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // 수정 프로세스를 실행합니다.
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // 정리된 문서를 저장합니다.
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
    title: ".NET을 사용하여 XLSX에서 메타데이터 제거하기"
    exclude: "XLSX"
    description: ".NET을 사용하여 XLSX 파일의 개인 메타데이터를 제거하세요. 문서를 깔끔하고 안전하게 유지하십시오."
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