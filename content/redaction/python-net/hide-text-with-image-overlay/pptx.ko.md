
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: ko
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Python 오버레이를 사용하여 PPTX에서 텍스트 숨기기"
head_description: "GroupDocs.Redaction for Python via .NET을 사용하여 색상 오버레이로 PPTX 파일의 민감한 콘텐츠를 가리십시오. 레이아웃은 그대로 유지됩니다."

############################# Header ############################
title: "Python와 함께 PPTX에서 텍스트 보호하기" 
description: "GroupDocs.Redaction for Python via .NET과 Python을 사용하여 PPTX 프레젠테이션에서 개인 정보를 숨기기 위해 색상 블록으로 가리십시오."
subtitle: "GroupDocs.Redaction for Python via .NET으로 할 수 있는 것" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NET의 장점"
    link: "/redaction/python-net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET을 사용하여 Python 개발자는 PPTX 파일에서 텍스트, 이미지 및 숨겨진 데이터를 가리거나 삭제할 수 있습니다.

############################# Steps ############################
steps:
    enable: true
    title: "Pptx에서 민감한 정보 가리기"
    content: |
      GroupDocs.Redaction for Python via .NET을 사용하여 프레젠테이션을 몇 가지 간단한 단계로 보호하세요.
      
      1. Redactor를 생성하고 편집할 파일을 불러옵니다.
      2. 필요에 맞는 가리기 설정을 선택합니다.
      3. 텍스트 패턴을 설정하고 오버레이 색상을 선택합니다.
      4. 가리기를 적용하고 변경 사항을 저장합니다.
   
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

        # 오버레이를 사용하여 PPTX에서 텍스트 숨기기

        # 가리기가 어떻게 작동할지 설정합니다.
        # 숨길 텍스트와 색상을 선택합니다.
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Redactor를 사용하여 파일을 불러옵니다.
        with gr.Redactor("input.pptx") as redactor:

            # 가리고 파일을 저장합니다.
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "더 많은 정보 숨기기 옵션"
  description: "GroupDocs.Redaction for Python via .NET은 레이아웃을 변경하지 않고 다양한 파일 형식에서 데이터를 숨기거나 정리할 수 있는 도구를 제공합니다."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "개인 정보 보호에 유용한 기능"
  features:
    # feature loop
    - title: "텍스트 변경 또는 숨기기"
      content: "중요한 정보를 보호하기 위해 편집하거나 숨기세요."

    # feature loop
    - title: "이미지 또는 일부 숨기기"
      content: "오버레이를 그려서 전체 이미지 또는 선택된 영역을 차단합니다."

    # feature loop
    - title: "숨겨진 세부정보 제거"
      content: "개인 또는 시스템 정보가 포함되어 있을 수 있는 메타데이터를 지웁니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "정규식을 사용하여 텍스트 찾기"
      content: |
        정규식이 어떻게 콘텐츠에서 민감한 정보를 찾고 숨기는 데 도움을 주는지 확인하세요.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 패턴과 오버레이 색상을 정의합니다.
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # PPTX 파일을 엽니다.
          with gr.Redactor("source.pptx") as redactor:

              # 가리기를 실행합니다.
              result = redactor.apply(redaction)

              # 최종 버전을 저장합니다.
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
    title: "Python를 사용하여 PPTX 슬라이드 보호하기"
    exclude: "PPTX"
    description: "Python를 사용하여 PPTX 파일의 개인 콘텐츠를 가리거나 제거하면서 슬라이드를 깔끔하게 유지하세요."
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