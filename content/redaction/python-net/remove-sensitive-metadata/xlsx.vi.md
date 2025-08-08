
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: vi
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Xóa Metadata khỏi XLSX Sử Dụng Python"
head_description: "Loại bỏ metadata ẩn trong các tài liệu XLSX của bạn bằng GroupDocs.Redaction for Python via .NET. Một cách làm sạch để bảo vệ quyền riêng tư của bạn."

############################# Header ############################
title: "Xóa Metadata trong Các Tệp XLSX với Python" 
description: "Với Python, bạn có thể an toàn xóa chi tiết cá nhân từ các tệp XLSX của mình. Hoàn hảo cho cả sử dụng cá nhân và chuyên nghiệp."
subtitle: "Các Tính Năng Chính của GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Định Nghĩa GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction cung cấp cho các nhà phát triển Python công cụ để xóa hoặc ẩn mọi nội dung nhạy cảm trong các tệp XLSX — từ văn bản đến hình ảnh đến metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Xóa Metadata từ Các Tệp Xlsx"
    content: |
      GroupDocs.Redaction cho phép các dự án Python via .NET của bạn xóa dữ liệu tệp không mong muốn một cách nhanh chóng.
      
      1. Tạo một thể hiện Redactor và tải tệp Xlsx của bạn.
      2. Chọn các mục metadata mà bạn muốn xóa.
      3. Chạy xóa để xóa các mục đó.
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

        # Xóa metadata ẩn trong tài liệu XLSX của bạn

        # Đặt các trường metadata nào sẽ bị xóa
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Mở tệp bằng Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Áp dụng và lưu tệp
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ẩn Nội Dung Nhạy Cảm Bất Kỳ ở Đâu Trong Tệp"
  description: "GroupDocs.Redaction for Python via .NET cho phép bạn làm sạch thông tin riêng tư từ nhiều định dạng tệp. Giữ cho nội dung của bạn sẵn sàng để chia sẻ."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Xóa Metadata và Nội Dung"
  features:
    # feature loop
    - title: "Xóa Văn Bản Nhạy Cảm"
      content: "Tìm và gỡ bỏ tên, email hoặc các chi tiết riêng tư khác từ tài liệu."

    # feature loop
    - title: "Che Khu Vực Hình Ảnh"
      content: "Đặt lớp phủ để che khuất các vùng trong hình ảnh không nên được nhìn thấy."

    # feature loop
    - title: "Người Dọn Dẹp Metadata"
      content: "Xóa các trường ẩn như Tác Giả, Tiêu Đề hoặc ngày tạo."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Xóa Metadata từ Tài Liệu"
      content: |
        Dưới đây là cách xóa metadata khỏi tệp XLSX của bạn bằng một vài dòng mã.
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

          # Mở tài liệu
          with gr.Redactor("source.xslx") as redactor:

              # Chạy các quy tắc xóa
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
    title: "Xóa Metadata trong XLSX với Python"
    exclude: "XLSX"
    description: "Sử dụng Python để làm sạch metadata cá nhân trong các tệp XLSX của bạn. Một cách tốt để chuẩn bị tệp cho việc chia sẻ hoặc xuất bản."
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