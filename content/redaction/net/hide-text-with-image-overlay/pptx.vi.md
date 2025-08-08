
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: vi
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Xóa văn bản trong PPTX bằng lớp phủ và C#"
head_description: "Ẩn nội dung riêng tư trong các tài liệu PPTX bằng cách che nó bằng các hình vuông màu sắc sử dụng GroupDocs.Redaction for .NET. Giữ cho bố cục của bạn y nguyên."

############################# Header ############################
title: "Xóa văn bản trong PPTX bằng lớp phủ sử dụng .NET" 
description: "Với C# và GroupDocs.Redaction for .NET, bảo vệ dữ liệu nhạy cảm trong các tệp PPTX thật đơn giản bằng cách ẩn nó khỏi tầm nhìn."
subtitle: "Khám phá GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET làm gì"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET cung cấp cho bạn khả năng che hoặc xóa nội dung trong các tài liệu PPTX bằng C#. Ẩn mọi thứ từ tên đến ghi chú, chỉ với vài bước.

############################# Steps ############################
steps:
    enable: true
    title: "Ẩn nội dung riêng tư trong các tệp Pptx của bạn"
    content: |
      Với GroupDocs.Redaction for .NET, các nhà phát triển .NET có thể bảo vệ tài liệu chỉ với vài bước đơn giản.
      
      1. Khởi động một Redactor với đường dẫn đến tệp mà bạn muốn dọn dẹp.
      2. Chọn các quy tắc xóa phù hợp với nhu cầu của bạn.
      3. Chọn một mẫu để khớp và một màu cho lớp phủ hình ảnh.
      4. Chạy quy trình xóa và lưu tệp đã được cập nhật của bạn.
   
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
        // Sử dụng lớp phủ để che văn bản trong PPTX

        // Khởi tạo Redactor với tệp của bạn
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Xác định cách xóa sẽ hoạt động
            // Đặt những gì cần che giấu và màu của lớp phủ
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Chạy và lưu thay đổi
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nhiều cách hơn để bảo vệ các tài liệu của bạn"
  description: "GroupDocs.Redaction for .NET cung cấp cho bạn các công cụ để ẩn dữ liệu trong nhiều định dạng mà không làm thay đổi bố cục."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Các tính năng quan trọng"
  features:
    # feature loop
    - title: "Thay thế văn bản khi cần"
      content: "Thay thế văn bản để giữ thông tin chính khỏi người dùng không có quyền truy cập."

    # feature loop
    - title: "Che khuất các khu vực hình ảnh"
      content: "Che khuất các hình ảnh đầy đủ hoặc một số phần bằng cách vẽ các hộp lớp phủ."

    # feature loop
    - title: "Dọn dẹp dữ liệu ẩn"
      content: "Xóa siêu dữ liệu nhúng có thể tiết lộ các chi tiết riêng tư."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Xóa bằng biểu thức chính quy"
      content: |
        Ví dụ này cho thấy cách tìm kiếm và ẩn văn bản bằng cách sử dụng biểu thức chính quy.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Tải tệp cần xóa
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Đặt quy tắc xóa: văn bản tìm kiếm và màu của khối
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Áp dụng logic xóa
              redactor.Apply(redaction);

              // Lưu kết quả đã xóa
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
    title: "Bảo vệ văn bản PPTX bằng công cụ của .NET"
    exclude: "PPTX"
    description: "Che khuất các khu vực riêng tư hoặc xóa dữ liệu ẩn trong các tệp PPTX bằng các tính năng xóa của .NET."
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