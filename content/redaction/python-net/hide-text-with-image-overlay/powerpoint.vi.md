
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: vi
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Che giấu văn bản nhạy cảm trong POWERPOINT bằng lớp phủ Python"
head_description: "GroupDocs.Redaction for Python via .NET giúp bạn che phủ nội dung riêng tư trong các tệp POWERPOINT bằng cách sử dụng lớp phủ màu. Để mọi thứ ở đúng vị trí trong khi che giấu những gì quan trọng."

############################# Header ############################
title: "Che giấu văn bản trong các bài thuyết trình POWERPOINT với Python" 
description: "Sử dụng Python và GroupDocs.Redaction for Python via .NET để thêm lớp phủ và che giấu văn bản nhạy cảm trong các trang chiếu POWERPOINT của bạn."
subtitle: "Những gì bạn có thể làm với GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Tìm hiểu thêm về GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET giúp các nhà phát triển Python làm sạch các bài thuyết trình POWERPOINT bằng cách che giấu hoặc xóa văn bản, hình ảnh và thông tin ẩn.

############################# Steps ############################
steps:
    enable: true
    title: "Redact thông tin trong các tệp Powerpoint"
    content: |
      Với GroupDocs.Redaction for Python via .NET, bạn có thể chuẩn bị các tệp Powerpoint để chia sẻ bằng cách sử dụng các bước redaction đơn giản.
      
      1. Tạo một Redactor mới và tải tệp của bạn.
      2. Chọn những gì cần che và cách áp dụng nó.
      3. Thêm mẫu tìm kiếm và thiết lập màu lớp phủ.
      4. Áp dụng redaction và lưu tài liệu đã cập nhật của bạn.
   
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

        # Che giấu văn bản nhạy cảm trong POWERPOINT bằng lớp phủ

        # Thiết lập cách thức redaction sẽ hoạt động
        # Chọn văn bản và màu sắc để che giấu
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Sử dụng Redactor để tải bài thuyết trình của bạn
        with gr.Redactor("input.pptx") as redactor:

            # Redact và lưu tệp của bạn
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Các cách đơn giản để che giấu thông tin"
  description: "GroupDocs.Redaction for Python via .NET giúp bạn dễ dàng che giấu hoặc loại bỏ các phần nhạy cảm của tài liệu — hoàn hảo cho sử dụng pháp lý, cá nhân hoặc doanh nghiệp."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Các công cụ hữu ích cho sự riêng tư"
  features:
    # feature loop
    - title: "Tìm và thay thế văn bản"
      content: "Tìm kiếm từ hoặc số và che giấu hoặc thay đổi chúng."

    # feature loop
    - title: "Che phủ các phần hình ảnh"
      content: "Vẽ lớp phủ để che các hình ảnh đầy đủ hoặc các điểm đã chọn."

    # feature loop
    - title: "Xóa thông tin bị ẩn"
      content: "Xóa metadata như tên hoặc thời gian mà người dùng không thấy."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redact bằng cách tìm kiếm Regex"
      content: |
        Xem cách các biểu thức chính quy giúp bạn tìm và che giấu văn bản trong các trang chiếu của bạn.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Xác định mẫu và màu lớp phủ
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Mở tệp POWERPOINT của bạn
          with gr.Redactor("source.pptx") as redactor:

              # Chạy quá trình redaction
              result = redactor.apply(redaction)

              # Lưu phiên bản cuối cùng
              so = gro.SaveOptions()
              so.add_suffix = True
              so.rasterize_to_pdf = False
              result_path = redactor.save(so)
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Che giấu văn bản trong POWERPOINT bằng Python"
    exclude: "POWERPOINT"
    description: "Sử dụng Python để thêm lớp phủ hoặc loại bỏ nội dung khỏi các bài thuyết trình POWERPOINT của bạn để giữ an toàn thông tin riêng tư."
    items: 
        # format loop 1
        - name: "Chỉnh sửa PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-text-with-image-overlay//pdf/"
          description: "Định dạng Tài liệu Di động Adobe"

        # format loop 2
        - name: "Chỉnh sửa Word"
          format: "WORD"
          link: "/redaction/python-net/hide-text-with-image-overlay//word/"
          description: "Tài liệu MS Word và Open Office"
          
        # format loop 3
        - name: "Chỉnh sửa Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-text-with-image-overlay//excel/"
          description: "Bảng tính MS Excel và Open Office"

        # format loop 4
        - name: "Chỉnh sửa PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-text-with-image-overlay//powerpoint/"
          description: "Trình bày MS PowerPoint và Open Office"

        # format loop 5
        - name: "Chỉnh sửa DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-text-with-image-overlay//docx/"
          description: "Tài liệu Open XML của Microsoft Word"
          
        # format loop 6
        - name: "Chỉnh sửa XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-text-with-image-overlay//xlsx/"
          description: "Bảng tính Open XML của Microsoft Excel"
          
        # format loop 7
        - name: "Chỉnh sửa PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-text-with-image-overlay//pptx/"
          description: "Bài thuyết trình Open XML của PowerPoint"


---