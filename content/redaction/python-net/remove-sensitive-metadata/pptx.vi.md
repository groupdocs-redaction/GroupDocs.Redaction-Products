
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: vi
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Xóa Metadata khỏi Các Tệp PPTX Sử Dụng Python"
head_description: "GroupDocs.Redaction for Python via .NET giúp làm sạch dữ liệu ẩn trong các tệp PPTX. Xóa bỏ các chi tiết có thể tiết lộ thông tin nhạy cảm."

############################# Header ############################
title: "Xóa Metadata trong PPTX với Python" 
description: "Xóa bỏ metadata cá nhân lưu trữ trong các tệp PPTX bằng Python. Một cách thông minh để bảo vệ thông tin của bạn."
subtitle: "Các Công Cụ Chính trong GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Thêm Về GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction được phát triển dành cho các nhà phát triển Python muốn giữ cho tài liệu sạch sẽ. Sử dụng nó để xóa văn bản, che hình ảnh hoặc xóa metadata khỏi các tệp PPTX.

############################# Steps ############################
steps:
    enable: true
    title: "Làm sạch Metadata trong Các Tệp Pptx"
    content: |
      Sử dụng GroupDocs.Redaction để nhanh chóng xóa metadata khỏi ứng dụng Python via .NET của bạn.
      
      1. Tạo một Redactor và mở tài liệu Pptx.
      2. Chọn các metadata mà bạn muốn xóa.
      3. Áp dụng xóa để loại bỏ dữ liệu ẩn.
      4. Lưu tệp đã cập nhật.
   
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

        # Xóa metadata trong PPTX

        # Chọn các trường để xóa
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Mở tệp với Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Chạy và lưu thay đổi
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Các Cách Khác Để Ẩn Thông Tin Nhạy Cảm"
  description: "GroupDocs.Redaction for Python via .NET hỗ trợ xóa bỏ trên nhiều định dạng. Một cách nhanh chóng để gỡ bỏ nội dung cá nhân khỏi tài liệu."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Công Cụ Xóa Bỏ Tệp"
  features:
    # feature loop
    - title: "Tìm và Xóa Văn Bản"
      content: "Xóa nhanh các từ hoặc cụm từ chứa thông tin cá nhân hoặc nhạy cảm."

    # feature loop
    - title: "Thêm Lớp Che Ảnh"
      content: "Che khuất các phần của hình ảnh không nên được chia sẻ."

    # feature loop
    - title: "Xóa Metadata Ẩn"
      content: "Loại bỏ tên tác giả, tiêu đề và các thẻ ẩn khác."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ví dụ: Xóa Các Trường Metadata"
      content: |
        Theo dõi ví dụ này để xóa các trường metadata phổ biến từ một tệp PPTX trước khi chia sẻ.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Đánh dấu trường Tác Giả để xóa
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Đánh dấu trường Tiêu Đề để xóa
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Tải tệp
          with gr.Redactor("source.pptx") as redactor:

              # Áp dụng xóa bỏ
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Xuất tệp đã sạch
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
    title: "Sử Dụng Python để Làm Sạch Metadata khỏi PPTX"
    exclude: "PPTX"
    description: "Xóa bỏ dữ liệu nền khỏi PPTX với Python. Tốt cho quyền riêng tư và sự tuân thủ."
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