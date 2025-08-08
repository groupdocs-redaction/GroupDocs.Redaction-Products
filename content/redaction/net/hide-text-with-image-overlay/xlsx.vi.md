
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: vi
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Ẩn văn bản trong XLSX bằng lớp phủ C#"
head_description: "GroupDocs.Redaction for .NET giúp ẩn văn bản trong các tệp XLSX bằng cách sử dụng các hộp màu. Giữ thông tin an toàn mà không làm thay đổi định dạng tài liệu của bạn."

############################# Header ############################
title: "Che văn bản trong các tệp XLSX bằng lớp phủ và .NET" 
description: "Sử dụng C# và GroupDocs.Redaction for .NET để thêm các lớp phủ đơn giản ngăn chặn văn bản nhạy cảm trong các tệp XLSX của bạn."
subtitle: "Tính năng của GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Cách mà GroupDocs.Redaction for .NET giúp"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET cho phép các nhà phát triển sử dụng C# ẩn nội dung không mong muốn trong các tệp XLSX. Che đậy mọi thứ—từ từ ngữ đến hình ảnh—trong nhiều loại định dạng tệp khác nhau.

############################# Steps ############################
steps:
    enable: true
    title: "Giữ thông tin nhạy cảm an toàn trong các tài liệu Xlsx"
    content: |
      GroupDocs.Redaction for .NET giúp các nhà phát triển .NET bảo vệ tệp. Ẩn nội dung riêng tư chỉ với vài dòng mã.
      
      1. Tạo một đối tượng Redactor mới với đường dẫn tệp Xlsx của bạn.
      2. Điều chỉnh các thiết lập xóa theo nhu cầu.
      3. Thêm một mẫu tìm kiếm và chọn màu cho khối lớp phủ.
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
        // Che văn bản riêng tư trong XLSX bằng lớp phủ

        // Tải tệp với Redactor
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Chọn cách mà quy trình xóa sẽ hoạt động
            // Nhập văn bản để ẩn và chọn màu lớp phủ
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Xử lý tệp và lưu thay đổi
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Tính năng xóa thông minh"
  description: "Sử dụng GroupDocs.Redaction for .NET để xóa hoặc ẩn nội dung trong nhiều loại tệp. Giữ thông tin riêng tư tránh xa sự chú ý công khai."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Các công cụ xóa thiết thực"
  features:
    # feature loop
    - title: "Thay đổi bất kỳ văn bản nào"
      content: "Tìm kiếm và cập nhật bất kỳ chuỗi nào trong tài liệu để bảo vệ dữ liệu."

    # feature loop
    - title: "Ẩn nội dung hình ảnh"
      content: "Thêm các hình vuông hoặc hình chữ nhật để che khuất những phần nhạy cảm của hình ảnh."

    # feature loop
    - title: "Dọn dẹp siêu dữ liệu"
      content: "Xóa hoặc ghi đè các chi tiết tệp nền trước khi chia sẻ."
      
  code_samples_ext:
    # code sample ext loop
    - title: "So khớp và ẩn với regex"
      content: |
        Tìm hiểu cách phát hiện và xóa nội dung bằng cách sử dụng biểu thức chính quy.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Mở tài liệu mục tiêu
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Thiết lập mẫu và màu sắc lớp phủ
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Áp dụng các quy tắc xóa
              redactor.Apply(redaction);

              // Xuất phiên bản đã xóa
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
    title: "Sử dụng .NET để ẩn thông tin trong các tệp XLSX"
    exclude: "XLSX"
    description: "Thêm lớp phủ hoặc xóa các phần trong tài liệu XLSX của bạn để bảo vệ các chi tiết nhạy cảm với sự trợ giúp của .NET."
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