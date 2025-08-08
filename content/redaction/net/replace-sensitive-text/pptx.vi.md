
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: vi
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Xóa văn bản riêng tư trong PPTX bằng C#"
head_description: "Nhanh chóng ẩn nội dung riêng tư trong các bài thuyết trình PPTX của bạn với GroupDocs.Redaction for .NET và C#. Quá trình xóa nhanh chóng, thiết lập đơn giản."

############################# Header ############################
title: "Chỉnh sửa hoặc ẩn văn bản nhạy cảm trong các tài liệu PPTX với .NET" 
description: "Giữ cho các bài thuyết trình của bạn sạch sẽ và riêng tư. Sử dụng GroupDocs.Redaction for .NET và C# để loại bỏ bất kỳ điều gì bạn không muốn chia sẻ."
subtitle: "Những gì bạn có thể làm với GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET là gì?"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET cung cấp cho các nhà phát triển C# những gì họ cần để loại bỏ nội dung nhạy cảm khỏi các tệp PPTX. Nó xử lý văn bản, hình ảnh, bình luận và siêu dữ liệu.

############################# Steps ############################
steps:
    enable: true
    title: "Các bước để làm sạch các bài thuyết trình Pptx"
    content: |
      Sử dụng GroupDocs.Redaction for .NET trong ứng dụng .NET của bạn để loại bỏ hoặc che giấu nội dung nhạy cảm chỉ trong vài bước.
      
      1. Bắt đầu một Redactor mới và tải tệp Pptx của bạn.
      2. Chọn các quy tắc xóa bạn muốn áp dụng.
      3. Đặt văn bản cần tìm và văn bản thay thế.
      4. Chạy quá trình xóa và lưu tệp của bạn.
   
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
        // Xóa một bài thuyết trình PPTX

        // Mở tệp với Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Chọn các cài đặt xóa
            // Chọn văn bản cần tìm và thay thế
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Áp dụng các thay đổi và lưu tệp đã cập nhật
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Tính năng xóa mà bạn có thể sử dụng"
  description: "GroupDocs.Redaction for .NET giúp bạn tìm và ẩn văn bản nhạy cảm, hình ảnh và dữ liệu ẩn từ nhiều loại tệp khác nhau. Hoàn hảo cho việc chia sẻ tệp một cách an toàn."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Các tùy chọn xóa có sẵn"
  features:
    # feature loop
    - title: "Thay thế văn bản ẩn"
      content: "Tìm kiếm và thay thế các từ hoặc cụm từ riêng tư ở bất kỳ đâu trong tệp. Regex cũng được hỗ trợ."

    # feature loop
    - title: "Che hình ảnh"
      content: "Sử dụng các hình khối để ẩn hình ảnh hoặc khu vực bạn muốn che. Kiểm soát hình dạng, kích thước và màu sắc."

    # feature loop
    - title: "Xóa các chi tiết ẩn"
      content: "Làm sạch siêu dữ liệu như tên tác giả, ngày chỉnh sửa cuối cùng, hoặc bình luận để làm cho tệp của bạn sạch sẽ."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Xóa bằng các mẫu Regex"
      content: |
        Tìm và làm sạch dữ liệu như địa chỉ email hoặc ID bằng cách sử dụng regex. Tuyệt vời cho xóa lặp lại.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Mở tệp của bạn
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Viết một mẫu regex EMAIL và đặt văn bản thay thế
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Áp dụng các cài đặt xóa của bạn
              redactor.Apply(redaction);

              // Lưu phiên bản đã xóa
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
    title: "Làm sạch các tệp PPTX với .NET"
    exclude: "PPTX"
    description: "Làm cho tài liệu PPTX của bạn an toàn hơn để chia sẻ bằng cách ẩn văn bản riêng tư với .NET. Kết quả nhanh chóng và đáng tin cậy."
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