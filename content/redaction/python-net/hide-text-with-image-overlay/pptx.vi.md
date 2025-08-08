
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: vi
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Che giấu văn bản trong PPTX bằng cách sử dụng Python và lớp phủ"
head_description: "Che phủ nội dung nhạy cảm trong các tệp PPTX của bạn bằng cách sử dụng lớp phủ màu với GroupDocs.Redaction for Python via .NET. Bố cục của bạn vẫn giữ nguyên."

############################# Header ############################
title: "Bảo vệ văn bản trong PPTX bằng lớp phủ và Python" 
description: "Sử dụng GroupDocs.Redaction for Python via .NET và Python để che giấu thông tin riêng tư trong các bài thuyết trình PPTX bằng cách che đậy nó bằng các khối màu."
subtitle: "Những gì bạn có thể làm với GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Tìm hiểu thêm về GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET giúp các nhà phát triển Python làm sạch các bài thuyết trình PPTX bằng cách che giấu hoặc xóa văn bản, hình ảnh và thông tin ẩn.

############################# Steps ############################
steps:
    enable: true
    title: "Redact thông tin trong Pptx"
    content: |
      Sử dụng GroupDocs.Redaction for Python via .NET để bảo vệ các bài thuyết trình của bạn chỉ với vài bước đơn giản.
      
      1. Tạo một Redactor và tải tệp bạn muốn chỉnh sửa.
      2. Chọn các cài đặt redaction phù hợp với nhu cầu của bạn.
      3. Đặt mẫu văn bản và chọn màu cho lớp phủ.
      4. Áp dụng redaction và lưu sự thay đổi của bạn.
   
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

        # Sử dụng lớp phủ để che văn bản trong PPTX

        # Xác định các cài đặt redaction
        # Chọn văn bản và màu sắc
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Bắt đầu bằng cách tải tệp của bạn với Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Redact và lưu tệp
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Các cách đơn giản để che thông tin"
  description: "GroupDocs.Redaction for Python via .NET giúp bạn dễ dàng che giấu hoặc loại bỏ các phần nhạy cảm của tài liệu — hoàn hảo cho sử dụng pháp lý, cá nhân hoặc doanh nghiệp."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Những công cụ hữu ích cho sự riêng tư"
  features:
    # feature loop
    - title: "Tìm và thay thế văn bản"
      content: "Tìm kiếm từ ngữ hoặc số và che giấu hoặc thay đổi chúng."

    # feature loop
    - title: "Che một phần của hình ảnh"
      content: "Vẽ lớp phủ để che toàn bộ hình ảnh hoặc những chỗ đã chọn."

    # feature loop
    - title: "Xóa thông tin ẩn"
      content: "Xóa metadata như tên hoặc thời gian mà người dùng không thấy."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Sử dụng Regex để tìm văn bản"
      content: |
        Xem cách các biểu thức chính quy giúp bạn tìm và che giấu nội dung nhạy cảm.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Định nghĩa mẫu và màu lớp phủ
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Mở tệp PPTX của bạn
          with gr.Redactor("source.pptx") as redactor:

              # Chạy redaction
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
    title: "Che giấu văn bản trong PPTX bằng Python"
    exclude: "PPTX"
    description: "Sử dụng Python để thêm lớp phủ hoặc loại bỏ nội dung khỏi các bài thuyết trình PPTX của bạn để giữ thông tin riêng tư an toàn."
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