
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: vi
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Che hình ảnh trong các tệp PPTX bằng lớp phủ với Python"
head_description: "Sử dụng GroupDocs.Redaction for Python via .NET để che các hình ảnh nhạy cảm trong các tệp PPTX bằng lớp phủ màu. Bảo vệ dữ liệu quan trọng trong khi giữ nguyên định dạng tài liệu."

############################# Header ############################
title: "Che hình ảnh riêng tư trong tài liệu PPTX với lớp phủ Python" 
description: "Bảo vệ các hình ảnh nhạy cảm trong các tệp PPTX bằng Python. Công cụ của chúng tôi giúp việc xóa hình ảnh trở nên đơn giản và nhanh chóng."
subtitle: "Các tính năng của GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Giới thiệu về GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET cung cấp cho các nhà phát triển Python những công cụ đơn giản để ẩn hoặc xóa nội dung trong các tệp PPTX. Bảo vệ văn bản, hình ảnh và siêu dữ liệu qua nhiều định dạng khác nhau.

############################# Steps ############################
steps:
    enable: true
    title: "Bảo vệ dữ liệu nhạy cảm trong các tệp Pptx"
    content: |
      GroupDocs.Redaction for Python via .NET giúp các ứng dụng Python via .NET bảo vệ tài liệu bằng cách che nội dung nhạy cảm.
      
      1. Tạo một phiên bản Redactor và tải tệp Pptx.
      2. Thiết lập các tùy chọn xóa bỏ theo yêu cầu của bạn.
      3. Chọn khu vực hình ảnh và gán màu lớp phủ.
      4. Áp dụng lớp phủ và lưu tệp.
   
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

        # Che các khu vực hình ảnh riêng tư trong PPTX

        # Thiết lập màu sắc và kích thước lớp phủ
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Đánh dấu khu vực cần xóa
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Mở tài liệu bằng Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Áp dụng lớp phủ và lưu tệp
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Các tính năng để xóa bỏ tài liệu"
  description: "GroupDocs.Redaction for Python via .NET cho phép bạn xóa hoặc xóa bỏ dữ liệu nhạy cảm trong nhiều loại tài liệu. Giữ cho tệp của bạn sạch sẽ và được bảo vệ."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Bộ công cụ xóa bỏ toàn diện"
  features:
    # feature loop
    - title: "Tìm kiếm và thay thế văn bản"
      content: "Tìm văn bản nhạy cảm và xóa nó để bảo vệ thông tin của bạn."

    # feature loop
    - title: "Che các khu vực hình ảnh"
      content: "Che hình ảnh hoặc phần cụ thể bằng lớp phủ để bảo vệ thông tin riêng tư."

    # feature loop
    - title: "Làm sạch siêu dữ liệu"
      content: "Xóa hoặc thay đổi siêu dữ liệu ẩn để tránh việc tiếp xúc với dữ liệu nhạy cảm."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Che nội dung hình ảnh bằng lớp phủ màu"
      content: |
        Xem cách che các phần hình ảnh nhạy cảm trong tài liệu bằng lớp phủ.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Xác định các thuộc tính lớp phủ: kích thước, vị trí, màu sắc
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Chọn khu vực hình ảnh trên trang đầu
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Tải tài liệu
          with gr.Redactor("source.pptx") as redactor:

              # Áp dụng lớp phủ cho khu vực đã chọn
              result = redactor.apply(redaction)

              # Lưu tài liệu đã được bảo vệ
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
    title: "Che nội dung trong các tệp PPTX với Python"
    exclude: "PPTX"
    description: "Sử dụng Python để ẩn hoặc xóa nội dung riêng tư trong các tệp PPTX. Một công cụ đáng tin cậy cho việc bảo mật tài liệu."
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