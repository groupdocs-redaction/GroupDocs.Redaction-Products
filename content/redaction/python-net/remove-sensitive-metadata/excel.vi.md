
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: vi
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Làm Sạch Metadata khỏi EXCEL Sử Dụng Python"
head_description: "Sử dụng GroupDocs.Redaction for Python via .NET để xóa metadata từ các tài liệu EXCEL. Loại bỏ dữ liệu ẩn và bảo vệ thông tin nhạy cảm."

############################# Header ############################
title: "Xóa Metadata Ẩn trong EXCEL với Python" 
description: "Kiểm soát các tệp EXCEL của bạn bằng Python. Xóa bỏ dữ liệu không mong muốn để giữ cho tệp của bạn riêng tư."
subtitle: "Các Tính Năng Chính của GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Tìm Hiểu GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction được thiết kế cho các lập trình viên Python cần dọn sạch và bảo vệ các tệp EXCEL. Xóa bỏ metadata không mong muốn, văn bản và hình ảnh một cách dễ dàng.

############################# Steps ############################
steps:
    enable: true
    title: "Các Bước Để Làm Sạch Metadata trong Các Tệp Excel"
    content: |
      Trong các ứng dụng Python via .NET, GroupDocs.Redaction giúp bạn loại bỏ metadata chỉ với vài bước.
      
      1. Bắt đầu một Redactor và mở tệp Excel.
      2. Chọn các trường metadata sẽ bị xóa.
      3. Chạy quy trình xóa.
      4. Xuất tệp cuối cùng.
   
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

        # Xóa dữ liệu ẩn trong EXCEL

        # Chọn những metadata nào sẽ bị xóa
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Mở tệp của bạn bằng redactor
        with gr.Redactor("input.xslx") as redactor:

            # Xử lý và lưu tệp
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Làm sạch Tất Cả Các Loại Dữ Liệu Nhạy Cảm"
  description: "GroupDocs.Redaction for Python via .NET cung cấp cho bạn các công cụ để xóa metadata, văn bản và hình ảnh ở nhiều định dạng. Hoàn hảo cho việc chia sẻ tài liệu an toàn."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Công Cụ Metadata và Quyền Riêng Tư"
  features:
    # feature loop
    - title: "Xóa Văn Bản Riêng Tư"
      content: "Phát hiện và xóa thông tin cá nhân hoặc dữ liệu ẩn từ tài liệu của bạn."

    # feature loop
    - title: "Đánh Dấu Chi Tiết Hình Ảnh"
      content: "Che khuất các phần của hình ảnh để chặn những điều hình ảnh riêng tư."

    # feature loop
    - title: "Xóa Metadata"
      content: "Loại bỏ các trường metadata ẩn có thể chứa dữ liệu nhạy cảm."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Xóa Metadata Tác Giả và Tiêu Đề"
      content: |
        Xem cách GroupDocs.Redaction for Python via .NET xóa các trường metadata cụ thể khỏi các tài liệu EXCEL.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Xóa thông tin Tác Giả
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Xóa trường Tiêu Đề
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Mở tài liệu để xóa
          with gr.Redactor("source.xslx") as redactor:

              # Áp dụng thay đổi
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Lưu tài liệu đã dọn dẹp
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
    title: "Xóa Metadata trong EXCEL với Python"
    exclude: "EXCEL"
    description: "Sử dụng Python để loại bỏ metadata nhạy cảm khỏi các tệp EXCEL của bạn. Bảo mật nội dung trước khi chia sẻ."
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