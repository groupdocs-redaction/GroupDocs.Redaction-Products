
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: vi
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Ẩn các khu vực hình ảnh trong các tệp XLSX bằng lớp phủ với Python"
head_description: "Bảo vệ các khu vực hình ảnh nhạy cảm trong các tệp XLSX bằng cách áp dụng lớp phủ với GroupDocs.Redaction for Python via .NET. Giữ nguyên cấu trúc tài liệu trong khi bảo vệ các hình ảnh riêng tư."

############################# Header ############################
title: "Ẩn hình ảnh nhạy cảm trong các tài liệu XLSX bằng Python" 
description: "Bảo vệ các hình ảnh bí mật trong các tệp XLSX với Python. Công cụ của chúng tôi đảm bảo việc xóa hình ảnh nhanh chóng và hiệu quả."
subtitle: "Các tính năng chính của GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Giới thiệu về GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET cung cấp cho các nhà phát triển Python công cụ để ẩn hoặc xóa dữ liệu nhạy cảm từ các tài liệu XLSX. Xóa văn bản, hình ảnh và siêu dữ liệu trên nhiều định dạng khác nhau.

############################# Steps ############################
steps:
    enable: true
    title: "Bảo vệ dữ liệu nhạy cảm trong các tệp Xlsx"
    content: |
      GroupDocs.Redaction for Python via .NET giúp ứng dụng Python via .NET của bạn dễ dàng bảo vệ tài liệu.
      
      1. Khởi tạo Redactor và tải tài liệu Xlsx.
      2. Cài đặt các tham số xóa bỏ sao cho phù hợp với công việc của bạn.
      3. Định nghĩa phần hình ảnh cần che và chọn một màu.
      4. Áp dụng xóa bỏ và lưu tệp cuối cùng.
   
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
        import groupdocs.pydrawing as grd

        # Ẩn các khu vực hình ảnh bí mật trong XLSX

        # Chọn kích thước và màu sắc lớp phủ
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Đánh dấu khu vực xóa bỏ
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Tải tài liệu bằng Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Áp dụng và lưu tệp
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Xóa nội dung trong tài liệu"
  description: "Với GroupDocs.Redaction for Python via .NET, bạn có thể ẩn hoặc xóa dữ liệu nhạy cảm trong nhiều định dạng tài liệu khác nhau. Giữ tài liệu an toàn và chuyên nghiệp."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Công cụ xóa bỏ hiệu quả"
  features:
    # feature loop
    - title: "Tìm kiếm và thay thế văn bản"
      content: "Dễ dàng định vị văn bản riêng tư và thay thế hoặc ẩn nó."

    # feature loop
    - title: "Che hình ảnh bằng lớp phủ"
      content: "Ẩn các hình ảnh toàn phần hoặc các phần cụ thể để bảo vệ các hình ảnh nhạy cảm."

    # feature loop
    - title: "Xóa siêu dữ liệu ẩn"
      content: "Làm sạch siêu dữ liệu khỏi tài liệu để tránh việc chia sẻ thông tin riêng tư."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Che nội dung hình ảnh bằng lớp phủ"
      content: |
        Hướng dẫn này cho thấy cách ẩn các khu vực hình ảnh nhạy cảm trong tài liệu bằng lớp phủ.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Xác định kích thước, vị trí và màu sắc lớp phủ
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Chọn phần hình ảnh cụ thể
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Mở tệp để xóa bỏ
          with gr.Redactor("source.xslx") as redactor:

              # Áp dụng lớp phủ để ẩn khu vực
              result = redactor.apply(redaction)

              # Lưu tài liệu đã chỉnh sửa
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Ẩn nội dung trong các tệp XLSX với Python"
    exclude: "XLSX"
    description: "Sử dụng Python để xóa hoặc che giấu dữ liệu nhạy cảm trong các tệp XLSX. Hoàn hảo cho các doanh nghiệp và cá nhân muốn bảo vệ tài liệu của họ."
    items: 
        # format loop 1
        - name: "Chỉnh sửa PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-image-content//pdf/"
          description: "Định dạng Tài liệu Di động Adobe"

        # format loop 2
        - name: "Chỉnh sửa Word"
          format: "WORD"
          link: "/redaction/python-net/hide-image-content//word/"
          description: "Tài liệu MS Word và Open Office"
          
        # format loop 3
        - name: "Chỉnh sửa Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-image-content//excel/"
          description: "Bảng tính MS Excel và Open Office"

        # format loop 4
        - name: "Chỉnh sửa PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-image-content//powerpoint/"
          description: "Trình bày MS PowerPoint và Open Office"

        # format loop 5
        - name: "Chỉnh sửa Hình ảnh"
          format: "IMAGE"
          link: "/redaction/python-net/hide-image-content//image/"
          description: "Các định dạng hình ảnh phổ biến"

        # format loop 6
        - name: "Chỉnh sửa Ảnh"
          format: "PHOTO"
          link: "/redaction/python-net/hide-image-content//photo/"
          description: "Định dạng ảnh"

        # format loop 7
        - name: "Chỉnh sửa DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-image-content//docx/"
          description: "Tài liệu Open XML của Microsoft Word"
          
        # format loop 8
        - name: "Chỉnh sửa XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-image-content//xlsx/"
          description: "Bảng tính Open XML của Microsoft Excel"
          
        # format loop 9
        - name: "Chỉnh sửa PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-image-content//pptx/"
          description: "Bài thuyết trình Open XML của PowerPoint"

        # format loop 10
        - name: "Chỉnh sửa JPEG"
          format: "JPEG"
          link: "/redaction/python-net/hide-image-content//jpeg/"
          description: "Hình ảnh JPEG"


---