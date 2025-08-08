
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: vi
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Xóa văn bản nhạy cảm trong PDF với C#"
head_description: "Bảo vệ thông tin cá nhân trong các tập tin PDF của bạn bằng cách sử dụng GroupDocs.Redaction for .NET. Tìm kiếm và xóa dữ liệu nhạy cảm một cách hiệu quả."

############################# Header ############################
title: "Xóa văn bản nhạy cảm khỏi tài liệu PDF bằng .NET" 
description: "Sử dụng C# và GroupDocs.Redaction for .NET để kiểm soát hoàn toàn nội dung trong các tập tin PDF của bạn. Xóa dữ liệu cá nhân, hợp pháp hoặc thông tin bí mật."
subtitle: "Những gì bạn có thể làm với GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET là gì?"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET cung cấp cho các nhà phát triển C# mọi thứ họ cần để xóa nội dung PDF. Làm sạch văn bản, hình ảnh, chú thích, bình luận và siêu dữ liệu trong các loại tệp phổ biến.

############################# Steps ############################
steps:
    enable: true
    title: "Cách xóa nội dung trong các tệp Pdf"
    content: |
      Bảo vệ tài liệu của bạn trong bất kỳ ứng dụng .NET nào bằng cách sử dụng GroupDocs.Redaction for .NET. Xóa văn bản nhạy cảm một cách nhanh chóng và chính xác.
      
      1. Khởi tạo một Redactor và tải tệp Pdf của bạn.
      2. Thiết lập các tùy chọn xóa bạn cần.
      3. Xác định văn bản cần tìm và văn bản thay thế.
      4. Chạy quá trình xóa và lưu tệp lại.
   
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
        // Cách xóa văn bản trong một tệp PDF

        // Tải tệp của bạn bằng cách sử dụng hàm khởi tạo Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Thiết lập tùy chọn xóa của bạn
            // Chọn văn bản cần tìm và văn bản thay thế
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Áp dụng các xóa và lưu tệp PDF mới
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nhiều cách hơn để xóa tài liệu"
  description: "GroupDocs.Redaction for .NET giúp loại bỏ hoặc ẩn nội dung nhạy cảm trong nhiều định dạng tệp khác nhau. Giữ cho tài liệu sạch sẽ và an toàn khi chia sẻ."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Công cụ và tùy chọn xóa"
  features:
    # feature loop
    - title: "Thay thế văn bản bí mật"
      content: "Tìm kiếm và thay thế văn bản trùng khớp bất kỳ nơi nào trong tài liệu của bạn. Hỗ trợ biểu thức chính quy và tùy chọn tìm kiếm thông minh."

    # feature loop
    - title: "Ẩn hình ảnh nhạy cảm"
      content: "Che hình ảnh hoặc những khu vực cụ thể bằng lớp phủ. Điều chỉnh cài đặt trang, màu sắc và hơn thế nữa."

    # feature loop
    - title: "Làm sạch siêu dữ liệu ẩn"
      content: "Xóa dữ liệu ẩn như tác giả, dấu thời gian hoặc bình luận để bảo vệ quyền riêng tư."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Xóa văn bản với Regex"
      content: |
        Sử dụng biểu thức chính quy để tìm kiếm và xóa các mẫu văn bản nhạy cảm như email hoặc ID.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Mở tài liệu bạn muốn làm sạch
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Định nghĩa một mẫu regex EMAIL và văn bản thay thế
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Áp dụng quy tắc xóa
              redactor.Apply(redaction);

              // Lưu tệp đã xóa cuối cùng
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "Xóa nội dung trong PDF bằng .NET"
    exclude: "PDF"
    description: "Bảo vệ dữ liệu cá nhân và chính thức bằng cách xóa văn bản trong các tệp PDF với công cụ .NET. Giữ cho tài liệu được bảo mật và riêng tư."
    items: 
        # format loop 1
        - name: "Chỉnh sửa PDF"
          format: "PDF"
          link: "/redaction/net/replace-sensitive-text//pdf/"
          description: "Định dạng Tài liệu Di động Adobe"

        # format loop 2
        - name: "Chỉnh sửa Word"
          format: "WORD"
          link: "/redaction/net/replace-sensitive-text//word/"
          description: "Tài liệu MS Word và Open Office"
          
        # format loop 3
        - name: "Chỉnh sửa Excel"
          format: "EXCEL"
          link: "/redaction/net/replace-sensitive-text//excel/"
          description: "Bảng tính MS Excel và Open Office"

        # format loop 4
        - name: "Chỉnh sửa PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/replace-sensitive-text//powerpoint/"
          description: "Trình bày MS PowerPoint và Open Office"

        # format loop 5
        - name: "Chỉnh sửa DOCX"
          format: "DOCX"
          link: "/redaction/net/replace-sensitive-text//docx/"
          description: "Tài liệu Open XML của Microsoft Word"
          
        # format loop 6
        - name: "Chỉnh sửa XLSX"
          format: "XLSX"
          link: "/redaction/net/replace-sensitive-text//xlsx/"
          description: "Bảng tính Open XML của Microsoft Excel"
          
        # format loop 7
        - name: "Chỉnh sửa PPTX"
          format: "PPTX"
          link: "/redaction/net/replace-sensitive-text//pptx/"
          description: "Bài thuyết trình Open XML của PowerPoint"


---