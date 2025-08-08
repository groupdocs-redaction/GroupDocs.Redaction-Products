
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: vi
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Làm Sạch Metadata từ Các Tệp WORD Với Python"
head_description: "Sử dụng GroupDocs.Redaction for Python via .NET để xóa bỏ metadata ẩn trong các tệp WORD. Bảo vệ tài liệu khỏi việc tiết lộ thông tin cá nhân hoặc nội bộ."

############################# Header ############################
title: "Xóa Metadata trong WORD Sử Dụng Các Công Cụ Python" 
description: "Giữ an toàn cho tệp của bạn bằng cách xóa metadata không mong muốn bằng Python. Hoàn hảo cho các công ty và người dùng cá nhân."
subtitle: "Các Tính Năng của GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Giới Thiệu GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction được chế tạo cho các nhà phát triển Python muốn giữ cho các tệp WORD riêng tư. Nó cho phép bạn xóa văn bản, che các phần của hình ảnh và làm sạch metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Xóa Metadata Ẩn trong Word"
    content: |
      Với GroupDocs.Redaction, ứng dụng Python via .NET của bạn có thể nhanh chóng dọn dẹp metadata tài liệu.
      
      1. Tạo một đối tượng Redactor và mở tệp Word.
      2. Thiết lập các quy tắc xóa đối với các trường metadata.
      3. Chạy xóa để xóa dữ liệu đã chọn.
      4. Lưu phiên bản đã dọn dẹp của tệp.
   
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

        # Làm sạch metadata trong WORD

        # Chọn metadata để xóa
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Mở tài liệu bằng Redactor
        with gr.Redactor("input.docx") as redactor:

            # Áp dụng xóa bỏ và lưu tệp
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Bảo Vệ Nhiều Hơn Chỉ Metadata"
  description: "Xóa văn bản, che hình ảnh và xóa metadata bằng GroupDocs.Redaction for Python via .NET. Giữ cho tài liệu của bạn sạch sẽ và riêng tư."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Tùy Chọn Bảo Vệ Tài Liệu"
  features:
    # feature loop
    - title: "Tìm và Thay Thế Văn Bản"
      content: "Xóa hoặc thay thế các từ và cụm từ chứa dữ liệu riêng tư hoặc nhạy cảm."

    # feature loop
    - title: "Thêm Lớp Che Ảnh"
      content: "Đặt lớp phủ để che phần hình ảnh trong tài liệu của bạn."

    # feature loop
    - title: "Xóa Metadata"
      content: "Làm sạch tên tác giả, tiêu đề, ghi chú và thông tin ẩn khác."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Xóa Metadata từ Các Tệp WORD"
      content: |
        Ví dụ này cho thấy cách xóa các trường như Tác Giả và Tiêu Đề khỏi một tài liệu WORD.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Chọn metadata Tác Giả
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Chọn metadata Tiêu Đề
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Nhập tài liệu của bạn
          with gr.Redactor("source.docx") as redactor:

              # Chạy công cụ xóa bỏ
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
    title: "Xóa Metadata trong WORD bằng Python"
    exclude: "WORD"
    description: "Sử dụng Python để làm sạch metadata ẩn khỏi WORD. Giữ cho tệp của bạn an toàn trước khi chia sẻ hoặc lưu giữ."
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