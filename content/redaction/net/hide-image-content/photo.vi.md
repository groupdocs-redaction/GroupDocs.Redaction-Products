
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: vi
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Thêm Lớp Phủ Để Ẩn Hình Ảnh Trong PHOTO Bằng C#"
head_description: "Ẩn nội dung hình ảnh nhạy cảm trong các tệp PHOTO với GroupDocs.Redaction for .NET bằng cách áp dụng lớp phủ. Giữ dữ liệu riêng tư an toàn trong khi bảo vệ định dạng gốc của tài liệu."

############################# Header ############################
title: "Ẩn Nội Dung Hình Ảnh Trong PHOTO Bằng Lớp Phủ Sử Dụng .NET" 
description: "Bảo vệ các hình ảnh cá nhân và doanh nghiệp trong các tệp PHOTO bằng C#. Các công cụ dễ sử dụng để bảo vệ nội dung hiệu quả."
subtitle: "GroupDocs.Redaction for .NET Các Tính Năng Chính" 

############################# About ############################
about:
    enable: true
    title: "Về GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET cung cấp cho các nhà phát triển C# một cách mạnh mẽ để ẩn hoặc xóa nội dung trong các tệp PHOTO. Bảo vệ tài liệu của bạn bằng cách che văn bản, hình ảnh, và siêu dữ liệu một cách nhanh chóng.

############################# Steps ############################
steps:
    enable: true
    title: "Bảo Vệ Nội Dung Trong Các Tệp Photo"
    content: |
      GroupDocs.Redaction for .NET giúp bảo vệ nhanh và đơn giản nội dung trong các ứng dụng .NET của bạn.
      
      1. Tạo một đối tượng Redactor và chỉ định tệp Photo của bạn.
      2. Điều chỉnh cài đặt xóa cho phù hợp với nhu cầu của bạn.
      3. Chọn các khu vực hình ảnh và xác định màu lớp phủ.
      4. Tiến hành xử lý và lưu tệp đã bảo vệ.
   
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
        // Áp dụng lớp phủ để che giấu hình ảnh trong PHOTO

        // Tải tệp với Redactor
        using (Redactor redactor  = new Redactor("input.jpeg"))
        {
            // Cấu hình kích thước và màu sắc lớp phủ
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Chọn khu vực hình ảnh muốn ẩn
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Áp dụng lớp phủ và lưu thay đổi
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Xóa Dữ Liệu Nhạy Cảm Dễ Dàng"
  description: "GroupDocs.Redaction for .NET giúp bạn ẩn hoặc xóa nội dung nhạy cảm trong nhiều loại tệp. Bảo vệ thông tin riêng tư trong khi giữ cho tài liệu sạch và dễ đọc."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Công Cụ Xóa Tất Cả Trong Một"
  features:
    # feature loop
    - title: "Chỉnh Sửa Văn Bản Trong Tài Liệu"
      content: "Tìm kiếm và thay thế văn bản riêng tư trong tài liệu của bạn để bảo mật thông tin nhạy cảm."

    # feature loop
    - title: "Che Khu Vực Hình Ảnh"
      content: "Thêm lớp phủ vào hình ảnh hoặc các phần đã chọn để che dấu các hình ảnh nhạy cảm."

    # feature loop
    - title: "Làm Sạch Siêu Dữ Liệu"
      content: "Xóa siêu dữ liệu ẩn để tránh việc tiết lộ dữ liệu không mong muốn."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ẩn Dữ Liệu Hình Ảnh với Lớp Phủ"
      content: |
        Ví dụ mã này cho thấy cách che giấu khu vực hình ảnh trong một tệp bằng lớp phủ.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Tải tệp để chỉnh sửa
          using (Redactor redactor  = new Redactor("source.jpeg"))
          {
              // Cấu hình kích thước lớp phủ, vị trí và màu sắc
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Chọn khu vực hình ảnh trên trang đầu
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Thêm lớp phủ để ẩn hình ảnh
              redactor.Apply(redaction);

              // Lưu tệp đã cập nhật
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
    title: "Bảo Vệ Tệp PHOTO Với Lớp Phủ .NET"
    exclude: "PHOTO"
    description: "Với .NET, bạn có thể ẩn hoặc xóa nội dung nhạy cảm trong các tệp PHOTO. Một cách đơn giản và hiệu quả để bảo vệ các tài liệu chính thức."
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