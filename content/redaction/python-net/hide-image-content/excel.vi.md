
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: vi
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Che hình ảnh trong các tệp EXCEL bằng lớp phủ với Python"
head_description: "Bảo vệ các khu vực hình ảnh nhạy cảm trong các tệp EXCEL bằng GroupDocs.Redaction for Python via .NET. Thêm lớp phủ để che giấu hình ảnh riêng tư mà không thay đổi hình thức của tài liệu."

############################# Header ############################
title: "Bảo vệ các hình ảnh nhạy cảm trong các tệp EXCEL bằng lớp phủ với Python" 
description: "Bảo vệ hình ảnh cá nhân và doanh nghiệp trong các tệp EXCEL với Python. Nhận sự bảo vệ đáng tin cậy với các công cụ dễ sử dụng của chúng tôi."
subtitle: "Các tính năng chính của GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Giới thiệu về GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET cung cấp cho các nhà phát triển Python các công cụ đơn giản để ẩn hoặc xóa nội dung nhạy cảm trong các tệp EXCEL. Che giấu hình ảnh, văn bản và siêu dữ liệu để bảo vệ tài liệu của bạn.

############################# Steps ############################
steps:
    enable: true
    title: "Bảo vệ dữ liệu trong các tệp Excel"
    content: |
      GroupDocs.Redaction for Python via .NET giúp các ứng dụng Python via .NET nhanh chóng và dễ dàng che giấu thông tin cá nhân trong tài liệu.
      
      1. Tạo một instance Redactor và tải tệp Excel.
      2. Thiết lập tùy chọn xóa bỏ theo yêu cầu.
      3. Chọn khu vực hình ảnh và chọn màu lớp phủ.
      4. Áp dụng lớp phủ và lưu lại tệp đã chỉnh sửa.
   
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

        # Che khu vực hình ảnh trong EXCEL

        # Điều chỉnh kích thước và màu sắc lớp phủ
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Chọn khu vực cần che
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Mở tệp bằng Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Áp dụng lớp phủ và lưu tệp
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ẩn hoặc xóa nội dung nhạy cảm"
  description: "GroupDocs.Redaction for Python via .NET cho phép bạn bảo vệ tài liệu bằng cách ẩn hoặc xóa dữ liệu nhạy cảm trong nhiều định dạng. Giữ các tệp an toàn và dễ chia sẻ."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Công cụ xóa bỏ phong phú tính năng"
  features:
    # feature loop
    - title: "Chỉnh sửa văn bản một cách an toàn"
      content: "Tìm văn bản nhạy cảm trong tài liệu và thay thế để bảo vệ quyền riêng tư."

    # feature loop
    - title: "Che các phần của hình ảnh"
      content: "Che các khu vực hình ảnh đã chọn hoặc toàn bộ hình ảnh bằng lớp phủ."

    # feature loop
    - title: "Xóa siêu dữ liệu ẩn"
      content: "Xóa các trường siêu dữ liệu ẩn để ngăn rò rỉ thông tin."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Sử dụng lớp phủ để che giấu dữ liệu hình ảnh"
      content: |
        Ví dụ này cho thấy cách áp dụng lớp phủ để che giấu hình ảnh nhạy cảm trong tài liệu.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Thiết lập màu sắc, kích thước và vị trí lớp phủ
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Chọn một khu vực hình ảnh cụ thể trên trang đầu
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Tải tệp để chỉnh sửa
          with gr.Redactor("source.xslx") as redactor:

              # Áp dụng lớp phủ để che giấu
              result = redactor.apply(redaction)

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
    title: "Ẩn nội dung trong EXCEL với Python"
    exclude: "EXCEL"
    description: "Với Python, bạn có thể dễ dàng ẩn hoặc xóa thông tin nhạy cảm trong các tệp EXCEL. Cách hiệu quả để đảm bảo bảo mật tài liệu."
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