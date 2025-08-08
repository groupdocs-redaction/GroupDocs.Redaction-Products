
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: ko
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#를 사용하여 WORD에서 메타데이터 삭제하기"
head_description: "GroupDocs.Redaction for .NET을 사용하여 WORD 파일의 숨겨진 메타데이터를 찾아 삭제하세요. 원치 않는 노출로부터 문서를 개인적이고 안전하게 유지하세요."

############################# Header ############################
title: ".NET를 사용한 WORD 파일의 메타데이터 삭제" 
description: "C#로 WORD 파일에서 개인 및 기업 데이터를 보호하세요. 신뢰할 수 있는 파일 개인화를 위한 간단한 도구입니다."
subtitle: "GroupDocs.Redaction for .NET으로 무엇을 할 수 있는가" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET에 대해"
    link: "/redaction/net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction는 C# 개발자가 WORD 파일에서 텍스트, 이미지 및 메타데이터를 신속히 정리할 수 있는 도구를 제공합니다.

############################# Steps ############################
steps:
    enable: true
    title: "Word 파일에서 메타데이터 삭제하기"
    content: |
      GroupDocs.Redaction을 사용하면 귀하의 .NET 환경에서 문서 메타데이터를 쉽게 정리할 수 있습니다.
      
      1. Redactor 객체를 초기화하고 Word 문서를 엽니다.
      2. 모든 숨겨진 메타데이터를 삭제하기 위한 규칙을 설정합니다.
      3. 민감한 태그를 제거하기 위해 수정을 실행합니다.
      4. 정리된 문서를 저장합니다.
   
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
        // WORD 파일에서 메타데이터 지우기

        // Redactor를 사용하여 문서를 엽니다.
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // 메타데이터 삭제 옵션을 설정합니다.
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // 수정 후 정리된 파일을 저장합니다.
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "문서에서 기밀 데이터 삭제하기"
  description: "GroupDocs.Redaction for .NET를 사용하면 다양한 형식에서 개인 콘텐츠를 삭제할 수 있습니다. 구조를 유지하면서 파일을 안전하게 보호하세요."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "메타데이터 및 콘텐츠 수정 도구"
  features:
    # feature loop
    - title: "민감한 텍스트 교체"
      content: "문서에서 텍스트를 찾아 안전하게 제거하거나 변경하여 개인 정보를 보호하세요."

    # feature loop
    - title: "이미지 마스킹"
      content: "시각적 데이터를 숨기기 위해 이미지의 민감한 영역을 오버레이로 가립니다."

    # feature loop
    - title: "메타데이터 삭제"
      content: "정보 유출을 방지하기 위해 숨겨진 데이터를 찾아 정리합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "숨겨진 메타데이터 수정 또는 삭제"
      content: |
        이 예제는 WORD 문서에서 메타데이터 항목을 지정하고 정리하는 방법을 보여줍니다.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  수정을 위해 파일을 로드합니다.
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // 저자 메타데이터를 제거합니다.
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // 제목 메타데이터를 제거합니다.
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // 수정 프로세스를 실행합니다.
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // 정리된 문서를 내보냅니다.
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
    title: ".NET를 사용하여 WORD에서 메타데이터 수정하기"
    exclude: "WORD"
    description: ".NET을 사용해 WORD 파일의 숨겨진 메타데이터를 정리하세요. 민감한 정보를 안전하게 보호하세요."
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