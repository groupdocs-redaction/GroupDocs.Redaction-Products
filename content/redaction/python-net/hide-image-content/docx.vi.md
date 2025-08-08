
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: vi
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Ẩn nội dung hình ảnh trong DOCX bằng lớp phủ với Python"
head_description: "Bảo vệ hình ảnh nhạy cảm trong các tệp DOCX bằng cách thêm lớp phủ với GroupDocs.Redaction for Python via .NET. Giữ định dạng tài liệu không thay đổi trong khi bảo vệ các hình ảnh riêng tư."

############################# Header ############################
title: "Bảo vệ hình ảnh trong tài liệu DOCX bằng lớp phủ với Python" 
description: "Giữ cho hình ảnh cá nhân và doanh nghiệp an toàn trong các tệp DOCX bằng Python. Công cụ xóa bỏ của chúng tôi giúp bảo mật tài liệu hiệu quả."
subtitle: "Điểm nổi bật của GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Giới thiệu về GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET mang lại cho các nhà phát triển Python khả năng ẩn hoặc xóa nội dung trong các tệp DOCX. Bảo vệ văn bản, hình ảnh và siêu dữ liệu qua nhiều định dạng tài liệu.

############################# Steps ############################
steps:
    enable: true
    title: "Giữ an toàn cho dữ liệu trong các tệp Docx"
    content: |
      GroupDocs.Redaction for Python via .NET giúp các ứng dụng Python via .NET dễ dàng bảo vệ tài liệu. Xóa bỏ dữ liệu nhạy cảm chỉ trong vài bước đơn giản.
      
      1. Tạo một instance Redactor và chỉ định đường dẫn đến tệp Docx.
      2. Thiết lập sở thích xóa bỏ theo yêu cầu của bạn.
      3. Chọn phần hình ảnh mà bạn muốn che và xác định màu sắc lớp phủ.
      4. Chạy quy trình và lưu tệp đã được xóa.
   
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

        # Ẩn các phần nhạy cảm của hình ảnh trong DOCX

        # Xác định kích thước và màu sắc lớp phủ
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Chỉ định khu vực cho việc xóa bỏ
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Tải tệp bằng Redactor
        with gr.Redactor("input.docx") as redactor:

            # Áp dụng lớp phủ và lưu tài liệu của bạn
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ẩn nội dung trong tài liệu"
  description: "Với GroupDocs.Redaction for Python via .NET, bạn có thể ẩn hoặc xóa thông tin nhạy cảm từ nhiều loại tài liệu khác nhau. Giữ an toàn cho các tệp và có thể chia sẻ."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Các tính năng xóa bỏ hiệu quả"
  features:
    # feature loop
    - title: "Tìm kiếm và chỉnh sửa văn bản"
      content: "Định vị các từ nhạy cảm và thay thế chúng để bảo vệ dữ liệu của bạn."

    # feature loop
    - title: "Che hình ảnh"
      content: "Áp dụng lớp phủ cho các hình ảnh toàn phần hoặc các khu vực đã chọn để bảo vệ dữ liệu hình ảnh."

    # feature loop
    - title: "Làm sạch siêu dữ liệu ẩn"
      content: "Xóa hoặc cập nhật siêu dữ liệu để ngăn việc thông tin bị chia sẻ không mong muốn."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ẩn dữ liệu hình ảnh bằng lớp phủ"
      content: |
        Ví dụ này cho thấy cách bảo vệ các khu vực hình ảnh nhạy cảm trong tài liệu bằng lớp phủ.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Thiết lập cài đặt lớp phủ: màu sắc, kích thước, vị trí
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Chọn khu vực để xóa trên trang đầu
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Tải tệp bạn muốn xóa bỏ
          with gr.Redactor("source.docx") as redactor:

              # Áp dụng lớp phủ để che khu vực hình ảnh
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
    title: "Ẩn dữ liệu nhạy cảm trong các tệp DOCX với Python"
    exclude: "DOCX"
    description: "Sử dụng Python để che hoặc xóa dữ liệu riêng tư trong các tệp DOCX. Công cụ thích hợp để giữ cho tài liệu bí mật an toàn."
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