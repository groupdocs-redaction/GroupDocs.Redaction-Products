
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
head_title: "Python를 사용하여 JPEG의 메타데이터 편집"
head_description: "GroupDocs.Redaction for Python via .NET은 JPEG 문서에서 메타데이터를 정리하거나 업데이트하는 데 도움을 줍니다. 개인적인 세부정보를 드러낼 수 있는 숨겨진 필드를 제거하세요."

############################# Header ############################
title: "Python로 JPEG의 메타데이터 청소" 
description: "Python를 위해 설계된 간단한 도구를 사용해 JPEG 파일의 숨겨진 메타데이터를 제거하세요."
subtitle: "GroupDocs.Redaction for Python via .NET의 핵심 기능" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NET에 대하여"
    link: "/redaction/python-net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction은 Python 개발자를 위해 텍스트, 이미지 및 JPEG 문서에서 메타데이터를 제거하는 간단한 도구를 제공합니다.

############################# Steps ############################
steps:
    enable: true
    title: "Jpeg 메타데이터 청소 단계"
    content: |
      GroupDocs.Redaction은 Python via .NET 애플리케이션에서 메타데이터 제거를 빠르고 쉽게 만듭니다.
      
      1. Redactor를 설정하고 Jpeg 문서를 여세요.
      2. 제거할 메타데이터 필드를 선택하세요.
      3. 파일을 정리하기 위해 교정을 실행하세요.
      4. 숨겨진 데이터가 없는 새 버전을 저장하세요.
   
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

        # JPEG의 메타데이터 정리

        # 정리할 메타데이터 필드 선택
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Redactor를 사용하여 파일 열기
        with gr.Redactor("input.jpg") as redactor:

            # 교정 적용 후 파일 저장
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "모든 파일에서 개인정보 보호"
  description: "GroupDocs.Redaction for Python via .NET은 문서에서 민감한 데이터를 제거할 수 있는 도구를 제공합니다. 텍스트, 이미지 및 메타데이터의 숨겨진 내용을 제거하세요."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "메타데이터 교정 기능"
  features:
    # feature loop
    - title: "텍스트 찾기 및 지우기"
      content: "키워드나 개인 정보를 검색하여 제거하세요."

    # feature loop
    - title: "이미지 세부정보 숨기기"
      content: "다른 사람들이 보지 말아야 할 부위를 가리세요."

    # feature loop
    - title: "파일 메타데이터 편집"
      content: "문서 정보를 보호하기 위해 메타데이터 필드를 변경하거나 삭제하세요."
      
  code_samples_ext:
    # code sample ext loop
    - title: "메타데이터 필드 편집"
      content: |
        이 예제는 JPEG 문서에서 작성자 및 제목과 같은 필드를 제거하거나 수정하는 방법을 안내합니다.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 작성자 필드 타겟팅
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # 제목 필드 타겟팅
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # JPEG 파일 열기
          with gr.Redactor("source.jpg") as redactor:

              # 정리 프로세스 실행
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # 새 버전 저장
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
    title: "Python를 사용하여 JPEG 메타데이터 청소"
    exclude: "JPEG"
    description: "Python를 사용하여 JPEG 문서에서 숨겨진 개인 데이터를 신속하게 제거하세요."
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