
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: ko
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Python 오버레이를 사용하여 EXCEL에서 콘텐츠 숨기기"
head_description: "GroupDocs.Redaction for Python via .NET을 사용하여 색상 오버레이를 추가하여 EXCEL 파일의 텍스트를 가릴 수 있습니다. 민감한 콘텐츠를 보호하는 간단한 방법입니다."

############################# Header ############################
title: "Python에서 EXCEL의 텍스트 숨기기 오버레이" 
description: "Python 코드를 작성하여 EXCEL 파일에서 텍스트를 숨기고 정보를 보호하세요. 문서를 안전하고 깔끔하게 유지하세요."
subtitle: "GroupDocs.Redaction for Python via .NET의 장점" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NET을 사용하는 이유"
    link: "/redaction/python-net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET은 Python 개발자를 위해 설계되어 EXCEL 파일에서 콘텐츠를 숨기거나 제거할 수 있게 합니다. 텍스트, 이미지 및 메타데이터를 쉽게 다룰 수 있습니다.

############################# Steps ############################
steps:
    enable: true
    title: "Excel에서 민감한 데이터 숨기기"
    content: |
      GroupDocs.Redaction for Python via .NET은 Python via .NET 개발자가 공유 전에 문서를 준비할 수 있도록 도와줍니다.
      
      1. Redactor를 생성하고 Excel 파일을 엽니다.
      2. 작업에 맞는 가리기 설정을 선택합니다.
      3. 숨길 텍스트나 구문을 입력하고 색상을 선택합니다.
      4. 가리기를 적용하고 파일을 저장합니다.
   
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

        # EXCEL에서 텍스트를 숨기기 위해 오버레이 사용하기

        # 가리기 설정을 선택합니다.
        # 숨길 내용을 선택하고 사용할 색상을 지정합니다.
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Redactor를 사용하여 파일을 불러옵니다.
        with gr.Redactor("input.xlsx") as redactor:

            # 변경 사항을 적용하고 파일을 저장합니다.
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "데이터 가리기를 위한 유용한 도구"
  description: "GroupDocs.Redaction for Python via .NET은 레이아웃과 콘텐츠를 명확하게 유지하면서 문서에서 데이터를 숨기거나 제거할 수 있게 합니다."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "파일 보호를 위한 기능"
  features:
    # feature loop
    - title: "텍스트 숨기거나 변경하기"
      content: "숨겨야 할 텍스트의 모든 부분을 찾아 교체할 수 있습니다."

    # feature loop
    - title: "이미지 및 시각 자료 가리기"
      content: "오버레이를 추가하여 사진 또는 차트의 민감한 부분을 제거합니다."

    # feature loop
    - title: "숨겨진 메타데이터 정리하기"
      content: "저자 이름이나 타임스탬프와 같은 배경 정보를 제거하세요."
      
  code_samples_ext:
    # code sample ext loop
    - title: "정규식을 사용하여 가리기"
      content: |
        정규식 패턴을 사용하여 콘텐츠를 찾고 숨기는 방법을 배우세요.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 정규식 패턴 및 색상 설정을 추가합니다.
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # 정리할 파일을 엽니다.
          with gr.Redactor("source.xlsx") as redactor:

              # 가리기를 적용합니다.
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
    title: "Python 가리기를 사용하여 EXCEL 보호하기"
    exclude: "EXCEL"
    description: "EXCEL에서 사각형 오버레이로 콘텐츠를 숨기거나 기능을 사용해 완전히 제거하세요."
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