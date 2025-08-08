
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: vi
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Xóa văn bản riêng tư khỏi POWERPOINT bằng Python"
head_description: "Nhanh chóng bảo vệ dữ liệu nhạy cảm trong các tệp POWERPOINT của bạn sử dụng GroupDocs.Redaction for Python via .NET và Python."

############################# Header ############################
title: "Tìm và ẩn văn bản nhạy cảm trong các tệp POWERPOINT với Python" 
description: "Sử dụng GroupDocs.Redaction for Python via .NET và Python để xóa hoặc ẩn nội dung riêng tư trong các tệp POWERPOINT của bạn. Giữ mọi thứ bí mật, cho dù là cá nhân hay liên quan đến công việc."
subtitle: "Những gì bạn có thể làm với GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Gặp GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET cung cấp cho các nhà phát triển Python các công cụ để làm sạch tài liệu POWERPOINT từ trong ra ngoài. Xóa nội dung, hình ảnh, ghi chú và siêu dữ liệu một cách dễ dàng.

############################# Steps ############################
steps:
    enable: true
    title: "Cách làm sạch văn bản trong các tệp Powerpoint"
    content: |
      Sử dụng GroupDocs.Redaction for Python via .NET trong ứng dụng Python via .NET của bạn để loại bỏ hoặc thay thế dữ liệu nhạy cảm một cách nhanh chóng.
      
      1. Bắt đầu một Redactor và mở tệp Powerpoint của bạn.
      2. Chọn các tùy chọn xóa mà bạn cần.
      3. Đặt văn bản bạn muốn tìm kiếm và những gì để thay thế nó.
      4. Chạy quy trình xóa và lưu tệp cuối cùng.
   
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

        # Cách xóa văn bản trong một tệp POWERPOINT

        # Chọn cài đặt xóa mà bạn cần
        # Nhập văn bản để tìm và những gì để thay thế nó
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Tải tệp của bạn bằng cách sử dụng trình tạo Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Chạy quy trình xóa và lưu tệp POWERPOINT cuối cùng
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nhiều công cụ để loại bỏ dữ liệu riêng tư"
  description: "GroupDocs.Redaction for Python via .NET cho phép bạn làm sạch nội dung riêng tư trên nhiều định dạng. Hoàn hảo để chia sẻ hoặc lưu trữ tệp một cách an toàn."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Tùy chọn và công cụ xóa"
  features:
    # feature loop
    - title: "Tìm và thay thế văn bản"
      content: "Nhanh chóng thay thế các từ hoặc số nhạy cảm. Hoạt động với regex và tìm kiếm từ khóa."

    # feature loop
    - title: "Che khuất các phần của hình ảnh"
      content: "Che đi các khu vực cụ thể bằng các hình dạng hoặc lớp phủ. Điều chỉnh hình ảnh theo nhu cầu của bạn."

    # feature loop
    - title: "Xóa thông tin ẩn"
      content: "Xóa siêu dữ liệu như ai đã tạo tệp, ghi nhận hoặc lịch sử sửa đổi."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Xóa theo mẫu bằng Regex"
      content: |
        Sử dụng biểu thức chính quy để tìm và xóa các mẫu như email, thông tin liên hệ hoặc các chi tiết riêng tư khác.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Đặt một mẫu REGEX EMAIL và giá trị thay thế
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Mở bài thuyết trình cần làm sạch
          with gr.Redactor("source.pptx") as redactor:

              # Áp dụng các bước xóa
              result = redactor.apply(redaction)

              # Lưu tệp đã xóa cuối cùng của bạn
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
    title: "Xóa nội dung trong POWERPOINT bằng Python"
    exclude: "POWERPOINT"
    description: "Với Python, bạn có thể làm sạch các tệp POWERPOINT bằng cách loại bỏ hoặc ẩn văn bản riêng tư. Giữ mọi thứ an toàn."
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