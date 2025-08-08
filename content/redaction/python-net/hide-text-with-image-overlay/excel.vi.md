
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: vi
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Che giấu nội dung trong EXCEL bằng lớp phủ Python"
head_description: "Với GroupDocs.Redaction for Python via .NET, bạn có thể che giấu văn bản trong các tệp EXCEL bằng cách sử dụng lớp phủ màu đặc. Một cách đơn giản để bảo vệ nội dung riêng tư."

############################# Header ############################
title: "Che giấu văn bản bằng lớp phủ cho EXCEL trong Python" 
description: "Viết mã Python để che giấu văn bản và bảo mật thông tin trong các tệp EXCEL của bạn. Giữ cho tài liệu của bạn an toàn và sạch sẽ."
subtitle: "Những gì bạn nhận được với GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Tại sao sử dụng GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET được xây dựng cho các nhà phát triển Python cần che giấu hoặc xóa nội dung trong các tệp EXCEL. Thao tác dễ dàng với văn bản, hình ảnh và metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Che giấu dữ liệu nhạy cảm trong Excel"
    content: |
      GroupDocs.Redaction for Python via .NET giúp các nhà phát triển Python via .NET dễ dàng chuẩn bị tài liệu trước khi chia sẻ.
      
      1. Tạo một Redactor và mở tệp Excel của bạn.
      2. Chọn cài đặt redaction phù hợp với nhiệm vụ của bạn.
      3. Nhập văn bản hoặc cụm từ cần che và chọn màu.
      4. Áp dụng redaction và lưu tệp.
   
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

        # Sử dụng lớp phủ để che văn bản trong EXCEL

        # Chọn cài đặt redaction của bạn
        # Chọn những gì cần che và màu sử dụng
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Bắt đầu bằng cách tải tệp của bạn với Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Áp dụng thay đổi và lưu tệp
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Các công cụ hữu ích để redact dữ liệu"
  description: "GroupDocs.Redaction for Python via .NET cho phép bạn che giấu hoặc loại bỏ dữ liệu trong tài liệu trong khi vẫn giữ rõ ràng cấu trúc và nội dung."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Được xây dựng để bảo vệ các tệp của bạn"
  features:
    # feature loop
    - title: "Che hoặc thay đổi văn bản"
      content: "Tìm và thay thế bất kỳ phần nào của văn bản cần được che giấu."

    # feature loop
    - title: "Che hình ảnh và hình ảnh trực quan"
      content: "Thêm lớp phủ để loại bỏ các phần nhạy cảm của hình ảnh hoặc biểu đồ."

    # feature loop
    - title: "Làm sạch metadata ẩn"
      content: "Xóa thông tin nền như tên tác giả hoặc ngày giờ."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redact bằng cách sử dụng Regex"
      content: |
        Tìm hiểu cách sử dụng các mẫu regex để tìm và che giấu nội dung.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Thêm mẫu regex và cài đặt màu sắc
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Mở tệp bạn muốn dọn dẹp
          with gr.Redactor("source.xslx") as redactor:

              # Áp dụng việc redaction
              result = redactor.apply(redaction)

              # Lưu phiên bản đã redacted
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
    title: "Bảo vệ EXCEL bằng redactions Python"
    exclude: "EXCEL"
    description: "Che giấu nội dung trong EXCEL bằng cách sử dụng lớp phủ hình vuông hoặc loại bỏ hoàn toàn với các tính năng từ Python."
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