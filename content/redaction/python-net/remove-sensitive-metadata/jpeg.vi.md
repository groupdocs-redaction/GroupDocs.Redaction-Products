
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: vi
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Chỉnh Sửa Metadata trong JPEG Sử Dụng Python"
head_description: "GroupDocs.Redaction for Python via .NET giúp bạn làm sạch hoặc cập nhật metadata trong các tài liệu JPEG. Xóa bỏ các trường ẩn có thể tiết lộ chi tiết cá nhân."

############################# Header ############################
title: "Làm sạch Metadata trong JPEG qua Python" 
description: "Bảo vệ các tệp JPEG của bạn bằng cách xóa bỏ metadata ẩn bằng các công cụ đơn giản dành cho Python."
subtitle: "Các Tính Năng Cơ Bản của GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Tìm Hiểu Về GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction cung cấp cho các nhà phát triển Python các công cụ đơn giản để xóa văn bản, hình ảnh và metadata khỏi các tài liệu JPEG.

############################# Steps ############################
steps:
    enable: true
    title: "Các Bước để Làm Sạch Metadata Jpeg"
    content: |
      GroupDocs.Redaction giúp việc xóa metadata nhanh chóng và dễ dàng cho các ứng dụng Python via .NET của bạn.
      
      1. Thiết lập một Redactor và mở tài liệu Jpeg của bạn.
      2. Chọn tùy chọn để xóa các trường metadata.
      3. Chạy xóa để làm sạch tệp.
      4. Lưu phiên bản mới mà không có dữ liệu ẩn.
   
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

        # Làm sạch metadata trong JPEG

        # Chọn các trường metadata để dọn dẹp
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Mở tệp bằng Redactor
        with gr.Redactor("input.jpg") as redactor:

            # Áp dụng xóa và lưu tệp
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Bảo Vệ Quyền Riêng Tư Trong Mọi Tệp"
  description: "GroupDocs.Redaction for Python via .NET cho bạn quyền kiểm soát dữ liệu nhạy cảm trong tài liệu. Xóa bỏ nội dung ẩn trong văn bản, hình ảnh và metadata."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Các Tính Năng Xóa Bỏ Metadata"
  features:
    # feature loop
    - title: "Tìm và Xóa Văn Bản"
      content: "Quét tìm từ khóa hoặc thông tin riêng tư và xóa chúng khỏi tài liệu."

    # feature loop
    - title: "Che Chi Tiết Ảnh"
      content: "Che khuất các khu vực của hình ảnh không nên được nhìn thấy bởi người khác."

    # feature loop
    - title: "Chỉnh Sửa Metadata Tệp"
      content: "Thay đổi hoặc xóa các trường metadata để bảo vệ thông tin tài liệu."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Chỉnh Sửa Các Trường Metadata"
      content: |
        Ví dụ này chỉ rõ cách xóa hoặc sửa đổi các trường như Tác Giả và Tiêu Đề trong tài liệu JPEG.
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

          # Mở tệp JPEG
          with gr.Redactor("source.jpg") as redactor:

              # Chạy quy trình làm sạch
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Lưu phiên bản mới
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
    title: "Làm Sạch Metadata JPEG với Python"
    exclude: "JPEG"
    description: "Sử dụng Python để loại bỏ dữ liệu ẩn và riêng tư từ các tài liệu JPEG của bạn một cách nhanh chóng và dễ dàng."
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