
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: vi
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Ẩn Hình Ảnh Trong JPEG Bằng Lớp Phủ Sử Dụng C#"
head_description: "Bảo vệ hình ảnh riêng tư trong các tệp JPEG với GroupDocs.Redaction for .NET bằng cách thêm lớp phủ màu. Giữ thông tin nhạy cảm an toàn mà không thay đổi định dạng tệp."

############################# Header ############################
title: "Che Ảnh Nhạy Cảm Trong Các Tệp JPEG Bằng Lớp Phủ Sử Dụng .NET" 
description: "Giữ an toàn cho hình ảnh cá nhân và doanh nghiệp trong các tệp JPEG bằng C#. Công cụ đơn giản giúp bảo vệ tệp một cách đáng tin cậy."
subtitle: "Các Tính Năng Chính Của GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Về GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET trang bị cho các nhà phát triển C# các công cụ để ẩn hoặc xóa nội dung từ các tệp JPEG. Bảo vệ tài liệu của bạn bằng cách che chắn văn bản, hình ảnh và siêu dữ liệu một cách hiệu quả.

############################# Steps ############################
steps:
    enable: true
    title: "Bảo Vệ Dữ Liệu Nhạy Cảm Trong Tệp Jpeg"
    content: |
      GroupDocs.Redaction for .NET được thiết kế để giúp ứng dụng .NET nhanh chóng ẩn nội dung riêng tư.
      
      1. Tạo một đối tượng Redactor và cung cấp đường dẫn đến tệp Jpeg.
      2. Thiết lập tùy chọn xóa để phù hợp với nhu cầu của bạn.
      3. Đánh dấu khu vực hình ảnh và chọn màu sắc lớp phủ.
      4. Chạy xóa và lưu tệp bảo vệ.
   
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
        // Che nội dung hình ảnh trong các tệp JPEG

        // Tải tệp bằng cách sử dụng Redactor
        using (Redactor redactor  = new Redactor("input.jpg"))
        {
            // Cấu hình kích thước và màu sắc lớp phủ
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Chọn khu vực để ẩn
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Áp dụng lớp phủ và lưu tệp
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Xóa Nội Dung Trong Tài Liệu"
  description: "GroupDocs.Redaction for .NET cung cấp khả năng ẩn hoặc xóa nội dung qua nhiều định dạng tệp khác nhau. Bảo vệ thông tin nhạy cảm trong khi giữ cho tệp dễ dàng chia sẻ và gọn gàng."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Công Cụ Xóa Đầy Đủ Quyền Kiểm Soát"
  features:
    # feature loop
    - title: "Chỉnh Sửa Văn Bản Ở Mọi Nơi"
      content: "Tìm kiếm và thay thế văn bản nhạy cảm trong tài liệu của bạn để bảo vệ dữ liệu riêng tư."

    # feature loop
    - title: "Che Ảnh"
      content: "Áp dụng lớp phủ cho hình ảnh hoặc cho các khu vực cụ thể để giữ cho hình ảnh nhạy cảm ở trong bóng tối."

    # feature loop
    - title: "Làm Sạch Siêu Dữ Liệu"
      content: "Xóa hoặc cập nhật siêu dữ liệu ẩn để tránh tiết lộ thông tin không mong muốn."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ẩn Dữ Liệu Hình Ảnh Với Lớp Phủ"
      content: |
        Ví dụ này cho thấy cách che giấu các khu vực hình ảnh nhạy cảm trong các tệp.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Mở tệp để chỉnh sửa
          using (Redactor redactor  = new Redactor("source.jpg"))
          {
              // Cấu hình kích thước, vị trí và màu sắc lớp phủ
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Chọn một khu vực hình ảnh cụ thể trên trang đầu
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Áp dụng lớp phủ để ẩn hình ảnh
              redactor.Apply(redaction);

              // Lưu tệp đã được xóa
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
    title: "Bảo Vệ Các Tệp JPEG Với Các Công Cụ Xóa .NET"
    exclude: "JPEG"
    description: "Với .NET, bạn có thể dễ dàng ẩn hoặc xóa nội dung nhạy cảm trong các tệp JPEG. Một giải pháp đáng tin cậy để giữ cho tài liệu của bạn an toàn và chuyên nghiệp."
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