
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: ko
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#를 사용하여 PPTX에서 이미지 정리하기"
head_description: "GroupDocs.Redaction for .NET을 사용하여 PPTX 파일의 민감한 이미지 콘텐츠를 색상 오버레이로 숨길 수 있습니다. 문서의 구조를 변경하지 않고 기밀 데이터를 보호하세요."

############################# Header ############################
title: ".NET를 사용하여 PPTX 문서에서 민감한 이미지 정리하기" 
description: "C#을 사용하여 PPTX 파일의 개인 및 비즈니스 데이터를 보호하세요. 우리의 도구들은 이미지를 정리하는 작업을 신속하고 간편하게 만들어 줍니다."
subtitle: "GroupDocs.Redaction for .NET의 제공" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET에 대해"
    link: "/redaction/net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET은 C# 개발자에게 PPTX 파일에서 콘텐츠를 숨기거나 삭제하는 쉽고 강력한 도구를 제공합니다. 텍스트, 이미지 및 메타데이터를 가려 문서를 보호하세요.

############################# Steps ############################
steps:
    enable: true
    title: "Pptx 문서에서 비즈니스 데이터 안전하게 보호하기"
    content: |
      GroupDocs.Redaction for .NET: 민감한 정보를 숨기는 데 도움을 주는 귀하의 .NET 앱을 위한 솔루션입니다.
      
      1. Redactor 인스턴스를 설정하고 Pptx 파일을 불러옵니다.
      2. 필요에 맞게 정리 설정을 구성합니다.
      3. 이미지 영역을 선택하고 오버레이 색상을 지정합니다.
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
        // PPTX에서 민감한 이미지 영역 정리하기

        // Redactor를 사용하여 파일을 열기
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // 오버레이 색상 및 크기를 정의하기
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // 정리할 영역 선택하기
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // 오버레이를 적용하고 문서 저장하기
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "문서 정리 도구"
  description: "GroupDocs.Redaction for .NET를 사용하면 다양한 파일 유형에서 민감한 콘텐츠를 숨기거나 삭제할 수 있습니다. 정보를 보호하면서 문서를 깔끔하게 유지하고 공유할 수 있습니다."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "강력한 정리 도구"
  features:
    # feature loop
    - title: "텍스트 검색 및 교체"
      content: "민감한 텍스트를 찾아 정리하여 문서 보안을 강화합니다."

    # feature loop
    - title: "이미지 콘텐츠 정리"
      content: "전체 이미지를 덮거나 선택된 지역에 오버레이를 적용하여 비공식적인 비주얼을 숨깁니다."

    # feature loop
    - title: "메타데이터 삭제"
      content: "숨겨진 메타데이터를 지우거나 수정하여 데이터 유출을 방지합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "오버레이를 사용하여 이미지 데이터 숨기기"
      content: |
        이 예제는 문서에서 민감한 이미지를 정리하는 방법을 설명합니다.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  문서를 로드합니다.
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // 오버레이 크기, 위치 및 색상을 설정합니다.
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // 첫 페이지의 정리할 영역을 지정합니다.
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
    title: ".NET를 사용하여 PPTX 콘텐츠 정리하기"
    exclude: "PPTX"
    description: ".NET를 사용하여 PPTX 파일의 민감한 콘텐츠를 숨기거나 삭제하세요. 문서 보안을 위한 신뢰할 수 있는 솔루션입니다."
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