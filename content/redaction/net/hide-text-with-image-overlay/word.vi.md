
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: vi
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Sử dụng lớp phủ để ẩn văn bản trong WORD qua C#"
head_description: "GroupDocs.Redaction for .NET giúp che các văn bản nhạy cảm trong WORD với các khối màu. Giữ nguyên tài liệu trong khi ẩn đi những gì quan trọng."

############################# Header ############################
title: "Xóa văn bản bằng lớp phủ trong các tệp WORD với .NET" 
description: "Bảo vệ thông tin quan trọng trong các tệp WORD bằng những lớp phủ vuông được lập trình bằng C#. Lý tưởng cho an ninh và tuân thủ."
subtitle: "Xem những gì GroupDocs.Redaction for .NET có thể làm" 

############################# About ############################
about:
    enable: true
    title: "Gặp gỡ GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       Các nhà phát triển làm việc với C# có thể sử dụng GroupDocs.Redaction for .NET để ẩn hoặc xóa các phần của tài liệu WORD. Che đậy tên, số hoặc dữ liệu khác chỉ với vài dòng mã.

############################# Steps ############################
steps:
    enable: true
    title: "Xóa dữ liệu riêng tư trong các tệp Word"
    content: |
      GroupDocs.Redaction for .NET giúp các nhà phát triển .NET nhanh chóng loại bỏ nội dung nhạy cảm. Làm theo những bước này để bảo vệ các tệp của bạn.
      
      1. Khởi tạo một Redactor với đường dẫn đến tệp Word của bạn.
      2. Đặt các quy tắc cho việc xóa nội dung.
      3. Chọn mẫu văn bản và màu sắc để che khuất.
      4. Áp dụng quy trình xóa và lưu tệp đã xóa.
   
    code:
      platform: "net"
      copy_title: "Sao chép"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Mẫu chỉnh sửa"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "nhấp để sao chép"
        copy_done: "đã sao chép"
      links:
        #  loop
        - title: "Nhiều ví dụ hơn"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "Tài liệu"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // Xóa văn bản trong WORD bằng các lớp phủ hình ảnh

        // Tải tệp của bạn với Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Xác định những gì cần được xóa
            // Thêm văn bản khớp và màu sắc cho lớp phủ
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Chạy quy trình xóa và lưu tệp cuối cùng
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Công cụ xóa phụ"
  description: "Với GroupDocs.Redaction for .NET, bạn có thể giữ cho các tài liệu sạch sẽ bằng cách loại bỏ thông tin công khai và ẩn trong khi giữ nguyên bố cục."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Kết quả sạch và an toàn"
  features:
    # feature loop
    - title: "Thay thế văn bản bị lộ"
      content: "Ẩn các từ hoặc cụm từ có thể rò rĩ thông tin quan trọng."

    # feature loop
    - title: "Che khuất hình ảnh"
      content: "Đánh dấu các hình ảnh nhạy cảm bằng các khối chắc chắn."

    # feature loop
    - title: "Xóa thông tin ẩn"
      content: "Xóa dữ liệu nền để giữ các tệp riêng tư."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ẩn văn bản khớp với regex"
      content: |
        Ví dụ này cho thấy cách sử dụng biểu thức chính quy để tìm và che khuất nội dung nhạy cảm.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Mở tài liệu để xóa
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Chọn mẫu và màu sắc
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Chạy các quy tắc xóa
              redactor.Apply(redaction);

              // Lưu và xem xét bản sao đã xóa
              var save_opt = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_opt);
          }
          ```
        platform: "net"
        copy_title: "Sao chép"
        install:
          command: "dotnet add package GroupDocs.Redaction"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "Tài liệu"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "Sẵn sàng bắt đầu chưa?"
  description: "Thử nghiệm tính năng của GroupDocs.Redaction miễn phí hoặc yêu cầu cấp phép"
  items:
    #  loop
    - title: "Tải xuống Nuget"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "Cấp phép"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Bảo vệ các tệp WORD của bạn bằng .NET"
    exclude: "WORD"
    description: "Với .NET, bạn có thể ẩn văn bản hoặc xóa siêu dữ liệu trong các định dạng WORD mà không phá vỡ bố cục hoặc định dạng."
    items: 
        # format loop 1
        - name: "Chỉnh sửa PDF"
          format: "PDF"
          link: "/redaction/net/hide-text-with-image-overlay//pdf/"
          description: "Định dạng Tài liệu Di động Adobe"

        # format loop 2
        - name: "Chỉnh sửa Word"
          format: "WORD"
          link: "/redaction/net/hide-text-with-image-overlay//word/"
          description: "Tài liệu MS Word và Open Office"
          
        # format loop 3
        - name: "Chỉnh sửa Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-text-with-image-overlay//excel/"
          description: "Bảng tính MS Excel và Open Office"

        # format loop 4
        - name: "Chỉnh sửa PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-text-with-image-overlay//powerpoint/"
          description: "Trình bày MS PowerPoint và Open Office"

        # format loop 5
        - name: "Chỉnh sửa DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-text-with-image-overlay//docx/"
          description: "Tài liệu Open XML của Microsoft Word"
          
        # format loop 6
        - name: "Chỉnh sửa XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-text-with-image-overlay//xlsx/"
          description: "Bảng tính Open XML của Microsoft Excel"
          
        # format loop 7
        - name: "Chỉnh sửa PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-text-with-image-overlay//pptx/"
          description: "Bài thuyết trình Open XML của PowerPoint"


---