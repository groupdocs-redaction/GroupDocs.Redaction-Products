
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: vi
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Bảo vệ hình ảnh nhạy cảm trong PDF bằng cách sử dụng lớp phủ với Python"
head_description: "Với GroupDocs.Redaction for Python via .NET, bạn có thể ẩn các hình ảnh nhạy cảm trong các tệp PDF bằng cách thêm lớp phủ. Bảo vệ dữ liệu cá nhân mà không thay đổi bố cục của tài liệu."

############################# Header ############################
title: "Ẩn hình ảnh trong tệp PDF bằng lớp phủ với Python" 
description: "Giữ an toàn cho hình ảnh cá nhân và doanh nghiệp trong các tệp PDF với Python. Công cụ của chúng tôi giúp bảo vệ dữ liệu một cách hiệu quả."
subtitle: "Các tính năng của GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Giới thiệu về GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET cung cấp cho các nhà phát triển Python công cụ để ẩn hoặc xóa nội dung trong các tệp PDF. Che văn bản, hình ảnh và siêu dữ liệu để bảo vệ tài liệu trong nhiều định dạng khác nhau.

############################# Steps ############################
steps:
    enable: true
    title: "Bảo vệ dữ liệu nhạy cảm trong các tệp Pdf"
    content: |
      GroupDocs.Redaction for Python via .NET cung cấp cho ứng dụng Python via .NET khả năng bảo vệ tài liệu. Ẩn nội dung riêng tư chỉ với vài cú nhấp chuột.
      
      1. Tạo một đối tượng Redactor và chỉ định đến tệp Pdf.
      2. Điều chỉnh cài đặt cho phù hợp với nhu cầu xóa bỏ của bạn.
      3. Chọn khu vực hình ảnh cần che và chọn màu lớp phủ.
      4. Xử lý và lưu tệp đã được xóa.
   
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

        # Che khu vực hình ảnh bí mật trong PDF

        # Thiết lập màu sắc và kích thước lớp phủ
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Chọn khu vực sẽ xóa
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Tải tài liệu bằng Redactor
        with gr.Redactor("input.pdf") as redactor:

            # Áp dụng lớp phủ và lưu tài liệu
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ẩn nội dung nhạy cảm trong tài liệu"
  description: "Với GroupDocs.Redaction for Python via .NET, bạn có thể ẩn hoặc xóa dữ liệu trong nhiều định dạng tệp khác nhau. Bảo vệ thông tin nhạy cảm trong khi giữ cho tài liệu sạch và có thể chia sẻ."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Chức năng xóa bỏ chính"
  features:
    # feature loop
    - title: "Tìm kiếm và chỉnh sửa văn bản"
      content: "Tìm và thay đổi văn bản nhạy cảm trong tài liệu của bạn để bảo vệ thông tin cá nhân."

    # feature loop
    - title: "Che khu vực hình ảnh"
      content: "Áp dụng lớp phủ trên hình ảnh hoặc các phần đã chọn để che các hình ảnh bí mật."

    # feature loop
    - title: "Quản lý siêu dữ liệu"
      content: "Xóa hoặc chỉnh sửa siêu dữ liệu ẩn để ngăn chặn rò rỉ dữ liệu không mong muốn."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ẩn thông tin hình ảnh bằng lớp phủ"
      content: |
        Ví dụ này cho thấy cách che dữ liệu hình ảnh nhạy cảm trong tài liệu bằng lớp phủ.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Điều chỉnh cài đặt lớp phủ: kích thước, màu sắc và vị trí
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Chọn khu vực hình ảnh ở trang đầu tiên
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Mở tệp để xóa bỏ
          with gr.Redactor("source.pdf") as redactor:

              # Áp dụng lớp phủ để che hình ảnh
              result = redactor.apply(redaction)

              # Lưu tệp đã được xóa
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
    title: "Bảo vệ các tệp PDF bằng Python"
    exclude: "PDF"
    description: "Sử dụng Python để ẩn hoặc xóa dữ liệu nhạy cảm trong các tệp PDF. Giải pháp thực tế để bảo mật tài liệu doanh nghiệp và cá nhân."
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