
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: vi
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Xóa văn bản riêng tư khỏi EXCEL bằng Python"
head_description: "Nhanh chóng làm sạch thông tin nhạy cảm từ các tệp EXCEL của bạn với GroupDocs.Redaction for Python via .NET và Python."

############################# Header ############################
title: "Tìm và xóa văn bản riêng tư trong các tệp EXCEL với Python" 
description: "Sử dụng Python và GroupDocs.Redaction for Python via .NET để xóa các chi tiết nhạy cảm từ các tài liệu EXCEL của bạn. Dù là cho công việc hay sử dụng cá nhân, nội dung của bạn vẫn được an toàn."
subtitle: "Những gì bạn có thể làm với GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Gặp GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET cung cấp cho các nhà phát triển Python mọi thứ họ cần để làm sạch các tệp EXCEL. Xóa văn bản, hình ảnh, bình luận và siêu dữ liệu với mã đơn giản.

############################# Steps ############################
steps:
    enable: true
    title: "Cách xóa văn bản trong các tệp Excel"
    content: |
      Với GroupDocs.Redaction for Python via .NET trong các dự án Python via .NET của bạn, bạn có thể dễ dàng loại bỏ hoặc ẩn nội dung cá nhân.
      
      1. Tạo một Redactor và mở tệp Excel của bạn.
      2. Chọn cài đặt xóa của bạn.
      3. Nhập văn bản bạn muốn tìm kiếm và những gì để thay thế nó.
      4. Chạy xóa và lưu tệp cập nhật của bạn.
   
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

        # Cách xóa văn bản trong một tệp EXCEL

        # Thiết lập tùy chọn xóa của bạn
        # Chọn văn bản để tìm và những gì để thay thế nó
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Mở tệp của bạn bằng trình tạo Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Áp dụng xóa và lưu tệp EXCEL mới của bạn
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Các tính năng xóa thêm"
  description: "GroupDocs.Redaction for Python via .NET giúp bạn làm sạch nội dung nhạy cảm trên nhiều định dạng tệp khác nhau. Giữ cho tài liệu của bạn an toàn và có thể chia sẻ."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Công cụ xóa đang hoạt động"
  features:
    # feature loop
    - title: "Thay thế văn bản riêng tư"
      content: "Tìm kiếm và thay thế bất kỳ văn bản nào phù hợp. Hoạt động với tìm kiếm thông minh và mẫu regex."

    # feature loop
    - title: "Che đi nội dung hình ảnh"
      content: "Ẩn các phần của hình ảnh bằng lớp phủ. Tùy chỉnh cách nó hiển thị trên trang."

    # feature loop
    - title: "Xóa thông tin ẩn"
      content: "Xóa siêu dữ liệu như thông tin tác giả, ghi chú và thời gian."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Xóa các mẫu bằng Regex"
      content: |
        Sử dụng regex để tìm và làm sạch các mẫu văn bản như email, số điện thoại hoặc chi tiết tài khoản.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Định nghĩa mẫu REGEX EMAIL và văn bản thay thế
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Mở tệp mà bạn cần làm sạch
          with gr.Redactor("source.xslx") as redactor:

              # Áp dụng quy tắc xóa
              result = redactor.apply(redaction)

              # Lưu phiên bản cuối cùng của tệp
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
    title: "Xóa nội dung trong EXCEL bằng Python"
    exclude: "EXCEL"
    description: "Sử dụng Python để xóa văn bản riêng tư khỏi các tệp EXCEL. Đảm bảo rằng nội dung của bạn được an toàn để lưu trữ hoặc chia sẻ."
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