
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: vi
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Xóa văn bản nhạy cảm trong PDF với Python"
head_description: "Giữ thông tin cá nhân an toàn trong tài liệu PDF của bạn với GroupDocs.Redaction for Python via .NET. Nhanh chóng tìm và ẩn thông tin nhạy cảm."

############################# Header ############################
title: "Xóa văn bản nhạy cảm khỏi tệp PDF sử dụng Python" 
description: "Sử dụng Python và GroupDocs.Redaction for Python via .NET để tìm kiếm và loại bỏ dữ liệu riêng tư, pháp lý hoặc cá nhân trong các tệp PDF của bạn."
subtitle: "Những gì bạn có thể làm với GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NET là gì?"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET cung cấp cho các nhà phát triển Python tất cả các công cụ họ cần để xóa nội dung trong các tệp PDF—văn bản, hình ảnh, bình luận và nhiều hơn nữa.

############################# Steps ############################
steps:
    enable: true
    title: "Cách xóa nội dung trong các tệp Pdf"
    content: |
      Giữ nội dung của bạn an toàn trong bất kỳ ứng dụng Python via .NET nào bằng cách sử dụng GroupDocs.Redaction for Python via .NET.
      
      1. Tạo một Redactor và tải tệp Pdf của bạn.
      2. Chọn các cài đặt xóa mà bạn muốn.
      3. Nhập văn bản để tìm kiếm và những gì để thay thế nó.
      4. Áp dụng xóa và lưu tệp của bạn.
   
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

        # 

        # 
        # 
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # 
        with gr.Redactor("input.pdf") as redactor:

            # 
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Các tính năng xóa thêm"
  description: "GroupDocs.Redaction for Python via .NET cho phép bạn ẩn nội dung cá nhân trong nhiều loại tệp. Giữ dữ liệu của bạn an toàn và sẵn sàng chia sẻ."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Công cụ xóa cho văn bản, hình ảnh và siêu dữ liệu"
  features:
    # feature loop
    - title: "Tìm và thay thế văn bản riêng tư"
      content: "Tìm kiếm và thay thế văn bản phù hợp. Hoạt động với regex và tìm kiếm từ khóa."

    # feature loop
    - title: "Che đi hình ảnh riêng tư"
      content: "Bịt toàn bộ hình ảnh hoặc các phần của chúng bằng cách sử dụng lớp phủ. Tùy chỉnh cài đặt giao diện."

    # feature loop
    - title: "Xóa siêu dữ liệu ẩn"
      content: "Loại bỏ thông tin ẩn như tên tác giả, thời gian và ghi chú sửa đổi."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Xóa với Regex"
      content: |
        Sử dụng regex để tìm và loại bỏ các mẫu như email, ID hoặc số.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Đặt một mẫu regex và văn bản thay thế
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Mở tệp bạn muốn làm sạch
          with gr.Redactor("source.pdf") as redactor:

              # Áp dụng quy tắc xóa của bạn
              result = redactor.apply(redaction)

              # Lưu tệp đã xóa của bạn
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "Xóa nội dung trong PDF bằng Python"
    exclude: "PDF"
    description: "Giữ dữ liệu cá nhân hoặc doanh nghiệp an toàn bằng cách xóa văn bản trong các tệp PDF với các công cụ Python."
    items: 
        # format loop 1
        - name: "Chỉnh sửa PDF"
          format: "PDF"
          link: "/redaction/python-net/replace-sensitive-text//pdf/"
          description: "Định dạng Tài liệu Di động Adobe"

        # format loop 2
        - name: "Chỉnh sửa Word"
          format: "WORD"
          link: "/redaction/python-net/replace-sensitive-text//word/"
          description: "Tài liệu MS Word và Open Office"
          
        # format loop 3
        - name: "Chỉnh sửa Excel"
          format: "EXCEL"
          link: "/redaction/python-net/replace-sensitive-text//excel/"
          description: "Bảng tính MS Excel và Open Office"

        # format loop 4
        - name: "Chỉnh sửa PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/replace-sensitive-text//powerpoint/"
          description: "Trình bày MS PowerPoint và Open Office"

        # format loop 5
        - name: "Chỉnh sửa DOCX"
          format: "DOCX"
          link: "/redaction/python-net/replace-sensitive-text//docx/"
          description: "Tài liệu Open XML của Microsoft Word"
          
        # format loop 6
        - name: "Chỉnh sửa XLSX"
          format: "XLSX"
          link: "/redaction/python-net/replace-sensitive-text//xlsx/"
          description: "Bảng tính Open XML của Microsoft Excel"
          
        # format loop 7
        - name: "Chỉnh sửa PPTX"
          format: "PPTX"
          link: "/redaction/python-net/replace-sensitive-text//pptx/"
          description: "Bài thuyết trình Open XML của PowerPoint"


---