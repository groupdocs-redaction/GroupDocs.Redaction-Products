
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: ko
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Python 및 오버레이를 사용하여 XLSX에서 텍스트 숨기기"
head_description: "GroupDocs.Redaction for Python via .NET은 색상 오버레이를 추가하여 XLSX 파일의 텍스트를 숨길 수 있도록 도와줍니다. 파일 레이아웃을 변경하지 않고 데이터를 보호하세요."

############################# Header ############################
title: "Python 오버레이를 사용하여 XLSX 파일에서 텍스트 숨기기" 
description: "GroupDocs.Redaction for Python via .NET과 Python을 사용하여 XLSX 파일의 민감한 텍스트를 오버레이로 차단하세요."
subtitle: "GroupDocs.Redaction for Python via .NET의 장점" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NET의 기능"
    link: "/redaction/python-net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET은 Python 개발자가 XLSX 파일에서 텍스트, 이미지 등을 숨기거나 삭제할 수 있는 도구를 제공합니다.

############################# Steps ############################
steps:
    enable: true
    title: "Xlsx 파일 데이터 보호하기"
    content: |
      GroupDocs.Redaction for Python via .NET은 Python via .NET 개발자가 몇 줄의 코드로 개인 정보를 숨길 수 있도록 합니다.
      
      1. Redactor를 생성하고 Xlsx 파일을 불러옵니다.
      2. 사례에 맞는 가리기 옵션을 설정합니다.
      3. 숨기고 싶은 텍스트 패턴을 추가하고 색상을 선택합니다.
      4. 가리기를 실행하고 파일을 저장합니다.
   
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

        # 오버레이를 사용하여 XLSX에서 개인 콘텐츠 숨기기

        # 가리기 선호도를 설정합니다.
        # 숨길 텍스트와 오버레이 색상을 선택합니다.
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Redactor를 사용하여 파일을 불러옵니다.
        with gr.Redactor("input.xlsx") as redactor:

            # 가리고 파일을 저장합니다.
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "유용한 가리기 도구"
  description: "GroupDocs.Redaction for Python via .NET은 다양한 파일 유형에서 콘텐츠를 숨기거나 제거하는 데 도움을 줍니다. 개인 또는 비즈니스 정보를 보호하세요."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "사용하기 쉬운 가리기 옵션"
  features:
    # feature loop
    - title: "텍스트 찾기 및 편집"
      content: "특정 텍스트를 검색하여 숨기거나 교체하세요."

    # feature loop
    - title: "이미지 콘텐츠 가리기"
      content: "사진에 오버레이를 추가하여 개인 영역을 차단합니다."

    # feature loop
    - title: "메타데이터 제거"
      content: "파일 공유 전에 배경 정보를 정리하세요."
      
  code_samples_ext:
    # code sample ext loop
    - title: "정규식 패턴을 사용하여 텍스트 숨기기"
      content: |
        이 예제에서는 정규식을 사용하여 콘텐츠를 찾고 숨기는 방법을 보여줍니다.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 텍스트 패턴 및 오버레이 색상을 설정합니다.
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # 편집하려는 파일을 엽니다.
          with gr.Redactor("source.xlsx") as redactor:

              # 가리기 규칙을 적용합니다.
              result = redactor.apply(redaction)

              # 가린 버전을 저장합니다.
              so = gro.SaveOptions()
              so.add_suffix = True
              so.rasterize_to_pdf = False
              result_path = redactor.save(so)
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Python로 XLSX 파일 데이터 숨기기"
    exclude: "XLSX"
    description: "Python 도구를 사용하여 XLSX 파일의 민감한 부분을 빠르고 쉽게 숨기거나 제거합니다."
    items: 
        # format loop 1
        - name: "PDF 수정"
          format: "PDF"
          link: "/redaction/python-net/hide-text-with-image-overlay//pdf/"
          description: "Adobe 휴대용 문서 형식"

        # format loop 2
        - name: "Word 문서 수정"
          format: "WORD"
          link: "/redaction/python-net/hide-text-with-image-overlay//word/"
          description: "MS Word 및 Open Office 문서"
          
        # format loop 3
        - name: "Excel 문서 수정"
          format: "EXCEL"
          link: "/redaction/python-net/hide-text-with-image-overlay//excel/"
          description: "MS Excel 및 Open Office 스프레드시트"

        # format loop 4
        - name: "PowerPoint 수정"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-text-with-image-overlay//powerpoint/"
          description: "MS PowerPoint 및 Open Office 프레젠테이션"

        # format loop 5
        - name: "DOCX 수정"
          format: "DOCX"
          link: "/redaction/python-net/hide-text-with-image-overlay//docx/"
          description: "Microsoft Word Open XML 문서"
          
        # format loop 6
        - name: "XLSX 수정"
          format: "XLSX"
          link: "/redaction/python-net/hide-text-with-image-overlay//xlsx/"
          description: "Microsoft Excel Open XML 스프레드시트"
          
        # format loop 7
        - name: "PPTX 수정"
          format: "PPTX"
          link: "/redaction/python-net/hide-text-with-image-overlay//pptx/"
          description: "PowerPoint Open XML 프레젠테이션"


---