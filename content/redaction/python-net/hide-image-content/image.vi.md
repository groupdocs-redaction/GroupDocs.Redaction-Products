
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: vi
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Che hình ảnh trong IMAGE bằng lớp phủ với Python"
head_description: "Ẩn nội dung hình ảnh nhạy cảm trong các tệp IMAGE bằng cách sử dụng lớp phủ màu với GroupDocs.Redaction for Python via .NET. Giữ nguyên bố cục tài liệu gốc trong khi bảo vệ các hình ảnh quan trọng."

############################# Header ############################
title: "Che giấu hình ảnh nhạy cảm trong các tệp IMAGE bằng lớp phủ Python" 
description: "Bảo vệ dữ liệu hình ảnh cá nhân và doanh nghiệp trong các tệp IMAGE với Python. Các công cụ đơn giản cho việc bảo vệ nhanh chóng và hiệu quả."
subtitle: "Các tính năng của GroupDocs.Redaction for Python via .NET bạn cần" 

############################# About ############################
about:
    enable: true
    title: "Tìm hiểu về GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET cung cấp cho các nhà phát triển Python các công cụ để ẩn hoặc xóa nội dung trong các tệp IMAGE. Bảo vệ tài liệu của bạn bằng cách che văn bản, hình ảnh và siêu dữ liệu.

############################# Steps ############################
steps:
    enable: true
    title: "Che nội dung riêng tư trong các tệp Image"
    content: |
      GroupDocs.Redaction for Python via .NET làm cho việc ẩn dữ liệu nhạy cảm trong ứng dụng Python via .NET của bạn trở nên dễ dàng.
      
      1. Khởi tạo một Redactor và chỉ định đến tệp Image của bạn.
      2. Cấu hình cài đặt xóa bỏ theo yêu cầu.
      3. Chọn các khu vực hình ảnh và xác định màu lớp phủ.
      4. Xử lý tệp và lưu phiên bản đã xóa.
   
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

        # Che nội dung hình ảnh trong IMAGE

        # Xác định kích thước và màu sắc lớp phủ
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Chọn khu vực cần che
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Tải tệp bằng Redactor
        with gr.Redactor("input.png") as redactor:

            # Áp dụng lớp phủ và lưu tệp
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Bảo vệ dữ liệu qua các loại tài liệu"
  description: "GroupDocs.Redaction for Python via .NET cho phép bạn ẩn hoặc xóa nội dung nhạy cảm trong các định dạng tài liệu khác nhau. Giữ tài liệu của bạn sạch sẽ, an toàn và dễ chia sẻ."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Công cụ kiểm soát mỗi lần xóa bỏ"
  features:
    # feature loop
    - title: "Tìm kiếm và thay thế văn bản nhạy cảm"
      content: "Quét qua tài liệu của bạn để thay thế văn bản riêng tư và giữ cho dữ liệu an toàn."

    # feature loop
    - title: "Che hình ảnh bằng lớp phủ"
      content: "Thêm lớp phủ màu để che hình ảnh hoặc các phần cụ thể của chúng."

    # feature loop
    - title: "Xóa siêu dữ liệu"
      content: "Xóa hoặc chỉnh sửa siêu dữ liệu ẩn để đảm bảo không có rò rỉ dữ liệu riêng tư."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ẩn nội dung hình ảnh bằng lớp phủ"
      content: |
        Ví dụ này cho thấy cách áp dụng lớp phủ để bảo vệ dữ liệu hình ảnh nhạy cảm trong tài liệu.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Đặt các kích thước, màu sắc và vị trí lớp phủ
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Chọn một khu vực hình ảnh trên trang đầu
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Mở tệp để xóa bỏ
          with gr.Redactor("source.png") as redactor:

              # Áp dụng lớp phủ để che giấu nội dung hình ảnh
              result = redactor.apply(redaction)

              # Lưu tệp sau khi xóa bỏ
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
    title: "Bảo vệ nội dung trong các tệp IMAGE với Python"
    exclude: "IMAGE"
    description: "Với Python, bạn có thể ẩn hoặc xóa thông tin nhạy cảm trong các tệp IMAGE. Cách đáng tin cậy để giữ cho tài liệu an toàn và chuyên nghiệp."
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