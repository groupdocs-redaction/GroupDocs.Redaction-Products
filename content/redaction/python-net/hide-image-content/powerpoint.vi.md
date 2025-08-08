
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: vi
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Che giấu các hình ảnh nhạy cảm trong POWERPOINT bằng lớp phủ với Python"
head_description: "Với GroupDocs.Redaction for Python via .NET, bạn có thể che các khu vực hình ảnh riêng tư trong các tệp POWERPOINT bằng lớp phủ. Bảo vệ thông tin mà không thay đổi thiết kế tài liệu."

############################# Header ############################
title: "Che hình ảnh nhạy cảm trong các tài liệu POWERPOINT bằng lớp phủ Python" 
description: "Giữ an toàn cho các hình ảnh nhạy cảm trong các tệp POWERPOINT bằng Python. Các công cụ dễ dàng được thiết kế để bảo vệ dữ liệu một cách mạnh mẽ."
subtitle: "Khám phá các tính năng của GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Giới thiệu về GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET trang bị cho các lập trình viên Python các công cụ để ẩn hoặc xóa nội dung nhạy cảm trong các tệp POWERPOINT. Bảo vệ tài liệu của bạn bằng cách che giấu văn bản, hình ảnh và siêu dữ liệu.

############################# Steps ############################
steps:
    enable: true
    title: "Giữ các tài liệu Powerpoint của bạn an toàn"
    content: |
      GroupDocs.Redaction for Python via .NET giúp các ứng dụng Python via .NET dễ dàng bảo vệ nội dung nhạy cảm trong tài liệu.
      
      1. Tạo một đối tượng Redactor và tải tệp Powerpoint.
      2. Điều chỉnh các tùy chọn xóa bỏ phù hợp với yêu cầu của bạn.
      3. Chọn khu vực hình ảnh và chọn màu lớp phủ.
      4. Áp dụng lớp phủ và lưu tài liệu.
   
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

        # Che nội dung hình ảnh trong các tệp POWERPOINT

        # Thiết lập kích thước và màu sắc lớp phủ
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Chọn khu vực cần ẩn
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Tải tệp bằng Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Áp dụng lớp phủ và lưu tệp
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Bảo vệ thông tin riêng tư trong các tài liệu"
  description: "GroupDocs.Redaction for Python via .NET cho phép bạn ẩn hoặc xóa nội dung nhạy cảm trong nhiều định dạng tài liệu khác nhau. Giữ các tệp của bạn an toàn và sẵn sàng để chia sẻ."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Các tính năng xóa bỏ toàn diện"
  features:
    # feature loop
    - title: "Tìm kiếm và chỉnh sửa văn bản"
      content: "Tìm văn bản nhạy cảm trong tài liệu và thay thế nó để bảo vệ thông tin của bạn."

    # feature loop
    - title: "Che khu vực hình ảnh"
      content: "Che các hình ảnh hoặc các phần cụ thể bằng lớp phủ để ẩn thông tin riêng tư."

    # feature loop
    - title: "Xóa siêu dữ liệu"
      content: "Xóa hoặc thay đổi siêu dữ liệu ẩn để tránh tiết lộ thông tin bí mật."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Sử dụng lớp phủ để che dữ liệu hình ảnh"
      content: |
        Ví dụ này cho thấy cách bảo vệ hình ảnh nhạy cảm trong tài liệu bằng lớp phủ.
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

          # Đánh dấu khu vực hình ảnh trên trang đầu
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Mở tài liệu để xóa bỏ
          with gr.Redactor("source.pptx") as redactor:

              # Áp dụng lớp phủ để xóa dữ liệu
              result = redactor.apply(redaction)

              # Lưu tài liệu đã hoàn thành
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
    title: "Giữ an toàn cho các tệp POWERPOINT với Python"
    exclude: "POWERPOINT"
    description: "Với Python, bạn có thể dễ dàng ẩn hoặc xóa dữ liệu nhạy cảm trong các tệp POWERPOINT. Giải pháp đáng tin cậy để bảo vệ tài liệu quan trọng."
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