
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: ko
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Python로 DOCX에서 개인 텍스트 제거하기"
head_description: "GroupDocs.Redaction for Python via .NET와 Python를 사용하여 민감한 콘텐츠를 제거하여 DOCX 파일을 안전하게 유지하십시오. 빠르고 간편한 수정."

############################# Header ############################
title: "Python로 DOCX 파일에서 개인 텍스트 편집 또는 숨기기" 
description: "GroupDocs.Redaction for Python via .NET와 Python를 사용하여 DOCX 콘텐츠를 제어할 수 있습니다. 개인적이거나 비즈니스 용도로 훌륭합니다."
subtitle: "GroupDocs.Redaction for Python via .NET로 할 수 있는 것" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NET 소개"
    link: "/redaction/python-net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET는 Python 개발자에게 DOCX 파일 내 콘텐츠를 정리하는 도구를 제공합니다. 텍스트, 이미지, 댓글 및 메타데이터를 쉽게 수정합니다.

############################# Steps ############################
steps:
    enable: true
    title: "Docx 파일에서 텍스트를 정리하는 방법"
    content: |
      Python via .NET 앱 내에서 GroupDocs.Redaction for Python via .NET를 사용하여 개인 텍스트를 제거하거나 숨기십시오. 빠르고 간단한 수정 프로세스.
      
      1. 텍스트 편집기를 생성하고 Docx 파일을 엽니다.
      2. 원하는 수정 규칙을 설정합니다.
      3. 찾을 텍스트와 대체할 내용을 선택합니다.
      4. 수정을 실행하고 새 파일을 저장합니다.
   
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

        # DOCX 파일에서 텍스트를 수정하는 방법

        # 수정 설정을 선택합니다
        # 찾을 텍스트와 대체할 내용을 입력합니다
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # 텍스트 편집기를 사용하여 파일을 엽니다
        with gr.Redactor("input.docx") as redactor:

            # 변경사항을 적용하고 업데이트된 DOCX 파일을 저장합니다
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "더 많은 수정 도구"
  description: "GroupDocs.Redaction for Python via .NET는 다양한 형식에서 민감한 텍스트를 삭제하거나 마스킹할 수 있습니다. 자신 있게 깨끗하고 안전한 파일을 공유하십시오."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "텍스트, 이미지 및 메타데이터 수정을 위한 도구"
  features:
    # feature loop
    - title: "개인 텍스트 찾아서 교체하기"
      content: "특정 단어나 패턴을 검색하고 교체합니다. 정규 표현식 및 키워드 옵션이 지원됩니다."

    # feature loop
    - title: "민감한 이미지 가리기"
      content: "영역을 오버레이하거나 숨깁니다. 필요한 경우 색상, 불투명도 및 크기를 변경하십시오."

    # feature loop
    - title: "메타데이터 제거하기"
      content: "문서의 숨겨진 정보(저자 이름, 타임스탬프 및 내부 노트)를 지워 개인적 비밀을 유지하십시오."
      
  code_samples_ext:
    # code sample ext loop
    - title: "정규 표현식을 사용하여 패턴 수정하기"
      content: |
        정규 표현식을 사용하여 이메일, ID 또는 패턴을 검색하고 쉽게 대체합니다.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # EMAIL 정규 표현식 패턴과 대체 텍스트를 설정합니다
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # 정리할 파일을 엽니다
          with gr.Redactor("source.docx") as redactor:

              # 수정 설정을 적용합니다
              result = redactor.apply(redaction)

              # 수정된 문서를 저장합니다
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "Python를 사용하여 DOCX에서 콘텐츠 수정하기"
    exclude: "DOCX"
    description: "Python를 사용하여 DOCX 파일에서 민감한 텍스트를 제거하십시오. 개인 및 작업 문서를 안전하게 보호하십시오."
    items: 
        # format loop 1
        - name: "PDF 수정"
          format: "PDF"
          link: "/redaction/python-net/replace-sensitive-text//pdf/"
          description: "Adobe 휴대용 문서 형식"

        # format loop 2
        - name: "Word 문서 수정"
          format: "WORD"
          link: "/redaction/python-net/replace-sensitive-text//word/"
          description: "MS Word 및 Open Office 문서"
          
        # format loop 3
        - name: "Excel 문서 수정"
          format: "EXCEL"
          link: "/redaction/python-net/replace-sensitive-text//excel/"
          description: "MS Excel 및 Open Office 스프레드시트"

        # format loop 4
        - name: "PowerPoint 수정"
          format: "POWERPOINT"
          link: "/redaction/python-net/replace-sensitive-text//powerpoint/"
          description: "MS PowerPoint 및 Open Office 프레젠테이션"

        # format loop 5
        - name: "DOCX 수정"
          format: "DOCX"
          link: "/redaction/python-net/replace-sensitive-text//docx/"
          description: "Microsoft Word Open XML 문서"
          
        # format loop 6
        - name: "XLSX 수정"
          format: "XLSX"
          link: "/redaction/python-net/replace-sensitive-text//xlsx/"
          description: "Microsoft Excel Open XML 스프레드시트"
          
        # format loop 7
        - name: "PPTX 수정"
          format: "PPTX"
          link: "/redaction/python-net/replace-sensitive-text//pptx/"
          description: "PowerPoint Open XML 프레젠테이션"


---