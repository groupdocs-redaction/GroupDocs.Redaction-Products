
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: vi
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Ẩn Hình Ảnh trong PDF với Lớp Phủ Sử Dụng C#"
head_description: "Với GroupDocs.Redaction for .NET, bạn có thể bảo vệ hình ảnh nhạy cảm trong tệp PDF bằng cách thêm lớp phủ màu. Bảo vệ thông tin riêng tư mà không làm thay đổi định dạng tài liệu."

############################# Header ############################
title: "Bảo Vệ Hình Ảnh Nhạy Cảm Trong Tài Liệu PDF Bằng lớp Phủ Sử Dụng .NET" 
description: "Giữ an toàn cho dữ liệu kinh doanh và cá nhân trong các tệp PDF bằng cách sử dụng C#. Công cụ của chúng tôi giúp bạn đạt được bảo vệ dữ liệu mạnh mẽ."
subtitle: "Tính Năng của GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Về GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET cung cấp cho các nhà phát triển C# các công cụ mạnh mẽ để ẩn hoặc xóa nội dung từ các tệp PDF. Bảo vệ tài liệu bằng cách che phủ văn bản, hình ảnh và siêu dữ liệu trên nhiều định dạng khác nhau.

############################# Steps ############################
steps:
    enable: true
    title: "Bảo Vệ Dữ Liệu Kinh Doanh Trong Tài Liệu Pdf"
    content: |
      GroupDocs.Redaction for .NET: Thiết kế để giúp ứng dụng .NET của bạn bảo vệ tài liệu. Xóa thông tin riêng tư một cách nhanh chóng.
      
      1. Tạo một thể hiện Redactor và cung cấp đường dẫn đến tệp Pdf bạn muốn bảo vệ.
      2. Điều chỉnh các tùy chọn xóa để có được kết quả bạn cần.
      3. Chọn khu vực hình ảnh và đặt màu lớp phủ.
      4. Xử lý tệp và lưu tài liệu đã được xóa.
   
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
        // Ẩn nội dung hình ảnh nhạy cảm trong PDF

        // Tải tệp bằng cách sử dụng constructor Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Cấu hình màu và kích thước lớp phủ
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Chọn khu vực để xóa
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Áp dụng lớp phủ cho hình ảnh và lưu tệp
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Xóa Nội Dung Trong Tài Liệu"
  description: "Với GroupDocs.Redaction for .NET, bạn có thể ẩn hoặc xóa nội dung trong nhiều định dạng tệp khác nhau. Bảo vệ thông tin bí mật trong khi vẫn giữ cho tài liệu dễ đọc và chia sẻ."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Tính Năng Xóa Nâng Cao"
  features:
    # feature loop
    - title: "Chỉnh Sửa Văn Bản Bất Cứ Nơi Nào"
      content: "Tìm kiếm và thay thế văn bản nhạy cảm trong toàn bộ tài liệu của bạn để bảo mật dữ liệu cá nhân."

    # feature loop
    - title: "Che Ảnh"
      content: "Áp dụng lớp phủ cho toàn bộ hình ảnh hoặc khu vực được chọn để ẩn các hình ảnh nhạy cảm."

    # feature loop
    - title: "Quản Lý Siêu Dữ Liệu"
      content: "Xóa hoặc chỉnh sửa siêu dữ liệu ẩn để ngăn ngừa việc tiết lộ dữ liệu tình cờ."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Sử Dụng Lớp Phủ Để Ẩn Dữ Liệu Hình Ảnh"
      content: |
        Ví dụ này cho thấy cách để che giấu thông tin nhạy cảm trong hình ảnh của tài liệu.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Tải tài liệu để xóa
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Thiết lập các tùy chọn lớp phủ: kích thước, vị trí, và màu sắc
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Nhắm đến một khu vực hình ảnh cụ thể trên trang đầu
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Áp dụng lớp phủ để ẩn hình ảnh
              redactor.Apply(redaction);

              // Lưu tài liệu đã xóa
              var save_options = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_options);
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Bảo Vệ Nội Dung PDF Với Lớp Phủ .NET"
    exclude: "PDF"
    description: "Sử dụng .NET để ẩn hoặc xóa nội dung nhạy cảm trong các tệp PDF. Giải pháp hiệu quả để bảo vệ các tài liệu chính thức và bí mật."
    items: 
        # format loop 1
        - name: "Chỉnh sửa PDF"
          format: "PDF"
          link: "/redaction/net/hide-image-content//pdf/"
          description: "Định dạng Tài liệu Di động Adobe"

        # format loop 2
        - name: "Chỉnh sửa Word"
          format: "WORD"
          link: "/redaction/net/hide-image-content//word/"
          description: "Tài liệu MS Word và Open Office"
          
        # format loop 3
        - name: "Chỉnh sửa Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-image-content//excel/"
          description: "Bảng tính MS Excel và Open Office"

        # format loop 4
        - name: "Chỉnh sửa PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-image-content//powerpoint/"
          description: "Trình bày MS PowerPoint và Open Office"

        # format loop 5
        - name: "Chỉnh sửa Hình ảnh"
          format: "IMAGE"
          link: "/redaction/net/hide-image-content//image/"
          description: "Các định dạng hình ảnh phổ biến"

        # format loop 6
        - name: "Chỉnh sửa Ảnh"
          format: "PHOTO"
          link: "/redaction/net/hide-image-content//photo/"
          description: "Định dạng ảnh"

        # format loop 7
        - name: "Chỉnh sửa DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-image-content//docx/"
          description: "Tài liệu Open XML của Microsoft Word"
          
        # format loop 8
        - name: "Chỉnh sửa XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-image-content//xlsx/"
          description: "Bảng tính Open XML của Microsoft Excel"
          
        # format loop 9
        - name: "Chỉnh sửa PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-image-content//pptx/"
          description: "Bài thuyết trình Open XML của PowerPoint"

        # format loop 10
        - name: "Chỉnh sửa JPEG"
          format: "JPEG"
          link: "/redaction/net/hide-image-content//jpeg/"
          description: "Hình ảnh JPEG"


---