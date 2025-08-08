
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: ko
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#을 통해 EXCEL에서 메타데이터 편집 및 제거하기"
head_description: "GroupDocs.Redaction for .NET을 사용하여 메타데이터를 제거함으로써 EXCEL 문서를 안전하게 유지하세요. 개인 정보를 침해할 수 있는 숨겨진 데이터를 제거하세요."

############################# Header ############################
title: ".NET을 통한 EXCEL 파일의 메타데이터 보호" 
description: "C#를 사용하여 EXCEL 파일의 민감한 데이터를 정리하세요. 정보를 보호하기 위해 설계된 도구."
subtitle: "GroupDocs.Redaction for .NET의 주요 이점" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET란?"
    link: "/redaction/net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction는 C# 개발자에게 EXCEL 파일에서 수정 작업을 관리하는 신뢰할 수 있는 방법을 제공합니다. 텍스트, 이미지 및 메타데이터 작업을 지원합니다.

############################# Steps ############################
steps:
    enable: true
    title: "Excel 파일에서 메타데이터 정리하기"
    content: |
      GroupDocs.Redaction을 사용하여 문서 메타데이터를 안전하게 처리하세요.
      
      1. Redactor 객체를 생성하고 대상 Excel 파일을 로드합니다.
      2. 숨겨진 메타데이터를 제거하는 수정 설정을 구성합니다.
      3. 정리 프로세스를 실행합니다.
      4. 최종 버전을 저장합니다.
   
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
        // EXCEL에서 메타데이터 정리하기

        // 수정기를 초기화하고 파일을 로드합니다.
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // 메타데이터 제거 옵션을 설정합니다.
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // 수정 후 결과를 저장합니다.
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "파일에서 개인 데이터 삭제하기"
  description: "GroupDocs.Redaction for .NET은 여러 형식에서 텍스트, 이미지 및 메타데이터를 정리할 수 있습니다. 개인적, 법적 및 기업 문서에 완벽합니다."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "메타데이터 삭제 도구"
  features:
    # feature loop
    - title: "텍스트 검색 및 삭제"
      content: "문서에서 개인적이거나 민감한 텍스트를 찾아 안전하게 제거하세요."

    # feature loop
    - title: "시각적 요소 가리기"
      content: "이미지의 민감한 부분에 오버레이를 추가하여 보기 제한합니다."

    # feature loop
    - title: "메타데이터 제거"
      content: "민감한 정보를 누출할 수 있는 포함된 데이터를 제거하세요."
      
  code_samples_ext:
    # code sample ext loop
    - title: "수정할 메타데이터 지정하기"
      content: |
        문서에서 저자 또는 제목과 같은 메타데이터를 찾아 삭제하는 방법을 알아보세요.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  문서를 수정기로 가져옵니다.
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

              // 변경 사항을 적용합니다.
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // 업데이트된 문서를 저장합니다.
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
    title: ".NET을 사용하여 EXCEL에서 메타데이터 제거하기"
    exclude: "EXCEL"
    description: ".NET을 통해 EXCEL 파일에서 개인 메타데이터를 제거하세요. 문서를 깔끔하고 안전하게 유지하세요."
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