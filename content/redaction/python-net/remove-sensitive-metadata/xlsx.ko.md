
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: ko
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Python를 사용하여 XLSX에서 메타데이터 삭제"
head_description: "GroupDocs.Redaction for Python via .NET을 사용하여 XLSX 문서에서 숨겨진 메타데이터를 제거하세요. 개인 정보 보호를 위한 깔끔한 방법입니다."

############################# Header ############################
title: "Python로 XLSX 파일에서 메타데이터 제거" 
description: "Python로 개인적인 세부정보를 안전하게 삭제하세요. 개인적 및 전문적인 사용에 적합합니다."
subtitle: "GroupDocs.Redaction for Python via .NET의 주요 기능" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NET은 무엇인가요?"
    link: "/redaction/python-net/"
    link_title: "자세히 알아보기"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction는 Python 개발자가 XLSX 파일에서 텍스트 및 이미지를 제거하여 민감한 콘텐츠를 지울 수 있도록 도와줍니다.

############################# Steps ############################
steps:
    enable: true
    title: "Xlsx 파일에서 메타데이터 삭제"
    content: |
      GroupDocs.Redaction는 Python via .NET 프로젝트에서 원하지 않는 파일 데이터를 빠르게 제거합니다.
      
      1. Redactor 인스턴스를 생성하고 Xlsx 파일을 로드하세요.
      2. 삭제할 메타데이터 항목을 선택하세요.
      3. 그 항목을 지우기 위해 교정을 실행하세요.
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

        # 문서에서 숨겨진 메타데이터 삭제

        # 제거할 메타데이터 선택
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Redactor를 사용하여 파일 열기
        with gr.Redactor("input.xslx") as redactor:

            # 변경 적용 후 파일 저장
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "파일 내에서 민감한 콘텐츠 숨기기"
  description: "GroupDocs.Redaction for Python via .NET은 다양한 파일 형식에서 개인 정보 정리를 지원합니다. 콘텐츠를 공유할 준비가 되어 있게 하세요."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "메타데이터 및 콘텐츠 교정"
  features:
    # feature loop
    - title: "민감한 텍스트 삭제"
      content: "문서에서 이름, 이메일 또는 기타 개인 정보를 찾고 제거하세요."

    # feature loop
    - title: "이미지 영역 가리기"
      content: "공유가 불가능한 영역을 차단하기 위해 오버레이를 추가하세요."

    # feature loop
    - title: "메타데이터 클리너"
      content: "작성자, 제목 또는 생성 날짜와 같은 숨겨진 필드를 제거하세요."
      
  code_samples_ext:
    # code sample ext loop
    - title: "문서에서 메타데이터 제거"
      content: |
        다음은 몇 줄의 코드를 사용하여 XLSX 파일의 메타데이터를 제거하는 방법입니다.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 작성자 필드에 삭제 표시
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # 제목 필드에 삭제 표시
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # 문서 열기
          with gr.Redactor("source.xslx") as redactor:

              # 교정 규칙 실행
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # 정리된 파일 저장
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
    title: "Python으로 XLSX에서 메타데이터 삭제"
    exclude: "XLSX"
    description: "Python를 사용하여 XLSX 파일에서 개인적인 메타데이터를 지우세요. 공유나 게시를 위한 파일 준비에 적합합니다."
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