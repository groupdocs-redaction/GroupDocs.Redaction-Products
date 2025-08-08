
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: vi
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Xóa Metadata trong PHOTO với Python"
head_description: "Với GroupDocs.Redaction for Python via .NET, bạn có thể xóa dữ liệu ẩn khỏi các tệp PHOTO và tránh việc rò rỉ thông tin cá nhân."

############################# Header ############################
title: "Làm Sạch Metadata từ PHOTO Sử Dụng Python" 
description: "Bảo vệ các tài liệu PHOTO của bạn bằng cách xóa thông tin ẩn với các công cụ Python dễ sử dụng."
subtitle: "Các Tính Năng Chính của GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Về GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction cung cấp cho người dùng Python một cách để làm sạch tài liệu bằng cách xóa nội dung ẩn từ văn bản, hình ảnh và metadata trong PHOTO.

############################# Steps ############################
steps:
    enable: true
    title: "Các Bước Để Xóa Metadata khỏi Photo"
    content: |
      Sử dụng GroupDocs.Redaction trong dự án Python via .NET của bạn để làm sạch metadata tài liệu chỉ với vài bước.
      
      1. Thiết lập một Redactor và mở tệp Photo của bạn.
      2. Chọn các trường metadata nào cần xóa.
      3. Áp dụng quy trình xóa để làm sạch tệp.
      4. Lưu phiên bản cuối cùng.
   
    code:
      platform: "python-net"
      copy_title: "Sao chép"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Mẫu chỉnh sửa"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "nhấp để sao chép"
        copy_done: "đã sao chép"
      links:
        #  loop
        - title: "Nhiều ví dụ hơn"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "Tài liệu"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # Xóa metadata trong tài liệu PHOTO

        # Chọn các metadata cần xóa
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Sử dụng Redactor để mở tệp
        with gr.Redactor("input.jpeg") as redactor:

            # Chạy và lưu
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Làm Sạch Các Tệp Trước Khi Chia Sẻ"
  description: "GroupDocs.Redaction for Python via .NET giúp loại bỏ dữ liệu không nên thấy. Xóa văn bản, hình ảnh và các chi tiết ẩn chỉ với vài cú nhấp chuột."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Các Tính Năng Xóa Bỏ Hữu Ích"
  features:
    # feature loop
    - title: "Xóa Văn Bản"
      content: "Tìm và xóa các từ, số hoặc mẫu nhạy cảm."

    # feature loop
    - title: "Che Hình Ảnh"
      content: "Che khuất các phần của hình ảnh chứa thông tin cá nhân."

    # feature loop
    - title: "Dọn Dẹp Metadata"
      content: "Xóa bỏ các chi tiết như Tác Giả, Tiêu Đề hoặc Bình luận."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Xóa Metadata Cụ Thể"
      content: |
        Theo dõi ví dụ này để xóa các trường Tác Giả và Tiêu Đề trong tài liệu PHOTO.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Chọn trường Tác Giả
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Chọn trường Tiêu Đề
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Tải tệp vào redactor
          with gr.Redactor("source.jpeg") as redactor:

              # Xóa metadata đã chọn
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Lưu tệp đã cập nhật
              save_options = gro.SaveOptions()
              save_options.add_suffix = True
              save_options.rasterize_to_pdf = False
              result_path = redactor.save(save_options)
          ```
        platform: "python-net"
        copy_title: "Sao chép"
        install:
          command: "pip install groupdocs-redaction-net"
          copy_tip: "nhấp để sao chép"
          copy_done: "đã sao chép"
        top_links:
          #  loop
          - title: "Tải xuống kết quả"
            icon: "download"
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
        links:
          #  loop
          - title: "Nhiều ví dụ hơn"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "Tài liệu"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "Sẵn sàng bắt đầu chưa?"
  description: "Thử nghiệm tính năng của GroupDocs.Redaction miễn phí hoặc yêu cầu cấp phép"
  items:
    #  loop
    - title: "Tải xuống PyPi"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "Cấp phép"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Xóa Metadata khỏi PHOTO với Python"
    exclude: "PHOTO"
    description: "Sử dụng Python để làm sạch metadata ẩn khỏi các tệp PHOTO. Giữ tài liệu sạch và an toàn."
    items: 
        # format loop 1
        - name: "Chỉnh sửa PDF"
          format: "PDF"
          link: "/redaction/python-net/remove-sensitive-metadata//pdf/"
          description: "Định dạng Tài liệu Di động Adobe"

        # format loop 2
        - name: "Chỉnh sửa Word"
          format: "WORD"
          link: "/redaction/python-net/remove-sensitive-metadata//word/"
          description: "Tài liệu MS Word và Open Office"
          
        # format loop 3
        - name: "Chỉnh sửa Excel"
          format: "EXCEL"
          link: "/redaction/python-net/remove-sensitive-metadata//excel/"
          description: "Bảng tính MS Excel và Open Office"

        # format loop 4
        - name: "Chỉnh sửa PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/remove-sensitive-metadata//powerpoint/"
          description: "Trình bày MS PowerPoint và Open Office"

        # format loop 5
        - name: "Chỉnh sửa Hình ảnh"
          format: "IMAGE"
          link: "/redaction/python-net/remove-sensitive-metadata//image/"
          description: "Các định dạng hình ảnh phổ biến"

        # format loop 6
        - name: "Chỉnh sửa Ảnh"
          format: "PHOTO"
          link: "/redaction/python-net/remove-sensitive-metadata//photo/"
          description: "Định dạng ảnh"

        # format loop 7
        - name: "Chỉnh sửa DOCX"
          format: "DOCX"
          link: "/redaction/python-net/remove-sensitive-metadata//docx/"
          description: "Tài liệu Open XML của Microsoft Word"
          
        # format loop 8
        - name: "Chỉnh sửa XLSX"
          format: "XLSX"
          link: "/redaction/python-net/remove-sensitive-metadata//xlsx/"
          description: "Bảng tính Open XML của Microsoft Excel"
          
        # format loop 9
        - name: "Chỉnh sửa PPTX"
          format: "PPTX"
          link: "/redaction/python-net/remove-sensitive-metadata//pptx/"
          description: "Bài thuyết trình Open XML của PowerPoint"

        # format loop 10
        - name: "Chỉnh sửa JPEG"
          format: "JPEG"
          link: "/redaction/python-net/remove-sensitive-metadata//jpeg/"
          description: "Hình ảnh JPEG"


---