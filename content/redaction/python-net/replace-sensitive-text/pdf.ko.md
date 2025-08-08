
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: ko
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Python로 PDF에서 민감한 텍스트 제거하기"
head_description: "GroupDocs.Redaction for Python via .NET를 사용하여 PDF 문서에서 개인 정보를 안전하게 보호하십시오. 민감한 정보를 빠르게 찾아서 숨길 수 있습니다."

############################# Header ############################
title: "Python를 사용하여 PDF 파일에서 민감한 텍스트 지우기" 
description: "Python와 GroupDocs.Redaction for Python via .NET를 사용하여 PDF 파일에서 개인적, 법적 또는 개인 데이터를 검색하고 제거하십시오."
subtitle: "GroupDocs.Redaction for Python via .NET로 할 수 있는 것" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NET란?"
    link: "/redaction/python-net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET는 Python 개발자에게 PDF 파일에서 콘텐츠(텍스트, 이미지, 댓글 등)를 수정하는 데 필요한 모든 도구를 제공합니다.

############################# Steps ############################
steps:
    enable: true
    title: "Pdf 파일에서 콘텐츠를 수정하는 방법"
    content: |
      GroupDocs.Redaction for Python via .NET를 사용하여 모든 Python via .NET 애플리케이션에서 콘텐츠를 안전하게 유지하십시오.
      
      1. 텍스트 편집기를 생성하고 Pdf 파일을 로드합니다.
      2. 원하는 수정 설정을 선택합니다.
      3. 검색할 텍스트와 대체할 텍스트를 입력합니다.
      4. 수정을 적용하고 파일을 저장합니다.
   
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

        # 

        # 
        # 
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # 
        with gr.Redactor("input.pdf") as redactor:

            # 
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "더 많은 수정 기능"
  description: "GroupDocs.Redaction for Python via .NET를 사용하면 다양한 파일 유형에서 개인 콘텐츠를 숨길 수 있습니다. 데이터를 안전하게 유지하며 공유할 준비를 하십시오."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "텍스트, 이미지 및 메타데이터 수정을 위한 도구"
  features:
    # feature loop
    - title: "개인 텍스트 찾아서 대체하기"
      content: "일치하는 텍스트를 검색하고 바꿉니다. 정규 표현식 및 키워드 검색이 가능합니다."

    # feature loop
    - title: "개인 이미지 가리기"
      content: "전체 이미지 또는 그 일부를 오버레이를 사용하여 마스킹합니다. 외관 설정을 맞춤화합니다."

    # feature loop
    - title: "숨겨진 메타데이터 지우기"
      content: "저자 이름, 타임스탬프 및 수정 메모와 같은 숨겨진 정보를 제거합니다."
      
  code_samples_ext:
    # code sample ext loop
    - title: "정규 표현식을 사용하여 수정하기"
      content: |
        정규 표현식을 사용하여 이메일, ID 또는 번호와 같은 패턴을 찾아서 제거합니다.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # 정규 표현식 패턴과 대체 텍스트를 설정합니다
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # 정리할 파일을 엽니다
          with gr.Redactor("source.pdf") as redactor:

              # 수정 규칙을 적용합니다
              result = redactor.apply(redaction)

              # 수정된 파일을 저장합니다
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
    title: "Python를 사용하여 PDF에서 콘텐츠 수정하기"
    exclude: "PDF"
    description: "Python 도구로 PDF 파일에서 텍스트를 수정하여 개인 또는 비즈니스 데이터를 안전하게 유지하십시오."
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