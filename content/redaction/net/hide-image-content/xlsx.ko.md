
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: ko
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#를 사용하여 XLSX 파일에서 이미지 마스킹"
head_description: "GroupDocs.Redaction for .NET을 사용하여 XLSX 파일의 민감한 이미지 콘텐츠를 색상 오버레이로 마스킹하세요. 문서 구조를 유지하면서 중요한 데이터를 보호하세요."

############################# Header ############################
title: ".NET를 사용하여 XLSX 문서에서 민감한 이미지 마스킹" 
description: "C#을 사용하여 XLSX 파일에서 데이터 프라이버시를 보장하세요. 우리의 도구들은 이미지 정리를 신속하고 효과적으로 만듭니다."
subtitle: "GroupDocs.Redaction for .NET의 주요 기능" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET에 대해"
    link: "/redaction/net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET은 C# 개발자에게 XLSX 파일에서 콘텐츠를 숨기거나 삭제하는 도구를 제공합니다. 텍스트, 이미지 및 메타데이터를 가림으로써 문서를 안전하게 보호합니다.

############################# Steps ############################
steps:
    enable: true
    title: "Xlsx 문서에서 개인 데이터 보호하기"
    content: |
      GroupDocs.Redaction for .NET: 귀하의 .NET 앱이 문서를 효율적으로 보호하는 것을 도와드립니다.
      
      1. Redactor 인스턴스를 생성하고 Xlsx 파일을 로드합니다.
      2. 필요에 맞게 정리 매개변수를 설정합니다.
      3. 이미지 영역을 정의하고 오버레이 색상을 선택합니다.
      4. 정리를 적용하고 출력 파일을 저장합니다.
   
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
        // XLSX에서 민감한 이미지 부분 마스킹

        // 파일 경로로 Redactor 초기화하기
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // 오버레이 크기 및 색상 선택하기
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // 정리할 영역을 표시하기
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // 변경을 적용하고 저장하기
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "문서 정리 기능"
  description: "GroupDocs.Redaction for .NET을 사용하면 다양한 파일 형식에서 콘텐츠를 숨기거나 삭제할 수 있습니다. 문서를 읽기 쉽게 유지하면서 민감한 데이터를 비공식적으로 보호하세요."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "강력한 정리 기능"
  features:
    # feature loop
    - title: "텍스트 신속하게 검색 및 교체"
      content: "민감한 텍스트를 빨리 찾고 정리하여 기밀 데이터를 보호합니다."

    # feature loop
    - title: "이미지 콘텐츠 마스킹"
      content: "전체 이미지에서 특정 영역에 오버레이를 적용하여 개인 비주얼을 숨깁니다."

    # feature loop
    - title: "메타데이터 정리"
      content: "숨겨진 메타데이터를 제거하거나 조정하여 우발적인 데이터 노출을 방지합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "오버레이로 이미지 콘텐츠 숨기기"
      content: |
        이 예제에서는 문서에서 민감한 이미지 영역을 마스킹하는 방법을 배울 수 있습니다.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  정리를 위해 문서를 엽니다.
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // 오버레이 속성 정의하기: 크기, 위치, 색상
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // 특정 이미지 영역에 집중합니다.
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // 이미지 영역을 오버레이합니다.
              redactor.Apply(redaction);

              // 수정된 문서를 저장합니다.
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
    title: ".NET 정제로 XLSX 콘텐츠 마스킹"
    exclude: "XLSX"
    description: ".NET를 사용하여 XLSX 파일에서 민감한 콘텐츠를 정리하거나 삭제하세요. 비즈니스 및 개인 문서를 보호하기 위한 실용적인 솔루션입니다."
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