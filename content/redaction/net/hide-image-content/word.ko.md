
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
head_title: "C#를 사용하여 WORD에서 이미지 덮기"
head_description: "GroupDocs.Redaction for .NET을 사용하여 WORD 파일의 민감한 이미지 영역을 숨기고 색상 오버레이를 추가하여 개인 데이터를 보호하세요. 문서 원본 레이아웃은 그대로 유지합니다."

############################# Header ############################
title: ".NET를 사용하여 WORD 파일에서 개인 이미지 숨기기" 
description: "C#를 사용하여 WORD 문서에서 개인 및 비즈니스 데이터를 보호하세요. 우리의 간단한 도구로 신뢰할 수 있는 콘텐츠 보호를 실현할 수 있습니다."
subtitle: "GroupDocs.Redaction for .NET의 주요 기능" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET 소개"
    link: "/redaction/net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET은 C# 개발자에게 WORD 파일의 콘텐츠를 숨기거나 삭제하는 도구를 제공합니다. 민감한 텍스트, 이미지 및 메타데이터를 덮어 문서를 보호하세요.

############################# Steps ############################
steps:
    enable: true
    title: "Word 파일에서 민감한 정보 보호하기"
    content: |
      GroupDocs.Redaction for .NET는 귀하의 .NET 앱이 문서에서 개인 콘텐츠를 신속하게 숨기도록 돕습니다.
      
      1. Redactor 객체를 생성하고 Word 파일 경로를 지정합니다.
      2. 필요에 맞게 정리 매개변수를 설정합니다.
      3. 이미지 영역을 표시하고 오버레이 색상을 정의합니다.
      4. 처리하여 정리된 파일을 저장합니다.
   
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
        // WORD에서 민감한 이미지 덮기

        // Redactor 생성자를 통해 파일을 로드합니다.
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // 오버레이 색상 및 크기를 정의합니다.
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // 정리할 이미지 영역 선택합니다.
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // 오버레이를 적용하고 문서를 저장합니다.
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "문서 콘텐츠 숨기기 또는 제거하기"
  description: "GroupDocs.Redaction for .NET은 여러 파일 형식에서 데이터를 숨기거나 제거하는 간단한 방법을 제공합니다. 민감한 정보를 보호하면서 문서를 깔끔하고 읽기 쉽게 유지합니다."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "자세한 정리 도구"
  features:
    # feature loop
    - title: "어디서든 텍스트 교체"
      content: "문서 전체에서 민감한 텍스트를 찾아 수정하여 비공식 정보를 보호하세요."

    # feature loop
    - title: "이미지 마스킹"
      content: "특정 이미지 영역 또는 전체 이미지를 마스킹하여 비공식 비주얼을 보호합니다."

    # feature loop
    - title: "메타데이터 클린업"
      content: "숨겨진 메타데이터를 삭제하거나 수정하여 의도치 않은 데이터 유출을 방지합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "오버레이로 이미지 콘텐츠 숨기기"
      content: |
        이 예제는 오버레이를 사용하여 문서 이미지에서 민감한 데이터를 보호하는 방법을 보여줍니다.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  편집할 문서를 로드합니다.
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // 오버레이 크기, 위치 및 색상을 설정합니다.
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // 첫 페이지의 특정 이미지 영역에 집중합니다.
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // 오버레이 정리를 적용합니다.
              redactor.Apply(redaction);

              // 파일에 대한 변경 사항을 저장합니다.
              var save_options = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_options);
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: ".NET 정제를 사용하여 WORD 콘텐츠 보호하기"
    exclude: "WORD"
    description: ".NET는 WORD 파일에서 민감한 콘텐츠를 숨기거나 삭제할 수 있는 방법입니다. 기밀 및 공식 문서를 보호하는 신뢰할 수 있는 방법입니다."
    items: 
        # format loop 1
        - name: "PDF 수정"
          format: "PDF"
          link: "/redaction/net/hide-image-content//pdf/"
          description: "Adobe 휴대용 문서 형식"

        # format loop 2
        - name: "Word 문서 수정"
          format: "WORD"
          link: "/redaction/net/hide-image-content//word/"
          description: "MS Word 및 Open Office 문서"
          
        # format loop 3
        - name: "Excel 문서 수정"
          format: "EXCEL"
          link: "/redaction/net/hide-image-content//excel/"
          description: "MS Excel 및 Open Office 스프레드시트"

        # format loop 4
        - name: "PowerPoint 수정"
          format: "POWERPOINT"
          link: "/redaction/net/hide-image-content//powerpoint/"
          description: "MS PowerPoint 및 Open Office 프레젠테이션"

        # format loop 5
        - name: "이미지 수정"
          format: "IMAGE"
          link: "/redaction/net/hide-image-content//image/"
          description: "인기 이미지 형식"

        # format loop 6
        - name: "사진 수정"
          format: "PHOTO"
          link: "/redaction/net/hide-image-content//photo/"
          description: "사진 형식"

        # format loop 7
        - name: "DOCX 수정"
          format: "DOCX"
          link: "/redaction/net/hide-image-content//docx/"
          description: "Microsoft Word Open XML 문서"
          
        # format loop 8
        - name: "XLSX 수정"
          format: "XLSX"
          link: "/redaction/net/hide-image-content//xlsx/"
          description: "Microsoft Excel Open XML 스프레드시트"
          
        # format loop 9
        - name: "PPTX 수정"
          format: "PPTX"
          link: "/redaction/net/hide-image-content//pptx/"
          description: "PowerPoint Open XML 프레젠테이션"

        # format loop 10
        - name: "JPEG 수정"
          format: "JPEG"
          link: "/redaction/net/hide-image-content//jpeg/"
          description: "JPEG 이미지"


---