
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: vi
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Xóa văn bản riêng tư trong WORD bằng C#"
head_description: "Giữ cho các tệp WORD của bạn là riêng tư với GroupDocs.Redaction for .NET và C#. Cách nhanh chóng và hiệu quả để xóa văn bản."

############################# Header ############################
title: "Tìm và xóa văn bản nhạy cảm trong các tệp WORD bằng .NET" 
description: "Sử dụng C# và GroupDocs.Redaction for .NET để bảo vệ các tệp cá nhân hoặc công việc của bạn. Thông tin riêng tư của bạn vẫn được giữ ẩn."
subtitle: "Các tính năng chính của GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET là gì?"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET cung cấp cho người dùng C# các công cụ để làm sạch các tài liệu WORD. Xóa văn bản, hình ảnh, ghi chú và dữ liệu nền.

############################# Steps ############################
steps:
    enable: true
    title: "Cách xóa các tệp Word"
    content: |
      Với GroupDocs.Redaction for .NET, việc tìm kiếm và thay thế nội dung riêng tư trong ứng dụng .NET là rất dễ dàng.
      
      1. Tạo một Redactor và mở tệp Word của bạn.
      2. Chọn các cài đặt xóa của bạn.
      3. Cho biết nội dung cần tìm và văn bản thay thế.
      4. Bắt đầu xóa và lưu tệp của bạn.
   
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
        // Các bước để xóa nội dung trong một tài liệu WORD

        // Mở tệp với Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Điều chỉnh các cài đặt xóa của bạn
            // Chọn nội dung cần tìm và thay thế
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Chạy quá trình xóa và lưu tệp WORD mới của bạn
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nhiều công cụ xóa hơn"
  description: "GroupDocs.Redaction for .NET cung cấp cho bạn những cách mạnh mẽ để ẩn hoặc xóa thông tin riêng tư từ nhiều loại tệp. Tuyệt vời cho việc chia sẻ một cách an toàn."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Các công cụ và cài đặt xóa có sẵn"
  features:
    # feature loop
    - title: "Thay thế văn bản riêng tư"
      content: "Tìm kiếm và thay thế các bản sao chính xác với các tùy chọn văn bản thông minh, bao gồm hỗ trợ regex."

    # feature loop
    - title: "Ẩn hình ảnh riêng tư"
      content: "Che lại toàn bộ hình ảnh hoặc chỉ một phần của trang. Bạn có thể điều chỉnh màu sắc và kích thước lớp phủ."

    # feature loop
    - title: "Xóa siêu dữ liệu ẩn"
      content: "Xóa thông tin như tên tác giả, lịch sử chỉnh sửa và bình luận để bảo vệ danh tính của bạn."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Sử dụng Regex cho các xóa thông minh hơn"
      content: |
        Tìm và loại bỏ các mẫu dữ liệu như email hoặc ID bằng cách sử dụng các biểu thức chính quy.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Mở tệp bạn muốn làm sạch
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Đặt một mẫu regex EMAIL và chọn văn bản thay thế
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Chạy quá trình xóa
              redactor.Apply(redaction);

              // Lưu tệp đã xóa cuối cùng của bạn
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
    title: "Cách xóa WORD bằng .NET"
    exclude: "WORD"
    description: "Sử dụng .NET để làm sạch các tệp WORD. Giữ thông tin của bạn riêng tư và bảo mật khỏi việc rò rỉ."
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