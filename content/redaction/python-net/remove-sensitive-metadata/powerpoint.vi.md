
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: vi
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Xóa Metadata trong POWERPOINT Sử Dụng Python"
head_description: "Bảo vệ các tài liệu POWERPOINT của bạn với GroupDocs.Redaction for Python via .NET bằng cách làm sạch metadata ẩn có thể chứa thông tin cá nhân."

############################# Header ############################
title: "Làm Sạch Metadata từ POWERPOINT với Python" 
description: "Có kiểm soát tốt hơn trên các tệp của bạn khi sử dụng các công cụ Python nhanh chóng xóa bỏ metadata ẩn."
subtitle: "Các Tính Năng Tốt Nhất của GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Tìm Hiểu Về GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction được thiết kế cho các lập trình viên Python hỗ trợ việc xóa văn bản, hình ảnh và metadata trong các tệp POWERPOINT.

############################# Steps ############################
steps:
    enable: true
    title: "Các Bước Để Xóa Metadata trong Powerpoint"
    content: |
      GroupDocs.Redaction cho phép ứng dụng Python via .NET của bạn dọn sạch metadata từ tài liệu chỉ với vài cú nhấp chuột.
      
      1. Tạo một thể hiện Redactor và mở tài liệu của bạn.
      2. Chọn các trường metadata nào cần xóa.
      3. Cấu hình và áp dụng các thiết lập xóa.
      4. Lưu phiên bản cuối cùng mà không có dữ liệu ẩn.
   
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

        # Xóa metadata từ POWERPOINT

        # Chọn metadata để xóa
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Tải tệp vào redactor
        with gr.Redactor("input.pptx") as redactor:

            # Làm sạch và lưu tài liệu
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Xóa Bỏ Metadata Nâng Cao cho POWERPOINT"
  description: "GroupDocs.Redaction for Python via .NET giúp dọn sạch các tệp bằng cách xóa bỏ nội dung nhạy cảm. Hoạt động với nhiều định dạng tệp và kiểu dữ liệu."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Các Tùy Chọn Xóa Bỏ Chính"
  features:
    # feature loop
    - title: "Xóa Văn Bản Riêng Tư"
      content: "Tìm kiếm và xóa các từ hoặc cụm từ không nên được chia sẻ."

    # feature loop
    - title: "Che Khu Vực Ảnh"
      content: "Ẩn các phần của hình ảnh chứa nội dung nhạy cảm."

    # feature loop
    - title: "Xóa Bỏ Metadata"
      content: "Xóa các trường metadata như Tác Giả, Tiêu Đề, và Ghi Chú khỏi các tệp của bạn."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cách Xóa Metadata Ẩn"
      content: |
        Mẫu này cho thấy cách làm sạch metadata được nhúng như Tác Giả và Tiêu Đề từ tài liệu POWERPOINT của bạn.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Xóa trường Tác Giả
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Xóa trường Tiêu Đề
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Mở tệp trong redactor
          with gr.Redactor("source.pptx") as redactor:

              # Thực hiện xóa bỏ
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
    title: "Xóa Metadata cho POWERPOINT Sử Dụng Python"
    exclude: "POWERPOINT"
    description: "Sử dụng Python để dọn sạch dữ liệu cá nhân từ POWERPOINT. Lý tưởng cho việc sử dụng hợp pháp, doanh nghiệp và cá nhân."
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