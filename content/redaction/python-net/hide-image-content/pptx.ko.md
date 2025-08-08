
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: ko
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Python을 사용하여 PPTX 파일의 이미지를 마스킹"
head_description: "GroupDocs.Redaction for Python via .NET을 사용하여 PPTX 파일에서 민감한 이미지 데이터를 색상이 있는 오버레이로 마스킹합니다. 문서 포매팅을 손상시키지 않으면서 중요한 데이터를 보호합니다."

############################# Header ############################
title: "Python을 사용하여 PPTX 문서에서 민감한 이미지 마스킹" 
description: "Python를 사용하여 PPTX 파일에서 민감한 비주얼을 보호하세요. 우리의 도구는 이미지를 레닥션하는 것을 쉽고 빠르게 만들어줍니다."
subtitle: "GroupDocs.Redaction for Python via .NET 기능" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NET에 대해"
    link: "/redaction/python-net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET는 Python 개발자에게 PPTX 파일에서 콘텐츠를 숨기거나 삭제할 수 있는 도구를 제공합니다. 다양한 형식에서 개인 텍스트, 이미지 및 메타데이터를 보호합니다.

############################# Steps ############################
steps:
    enable: true
    title: "Pptx 파일에서 민감한 데이터 보호하기"
    content: |
      GroupDocs.Redaction for Python via .NET는 Python via .NET 앱이 문서를 보호할 수 있도록 돕습니다.
      
      1. Redactor 인스턴스를 만들고 Pptx 파일을 로드합니다.
      2. 작업에 따라 레닥션 옵션을 설정합니다.
      3. 이미지 영역을 선택하고 오버레이 색상을 지정합니다.
      4. 오버레이를 적용하고 파일을 저장합니다.
   
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

        # PPTX 파일에서 이미지 콘텐츠 마스킹

        # 오버레이 색상 및 크기 설정하기
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # 가릴 영역 표시하기
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Redactor로 문서 열기
        with gr.Redactor("input.pptx") as redactor:

            # 오버레이를 적용하고 파일 저장하기
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "문서 레닥션을 위한 기능"
  description: "GroupDocs.Redaction for Python via .NET을 사용하면 다양한 문서 형식에서 기밀 데이터를 숨기거나 제거할 수 있습니다. 파일을 안전하게 유지하고 공유를 위해 준비합니다."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "원스톱 레닥션 도구집"
  features:
    # feature loop
    - title: "텍스트 검색 및 대체"
      content: "민감한 텍스트를 찾아서 레닥션하여 정보를 보호합니다."

    # feature loop
    - title: "이미지 영역 가리기"
      content: "선택된 부위나 전체 이미지를 오버레이로 덮어 보호합니다."

    # feature loop
    - title: "메타데이터 정리"
      content: "개인 데이터 노출을 피하기 위해 메타데이터를 수정하거나 삭제합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "색상 오버레이로 이미지 콘텐츠 가리기"
      content: |
        이 예제는 문서에서 민감한 이미지 부분을 오버레이를 사용하여 마스킹하는 방법을 보여줍니다.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 오버레이 속성: 크기, 위치, 색상 정의하기
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # 첫 페이지에서 이미지 영역 선택하기
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # 문서를 로드합니다.
          with gr.Redactor("source.pptx") as redactor:

              # 선택된 영역 위에 오버레이 적용하기
              result = redactor.apply(redaction)

              # 보호된 문서 저장하기
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
    title: "Python를 사용하여 PPTX 파일에서 콘텐츠 마스킹하기"
    exclude: "PPTX"
    description: "Python를 사용하여 PPTX 파일에서 민감한 데이터를 숨기거나 삭제하세요. 중요한 문서를 보호하기 위한 신뢰할 수 있는 솔루션입니다."
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