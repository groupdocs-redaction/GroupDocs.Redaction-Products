
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: ko
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Python을 사용하여 XLSX 파일의 이미지 영역 숨기기"
head_description: "GroupDocs.Redaction for Python via .NET과 함께 XLSX 파일에서 민감한 이미지 영역을 보호하십시오. 개인 비주얼을 안전하게 유지하면서 문서 구조를 손상시키지 마십시오."

############################# Header ############################
title: "Python를 사용하여 XLSX 문서에서 민감한 이미지 숨기기" 
description: "Python을 사용하여 XLSX 파일에서 기밀 이미지를 쉽게 보호하십시오. 우리의 도구는 빠르고 효과적인 이미지 레닥션을 보장합니다."
subtitle: "GroupDocs.Redaction for Python via .NET의 주요 기능" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NET는 무엇인가요?"
    link: "/redaction/python-net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET는 Python 개발자에게 XLSX 문서에서 민감한 정보를 숨기거나 삭제할 수 있는 도구를 제공합니다. 다양한 형식에서 텍스트, 이미지 및 메타데이터를 보호하십시오.

############################# Steps ############################
steps:
    enable: true
    title: "Xlsx 파일에서 민감한 데이터 보호하기"
    content: |
      GroupDocs.Redaction for Python via .NET는 귀하의 Python via .NET 앱이 문서를 안전하게 보호할 수 있도록 합니다.
      
      1. Redactor를 초기화하고 Xlsx 문서를 로드합니다.
      2. 작업에 맞게 레닥션 매개변수를 설정합니다.
      3. 가릴 이미지 부분을 정의하고 색상을 선택합니다.
      4. 레닥션을 적용하고 최종 파일을 저장합니다.
   
    code:
      platform: "python-net"
      copy_title: "복사"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "샘플 수정 내용"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "클릭하여 복사"
        copy_done: "복사됨"
      links:
        #  loop
        - title: "더 많은 예시"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "문서"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr
        import groupdocs.pydrawing as grd

        # XLSX에서 기밀 이미지 영역 숨기기

        # 오버레이 색상 및 크기 선택하기
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # 레닥션 구역 표시하기
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Redactor로 문서 로드하기
        with gr.Redactor("input.xslx") as redactor:

            # 변경 사항 적용하고 파일 저장하기
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "문서에서 콘텐츠 레닥션하기"
  description: "GroupDocs.Redaction for Python via .NET을 사용하여 다양한 문서 형식에서 민감한 데이터를 숨기거나 삭제할 수 있습니다. 문서를 안전하고 전문적으로 보이게 유지하는 것을 목표로 합니다."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "효율적인 레닥션 도구"
  features:
    # feature loop
    - title: "텍스트 검색 및 대체"
      content: "개인 텍스트를 쉽게 찾아서 대체하거나 숨깁니다."

    # feature loop
    - title: "이미지를 오버레이로 가리기"
      content: "전 이미지 또는 특정 섹션을 숨기기 위해 오버레이를 적용합니다."

    # feature loop
    - title: "숨겨진 메타데이터 제거"
      content: "전문적으로 보이도록 메타데이터를 정리하여 개인 정보 노출을 방지합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "오버레이로 이미지 콘텐츠 마스킹"
      content: |
        이 가이드는 문서에서 민감한 이미지 영역을 오버레이를 사용하여 숨기는 방법을 보여줍니다.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 오버레이 크기, 위치, 색상 정의하기
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # 특정 이미지 섹션 선택하기
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # 레닥션할 파일을 엽니다.
          with gr.Redactor("source.xslx") as redactor:

              # 오버레이를 적용하여 영역 숨기기
              result = redactor.apply(redaction)

              # 수정된 문서 저장하기
              save_options = gro.SaveOptions()
              save_options.add_suffix = True
              save_options.rasterize_to_pdf = False
              result_path = redactor.save(save_options)
          ```
        platform: "python-net"
        copy_title: "복사"
        install:
          command: "pip install groupdocs-redaction-net"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "문서"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "시작할 준비가 되셨나요?"
  description: "GroupDocs.Redaction 기능을 무료로 사용해 보시거나 라이센스를 요청하세요"
  items:
    #  loop
    - title: "PyPi 다운로드"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "라이센스"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Python를 사용하여 XLSX 파일에서 콘텐츠 숨기기"
    exclude: "XLSX"
    description: "Python를 사용하여 XLSX 파일에서 민감한 데이터를 레닥션 또는 제거합니다. 비즈니스 및 개인 문서를 보호하기 위한 이상적인 도구입니다."
    items: 
        # format loop 1
        - name: "PDF 수정"
          format: "PDF"
          link: "/redaction/python-net/hide-image-content//pdf/"
          description: "Adobe 휴대용 문서 형식"

        # format loop 2
        - name: "Word 문서 수정"
          format: "WORD"
          link: "/redaction/python-net/hide-image-content//word/"
          description: "MS Word 및 Open Office 문서"
          
        # format loop 3
        - name: "Excel 문서 수정"
          format: "EXCEL"
          link: "/redaction/python-net/hide-image-content//excel/"
          description: "MS Excel 및 Open Office 스프레드시트"

        # format loop 4
        - name: "PowerPoint 수정"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-image-content//powerpoint/"
          description: "MS PowerPoint 및 Open Office 프레젠테이션"

        # format loop 5
        - name: "이미지 수정"
          format: "IMAGE"
          link: "/redaction/python-net/hide-image-content//image/"
          description: "인기 이미지 형식"

        # format loop 6
        - name: "사진 수정"
          format: "PHOTO"
          link: "/redaction/python-net/hide-image-content//photo/"
          description: "사진 형식"

        # format loop 7
        - name: "DOCX 수정"
          format: "DOCX"
          link: "/redaction/python-net/hide-image-content//docx/"
          description: "Microsoft Word Open XML 문서"
          
        # format loop 8
        - name: "XLSX 수정"
          format: "XLSX"
          link: "/redaction/python-net/hide-image-content//xlsx/"
          description: "Microsoft Excel Open XML 스프레드시트"
          
        # format loop 9
        - name: "PPTX 수정"
          format: "PPTX"
          link: "/redaction/python-net/hide-image-content//pptx/"
          description: "PowerPoint Open XML 프레젠테이션"

        # format loop 10
        - name: "JPEG 수정"
          format: "JPEG"
          link: "/redaction/python-net/hide-image-content//jpeg/"
          description: "JPEG 이미지"


---