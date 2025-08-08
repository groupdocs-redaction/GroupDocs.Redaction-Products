
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: ko
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#을 사용하여 POWERPOINT의 메타데이터 정리하기"
head_description: "GroupDocs.Redaction for .NET을 사용하여 POWERPOINT 파일에서 원치 않는 메타데이터를 제거하세요. 숨겨진 데이터를 지워서 프라이버시를 지키세요."

############################# Header ############################
title: ".NET를 통한 POWERPOINT에서 메타데이터 삭제" 
description: "C#를 사용하여 POWERPOINT 파일의 데이터를 보호하세요. 메타데이터를 간단히 삭제할 수 있습니다."
subtitle: "GroupDocs.Redaction for .NET의 기능" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET에 대해 더 알아보세요"
    link: "/redaction/net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction는 C# 개발자를 위한 수정 도구 세트로, POWERPOINT 파일에서 텍스트, 이미지, 메타데이터 작업을 할 수 있게 도와줍니다.

############################# Steps ############################
steps:
    enable: true
    title: "Powerpoint 문서에서 메타데이터 정리하기"
    content: |
      GroupDocs.Redaction을 사용하면 귀하의 .NET 앱이 쉽게 문서에서 메타데이터를 제거할 수 있습니다.
      
      1. Redactor 객체로 시작하여 파일을 로드합니다.
      2. 삭제할 메타데이터 필드를 선택합니다.
      3. 수정 설정을 적용합니다.
      4. 최종 클린 문서를 내보냅니다.
   
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
        // POWERPOINT에서 메타데이터 제거하기

        // 문서를 수정자로 엽니다.
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // 메타데이터 정리 옵션을 설정합니다.
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // 수정을 적용하고 저장합니다.
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "수정으로 문서 보호하기"
  description: "GroupDocs.Redaction for .NET은 문서에서 숨겨진 콘텐츠를 제거하여 안전하게 공유할 수 있도록 돕습니다. 여러 형식과 콘텐츠 유형에서 작동합니다."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "수정 기능"
  features:
    # feature loop
    - title: "개인 텍스트 제거"
      content: "민감한 단어나 문구를 찾아 문서에서 제거합니다."

    # feature loop
    - title: "이미지 데이터 마스킹"
      content: "숨겨야할 이미지 부분을 가리기 위해 오버레이를 사용합니다."

    # feature loop
    - title: "메타데이터 삭제"
      content: "숨겨진 정보를 유지할 수 있는 메타데이터 필드를 정리합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "숨겨진 메타데이터 필드 정리하기"
      content: |
        이 예제는 POWERPOINT 파일에서 저자 및 제목과 같이 포함된 데이터 제거 과정을 안내합니다.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  파일을 수정기로 가져옵니다.
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // 저자 데이터를 제거합니다.
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // 제목 데이터를 제거합니다.
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // 수정을 실행합니다.
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // 정리된 버전을 저장합니다.
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
    title: ".NET을 사용하여 POWERPOINT 파일 정리하기"
    exclude: "POWERPOINT"
    description: ".NET을 통해 POWERPOINT 파일에서 숨겨진 데이터를 삭제하세요. 개인적인 의미에서 문서의 안전함을 보장합니다."
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