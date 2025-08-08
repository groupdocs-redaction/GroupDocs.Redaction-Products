
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: ko
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Python를 사용하여 WORD 파일의 메타데이터 정리"
head_description: "GroupDocs.Redaction for Python via .NET을 사용하여 WORD 파일에서 숨겨진 메타데이터를 제거하세요. 개인 또는 내부 정보를 노출하지 않도록 문서를 보호하세요."

############################# Header ############################
title: "Python 도구를 사용하여 WORD의 메타데이터 제거" 
description: "Python로 원하지 않는 메타데이터를 삭제하여 파일을 안전하게 유지하세요. 기업 및 개인 사용자에게 적합합니다."
subtitle: "GroupDocs.Redaction for Python via .NET의 기능" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NET에 대하여"
    link: "/redaction/python-net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction는 Python 개발자를 위해 설계되어 WORD 파일을 비공식으로 유지합니다. 텍스트를 제거하고 이미지의 일부를 숨기며 메타데이터를 정리할 수 있습니다.

############################# Steps ############################
steps:
    enable: true
    title: "Word의 숨겨진 메타데이터 제거"
    content: |
      GroupDocs.Redaction을 사용하면 Python via .NET 애플리케이션에서 문서 메타데이터를 빠르게 정리할 수 있습니다.
      
      1. Redactor 객체를 생성하고 Word 파일을 여세요.
      2. 메타데이터 필드에 대한 교정 규칙을 설정하세요.
      3. 선택한 데이터를 제거하기 위해 교정을 실행하세요.
      4. 정리된 파일의 버전을 저장하세요.
   
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

        # WORD에서 메타데이터 정리

        # 제거할 메타데이터 선택
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Redactor 사용하여 문서 열기
        with gr.Redactor("input.docx") as redactor:

            # 교정 적용 후 파일 저장
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "메타데이터 이상 보호"
  description: "텍스트를 교정하고 이미지를 가리고 메타데이터를 제거하는 데 GroupDocs.Redaction for Python via .NET을 사용하세요. 문서를 깔끔하고 비공식적으로 유지하세요."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "문서 보호 옵션"
  features:
    # feature loop
    - title: "텍스트 찾기 및 교체"
      content: "개인적이거나 민감한 데이터를 포함한 단어와 문구를 삭제하거나 대체하세요."

    # feature loop
    - title: "이미지 가리기"
      content: "문서의 이미지 부분을 가리기 위한 오버레이를 추가하세요."

    # feature loop
    - title: "메타데이터 정리"
      content: "작성자 이름, 제목, 주석 및 다른 숨겨진 정보를 정리하세요."
      
  code_samples_ext:
    # code sample ext loop
    - title: "WORD 파일에서 메타데이터 제거"
      content: |
        이 예제는 WORD 문서에서 작성자 및 제목과 같은 필드를 제거하는 방법을 보여줍니다.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 작성자 메타데이터 대상 지정
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # 제목 메타데이터 대상 지정
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # 문서 가져오기
          with gr.Redactor("source.docx") as redactor:

              # 교정 도구 실행
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # 업데이트된 파일 저장
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "Python로 WORD에서 메타데이터 제거"
    exclude: "WORD"
    description: "Python을 사용하여 WORD에서 숨겨진 메타데이터를 정리하세요. 공유 또는 아카이브 전에 파일을 안전하게 유지하세요."
    items: 
        # format loop 1
        - name: "PDF 수정"
          format: "PDF"
          link: "/redaction/python-net/remove-sensitive-metadata//pdf/"
          description: "Adobe 휴대용 문서 형식"

        # format loop 2
        - name: "Word 문서 수정"
          format: "WORD"
          link: "/redaction/python-net/remove-sensitive-metadata//word/"
          description: "MS Word 및 Open Office 문서"
          
        # format loop 3
        - name: "Excel 문서 수정"
          format: "EXCEL"
          link: "/redaction/python-net/remove-sensitive-metadata//excel/"
          description: "MS Excel 및 Open Office 스프레드시트"

        # format loop 4
        - name: "PowerPoint 수정"
          format: "POWERPOINT"
          link: "/redaction/python-net/remove-sensitive-metadata//powerpoint/"
          description: "MS PowerPoint 및 Open Office 프레젠테이션"

        # format loop 5
        - name: "이미지 수정"
          format: "IMAGE"
          link: "/redaction/python-net/remove-sensitive-metadata//image/"
          description: "인기 이미지 형식"

        # format loop 6
        - name: "사진 수정"
          format: "PHOTO"
          link: "/redaction/python-net/remove-sensitive-metadata//photo/"
          description: "사진 형식"

        # format loop 7
        - name: "DOCX 수정"
          format: "DOCX"
          link: "/redaction/python-net/remove-sensitive-metadata//docx/"
          description: "Microsoft Word Open XML 문서"
          
        # format loop 8
        - name: "XLSX 수정"
          format: "XLSX"
          link: "/redaction/python-net/remove-sensitive-metadata//xlsx/"
          description: "Microsoft Excel Open XML 스프레드시트"
          
        # format loop 9
        - name: "PPTX 수정"
          format: "PPTX"
          link: "/redaction/python-net/remove-sensitive-metadata//pptx/"
          description: "PowerPoint Open XML 프레젠테이션"

        # format loop 10
        - name: "JPEG 수정"
          format: "JPEG"
          link: "/redaction/python-net/remove-sensitive-metadata//jpeg/"
          description: "JPEG 이미지"


---