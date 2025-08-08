
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: vi
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Bảo vệ hình ảnh trong các tệp WORD bằng lớp phủ với Python"
head_description: "Che hình ảnh nhạy cảm trong các tệp WORD bằng GroupDocs.Redaction for Python via .NET. Áp dụng lớp phủ để bảo vệ dữ liệu riêng tư trong khi vẫn giữ nguyên bố cục của tài liệu."

############################# Header ############################
title: "Che bí mật hình ảnh trong các tệp WORD bằng Python" 
description: "Giữ cho các hình ảnh cá nhân và doanh nghiệp an toàn trong các tài liệu WORD với Python. Các công cụ xóa bỏ nhanh chóng và đơn giản mà bạn có thể tin tưởng."
subtitle: "Các tính năng cốt lõi của GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Giới thiệu về GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET cung cấp cho các nhà phát triển Python các công cụ đơn giản để ẩn hoặc xóa nội dung trong các tệp WORD. Bảo vệ văn bản, hình ảnh và siêu dữ liệu trong các định dạng tài liệu khác nhau.

############################# Steps ############################
steps:
    enable: true
    title: "Bảo vệ thông tin nhạy cảm trong các tệp Word"
    content: |
      GroupDocs.Redaction for Python via .NET giúp các ứng dụng Python via .NET của bạn bảo vệ tài liệu bằng cách che nội dung riêng tư bằng lớp phủ.
      
      1. Tạo một đối tượng Redactor và tải tệp Word.
      2. Điều chỉnh cài đặt xóa bỏ theo yêu cầu.
      3. Chọn khu vực hình ảnh và chỉ định màu lớp phủ.
      4. Áp dụng lớp phủ và lưu tệp đã chỉnh sửa.
   
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

        # Che hình ảnh nhạy cảm trong WORD

        # Xác định màu sắc và kích thước lớp phủ
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Chọn khu vực hình ảnh cần ẩn
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Tải tệp bằng Redactor
        with gr.Redactor("input.docx") as redactor:

            # Áp dụng và lưu tài liệu
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Các tính năng xóa bỏ nâng cao"
  description: "GroupDocs.Redaction for Python via .NET cho phép bạn ẩn hoặc xóa nội dung nhạy cảm trong nhiều định dạng tài liệu khác nhau. Giữ cho các tệp an toàn và dễ chia sẻ."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Bộ công cụ xóa bỏ mọi lúc mọi nơi"
  features:
    # feature loop
    - title: "Tìm kiếm và thay thế văn bản"
      content: "Tìm kiếm văn bản nhạy cảm trong toàn bộ tài liệu và thay thế để đảm bảo tính riêng tư."

    # feature loop
    - title: "Áp dụng lớp phủ cho hình ảnh"
      content: "Che các khu vực hình ảnh đã chọn hoặc toàn bộ hình ảnh để ẩn thông tin riêng tư."

    # feature loop
    - title: "Xóa siêu dữ liệu"
      content: "Xóa siêu dữ liệu ẩn để ngăn chặn việc chia sẻ thông tin không mong muốn."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Che nội dung hình ảnh bằng lớp phủ"
      content: |
        Ví dụ này cho thấy cách ẩn các hình ảnh nhạy cảm trong tài liệu bằng lớp phủ.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Thiết lập kích thước, màu sắc và vị trí của lớp phủ
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Chọn khu vực trên trang đầu tiên để che đậy
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Mở tài liệu
          with gr.Redactor("source.docx") as redactor:

              # Áp dụng lớp phủ xóa bỏ
              result = redactor.apply(redaction)

              # Lưu tài liệu đã cập nhật
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
    title: "Xóa nội dung trong WORD bằng Python"
    exclude: "WORD"
    description: "Python cho phép bạn ẩn hoặc xóa nội dung nhạy cảm trong các tệp WORD. Giải pháp đáng tin cậy để bảo mật tài liệu."
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