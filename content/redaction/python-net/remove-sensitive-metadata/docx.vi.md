
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: vi
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Xóa Metadata trong DOCX Sử Dụng Python"
head_description: "Sử dụng GroupDocs.Redaction for Python via .NET để xóa bỏ dữ liệu ẩn trong các tệp DOCX. Bảo vệ dữ liệu của bạn bằng cách gỡ bỏ các mục metadata nhạy cảm."

############################# Header ############################
title: "Xóa Metadata Ẩn từ Các Tệp DOCX với Python" 
description: "Với Python, bạn có thể xóa metadata ẩn từ các tệp DOCX bằng GroupDocs.Redaction for Python via .NET. Giữ cho tệp của bạn sạch và riêng tư."
subtitle: "Các Tính Năng Chính trong GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Định Nghĩa GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction cung cấp cho các nhà phát triển Python khả năng xóa dữ liệu ẩn trong các tệp DOCX. Làm sạch văn bản, hình ảnh và metadata từ tài liệu một cách nhanh chóng.

############################# Steps ############################
steps:
    enable: true
    title: "Xóa Metadata khỏi Các Tệp Docx"
    content: |
      GroupDocs.Redaction cung cấp các công cụ cho các ứng dụng Python via .NET của bạn để xóa metadata nhanh chóng.
      
      1. Bắt đầu một Redactor và tải tài liệu Docx của bạn.
      2. Thiết lập các trường metadata để xóa.
      3. Áp dụng xóa bỏ để làm sạch nội dung ẩn.
      4. Lưu phiên bản cuối cùng của tệp.
   
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

        # Làm sạch metadata trong các tệp DOCX

        # Chọn các mục metadata để xóa
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Sử dụng Redactor để mở tài liệu
        with gr.Redactor("input.docx") as redactor:

            # Áp dụng xóa bỏ và lưu tệp
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Bảo Vệ Mỗi Phần của Tài Liệu"
  description: "Với GroupDocs.Redaction for Python via .NET, bạn có thể làm sạch văn bản, hình ảnh và metadata ở nhiều định dạng tệp. Lý tưởng cho quyền riêng tư và bảo mật."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Công Cụ Xóa Bỏ Tài Liệu Đang Hoạt Động"
  features:
    # feature loop
    - title: "Người Dọn Dẹp Văn Bản"
      content: "Tìm và xóa tên, thuật ngữ hoặc bất kỳ từ nào nhạy cảm."

    # feature loop
    - title: "Che Hình Ảnh"
      content: "Che khuất các phần của hình ảnh bằng một lớp màu."

    # feature loop
    - title: "Xóa Metadata"
      content: "Loại bỏ thông tin tài liệu ẩn như tác giả hoặc chi tiết phần mềm."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ví dụ: Xóa Metadata Ẩn"
      content: |
        Dưới đây là cách bạn có thể xóa các trường Tác Giả và Tiêu Đề từ một tài liệu DOCX bằng cách xóa bỏ.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Chọn để xóa trường Tác Giả
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Chọn để xóa trường Tiêu Đề
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Mở tệp DOCX
          with gr.Redactor("source.docx") as redactor:

              # Chạy quy trình xóa metadata
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Lưu tệp sạch
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
    title: "Xóa Metadata trong DOCX với Python"
    exclude: "DOCX"
    description: "Xóa metadata ẩn trong các tệp DOCX bằng Python. Thích hợp để bảo vệ tệp của bạn trước khi chia sẻ hoặc lưu giữ."
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