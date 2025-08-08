
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: vi
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Xóa văn bản riêng tư khỏi DOCX bằng Python"
head_description: "Giữ an toàn cho các tệp DOCX của bạn bằng cách loại bỏ nội dung nhạy cảm với GroupDocs.Redaction for Python via .NET và Python. Quy trình xóa nhanh chóng."

############################# Header ############################
title: "Chỉnh sửa hoặc ẩn văn bản riêng tư trong các tệp DOCX với Python" 
description: "Kiểm soát nội dung DOCX của bạn bằng cách sử dụng GroupDocs.Redaction for Python via .NET và Python. Phù hợp cho việc sử dụng cá nhân hoặc doanh nghiệp."
subtitle: "Những gì bạn có thể làm với GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Gặp GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET cung cấp cho các nhà phát triển Python các công cụ để làm sạch nội dung trong các tệp DOCX. Xóa văn bản, hình ảnh, bình luận và siêu dữ liệu một cách dễ dàng.

############################# Steps ############################
steps:
    enable: true
    title: "Cách làm sạch văn bản trong các tệp Docx"
    content: |
      Sử dụng GroupDocs.Redaction for Python via .NET bên trong các ứng dụng Python via .NET của bạn để loại bỏ hoặc ẩn văn bản riêng tư. Quy trình xóa nhanh chóng và dễ dàng.
      
      1. Tạo một Redactor và mở tệp Docx của bạn.
      2. Thiết lập các quy tắc xóa bạn muốn.
      3. Chọn văn bản để tìm và những gì để thay thế nó.
      4. Chạy xóa và lưu tệp mới của bạn.
   
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

        # Cách xóa văn bản trong một tệp DOCX

        # Chọn cài đặt xóa của bạn
        # Nhập những gì để tìm và những gì để thay thế nó
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Mở tệp của bạn bằng cách sử dụng trình tạo Redactor
        with gr.Redactor("input.docx") as redactor:

            # Áp dụng thay đổi và lưu tệp DOCX được cập nhật
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Các công cụ xóa bổ sung"
  description: "GroupDocs.Redaction for Python via .NET cho phép bạn xóa hoặc che đậy văn bản nhạy cảm trên nhiều định dạng khác nhau. Chia sẻ các tệp sạch và an toàn với sự tự tin."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Công cụ xóa cho văn bản, hình ảnh và siêu dữ liệu"
  features:
    # feature loop
    - title: "Tìm và thay thế văn bản riêng tư"
      content: "Tìm kiếm các từ hoặc mẫu cụ thể và thay thế chúng. Tương thích với biểu thức chính quy và tùy chọn từ khóa."

    # feature loop
    - title: "Che đi hình ảnh nhạy cảm"
      content: "Đoverlay hoặc ẩn các khu vực hình ảnh. Thay đổi màu sắc, độ mờ và kích thước nếu cần."

    # feature loop
    - title: "Xóa siêu dữ liệu"
      content: "Xóa thông tin ẩn như tên tác giả, thời gian và ghi chú nội bộ để giữ cho các tệp của bạn riêng tư."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Sử dụng Regex để xóa các mẫu"
      content: |
        Tìm kiếm email, ID hoặc các mẫu khác bằng cách sử dụng biểu thức chính quy và thay thế chúng một cách dễ dàng.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Đặt một mẫu REGEX EMAIL và văn bản thay thế
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Mở tệp bạn muốn làm sạch
          with gr.Redactor("source.docx") as redactor:

              # Áp dụng cấu hình xóa của bạn
              result = redactor.apply(redaction)

              # Lưu tài liệu đã xóa
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
    title: "Xóa nội dung trong DOCX bằng Python"
    exclude: "DOCX"
    description: "Sử dụng Python để loại bỏ văn bản nhạy cảm khỏi các tệp DOCX. Giữ cho tài liệu cá nhân và công việc được bảo vệ."
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