
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: vi
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Xóa văn bản riêng tư khỏi XLSX bằng Python"
head_description: "Bảo vệ các tệp XLSX của bạn bằng cách ẩn hoặc loại bỏ dữ liệu nhạy cảm với GroupDocs.Redaction for Python via .NET và Python."

############################# Header ############################
title: "Ẩn hoặc xóa văn bản riêng tư trong các tệp XLSX sử dụng Python" 
description: "Với GroupDocs.Redaction for Python via .NET và Python, bạn có thể loại bỏ văn bản riêng tư khỏi các tài liệu XLSX—nhanh chóng và đáng tin cậy."
subtitle: "Những gì bạn có thể làm với GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Gặp GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET cung cấp cho các nhà phát triển Python mọi thứ họ cần để xóa hoặc ẩn dữ liệu riêng tư trong các tệp XLSX—văn bản, hình ảnh, ghi chú và nhiều thứ khác.

############################# Steps ############################
steps:
    enable: true
    title: "Cách xóa nội dung trong các tệp Xlsx"
    content: |
      Sử dụng GroupDocs.Redaction for Python via .NET trong ứng dụng Python via .NET của bạn để xóa hoặc ẩn nội dung nhạy cảm một cách nhanh chóng.
      
      1. Bắt đầu một Redactor và tải tệp Xlsx.
      2. Chọn các cài đặt xóa mà bạn cần.
      3. Đặt văn bản tìm kiếm và những gì sẽ thay thế nó.
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

        # Cách xóa văn bản trong một tệp XLSX

        # Chọn sở thích xóa của bạn
        # Đặt giá trị tìm kiếm và thay thế
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Sử dụng trình tạo Redactor để tải tệp của bạn
        with gr.Redactor("input.xslx") as redactor:

            # Áp dụng thay đổi và lưu tệp XLSX được cập nhật
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Các tính năng xóa thêm"
  description: "GroupDocs.Redaction for Python via .NET giúp bạn ẩn hoặc xóa thông tin cá nhân trên nhiều định dạng tệp khác nhau. Chia sẻ tài liệu an toàn và có thể chia sẻ."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Các công cụ xóa đang hoạt động"
  features:
    # feature loop
    - title: "Thay thế văn bản riêng tư"
      content: "Tìm và thay thế bất kỳ văn bản nào phù hợp. Hoạt động với tìm kiếm thông minh và mẫu regex."

    # feature loop
    - title: "Che đi nội dung hình ảnh"
      content: "Ẩn các phần của hình ảnh bằng lớp phủ. Tùy chỉnh hình ảnh trên trang."

    # feature loop
    - title: "Xóa các chi tiết ẩn"
      content: "Xóa siêu dữ liệu như thông tin tác giả, ghi chú và thời gian."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Xóa bằng cách sử dụng các mẫu Regex"
      content: |
        Tìm các mẫu văn bản như số điện thoại, ID hoặc email với regex và loại bỏ chúng một cách nhanh chóng.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Đặt mẫu REGEX EMAIL và văn bản thay thế
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Mở tài liệu bạn muốn làm sạch
          with gr.Redactor("source.xslx") as redactor:

              # Áp dụng quy tắc xóa
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
    title: "Xóa nội dung trong XLSX bằng Python"
    exclude: "XLSX"
    description: "Giữ dữ liệu nhạy cảm riêng tư bằng cách loại bỏ nó khỏi các tệp XLSX bằng cách sử dụng các công cụ Python."
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