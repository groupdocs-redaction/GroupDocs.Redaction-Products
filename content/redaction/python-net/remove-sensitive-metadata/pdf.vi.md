
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: vi
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Xóa Metadata khỏi PDF Sử Dụng Python"
head_description: "GroupDocs.Redaction for Python via .NET giúp dọn dẹp dữ liệu ẩn trong các tệp PDF. Tránh chia sẻ thông tin cá nhân bằng cách chỉnh sửa hoặc xóa bỏ metadata."

############################# Header ############################
title: "Xóa Metadata trong Các Tệp PDF với Python" 
description: "Sử dụng Python và GroupDocs.Redaction for Python via .NET để dọn dẹp thông tin nhạy cảm từ tài liệu PDF của bạn. Giữ kiểm soát dữ liệu của bạn với các công cụ xóa bỏ đơn giản."
subtitle: "Những Gì GroupDocs.Redaction for Python via .NET Cung Cấp" 

############################# About ############################
about:
    enable: true
    title: "Giới Thiệu GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction giúp các nhà phát triển Python dọn dẹp các tài liệu PDF bằng cách xóa văn bản, nội dung hình ảnh và metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Xóa Metadata khỏi Tài Liệu Pdf"
    content: |
      Bắt đầu bảo vệ tệp của bạn bằng GroupDocs.Redaction trong các ứng dụng Python via .NET.
      
      1. Tạo một Redactor và tải tệp Pdf của bạn.
      2. Thêm quy tắc để xóa bỏ metadata ẩn.
      3. Chạy xóa bỏ để xóa các mục metadata.
      4. Lưu tệp mà không có dữ liệu ẩn.
   
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

        # Xóa metadata khỏi tài liệu PDF

        # Chọn các trường metadata để xóa
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Mở tệp bằng Redactor
        with gr.Redactor("input.pdf") as redactor:

            # Đánh dấu và lưu tài liệu của bạn
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Dọn Dẹp Nội Dung Ẩn trong Tài Liệu"
  description: "Với GroupDocs.Redaction for Python via .NET, bạn có thể xóa an toàn văn bản, hình ảnh và metadata. Giữ cho tệp của bạn riêng tư và bảo mật trước khi chia sẻ."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Tùy Chọn Xóa Bỏ"
  features:
    # feature loop
    - title: "Xóa Văn Bản"
      content: "Tìm kiếm và xóa văn bản nhạy cảm trên toàn bộ tài liệu."

    # feature loop
    - title: "Che Bất Cứ Hình Ảnh Nào"
      content: "Ẩn các phần cụ thể của hình ảnh bằng các lớp đơn giản."

    # feature loop
    - title: "Dọn Dẹp Metadata"
      content: "Loại bỏ metadata không mong muốn mà có thể tiết lộ dữ liệu cá nhân."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Chỉnh Sửa và Xóa Các Trường Metadata"
      content: |
        Ví dụ này giải thích cách làm sạch metadata ẩn trong một tệp PDF.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Xóa metadata Tác Giả
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Xóa metadata Tiêu Đề
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Mở tệp trong Redactor
          with gr.Redactor("source.pdf") as redactor:

              # Chạy quy trình xóa bỏ
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
    title: "Dọn Dẹp Metadata từ PDF với Python"
    exclude: "PDF"
    description: "Xóa bỏ các trường dữ liệu ẩn trong PDF bằng Python. Một cách thông minh để bảo vệ quyền riêng tư và giữ cho tệp của bạn sạch sẽ."
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