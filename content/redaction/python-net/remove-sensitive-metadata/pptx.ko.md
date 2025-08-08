
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
head_title: "Python를 사용하여 PPTX 파일에서 메타데이터 삭제"
head_description: "GroupDocs.Redaction for Python via .NET는 PPTX 파일에서 숨겨진 데이터를 정리하는 데 도움을 줍니다. 민감한 정보를 드러낼 수 있는 세부정보를 제거하세요."

############################# Header ############################
title: "Python로 PPTX에서 메타데이터 삭제" 
description: "Python을 사용하여 PPTX 파일에 저장된 개인 메타데이터를 지우세요. 정보를 보호하는 스마트한 방법입니다."
subtitle: "GroupDocs.Redaction for Python via .NET의 주요 도구" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NET에 대하여"
    link: "/redaction/python-net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction는 문서를 정리하고 보호하려는 Python 개발자를 위해 만들어졌습니다. 텍스트, 이미지를 삭제하거나 메타데이터를 정리할 수 있습니다.

############################# Steps ############################
steps:
    enable: true
    title: "Pptx 파일에서 메타데이터 정리"
    content: |
      GroupDocs.Redaction을 사용하여 Python via .NET 앱에서 메타데이터를 빠르게 제거하세요.
      
      1. Redactor를 만들고 Pptx 문서를 여세요.
      2. 삭제할 메타데이터를 선택하세요.
      3. 숨겨진 데이터를 삭제하기 위해 교정을 적용하세요.
      4. 업데이트된 파일을 저장하세요.
   
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

        # PPTX에서 메타데이터 제거

        # 어떤 필드를 삭제할 것인지 선택
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Redactor를 사용하여 파일 열기
        with gr.Redactor("input.pptx") as redactor:

            # 변경 사항을 실행하고 저장
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "민감한 정보를 숨기는 다른 방법"
  description: "GroupDocs.Redaction for Python via .NET은 많은 형식에서 교정을 지원합니다. 문서에서 개인적인 콘텐츠를 빠르게 제거하세요."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "파일 교정 도구"
  features:
    # feature loop
    - title: "텍스트 검색 및 제거"
      content: "개인적이거나 민감한 데이터를 포함하는 단어 또는 문구를 빠르게 삭제하세요."

    # feature loop
    - title: "이미지 오버레이 추가"
      content: "공유할 수 없는 이미지 구역을 가리세요."

    # feature loop
    - title: "숨겨진 메타데이터 제거"
      content: "작성자 이름, 제목 및 기타 숨겨진 태그를 제거하세요."
      
  code_samples_ext:
    # code sample ext loop
    - title: "예제: 메타데이터 필드 삭제"
      content: |
        이 예제는 공유하기 전에 PPTX 파일에서 일반적인 메타데이터 필드를 제거하는 방법을 보여줍니다.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 작성자 필드를 교정 표시
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # 제목 필드를 교정 표시
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # 파일 로드
          with gr.Redactor("source.pptx") as redactor:

              # 교정 적용
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # 정리된 파일 내보내기
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
    title: "Python을 사용하여 PPTX에서 메타데이터를 삭제하세요"
    exclude: "PPTX"
    description: "Python를 사용하여 PPTX에서 배경 데이터를 제거하세요. 개인 정보 및 규정 준수를 위해 훌륭합니다."
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