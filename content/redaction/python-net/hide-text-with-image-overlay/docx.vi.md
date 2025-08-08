
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: vi
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Che giấu văn bản trong DOCX bằng lớp phủ của Python"
head_description: "Bảo vệ văn bản nhạy cảm trong các tệp DOCX bằng GroupDocs.Redaction for Python via .NET. Thêm các lớp phủ hình vuông đơn giản mà không làm thay đổi cách bố trí của bạn."

############################# Header ############################
title: "Che giấu nội dung trong DOCX bằng Python" 
description: "Sử dụng Python để che giấu nội dung riêng tư trong các tệp DOCX. Lý tưởng cho các tài liệu pháp lý, cá nhân hoặc doanh nghiệp."
subtitle: "Các tính năng chính của GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NET là gì?"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET giúp các nhà phát triển Python che giấu hoặc loại bỏ nội dung riêng tư trong các tệp DOCX. Bạn có thể chặn văn bản, hình ảnh và thậm chí metadata ẩn.

############################# Steps ############################
steps:
    enable: true
    title: "Giữ thông tin riêng tư bị che giấu trong Docx"
    content: |
      Với GroupDocs.Redaction for Python via .NET, các nhà phát triển Python via .NET có thể che giấu nội dung chỉ với vài dòng.
      
      1. Tạo một Redactor và mở tệp của bạn.
      2. Chọn cài đặt redaction của bạn.
      3. Nhập văn bản cần che giấu và chọn màu.
      4. Áp dụng và lưu phiên bản đã redacted.
   
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

        # Che giấu nội dung trong DOCX bằng cách sử dụng lớp phủ

        # Cấu hình tùy chọn redaction của bạn
        # Xác định văn bản và màu lớp phủ
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Thiết lập Redactor và tải tệp của bạn
        with gr.Redactor("input.docx") as redactor:

            # Redact và lưu tệp
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Các công cụ redaction bổ sung"
  description: "GroupDocs.Redaction for Python via .NET hỗ trợ nhiều loại tệp khác nhau để bạn có thể bảo vệ bất kỳ nội dung nào một cách dễ dàng."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Các tính năng redaction tích hợp"
  features:
    # feature loop
    - title: "Tìm và chỉnh sửa văn bản"
      content: "Tìm kiếm từ khóa và nhanh chóng che giấu hoặc thay thế chúng."

    # feature loop
    - title: "Che khu vực hình ảnh"
      content: "Chặn các khu vực nhạy cảm trên các trang quét hoặc hình ảnh."

    # feature loop
    - title: "Làm sạch metadata"
      content: "Xóa thông tin ẩn có thể làm lộ chi tiết."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Tìm văn bản với Regex và Redact"
      content: |
        Tìm hiểu cách sử dụng biểu thức chính quy để tìm và che giấu văn bản.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Thiết lập mẫu và màu sắc
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Mở tệp để thực hiện việc redaction
          with gr.Redactor("source.docx") as redactor:

              # Chạy quy trình redaction
              result = redactor.apply(redaction)

              # Lưu tài liệu sạch của bạn
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
    title: "Bảo mật các tệp DOCX với Python"
    exclude: "DOCX"
    description: "Che giấu hoặc xóa nội dung nhạy cảm trong các tài liệu DOCX bằng các công cụ đơn giản từ Python."
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