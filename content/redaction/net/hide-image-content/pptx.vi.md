
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: vi
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Xóa Hình Ảnh Trong PPTX Với Lớp Phủ Sử Dụng C#"
head_description: "Với GroupDocs.Redaction for .NET, bạn có thể ẩn nội dung hình ảnh nhạy cảm trong các tệp PPTX bằng cách áp dụng lớp phủ màu. Bảo vệ dữ liệu bí mật mà không làm thay đổi cấu trúc tài liệu."

############################# Header ############################
title: "Xóa Hình Ảnh Nhạy Cảm Trong Tài Liệu PPTX Bằng Lớp Phủ Sử Dụng .NET" 
description: "Bảo vệ thông tin riêng tư và doanh nghiệp trong các tệp PPTX bằng C#. Công cụ của chúng tôi giúp việc xóa hình ảnh trở nên nhanh chóng và hiệu quả."
subtitle: "Những gì GroupDocs.Redaction for .NET Cung Cấp" 

############################# About ############################
about:
    enable: true
    title: "Về GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET cung cấp cho các nhà phát triển C# các công cụ dễ sử dụng để ẩn hoặc xóa nội dung từ các tệp PPTX. Bảo vệ tài liệu của bạn bằng cách che phủ văn bản, hình ảnh và siêu dữ liệu trong nhiều định dạng khác nhau.

############################# Steps ############################
steps:
    enable: true
    title: "Giữ An Toàn Dữ Liệu Kinh Doanh Trong Tài Liệu Pptx"
    content: |
      GroupDocs.Redaction for .NET: Giúp các ứng dụng .NET bảo vệ tài liệu bằng cách ẩn thông tin nhạy cảm.
      
      1. Thiết lập một thể hiện Redactor và tải tệp Pptx.
      2. Cấu hình các tùy chọn xóa để phù hợp với nhu cầu của bạn.
      3. Chọn các khu vực hình ảnh và gán màu lớp phủ.
      4. Xử lý xóa và lưu tệp của bạn.
   
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
        // Xóa các khu vực hình ảnh nhạy cảm trong PPTX

        // Mở tệp bằng cách sử dụng Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Xác định màu sắc và kích thước lớp phủ
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Chọn khu vực để xóa
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Áp dụng lớp phủ và lưu tài liệu
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Công Cụ Xóa Tài Liệu"
  description: "GroupDocs.Redaction for .NET cho phép bạn ẩn hoặc xóa nội dung nhạy cảm trong nhiều loại tệp. Bảo vệ thông tin trong khi giữ cho tài liệu sạch và có thể chia sẻ."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Công Cụ Xóa Mạnh Mẽ"
  features:
    # feature loop
    - title: "Tìm Kiếm & Thay Thế Văn Bản"
      content: "Xác định và xóa văn bản riêng tư để nâng cao bảo mật tài liệu."

    # feature loop
    - title: "Xóa Nội Dung Hình Ảnh"
      content: "Bịt kín toàn bộ hình ảnh hoặc những vùng đã chọn bằng lớp phủ để giữ cho hình ảnh nhạy cảm không bị lộ."

    # feature loop
    - title: "Xóa Metadata"
      content: "Xóa hoặc chỉnh sửa siêu dữ liệu ẩn để ngăn chặn việc rò rỉ thông tin."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Che Dấu Dữ Liệu Hình Ảnh Với Lớp Phủ"
      content: |
        Ví dụ này minh họa cách ẩn hình ảnh nhạy cảm trong tài liệu.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Tải tài liệu
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Đặt kích thước lớp phủ, vị trí và màu sắc
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Chỉ định khu vực cần xóa trên trang đầu
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Áp dụng lớp phủ
              redactor.Apply(redaction);

              // Lưu tệp đã xóa
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
    title: "Xóa Nội Dung PPTX Với .NET"
    exclude: "PPTX"
    description: "Sử dụng .NET để ẩn hoặc xóa nội dung nhạy cảm trong các tệp PPTX. Giải pháp đáng tin cậy cho việc bảo mật tài liệu."
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