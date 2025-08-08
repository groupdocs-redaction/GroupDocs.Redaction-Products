
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: vi
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Ẩn văn bản nhạy cảm trong PDF bằng cách sử dụng lớp phủ với C#"
head_description: "Với GroupDocs.Redaction for .NET, bạn có thể ẩn văn bản nhạy cảm trong các tệp PDF bằng cách đặt các lớp phủ vuông có màu. Bảo vệ dữ liệu riêng tư mà không làm thay đổi định dạng gốc."

############################# Header ############################
title: "Ẩn văn bản nhạy cảm trong tài liệu PDF bằng lớp phủ sử dụng .NET" 
description: "Chiếm quyền kiểm soát nội dung tệp PDF bằng C#. Sử dụng các quy định để bảo vệ thông tin pháp lý, tài chính và cá nhân."
subtitle: "Tính năng của GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Giới thiệu về GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET cung cấp cho các nhà phát triển C# các công cụ để ẩn hoặc xóa nội dung từ các tệp PDF. Đây là cách đơn giản để giữ cho tài liệu an toàn. Bạn có thể che phủ văn bản, hình ảnh hoặc siêu dữ liệu trong nhiều loại tệp.

############################# Steps ############################
steps:
    enable: true
    title: "Bảo vệ dữ liệu doanh nghiệp trong tài liệu Pdf"
    content: |
      GroupDocs.Redaction for .NET: được xây dựng để hỗ trợ các ứng dụng .NET của bạn bảo vệ tài liệu. Xóa thông tin riêng tư một cách nhanh chóng.
      
      1. Tạo một instance của Redactor và cung cấp đường dẫn đến tệp Pdf mà bạn muốn xóa.
      2. Cấu hình các thiết lập xóa để đạt được kết quả bạn cần.
      3. Chỉ cần đặt mẫu văn bản để tìm kiếm và chọn màu cho lớp phủ.
      4. Xóa tài liệu và lưu thay đổi.
   
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
        // Ẩn văn bản nhạy cảm trong PDF bằng hình ảnh lớp phủ

        // Truyền đường dẫn tệp vào constructor của Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Thiết lập các tùy chọn xóa
            // Xác định mẫu văn bản và màu sắc lớp phủ
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Xóa và lưu tệp PDF đã cập nhật
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Xóa nội dung trong tài liệu"
  description: "Với GroupDocs.Redaction for .NET, bạn có thể xóa hoặc ẩn nội dung trên nhiều loại tệp. Bảo vệ thông tin nhạy cảm trong khi giữ cho tài liệu của bạn dễ đọc và chia sẻ."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Tùy chọn xóa nâng cao"
  features:
    # feature loop
    - title: "Chỉnh sửa văn bản ở bất kỳ đâu"
      content: "Tìm kiếm và thay thế bất kỳ văn bản nào phù hợp trong tài liệu của bạn để giúp bảo vệ dữ liệu bí mật."

    # feature loop
    - title: "Che hình ảnh"
      content: "Đặt lớp phủ lên toàn bộ hình ảnh hoặc các khu vực được chọn để ẩn các hình ảnh riêng tư."

    # feature loop
    - title: "Xử lý siêu dữ liệu"
      content: "Xóa hoặc thay đổi siêu dữ liệu ẩn để ngăn chặn các rò rỉ dữ liệu không mong muốn."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Sử dụng biểu thức chính quy để ẩn văn bản"
      content: |
        Ví dụ này cho thấy cách tìm và ẩn văn bản bằng cách sử dụng biểu thức chính quy.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Tải tài liệu mà bạn muốn xóa
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Xác định các thiết lập xóa: mẫu văn bản và màu sắc
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Áp dụng xóa vào nội dung
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
    title: "Bảo vệ nội dung PDF bằng các quy định của .NET"
    exclude: "PDF"
    description: "Sử dụng .NET để che khuất hoặc xóa nội dung trong các tệp PDF. Đây là lựa chọn thông minh để bảo vệ tài liệu nhạy cảm hoặc chính thức."
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