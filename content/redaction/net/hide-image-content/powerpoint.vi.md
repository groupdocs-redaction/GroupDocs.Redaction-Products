
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: vi
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Ẩn Hình Ảnh Nhạy Cảm Trong POWERPOINT Sử Dụng Lớp Phủ Với C#"
head_description: "Sử dụng GroupDocs.Redaction for .NET để đặt lớp phủ trên hình ảnh trong các tệp POWERPOINT, giữ thông tin riêng tư được ẩn trong khi bảo vệ cấu trúc tài liệu."

############################# Header ############################
title: "Ẩn Hình Ảnh Riêng Tư Trong Tài Liệu POWERPOINT Bằng Lớp Phủ Với .NET" 
description: "Bảo vệ dữ liệu cá nhân và doanh nghiệp trong các tệp POWERPOINT bằng C#. Công cụ đơn giản cho việc bảo mật tài liệu mạnh mẽ."
subtitle: "Các Tính Năng Chính Của GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Đề Xuất GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET cung cấp cho các nhà phát triển C# các công cụ đơn giản để ẩn hoặc xóa nội dung trong các tệp POWERPOINT. Bảo vệ tài liệu của bạn bằng cách che phủ văn bản, hình ảnh và siêu dữ liệu.

############################# Steps ############################
steps:
    enable: true
    title: "Bảo Vệ Thông Tin Nhạy Cảm Trong Tài Liệu Powerpoint"
    content: |
      GroupDocs.Redaction for .NET được xây dựng để giúp ứng dụng .NET bảo vệ nội dung tài liệu một cách nhanh chóng.
      
      1. Tạo một đối tượng Redactor và chỉ định tệp Powerpoint.
      2. Điều chỉnh các cài đặt để đáp ứng nhu cầu của bạn.
      3. Chọn khu vực của hình ảnh và chọn màu lớp phủ.
      4. Áp dụng xóa và lưu tài liệu.
   
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
        // Ẩn dữ liệu hình ảnh trong các tệp POWERPOINT

        // Tải tệp bằng Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Đặt kích thước và vị trí lớp phủ
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Chọn khu vực để che
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
  title: "Công Cụ Xóa Dữ Liệu Nhạy Cảm Trong Tài Liệu"
  description: "GroupDocs.Redaction for .NET cho phép bạn ẩn hoặc xóa nội dung trong nhiều loại tài liệu. Bảo vệ dữ liệu trong khi giữ cho tệp sạch và dễ chia sẻ."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Công Cụ Xóa Đầy Đủ Tính Năng"
  features:
    # feature loop
    - title: "Tìm Kiếm và Chỉnh Sửa Văn Bản"
      content: "Tìm kiếm văn bản nhạy cảm trong tài liệu và thay thế nó để bảo vệ thông tin riêng tư."

    # feature loop
    - title: "Che Nội Dung Hình Ảnh"
      content: "Sử dụng lớp phủ để che giấu hình ảnh hoặc các phần đã chọn, đảm bảo rằng các hình ảnh riêng tư không bị lộ."

    # feature loop
    - title: "Làm Sạch Siêu Dữ Liệu"
      content: "Xóa hoặc chỉnh sửa siêu dữ liệu ẩn để ngăn chặn việc tiết lộ dữ liệu không mong muốn."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Bảo Vệ Dữ Liệu Hình Ảnh Với Lớp Phủ"
      content: |
        Ví dụ này cho thấy cách xóa những hình ảnh nhạy cảm trong tài liệu.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Tải tệp để xóa
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Định nghĩa kích thước, vị trí và màu của lớp phủ
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Đánh dấu khu vực hình ảnh trên trang một
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Áp dụng lớp phủ cho hình ảnh
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
    title: "Bảo Vệ Nội Dung POWERPOINT Với .NET"
    exclude: "POWERPOINT"
    description: "Sử dụng .NET để ẩn hoặc xóa dữ liệu nhạy cảm trong các tệp POWERPOINT. Một giải pháp đáng tin cậy trong việc bảo vệ tài liệu nhạy cảm."
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