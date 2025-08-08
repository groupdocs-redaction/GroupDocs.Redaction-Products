
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: vi
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Ẩn văn bản nhạy cảm trong POWERPOINT bằng các lớp phủ C#"
head_description: "GroupDocs.Redaction for .NET cho phép bạn ẩn các phần của các tệp POWERPOINT bằng cách sử dụng các lớp phủ xóa đơn giản. Giữ cho tài liệu an toàn mà không thay đổi cấu trúc."

############################# Header ############################
title: "Xóa văn bản trong POWERPOINT bằng lớp phủ sử dụng .NET" 
description: "Bảo vệ nội dung trong các tệp POWERPOINT của bạn bằng cách đặt các khối lớp phủ với sự trợ giúp của C# và GroupDocs.Redaction for .NET."
subtitle: "Công cụ bên trong GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Giới thiệu về công cụ này"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET giúp người dùng C# dọn dẹp các tài liệu POWERPOINT bằng cách che hoặc xóa văn bản, siêu dữ liệu hoặc hình ảnh theo yêu cầu.

############################# Steps ############################
steps:
    enable: true
    title: "Bảo vệ nội dung trong các tài liệu Powerpoint"
    content: |
      Sử dụng GroupDocs.Redaction for .NET trong ứng dụng .NET của bạn để làm sạch các tệp trước khi phân phối.
      
      1. Truyền đường dẫn tệp vào một instance mới của Redactor.
      2. Xác định điều bạn muốn xóa và cách bạn muốn xóa.
      3. Định nghĩa mẫu văn bản và đặt màu sắc của lớp phủ.
      4. Xóa và lưu tệp đã được cập nhật của bạn.
   
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
        // Overlay văn bản trong POWERPOINT để ẩn thông tin

        // Sử dụng Redactor để mở tệp của bạn
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Điều chỉnh cài đặt cho việc xóa
            // Chọn văn bản và màu xem để chặn lại
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Chạy và lưu tệp đã xóa
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ẩn dữ liệu nhạy cảm một cách dễ dàng"
  description: "Sử dụng GroupDocs.Redaction for .NET để xóa hoặc che khuất nội dung trên các loại tài liệu — lý tưởng cho việc bảo vệ dữ liệu trong tài liệu pháp lý, kinh doanh hoặc cá nhân."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Xóa tài liệu linh hoạt"
  features:
    # feature loop
    - title: "Thay thế văn bản"
      content: "Tìm kiếm các từ hoặc số và thay thế hoặc ẩn chúng."

    # feature loop
    - title: "Che khuất hình ảnh hoặc các phần"
      content: "Thêm lớp phủ vào hình ảnh hoặc những điểm lựa chọn trên trang."

    # feature loop
    - title: "Xóa dữ liệu thừa"
      content: "Làm sạch siêu dữ liệu có thể tiết lộ thông tin ẩn."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Tìm & xóa với regex"
      content: |
        Ví dụ này cho thấy cách regex có thể giúp xác định và ẩn văn bản.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Mở tệp cần bị xóa
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Cài đặt quy tắc của bạn bằng regex
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Chạy quy trình xóa
              redactor.Apply(redaction);

              // Lưu phiên bản đã dọn dẹp
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
    title: "Ẩn nội dung trong POWERPOINT bằng .NET"
    exclude: "POWERPOINT"
    description: "Thêm các lớp phủ hoặc xóa dữ liệu từ các tệp POWERPOINT của bạn để giữ nội dung nhạy cảm riêng tư bằng cách sử dụng .NET."
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