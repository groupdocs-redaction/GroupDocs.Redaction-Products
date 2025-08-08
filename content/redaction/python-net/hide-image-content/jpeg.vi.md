
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: vi
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Ẩn hình ảnh riêng tư trong JPEG bằng lớp phủ với Python"
head_description: "Bảo vệ các tệp JPEG của bạn bằng cách thêm lớp phủ cho các hình ảnh với GroupDocs.Redaction for Python via .NET. Bảo vệ các hình ảnh nhạy cảm trong khi giữ nguyên bố cục tài liệu."

############################# Header ############################
title: "Bảo vệ hình ảnh nhạy cảm trong các tệp JPEG bằng lớp phủ với Python" 
description: "Giữ cho các hình ảnh của bạn an toàn trong các tệp JPEG bằng Python. Các công cụ dễ dàng giúp bạn bảo vệ nội dung riêng tư chỉ trong vài bước."
subtitle: "Các tính năng hàng đầu của GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Giới thiệu về GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET cung cấp cho các nhà phát triển Python các công cụ đơn giản để ẩn hoặc xóa nội dung trong các tệp JPEG. Bảo vệ văn bản, hình ảnh và siêu dữ liệu một cách dễ dàng.

############################# Steps ############################
steps:
    enable: true
    title: "Giữ các tệp Jpeg an toàn"
    content: |
      GroupDocs.Redaction for Python via .NET cho phép ứng dụng Python via .NET của bạn nhanh chóng và hiệu quả che giấu dữ liệu nhạy cảm.
      
      1. Tạo một đối tượng Redactor và chỉ định đường dẫn đến tệp Jpeg.
      2. Xác định cài đặt xóa bỏ theo yêu cầu.
      3. Đánh dấu khu vực hình ảnh và chọn màu cho lớp phủ.
      4. Chạy quy trình xóa bỏ và lưu tệp đã bảo vệ.
   
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

        # Ẩn các khu vực hình ảnh trong các tệp JPEG

        # Xác định kích thước và màu sắc lớp phủ
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Chọn khu vực để che giấu
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Tải tệp qua Redactor
        with gr.Redactor("input.jpg") as redactor:

            # Áp dụng lớp phủ và lưu tài liệu
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Xóa nội dung trong nhiều tài liệu"
  description: "GroupDocs.Redaction for Python via .NET giúp bạn ẩn hoặc xóa nội dung nhạy cảm trong nhiều định dạng tệp khác nhau. Giữ tài liệu của bạn an toàn và dễ dàng chia sẻ."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Công cụ xóa bỏ phong phú tính năng"
  features:
    # feature loop
    - title: "Tìm kiếm và thay thế văn bản"
      content: "Tìm kiếm văn bản nhạy cảm trong tài liệu và thay thế để bảo mật dữ liệu của bạn."

    # feature loop
    - title: "Che các khu vực hình ảnh"
      content: "Áp dụng lớp phủ để che giấu hình ảnh hoặc các phần đã chọn để bảo vệ thông tin nhạy cảm."

    # feature loop
    - title: "Làm sạch siêu dữ liệu"
      content: "Xóa siêu dữ liệu ẩn để tránh các rò rỉ dữ liệu không mong muốn."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Bảo vệ các khu vực hình ảnh bằng lớp phủ"
      content: |
        Ví dụ này hướng dẫn bạn cách che giấu các phần hình ảnh nhạy cảm trong tài liệu.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Đặt kích thước, màu sắc và vị trí lớp phủ
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

          # Tải tệp để chỉnh sửa
          with gr.Redactor("source.jpg") as redactor:

              # Áp dụng lớp phủ để ẩn khu vực
              result = redactor.apply(redaction)

              # Lưu tệp đã xóa
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
    title: "Bảo vệ các tệp JPEG với các công cụ xóa bỏ Python"
    exclude: "JPEG"
    description: "Với Python, bạn có thể ẩn hoặc xóa dữ liệu riêng tư trong các tệp JPEG. Giải pháp đáng tin cậy để giữ tài liệu chuyên nghiệp và an toàn."
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