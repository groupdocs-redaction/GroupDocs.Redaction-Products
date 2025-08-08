
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: vi
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Che giấu hình ảnh trong các tệp PHOTO bằng lớp phủ với Python"
head_description: "Áp dụng lớp phủ để che giấu dữ liệu hình ảnh nhạy cảm trong các tệp PHOTO với GroupDocs.Redaction for Python via .NET. Giữ nguyên thiết kế của tài liệu trong khi bảo vệ thông tin riêng tư."

############################# Header ############################
title: "Ẩn hình ảnh nhạy cảm trong các tệp PHOTO với lớp phủ qua Python" 
description: "Bảo vệ nội dung hình ảnh trong các tệp PHOTO với Python. Các công cụ đơn giản cho việc bảo vệ dữ liệu nhanh chóng và hiệu quả."
subtitle: "GroupDocs.Redaction for Python via .NET Các tính năng chính" 

############################# About ############################
about:
    enable: true
    title: "Gì là GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET cung cấp cho các nhà phát triển Python các công cụ mạnh mẽ để ẩn hoặc xóa nội dung trong các tệp PHOTO. Bảo vệ thông tin quan trọng bằng cách ẩn văn bản, hình ảnh và siêu dữ liệu một cách hiệu quả.

############################# Steps ############################
steps:
    enable: true
    title: "Bảo vệ các khu vực hình ảnh trong các tệp Photo"
    content: |
      Sử dụng GroupDocs.Redaction for Python via .NET để dễ dàng che giấu các khu vực hình ảnh nhạy cảm trong ứng dụng Python via .NET của bạn.
      
      1. Tạo một đối tượng Redactor và liên kết với tệp Photo của bạn.
      2. Cấu hình cài đặt xóa bỏ để phù hợp với công việc của bạn.
      3. Điểm những khu vực hình ảnh và thiết lập màu sắc lớp phủ.
      4. Áp dụng xóa bỏ và lưu tệp đã được bảo vệ.
   
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

        # Sử dụng lớp phủ để che giấu dữ liệu hình ảnh trong PHOTO

        # Thiết lập kích thước và màu sắc lớp phủ
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Chọn khu vực hình ảnh để ẩn
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Mở tệp bằng Redactor
        with gr.Redactor("input.jpeg") as redactor:

            # Áp dụng lớp phủ và lưu tệp
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Xóa dữ liệu nhạy cảm trong nhiều định dạng"
  description: "GroupDocs.Redaction for Python via .NET cho phép bạn che hoặc xóa nội dung nhạy cảm trong nhiều loại tệp khác nhau. Giữ tài liệu sạch sẽ và an toàn để chia sẻ."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Các tính năng xóa bỏ tổng hợp"
  features:
    # feature loop
    - title: "Tìm và chỉnh sửa văn bản"
      content: "Tìm kiếm văn bản nhạy cảm và thay thế nó để bảo vệ tài liệu của bạn."

    # feature loop
    - title: "Che giấu hình ảnh bằng lớp phủ"
      content: "Thêm lớp phủ để che hình ảnh hoặc các phần cụ thể."

    # feature loop
    - title: "Xóa siêu dữ liệu"
      content: "Xóa siêu dữ liệu ẩn để ngăn chặn rò rỉ thông tin."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Che các khu vực hình ảnh bằng lớp phủ"
      content: |
        Ví dụ mã này cho thấy cách ẩn các khu vực hình ảnh nhạy cảm trong tài liệu bằng cách sử dụng lớp phủ.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Xác định kích thước, màu sắc và vị trí lớp phủ
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Chọn khu vực hình ảnh ở trang đầu
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Mở tệp để xóa bỏ
          with gr.Redactor("source.jpeg") as redactor:

              # Áp dụng lớp phủ để ẩn nội dung
              result = redactor.apply(redaction)

              # Lưu tệp đã bảo vệ
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
    title: "Xóa thông tin nhạy cảm trong PHOTO với Python"
    exclude: "PHOTO"
    description: "Sử dụng Python để ẩn hoặc xóa dữ liệu riêng tư trong các tệp PHOTO. Cách dễ dàng để bảo vệ các tài liệu chính thức."
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