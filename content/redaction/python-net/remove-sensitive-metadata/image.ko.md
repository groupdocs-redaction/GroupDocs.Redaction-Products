
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: ko
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Python를 사용하여 IMAGE의 숨겨진 메타데이터 정리"
head_description: "GroupDocs.Redaction for Python via .NET은 IMAGE 문서에서 개인 메타데이터를 제거합니다. 파일을 깨끗하고 안전하게 유지하세요."

############################# Header ############################
title: "Python로 IMAGE 파일의 메타데이터 제거" 
description: "Python 도구를 사용하여 IMAGE 문서를 보호하세요. 공유 또는 게시 전에 숨겨진 정보를 삭제하세요."
subtitle: "GroupDocs.Redaction for Python via .NET의 주요 기능" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NET에 대하여"
    link: "/redaction/python-net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction은 Python 개발자가 IMAGE 파일에서 텍스트, 이미지 및 메타데이터를 제거하는 도구를 제공합니다.

############################# Steps ############################
steps:
    enable: true
    title: "Image 파일에서 메타데이터 제거 방법"
    content: |
      GroupDocs.Redaction은 Python via .NET 개발자가 몇 단계로 문서 메타데이터를 정리하는 데 도움을 줍니다.
      
      1. Redactor를 설정하고 Image 파일을 여세요.
      2. 지우고 싶은 메타데이터를 선택하세요.
      3. 교정 프로세스를 실행하세요.
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

        # IMAGE 파일의 숨겨진 필드 정리

        # 정리할 메타데이터 필드 선택
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Redactor를 사용하여 파일 열기
        with gr.Redactor("input.png") as redactor:

            # 처리 및 내보내기
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "모든 파일에서 민감한 데이터 정리"
  description: "GroupDocs.Redaction for Python via .NET은 숨겨진 데이터, 텍스트 및 메타데이터를 제거하여 개인정보 보호를 돕습니다. 여러 형식에서 작동합니다."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "주요 교정 도구"
  features:
    # feature loop
    - title: "텍스트 제거"
      content: "개인 정보가 포함된 단어나 패턴을 삭제하세요."

    # feature loop
    - title: "이미지 가리기"
      content: "비공식적으로 유지해야 할 이미지의 일부를 가리세요."

    # feature loop
    - title: "메타데이터 삭제"
      content: "저자 또는 제목과 같은 파일 속성에서 숨겨진 데이터를 지우세요."
      
  code_samples_ext:
    # code sample ext loop
    - title: "메타데이터 필드 제거"
      content: |
        이 예제는 IMAGE 파일에서 작성자 및 제목과 같은 메타데이터를 삭제하는 방법을 보여줍니다.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 작성자 필드 선택
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # 제목 필드 선택
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # 리다이터에서 파일 열기
          with gr.Redactor("source.png") as redactor:

              # 교정 수행
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # 최종 문서 저장
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
    title: "Python로 IMAGE의 메타데이터 삭제"
    exclude: "IMAGE"
    description: "Python을 사용하여 IMAGE 파일에서 숨겨진 개인 데이터를 신속하게 제거하세요."
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