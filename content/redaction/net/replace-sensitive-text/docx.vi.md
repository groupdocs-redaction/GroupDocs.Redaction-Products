
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: vi
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Xóa văn bản riêng tư trong DOCX bằng C#"
head_description: "Nhanh chóng bảo vệ nội dung riêng tư trong các tệp DOCX của bạn với GroupDocs.Redaction for .NET và C#. Dễ sử dụng, nhanh chóng có kết quả."

############################# Header ############################
title: "Tìm và ẩn văn bản nhạy cảm trong tài liệu DOCX bằng .NET" 
description: "Dù là sử dụng cho cá nhân hay doanh nghiệp, GroupDocs.Redaction for .NET và C# giúp giữ thông tin riêng tư không bị lộ."
subtitle: "Cách GroupDocs.Redaction for .NET giúp bạn" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET là gì?"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET cung cấp cho các nhà phát triển C# các công cụ để tìm và làm sạch nội dung nhạy cảm trong các tệp DOCX. Hoạt động với văn bản, hình ảnh, ghi chú và nhiều hơn nữa.

############################# Steps ############################
steps:
    enable: true
    title: "Cách xóa nội dung trong các tệp Docx"
    content: |
      Thực hiện nhanh các bước này trong dự án .NET của bạn để làm sạch văn bản riêng tư với GroupDocs.Redaction for .NET.
      
      1. Khởi tạo một Redactor và tải tệp Docx.
      2. Chọn cài đặt xóa mà bạn muốn.
      3. Nhập văn bản cần tìm và văn bản bạn muốn thay thế.
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
        // Xóa văn bản trong một tệp DOCX

        // Tải tệp của bạn bằng Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Chọn các tùy chọn xóa phù hợp với nhu cầu của bạn
            // Xác định những gì bạn muốn tìm và thay thế
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Chạy công cụ và lưu tệp đã xóa của bạn
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nhiều tính năng xóa hơn"
  description: "Với GroupDocs.Redaction for .NET, bạn có khả năng dễ dàng loại bỏ nội dung ẩn hoặc hiển thị từ các loại tệp khác nhau. Tuyệt vời để chia sẻ một cách an toàn."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Tổng quan về các công cụ xóa"
  features:
    # feature loop
    - title: "Thay thế văn bản riêng tư"
      content: "Tìm kiếm văn bản cụ thể ở bất kỳ đâu trong tệp và thay thế nó. Hoạt động với văn bản thuần túy hoặc các mẫu."

    # feature loop
    - title: "Che hình ảnh nhạy cảm"
      content: "Che một phần của hình ảnh hoặc toàn bộ trang bằng lớp phủ. Bạn kiểm soát màu sắc, kích thước và vị trí."

    # feature loop
    - title: "Xóa dữ liệu ẩn"
      content: "Xóa siêu dữ liệu như tên, bình luận, hoặc dấu thời gian để đảm bảo không có gì bị bỏ lại."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Tìm và xóa các mẫu với Regex"
      content: |
        Sử dụng regex để tìm kiếm các kiểu dữ liệu cụ thể như địa chỉ email hoặc số ID và tự động làm sạch chúng.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Mở tệp bạn cần làm sạch
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Tạo một quy tắc regex EMAIL và một chuỗi thay thế
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Chạy quá trình xóa bằng cài đặt của bạn
              redactor.Apply(redaction);

              // Lưu tệp đã cập nhật
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
    title: "Xóa dữ liệu trong DOCX bằng .NET"
    exclude: "DOCX"
    description: "Bảo vệ thông tin cá nhân hoặc chính thức bằng cách ẩn nó trong tài liệu DOCX bằng cách sử dụng .NET. Đơn giản và hiệu quả."
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