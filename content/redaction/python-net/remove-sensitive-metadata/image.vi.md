
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: vi
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Làm Sạch Metadata Ẩn Trong IMAGE Sử Dụng Python"
head_description: "GroupDocs.Redaction for Python via .NET giúp bạn xóa metadata cá nhân khỏi các tài liệu IMAGE. Giữ cho tệp luôn sạch và an toàn."

############################# Header ############################
title: "Xóa Metadata khỏi Các Tệp IMAGE với Python" 
description: "Sử dụng công cụ Python để bảo vệ tài liệu IMAGE. Xóa bỏ thông tin ẩn trước khi chia sẻ hoặc xuất bản."
subtitle: "Các Tính Năng Chính của GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Về GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction cung cấp cho các nhà phát triển Python các công cụ để loại bỏ dữ liệu nhạy cảm từ các tệp IMAGE bao gồm văn bản, hình ảnh và metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Cách Xóa Metadata khỏi Tệp Image"
    content: |
      GroupDocs.Redaction giúp các nhà phát triển Python via .NET làm sạch metadata tài liệu chỉ với vài bước.
      
      1. Thiết lập một Redactor và tải tệp Image của bạn.
      2. Chọn các metadata bạn muốn xóa.
      3. Chạy quy trình xóa.
      4. Lưu tệp đã cập nhật của bạn.
   
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

        # Làm sạch các trường ẩn trong các tệp IMAGE

        # Chọn các trường metadata để xóa
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Sử dụng Redactor để mở tệp
        with gr.Redactor("input.png") as redactor:

            # Xử lý và xuất tệp
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Làm Sạch Dữ Liệu Nhạy Cảm từ Bất Kỳ Tệp Nào"
  description: "GroupDocs.Redaction for Python via .NET xóa văn bản, hình ảnh và metadata không nên được chia sẻ. Hoạt động với nhiều định dạng."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Các Công Cụ Xóa Bỏ Chính"
  features:
    # feature loop
    - title: "Xóa Văn Bản"
      content: "Xóa các từ hoặc mẫu khỏi tệp của bạn để bảo vệ thông tin nhạy cảm."

    # feature loop
    - title: "Che Ảnh"
      content: "Che khuất các phần của hình ảnh cần phải giữ bí mật."

    # feature loop
    - title: "Xóa Metadata"
      content: "Xóa bỏ dữ liệu ẩn từ các thuộc tính tệp như Tác Giả hoặc Tiêu Đề."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Xóa Các Trường Metadata"
      content: |
        Ví dụ này cho thấy cách xóa metadata như Tác Giả và Tiêu Đề trong các tệp IMAGE.
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

          # Mở tệp trong redactor
          with gr.Redactor("source.png") as redactor:

              # Chạy xóa bỏ
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Lưu tài liệu cuối cùng
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
    title: "Sử Dụng Python để Xóa Metadata IMAGE"
    exclude: "IMAGE"
    description: "Nhanh chóng làm sạch metadata trong các tệp IMAGE bằng Python. Giữ cho tài liệu của bạn an toàn và riêng tư."
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