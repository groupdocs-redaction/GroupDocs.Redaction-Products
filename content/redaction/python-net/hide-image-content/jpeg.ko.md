
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: ko
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Python을 사용하여 JPEG에서 개인 이미지 숨기기"
head_description: "GroupDocs.Redaction for Python via .NET을 사용하여 JPEG 파일에서 이미지를 오버레이로 보호합니다. 문서 레이아웃을 변경하지 않고 기밀 비주얼을 secures하세요."

############################# Header ############################
title: "Python을 사용하여 JPEG 파일에서 민감한 이미지 가리기" 
description: "Python를 사용하여 JPEG 파일에서 이미지를 안전하게 보호하세요. 간단한 도구로 개인 콘텐츠를 빠르게 보호할 수 있습니다."
subtitle: "GroupDocs.Redaction for Python via .NET의 주요 기능" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NET에 대하여"
    link: "/redaction/python-net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET은 Python 개발자에게 JPEG 파일에서 내용을 숨기거나 삭제할 수 있는 도구를 제공합니다. 텍스트, 이미지 및 메타데이터를 감추어 문서를 안전하게 보호하세요.

############################# Steps ############################
steps:
    enable: true
    title: "Jpeg 파일에서 안전하게 유지하기"
    content: |
      GroupDocs.Redaction for Python via .NET은 귀하의 Python via .NET 애플리케이션이 민감한 데이터를 빠르고 효과적으로 숨기도록 합니다.
      
      1. Redactor 객체를 생성하고 Jpeg 파일의 경로를 지정합니다.
      2. 레닥션 설정을 필요에 따라 정의합니다.
      3. 이미지 영역을 마킹하고 오버레이 색상을 선택합니다.
      4. 레닥션을 실행하고 보호된 파일을 저장합니다.
   
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

        # JPEG에서 이미지 영역 숨기기

        # 오버레이 크기 및 색상 정의하기
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # 마스킹할 영역 선택하기
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Redactor를 통해 파일 로드하기
        with gr.Redactor("input.jpg") as redactor:

            # 오버레이 적용하고 문서 저장하기
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "문서에서 콘텐츠 레닥션하기"
  description: "GroupDocs.Redaction for Python via .NET은 다양한 파일 형식에서 민감한 콘텐츠를 숨기거나 삭제할 수 있게 합니다. 파일을 안전하고 쉽게 공유할 수 있습니다."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "기능이 풍부한 레닥션 도구"
  features:
    # feature loop
    - title: "텍스트 검색 및 대체"
      content: "문서에서 민감한 텍스트를 찾고 이를 교체하여 안전하게 보호하세요."

    # feature loop
    - title: "이미지 영역 가리기"
      content: "이미지 또는 선택된 영역을 오버레이로 덮어 기밀 비주얼을 보호하세요."

    # feature loop
    - title: "메타데이터 정리"
      content: "은밀한 데이터 유출을 방지하기 위해 숨겨진 메타데이터를 삭제합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "오버레이로 이미지 영역 보호하기"
      content: |
        이 예제는 문서에서 민감한 이미지 부분을 가리는 방법을 안내합니다.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 오버레이 크기, 색상 및 위치 설정하기
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

          # 편집을 위해 파일 로드하기
          with gr.Redactor("source.jpg") as redactor:

              # 영역을 숨기기 위해 오버레이를 적용하기
              result = redactor.apply(redaction)

              # 레닥션된 파일 저장하기
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
    title: "Python를 사용하여 JPEG 파일에서 레닥션 도구 적용하기"
    exclude: "JPEG"
    description: "Python를 사용하여 JPEG 파일에서 민감한 정보를 숨기거나 삭제할 수 있습니다. 문서를 안전하고 전문적으로 유지하는 신뢰할 수 있는 방법입니다."
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