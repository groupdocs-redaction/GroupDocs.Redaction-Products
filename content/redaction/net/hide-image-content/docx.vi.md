
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: vi
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Che Ảnh Trong DOCX Bằng Lớp Phủ Sử Dụng C#"
head_description: "Sử dụng GroupDocs.Redaction for .NET để che hình ảnh nhạy cảm trong các tệp DOCX bằng lớp phủ màu. Bảo vệ dữ liệu riêng tư trong khi giữ nguyên cấu trúc tài liệu."

############################# Header ############################
title: "Che Ảnh Nhạy Cảm Trong Tài Liệu DOCX Bằng Lớp Phủ Sử Dụng .NET" 
description: "Bảo vệ thông tin cá nhân và kinh doanh trong các tệp DOCX bằng cách sử dụng C#. Công cụ của chúng tôi giúp bảo vệ dữ liệu nhanh chóng và hiệu quả."
subtitle: "Tính Năng của GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Tìm Hiểu Về GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET trang bị cho các nhà phát triển C# các công cụ để ẩn hoặc xóa nội dung trong các tệp DOCX. Bảo vệ tài liệu của bạn bằng cách che phủ văn bản, hình ảnh và siêu dữ liệu trên nhiều định dạng khác nhau.

############################# Steps ############################
steps:
    enable: true
    title: "Bảo Vệ Dữ Liệu Trong Tệp Docx"
    content: |
      GroupDocs.Redaction for .NET: Được xây dựng để giúp các ứng dụng .NET của bạn bảo đảm tài liệu. Xóa thông tin nhạy cảm chỉ với một vài bước.
      
      1. Khởi tạo một Redactor và cung cấp đường dẫn đến tệp Docx của bạn.
      2. Cấu hình các tùy chọn xóa để đáp ứng nhu cầu của bạn.
      3. Chọn khu vực hình ảnh và chọn màu lớp phủ.
      4. Chạy quá trình xóa và lưu tệp.
   
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
        // Che các khu vực hình ảnh nhạy cảm trong DOCX

        // Tải tệp qua constructor Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Đặt màu lớp phủ và kích thước
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Xác định khu vực để xóa
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
  title: "Xóa Nội Dung Trong Các Tệp"
  description: "Với GroupDocs.Redaction for .NET, bạn có thể ẩn hoặc xóa nội dung nhạy cảm trong nhiều loại tệp. Giữ cho tài liệu an toàn trong khi bảo tồn khả năng đọc."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Tùy Chọn Xóa Linh Hoạt"
  features:
    # feature loop
    - title: "Chỉnh Sửa Văn Bản Một Cách Dễ Dàng"
      content: "Tìm kiếm và thay thế văn bản riêng tư trong toàn bộ tài liệu nhằm nâng cao bảo mật dữ liệu."

    # feature loop
    - title: "Che Khu Vực Hình Ảnh"
      content: "Áp dụng lớp phủ cho toàn bộ hình ảnh hoặc chọn phần cụ thể để bảo vệ thông tin hình ảnh."

    # feature loop
    - title: "Làm Sạch Siêu Dữ Liệu"
      content: "Xóa hoặc thay đổi siêu dữ liệu ẩn để tránh việc tiết lộ dữ liệu không mong muốn."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Áp Dụng Lớp Phủ Để Ẩn Chi Tiết Hình Ảnh"
      content: |
        Ví dụ này minh họa cách ẩn các khu vực nhạy cảm trong hình ảnh tài liệu.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Tải tài liệu bạn muốn xóa
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Chỉ định tham số lớp phủ: kích thước, vị trí, màu sắc
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Nhắm đến một khu vực cụ thể trên trang đầu
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Đặt lớp phủ lên hình ảnh
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
    title: "Bảo Vệ Tệp DOCX Với Lớp Phủ .NET"
    exclude: "DOCX"
    description: "Sử dụng .NET để che hoặc xóa dữ liệu nhạy cảm trong các tệp DOCX. Lý tưởng để giữ an toàn cho các tài liệu bí mật."
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