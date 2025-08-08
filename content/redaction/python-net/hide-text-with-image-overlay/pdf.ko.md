
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: ko
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Python 오버레이를 사용하여 PDF 파일의 민감한 텍스트 가리기"
head_description: "GroupDocs.Redaction for Python via .NET을 사용하면 색상 오버레이를 추가하여 PDF 파일의 민감한 텍스트를 숨길 수 있습니다. 파일의 외관을 변경하지 않고 개인 데이터를 보호하세요."

############################# Header ############################
title: "Python를 사용하여 PDF에서 민감한 텍스트 가리기" 
description: "Python을 사용하여 PDF 파일을 보호하세요. 법적, 개인적 또는 기밀 정보를 차단하기 위해 오버레이를 사용하세요."
subtitle: "GroupDocs.Redaction for Python via .NET 주요 특징" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NET 소개"
    link: "/redaction/python-net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET은 Python 개발자에게 PDF 파일에서 콘텐츠를 숨기거나 삭제하는 간단한 방법을 제공합니다. 다양한 형식에서 민감한 텍스트, 이미지 또는 메타데이터를 가리세요.

############################# Steps ############################
steps:
    enable: true
    title: "Pdf 파일에서 민감한 정보 안전하게 유지하기"
    content: |
      GroupDocs.Redaction for Python via .NET을 사용하여 Python via .NET 앱에서 개인 콘텐츠를 빠르게 숨길 수 있습니다.
      
      1. Redactor를 설정하고 Pdf 파일을 불러옵니다.
      2. 정보를 가리는 방법을 선택합니다.
      3. 숨길 텍스트를 선택하고 오버레이의 색상을 선택합니다.
      4. 정보를 가리고 파일을 저장합니다.
   
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

        # 색상 오버레이를 사용하여 PDF에서 민감한 텍스트 숨기기

        # 정보 가리기 옵션을 설정합니다.
        # 숨길 내용을 정의하고 색상을 선택합니다.
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Redactor에 파일 경로를 전달하여 파일을 불러옵니다.
        with gr.Redactor("input.pdf") as redactor:

            # PDF 파일을 가리고 저장합니다.
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "문서에서 정보 숨기기 또는 제거하기"
  description: "GroupDocs.Redaction for Python via .NET을 사용하면 많은 형식에서 텍스트, 이미지 및 기타 데이터를 숨길 수 있습니다. 문서를 읽기 쉽고 공유하기 쉬운 상태로 유지하면서 중요한 것을 보호하세요."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "유연한 정보 가리기 기능"
  features:
    # feature loop
    - title: "모든 텍스트 편집하기"
      content: "민감한 텍스트를 찾아 교체하여 문서를 안전하게 유지하세요."

    # feature loop
    - title: "이미지 가리기"
      content: "전체 이미지를 차단하거나 특정 영역을 오버레이로 가리세요."

    # feature loop
    - title: "메타데이터 정리"
      content: "숨겨진 데이터를 제거하여 의도치 않은 정보 유출을 방지하세요."
      
  code_samples_ext:
    # code sample ext loop
    - title: "정규식으로 텍스트 찾아서 숨기기"
      content: |
        이 예제에서는 정규식 패턴을 사용하여 텍스트를 검색하고 숨기는 방법을 보여줍니다.
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

          # 문서를 불러옵니다.
          with gr.Redactor("source.pdf") as redactor:

              # 선택한 내용을 가립니다.
              result = redactor.apply(redaction)

              # 업데이트된 파일을 저장합니다.
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
    title: "Python 도구로 PDF 파일 보호하기"
    exclude: "PDF"
    description: "Python를 사용하여 PDF 파일의 콘텐츠를 숨기거나 제거하세요. 개인 정보를 안전하게 유지하는 신뢰할 수 있는 방법입니다."
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