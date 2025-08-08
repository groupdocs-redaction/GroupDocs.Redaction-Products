
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: ko
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#를 사용하여 JPEG에서 이미지 숨기기"
head_description: "GroupDocs.Redaction for .NET을 사용하여 JPEG 파일의 민감한 이미지를 보호하기 위해 색상이 있는 오버레이를 추가하십시오. 파일 레이아웃을 변경하지 않고도 민감한 정보를 안전하게 보호할 수 있습니다."

############################# Header ############################
title: ".NET를 사용하여 JPEG 파일의 민감한 이미지 덮기" 
description: "C#를 사용하여 JPEG 파일에서 개인 및 비즈니스 이미지를 안전하게 유지하세요. 간단한 도구로 파일 보호를 신뢰할 수 있게 만듭니다."
subtitle: "GroupDocs.Redaction for .NET의 주요 기능" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET에 대해"
    link: "/redaction/net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET은 C# 개발자에게 JPEG 파일에서 콘텐츠를 숨기거나 삭제하는 강력한 도구를 제공합니다. 민감한 텍스트, 이미지 및 메타데이터를 마스킹하여 문서를 보호하십시오.

############################# Steps ############################
steps:
    enable: true
    title: "Jpeg 파일의 민감한 정보 보호하기"
    content: |
      GroupDocs.Redaction for .NET은 귀하의 .NET 앱이 신속하게 개인 콘텐츠를 숨길 수 있도록 설계되었습니다.
      
      1. Redactor 객체를 생성하고 Jpeg 파일의 경로를 제공합니다.
      2. 정리 옵션을 필요에 맞게 설정합니다.
      3. 이미지 영역을 마크하고 오버레이 색상을 선택합니다.
      4. 정리를 실행하고 프로텍션된 파일을 저장합니다.
   
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
        // JPEG 파일의 이미지 콘텐츠 덮기

        // Redactor를 사용하여 파일을 로드합니다.
        using (Redactor redactor  = new Redactor("input.jpg"))
        {
            // 오버레이 크기 및 색상을 설정합니다.
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // 오버레이 적용할 영역을 선택합니다.
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // 오버레이를 적용하고 파일을 저장합니다.
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "문서의 모든 콘텐츠 정리"
  description: "GroupDocs.Redaction for .NET은 다양한 파일 형식에서 콘텐츠를 숨기거나 제거하는 단순한 방법을 제공합니다. 민감한 정보를 보호하면서 문서의 깔끔함과 공유 용이성을 유지하세요."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "정리에 대한 완전한 제어"
  features:
    # feature loop
    - title: "어디에서나 텍스트 편집"
      content: "문서 전체에서 민감한 텍스트를 검색하고 교체하여 개인 데이터를 보호하세요."

    # feature loop
    - title: "이미지 추가"
      content: "전체 이미지 또는 특정 부분에 오버레이를 적용하여 민감한 비주얼을 숨깁니다."

    # feature loop
    - title: "메타데이터 편집"
      content: "숨겨진 메타데이터 필드를 제거하거나 수정하여 데이터 노출을 방지합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "오버레이로 이미지 데이터 숨기기"
      content: |
        이 예제는 파일의 민감한 이미지 영역을 마스킹하는 방법을 보여줍니다.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  파일을 편집을 위해 엽니다.
          using (Redactor redactor  = new Redactor("source.jpg"))
          {
              // 오버레이 크기, 위치 및 색상을 설정합니다.
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // 첫 페이지에서 특정 이미지 영역을 선택합니다.
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // 이미지에 오버레이를 적용합니다.
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
    title: ".NET 정제를 사용하여 JPEG 파일 보호하기"
    exclude: "JPEG"
    description: ".NET를 사용하여 JPEG 파일에서 민감한 콘텐츠를 숨기거나 제거하세요. 문서를 안전하고 전문적으로 유지하는 신뢰할 수 있는 솔루션입니다."
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