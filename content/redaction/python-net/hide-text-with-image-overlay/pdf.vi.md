
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: vi
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Che giấu văn bản nhạy cảm trong tệp PDF bằng cách sử dụng lớp phủ Python"
head_description: "Với GroupDocs.Redaction for Python via .NET, bạn có thể che giấu văn bản nhạy cảm trong các tệp PDF bằng cách thêm lớp phủ màu. Bảo vệ dữ liệu riêng tư mà không làm thay đổi hình thức của tệp."

############################# Header ############################
title: "Che giấu văn bản nhạy cảm trong PDF bằng Python" 
description: "Bảo mật tệp PDF của bạn bằng Python. Sử dụng lớp phủ để chặn thông tin pháp lý, cá nhân hoặc bí mật."
subtitle: "Các đặc điểm nổi bật của GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Về GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET cung cấp cho các nhà phát triển Python một cách dễ dàng để che giấu hoặc xóa nội dung trong các tệp PDF. Che giấu văn bản, hình ảnh hoặc metadata nhạy cảm trên nhiều định dạng.

############################# Steps ############################
steps:
    enable: true
    title: "Giữ thông tin nhạy cảm an toàn trong các tệp Pdf"
    content: |
      Sử dụng GroupDocs.Redaction for Python via .NET với ứng dụng Python via .NET của bạn để nhanh chóng che giấu nội dung riêng tư.
      
      1. Thiết lập một Redactor và tải tệp Pdf của bạn.
      2. Chọn cách thức hoạt động của việc redaction.
      3. Chọn văn bản cần che giấu và chọn màu cho lớp phủ.
      4. Áp dụng việc redaction và lưu tệp của bạn.
   
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

        # Che giấu văn bản nhạy cảm trong PDF bằng cách sử dụng lớp phủ màu

        # Thiết lập các tùy chọn redaction
        # Xác định nội dung cần che giấu và chọn màu
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Tải tệp bằng cách truyền đường dẫn của nó cho Redactor
        with gr.Redactor("input.pdf") as redactor:

            # Redact và lưu tệp PDF của bạn
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Che giấu hoặc loại bỏ thông tin từ tài liệu"
  description: "Với GroupDocs.Redaction for Python via .NET, bạn có thể che giấu văn bản, hình ảnh và dữ liệu khác trong nhiều định dạng. Bảo vệ những gì quan trọng trong khi giữ cho tài liệu của bạn dễ đọc và chia sẻ."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Các tính năng redaction linh hoạt"
  features:
    # feature loop
    - title: "Chỉnh sửa bất kỳ văn bản nào"
      content: "Tìm và thay thế văn bản nhạy cảm để giữ cho tài liệu của bạn an toàn."

    # feature loop
    - title: "Che hình ảnh"
      content: "Sử dụng lớp phủ để chặn toàn bộ hình ảnh hoặc các khu vực cụ thể."

    # feature loop
    - title: "Làm sạch metadata"
      content: "Loại bỏ dữ liệu ẩn để ngăn chặn rò rỉ thông tin không mong muốn."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Sử dụng Regex để tìm và che giấu văn bản"
      content: |
        Ví dụ này cho thấy cách tìm kiếm và che giấu văn bản bằng cách sử dụng mẫu regex.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Thiết lập mẫu văn bản và màu lớp phủ
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Tải tài liệu của bạn
          with gr.Redactor("source.pdf") as redactor:

              # Redact nội dung đã chọn
              result = redactor.apply(redaction)

              # Lưu tệp đã cập nhật
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
    title: "Bảo vệ các tệp PDF với các công cụ Python"
    exclude: "PDF"
    description: "Sử dụng Python để che giấu hoặc loại bỏ nội dung trong các tệp PDF. Một cách đáng tin cậy để giữ thông tin riêng tư an toàn."
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