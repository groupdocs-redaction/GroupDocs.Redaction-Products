
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: vi
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Che giấu văn bản trong WORD bằng lớp phủ Python"
head_description: "Với GroupDocs.Redaction for Python via .NET, việc che giấu văn bản riêng tư trong các tài liệu WORD bằng cách sử dụng các khối màu rất đơn giản. Bố cục của bạn vẫn nguyên vẹn."

############################# Header ############################
title: "Sử dụng lớp phủ để che giấu văn bản trong WORD với Python" 
description: "Bảo vệ thông tin quan trọng trong các tài liệu WORD bằng cách đặt các khối lớp phủ bằng Python và GroupDocs.Redaction for Python via .NET."
subtitle: "Những gì bạn có thể làm với GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Gặp gỡ GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       Với GroupDocs.Redaction for Python via .NET, các nhà phát triển Python có thể che giấu hoặc xóa nội dung trong các tài liệu WORD — như tên, số và nhiều thứ khác.

############################# Steps ############################
steps:
    enable: true
    title: "Redact nội dung riêng tư trong Word"
    content: |
      GroupDocs.Redaction for Python via .NET giúp các nhà phát triển Python via .NET dễ dàng che dấu thông tin nhạy cảm nhanh chóng.
      
      1. Tạo một Redactor và tải tệp Word của bạn.
      2. Thiết lập các tùy chọn redaction.
      3. Chọn văn bản cần che giấu và màu của lớp phủ.
      4. Chạy quá trình redaction và lưu tệp của bạn.
   
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

        # Che văn bản trong WORD bằng lớp phủ

        # Chọn nội dung cần redaction
        # Nhập văn bản và đặt màu sắc
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Tải tệp bằng cách sử dụng Redactor
        with gr.Redactor("input.docx") as redactor:

            # Redact và lưu
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nhiều cách hơn để che giấu thông tin"
  description: "Sử dụng GroupDocs.Redaction for Python via .NET để làm sạch các tệp của bạn bằng cách che giấu các nội dung hiển thị và ẩn mà không làm thay đổi hình thức."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Các tính năng tập trung vào quyền riêng tư"
  features:
    # feature loop
    - title: "Che hoặc thay thế văn bản"
      content: "Bảo vệ thông tin quan trọng bằng cách loại bỏ hoặc đổi thay các từ."

    # feature loop
    - title: "Che hình ảnh"
      content: "Chặn những hình ảnh nhạy cảm bằng các hình dạng đặc."

    # feature loop
    - title: "Xóa dữ liệu ẩn"
      content: "Xóa metadata có thể tiết lộ thông tin hệ thống hoặc người dùng."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Tìm và che giấu văn bản bằng Regex"
      content: |
        Ví dụ này cho thấy cách sử dụng các biểu thức chính quy để tìm và che giấu nội dung.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Đặt mẫu và màu lớp phủ
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Mở tệp để chỉnh sửa
          with gr.Redactor("source.docx") as redactor:

              # Áp dụng redaction
              result = redactor.apply(redaction)

              # Lưu bản sao đã updated của bạn
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
    title: "Bảo vệ nội dung WORD bằng Python"
    exclude: "WORD"
    description: "Sử dụng Python để che giấu hoặc xóa thông tin nhạy cảm trong các tệp WORD mà không làm ảnh hưởng đến cấu trúc hoặc cách bố trí."
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