
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: vi
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Che giấu văn bản trong XLSX bằng Python và lớp phủ"
head_description: "GroupDocs.Redaction for Python via .NET giúp bạn che giấu văn bản trong các tệp XLSX bằng cách thêm lớp phủ màu. Giữ dữ liệu của bạn riêng tư mà không làm thay đổi bố cục của tệp."

############################# Header ############################
title: "Che giấu văn bản trong các tệp XLSX bằng lớp phủ Python" 
description: "Bảo vệ văn bản nhạy cảm trong các tệp XLSX của bạn bằng GroupDocs.Redaction for Python via .NET và Python bằng cách thêm lớp phủ đơn giản."
subtitle: "Những gì bạn nhận được với GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Những gì GroupDocs.Redaction for Python via .NET có thể làm"
    link: "/redaction/python-net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET cung cấp cho các nhà phát triển Python các công cụ để che giấu hoặc xóa văn bản, hình ảnh và nhiều hơn nữa trong các tệp XLSX.

############################# Steps ############################
steps:
    enable: true
    title: "Bảo vệ dữ liệu trong các tệp Xlsx"
    content: |
      GroupDocs.Redaction for Python via .NET cho phép các nhà phát triển Python via .NET che giấu thông tin riêng tư chỉ với vài dòng mã.
      
      1. Bắt đầu bằng cách tạo một Redactor và tải tệp Xlsx của bạn.
      2. Đặt các tùy chọn redaction phù hợp với trường hợp sử dụng của bạn.
      3. Thêm mẫu văn bản bạn muốn che giấu và chọn màu.
      4. Chạy redaction và lưu tệp của bạn.
   
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

        # Che giấu nội dung riêng tư trong XLSX bằng lớp phủ

        # Đặt sở thích redaction
        # Chọn văn bản để che và màu lớp phủ
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Sử dụng Redactor để tải tệp của bạn
        with gr.Redactor("input.xslx") as redactor:

            # Redact và lưu tệp
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Các công cụ redaction hữu ích"
  description: "GroupDocs.Redaction for Python via .NET cho phép bạn che giấu hoặc loại bỏ nội dung từ nhiều loại tệp. Giữ thông tin cá nhân hoặc doanh nghiệp được bảo vệ."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Các tùy chọn redaction dễ sử dụng"
  features:
    # feature loop
    - title: "Tìm và chỉnh sửa văn bản"
      content: "Tìm kiếm văn bản cụ thể và thay thế hoặc che giấu nó."

    # feature loop
    - title: "Che nội dung hình ảnh"
      content: "Thêm lớp phủ để chặn các khu vực nhạy cảm trong hình ảnh."

    # feature loop
    - title: "Xóa metadata"
      content: "Làm sạch thông tin nền trước khi chia sẻ các tệp của bạn."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Che giấu văn bản bằng mẫu regex"
      content: |
        Ví dụ này cho thấy cách tìm kiếm và che giấu nội dung bằng cách sử dụng các biểu thức chính quy.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Cài đặt mẫu văn bản và màu lớp phủ
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Mở tệp bạn muốn chỉnh sửa
          with gr.Redactor("source.xslx") as redactor:

              # Áp dụng quy tắc redaction
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
    title: "Che giấu dữ liệu trong XLSX bằng Python"
    exclude: "XLSX"
    description: "Sử dụng các công cụ Python để nhanh chóng che giấu hoặc loại bỏ các phần nhạy cảm trong các tệp XLSX của bạn."
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