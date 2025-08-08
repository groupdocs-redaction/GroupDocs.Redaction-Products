
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: vi
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Xóa văn bản riêng tư khỏi PPTX bằng Python"
head_description: "Giữ các tệp PPTX của bạn an toàn với GroupDocs.Redaction for Python via .NET và Python. Nhanh chóng tìm và loại bỏ nội dung nhạy cảm."

############################# Header ############################
title: "Chỉnh sửa hoặc xóa văn bản riêng tư trong các tệp PPTX với Python" 
description: "Sử dụng GroupDocs.Redaction for Python via .NET và Python để tìm và làm sạch dữ liệu nhạy cảm trong tài liệu PPTX của bạn. Giữ tài liệu cá nhân hoặc công việc của bạn được riêng tư."
subtitle: "Những gì bạn có thể làm với GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Gặp GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET cung cấp cho các nhà phát triển Python quyền kiểm soát hoàn toàn nội dung PPTX. Làm sạch văn bản, hình ảnh, ghi chú và siêu dữ liệu một cách dễ dàng.

############################# Steps ############################
steps:
    enable: true
    title: "Cách xóa văn bản trong các tài liệu Pptx"
    content: |
      Sử dụng GroupDocs.Redaction for Python via .NET trong môi trường Python via .NET của bạn để ẩn hoặc loại bỏ nội dung nhạy cảm nhanh chóng.
      
      1. Tạo một Redactor và tải tệp Pptx của bạn.
      2. Chọn các cài đặt xóa của bạn.
      3. Nhập văn bản để tìm kiếm và những gì để thay thế nó.
      4. Áp dụng xóa và lưu tệp đã cập nhật của bạn.
   
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

        # Cách xóa văn bản trong một tệp PPTX

        # Chọn cài đặt xóa của bạn
        # Chọn văn bản để tìm và những gì để thay thế nó
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Sử dụng trình tạo Redactor để tải tệp của bạn
        with gr.Redactor("input.pptx") as redactor:

            # Thực hiện quy trình xóa và lưu tệp PPTX đã cập nhật
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Các tính năng xóa thêm"
  description: "GroupDocs.Redaction for Python via .NET giúp bạn loại bỏ hoặc ẩn dữ liệu nhạy cảm trên nhiều định dạng khác nhau. Chia sẻ tài liệu một cách an toàn."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Tổng quan về các tính năng xóa"
  features:
    # feature loop
    - title: "Thay thế văn bản riêng tư"
      content: "Tìm kiếm và thay thế nhanh chóng các từ hoặc cụm từ cụ thể. Hoạt động với regex và bộ lọc thông minh."

    # feature loop
    - title: "Che đi hình ảnh riêng tư"
      content: "Overlay hoặc ẩn các khu vực cụ thể trong hình ảnh. Tùy chỉnh cài đặt như màu sắc và bố cục."

    # feature loop
    - title: "Xóa thông tin ẩn"
      content: "Làm sạch siêu dữ liệu như tên tác giả, thời gian và ghi chú."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Xóa theo mẫu bằng Regex"
      content: |
        Sử dụng biểu thức chính quy để tìm và xóa các mẫu như địa chỉ email, số điện thoại hoặc ID.
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

          # Mở tệp bạn muốn chỉnh sửa
          with gr.Redactor("source.pptx") as redactor:

              # Chạy quy trình xóa
              result = redactor.apply(redaction)

              # Lưu tệp đã làm sạch
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
    title: "Xóa nội dung trong PPTX bằng Python"
    exclude: "PPTX"
    description: "Với Python, bạn có thể loại bỏ văn bản nhạy cảm khỏi các tài liệu PPTX và giữ dữ liệu của bạn an toàn."
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