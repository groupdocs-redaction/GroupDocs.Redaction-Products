
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
head_title: "Python를 사용하여 EXCEL의 메타데이터 정리"
head_description: "GroupDocs.Redaction for Python via .NET을 사용하여 EXCEL 문서에서 메타데이터를 제거하세요. 숨겨진 데이터를 제거하고 민감한 정보를 보호하세요."

############################# Header ############################
title: "Python로 EXCEL에서 숨겨진 메타데이터 제거" 
description: "Python로 EXCEL 파일에서 원하지 않는 데이터를 제거하여 제어하세요. 파일을 개인적으로 유지하세요."
subtitle: "GroupDocs.Redaction for Python via .NET의 주요 기능" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NET에 대해 알아보세요"
    link: "/redaction/python-net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction은 Python 개발자를 위해 설계되었으며, EXCEL 파일을 정리하고 보호합니다. 원하지 않는 메타데이터, 텍스트 및 이미지를 쉽게 제거할 수 있습니다.

############################# Steps ############################
steps:
    enable: true
    title: "Excel 파일의 메타데이터를 삭제하는 단계"
    content: |
      당신의 Python via .NET 애플리케이션에서 GroupDocs.Redaction가 몇 단계로 메타데이터를 제거하는 것을 도와줍니다.
      
      1. Redactor를 시작하고 Excel 파일을 여세요.
      2. 제거할 메타데이터 필드를 선택하세요.
      3. 교정 프로세스를 실행하세요.
      4. 최종 파일을 내보내세요.
   
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

        # EXCEL에서 숨겨진 데이터 제거

        # 어떤 메타데이터를 제거할지 선택
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # 리다이터를 사용하여 파일 열기
        with gr.Redactor("input.xslx") as redactor:

            # 처리 후 파일 저장
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "모든 유형의 민감한 데이터 정리"
  description: "GroupDocs.Redaction for Python via .NET은 다양한 형식의 메타데이터, 텍스트 및 이미지를 지울 수 있는 도구를 제공합니다. 안전한 문서 공유를 위한 이상적입니다."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "메타데이터 및 개인 정보 도구"
  features:
    # feature loop
    - title: "개인 텍스트 제거"
      content: "문서에서 개인적인 또는 숨겨진 정보를 탐지하고 삭제하세요."

    # feature loop
    - title: "이미지 세부정보 숨기기"
      content: "개인적인 시각 자료를 차단하기 위해 이미지를 덮으세요."

    # feature loop
    - title: "메타데이터 정리"
      content: "민감한 데이터를 포함할 수 있는 숨겨진 메타데이터 필드를 지우세요."
      
  code_samples_ext:
    # code sample ext loop
    - title: "작성자 및 제목 메타데이터 제거"
      content: |
        다음은 GroupDocs.Redaction for Python via .NET가 EXCEL 문서에서 특정 메타데이터 필드를 지우는 방법입니다.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 작성자 정보 삭제
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # 제목 필드 삭제
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # 교정을 위한 문서 열기
          with gr.Redactor("source.xslx") as redactor:

              # 변경 적용
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # 정리된 문서 저장
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
    title: "Python로 EXCEL에서 메타데이터 정리"
    exclude: "EXCEL"
    description: "Python을 사용하여 EXCEL 파일에서 민감한 메타데이터를 제거하세요. 공유하기 전에 콘텐츠를 안전하게 유지하세요."
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