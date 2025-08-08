
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: vi
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Che Ảnh Trong EXCEL Bằng Lớp Phủ Sử Dụng C#"
head_description: "Ẩn hình ảnh cá nhân trong các tệp EXCEL bằng GroupDocs.Redaction for .NET. Áp dụng lớp phủ màu để giữ dữ liệu riêng tư an toàn trong khi bảo tồn cấu trúc tài liệu."

############################# Header ############################
title: "Che Hình Ảnh Nhạy Cảm Trong Tài Liệu EXCEL Bằng Lớp Phủ Sử Dụng .NET" 
description: "Bảo vệ dữ liệu cá nhân và doanh nghiệp trong các tệp EXCEL bằng C#. Nhận bảo vệ dữ liệu nhanh chóng và đáng tin cậy với các công cụ của chúng tôi."
subtitle: "Khám Phá Tính Năng của GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Về GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET equip C# developers with tools to hide or delete sensitive content in EXCEL files. Protect documents by masking text, images, and metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Giữ An Toàn Dữ Liệu Của Bạn Trong Tệp Excel"
    content: |
      GroupDocs.Redaction for .NET giúp ứng dụng .NET của bạn bảo vệ tài liệu bằng cách ẩn nội dung nhạy cảm.
      
      1. Tạo một đối tượng Redactor và cung cấp đường dẫn tệp Excel.
      2. Cấu hình các tùy chọn để có kết quả mong muốn.
      3. Chọn khu vực hình ảnh và màu sắc lớp phủ.
      4. Áp dụng xóa và lưu tệp.
   
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
        // Che nội dung hình ảnh trong EXCEL

        // Tải tài liệu bằng Redactor
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Cấu hình kích thước và màu sắc lớp phủ
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Chọn khu vực để ẩn
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Áp dụng và lưu thay đổi
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Xóa Nội Dung Trong Tài Liệu"
  description: "GroupDocs.Redaction for .NET giúp bạn ẩn hoặc xóa nội dung nhạy cảm trong nhiều định dạng tài liệu. Bảo vệ dữ liệu trong khi giữ cho tài liệu dễ sử dụng."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Tùy Chọn Xóa Mạnh Mẽ"
  features:
    # feature loop
    - title: "Tìm Kiếm và Chỉnh Sửa Văn Bản"
      content: "Tìm và thay thế văn bản nhạy cảm để bảo mật thông tin riêng tư trong tài liệu của bạn."

    # feature loop
    - title: "Áp Dụng Lớp Phủ cho Khu Vực Hình Ảnh"
      content: "Che toàn bộ hình ảnh hoặc các phần đã chọn với lớp phủ để giữ cho các hình ảnh riêng tư."

    # feature loop
    - title: "Xóa Siêu Dữ Liệu"
      content: "Xóa các trường siêu dữ liệu ẩn để tránh việc tiết lộ thông tin không mong muốn."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Che Nội Dung Hình Ảnh Với Lớp Phủ"
      content: |
        Ví dụ này cho thấy làm thế nào để che giấu thông tin nhạy cảm trong hình ảnh tài liệu.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Mở tệp để chỉnh sửa
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Định nghĩa kích thước lớp phủ, màu sắc và vị trí
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Tập trung vào một khu vực hình ảnh cụ thể trên trang đầu
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Áp dụng lớp phủ để che khu vực hình ảnh
              redactor.Apply(redaction);

              // Lưu tài liệu cuối cùng
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
    title: "Bảo Vệ Tệp EXCEL Với Lớp Phủ .NET"
    exclude: "EXCEL"
    description: "Sử dụng .NET để ẩn hoặc xóa thông tin nhạy cảm trong các tệp EXCEL. Một giải pháp đáng tin cậy cho việc bảo mật tài liệu."
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