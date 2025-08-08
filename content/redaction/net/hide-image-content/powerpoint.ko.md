
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
head_title: "C#를 사용하여 POWERPOINT에서 민감한 이미지 숨기기"
head_description: "GroupDocs.Redaction for .NET을 사용하여 POWERPOINT 파일의 이미지에 오버레이를 추가하십시오. 개인 정보를 숨기면서 레이아웃을 유지할 수 있습니다."

############################# Header ############################
title: ".NET를 사용하여 POWERPOINT 문서의 개인 이미지 숨기기" 
description: "C#를 사용하여 POWERPOINT 파일의 개인 및 기업 데이터를 보호하세요. 문서 개인 정보 보호를 위한 간단한 도구입니다."
subtitle: "GroupDocs.Redaction for .NET의 주요 기능" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET 소개"
    link: "/redaction/net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET은 C# 개발자에게 POWERPOINT 파일에서 콘텐츠를 숨기거나 삭제하는 도구를 제공합니다. 문서를 보호하기 위해 텍스트, 이미지 및 메타데이터를 가리세요.

############################# Steps ############################
steps:
    enable: true
    title: "Powerpoint 문서의 민감한 정보 보호하기"
    content: |
      GroupDocs.Redaction for .NET은 귀하의 .NET 앱이 문서 내용을 신속히 보호하도록 돕습니다.
      
      1. Redactor 객체를 생성하고 Powerpoint 파일을 지정하세요.
      2. 필요에 맞게 정리 설정을 조정합니다.
      3. 이미지 영역을 선택하고 오버레이 색상을 할당합니다.
      4. 정리를 처리하고 파일을 저장하세요.
   
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
        // POWERPOINT 파일의 민감한 이미지 영역 정리하기

        // Redactor를 사용하여 파일을 로드합니다.
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // 오버레이 색상 및 크기를 정의합니다.
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // 정리할 영역 선택하기
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // 오버레이를 적용하고 문서를 저장하세요.
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "문서의 민감한 데이터 정리하기"
  description: "GroupDocs.Redaction for .NET은 다양한 문서 형식에서 콘텐츠를 숨기거나 삭제할 수 있는 도구를 제공합니다. 개인 데이터를 보호하는 동시에 파일을 사용하기 쉽게 유지합니다."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "강력한 정리 도구"
  features:
    # feature loop
    - title: "텍스트 검색 및 편집"
      content: "문서에서 민감한 텍스트를 찾아 수정하여 보안을 강화합니다."

    # feature loop
    - title: "이미지 콘텐츠 덮기"
      content: "이미지 또는 선택된 영역에 오버레이를 사용하여 제거합니다."

    # feature loop
    - title: "메타데이터 제거"
      content: "숨겨진 메타데이터를 삭제하거나 수정하여 데이터 유출을 방지하세요."
      
  code_samples_ext:
    # code sample ext loop
    - title: "오버레이로 이미지 데이터 숨기기"
      content: |
        이 예제에서는 문서에서 민감한 이미지를 정리하는 방법을 보여줍니다.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  문서를 로드합니다.
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // 오버레이의 크기, 위치 및 색상을 설정합니다.
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // 첫 페이지의 정리할 영역을 지정합니다.
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // 오버레이를 적용하여 이미지를 보호합니다.
              redactor.Apply(redaction);

              // 정리된 파일을 저장합니다.
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
    title: ".NET를 사용하여 POWERPOINT 콘텐츠 정리하기"
    exclude: "POWERPOINT"
    description: ".NET를 사용하여 POWERPOINT 파일의 민감한 정보를 숨기거나 삭제하세요. 민감한 문서를 보호하기 위한 신뢰할 수 있는 솔루션입니다."
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