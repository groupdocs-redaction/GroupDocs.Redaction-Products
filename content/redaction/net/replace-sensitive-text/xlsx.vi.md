
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: vi
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Xóa văn bản riêng tư trong XLSX bằng C#"
head_description: "Nhanh chóng làm sạch nội dung riêng tư trong các tệp XLSX của bạn với GroupDocs.Redaction for .NET và C#. Xóa văn bản nhanh chóng và hiệu quả."

############################# Header ############################
title: "Chỉnh sửa hoặc ẩn văn bản nhạy cảm trong các tài liệu XLSX với .NET" 
description: "Với GroupDocs.Redaction for .NET và C#, bạn có thể xóa thông tin cá nhân hoặc công việc từ các tệp XLSX của bạn và giữ cho chúng an toàn khi chia sẻ."
subtitle: "Những gì bạn có thể làm với GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET là gì?"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET cho phép các nhà phát triển C# tìm kiếm và xóa thông tin nhạy cảm từ các tệp XLSX. Nó hoạt động với văn bản, hình ảnh, ghi chú và dữ liệu tệp.

############################# Steps ############################
steps:
    enable: true
    title: "Cách xóa văn bản trong các tệp Xlsx"
    content: |
      Sử dụng GroupDocs.Redaction for .NET trong dự án .NET của bạn để ẩn hoặc xóa thông tin nhạy cảm chỉ trong vài bước.
      
      1. Tạo một Redactor và tải tệp Xlsx.
      2. Chọn các cài đặt xóa phù hợp với nhu cầu của bạn.
      3. Nhập văn bản cần tìm và văn bản thay thế.
      4. Chạy quá trình xóa và lưu tệp đã cập nhật của bạn.
   
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
        // Xóa văn bản từ một tệp XLSX

        // Sử dụng Redactor để mở tệp
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Chọn các tùy chọn xóa của bạn
            // Đặt văn bản cần tìm và văn bản thay thế
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Áp dụng các xóa và lưu tệp đã làm sạch
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nhiều công cụ để xóa"
  description: "GroupDocs.Redaction for .NET giúp làm sạch nhiều loại nội dung—văn bản, hình ảnh hoặc siêu dữ liệu—để tệp của bạn sẵn sàng chia sẻ an toàn."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Tùy chọn xóa được hiển thị"
  features:
    # feature loop
    - title: "Thay thế văn bản nhạy cảm"
      content: "Tìm kiếm trong tệp và thay thế bất cứ điều gì bí mật. Hỗ trợ văn bản đơn giản và các mẫu."

    # feature loop
    - title: "Che các khu vực hình ảnh"
      content: "Sử dụng lớp phủ để ẩn dữ liệu hình ảnh. Chọn màu sắc, kích thước khu vực và cách bố trí trang."

    # feature loop
    - title: "Xóa dữ liệu bổ sung"
      content: "Xóa siêu dữ liệu như tên tác giả, thời gian, hoặc ghi chú nội bộ để tránh rò rỉ."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Xóa với các quy tắc regex"
      content: |
        Sử dụng regex để tìm và làm sạch các mẫu như số điện thoại, địa chỉ email hoặc các chi tiết cá nhân khác.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Mở tệp để bắt đầu
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Viết một quy tắc regex EMAIL và chọn một văn bản thay thế
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Chạy quá trình xóa dựa trên mẫu của bạn
              redactor.Apply(redaction);

              // Lưu tệp đã xóa
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
    title: "Ẩn thông tin trong XLSX bằng .NET"
    exclude: "XLSX"
    description: "Làm sạch các tài liệu XLSX của bạn bằng cách xóa văn bản cá nhân hoặc nhạy cảm thông qua các công cụ .NET. Giữ dữ liệu của bạn là riêng tư."
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