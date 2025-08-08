
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: vi
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Che Ảnh Trong Các Tệp XLSX Bằng Lớp Phủ Sử Dụng C#"
head_description: "Với GroupDocs.Redaction for .NET, bạn có thể che giấu nội dung hình ảnh nhạy cảm trong các tệp XLSX bằng cách áp dụng lớp phủ màu. Bảo vệ dữ liệu quan trọng trong khi giữ nguyên cấu trúc tài liệu."

############################# Header ############################
title: "Che Ảnh Nhạy Cảm Trong Tài Liệu XLSX Với .NET" 
description: "Đảm bảo quyền riêng tư dữ liệu trong các tệp XLSX với C#. Công cụ của chúng tôi được thiết kế để xóa hình ảnh một cách nhanh chóng và hiệu quả."
subtitle: "Các Tính Năng Chính của GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Về GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET cung cấp cho các nhà phát triển C# các công cụ để ẩn hoặc xóa nội dung trong các tệp XLSX. Bảo vệ tài liệu của bạn bằng cách che chắn văn bản, hình ảnh và siêu dữ liệu ở nhiều định dạng.

############################# Steps ############################
steps:
    enable: true
    title: "Bảo Vệ Dữ Liệu Riêng Tư Trong Tài Liệu Xlsx"
    content: |
      GroupDocs.Redaction for .NET: Giúp ứng dụng .NET của bạn bảo vệ tài liệu một cách hiệu quả.
      
      1. Tạo một thể hiện Redactor và tải tệp Xlsx.
      2. Đặt cấu hình tham số xóa để phù hợp với nhu cầu của bạn.
      3. Xác định khu vực hình ảnh và chọn màu lớp phủ.
      4. Áp dụng xóa và lưu tệp đầu ra.
   
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
        // Che phần hình ảnh nhạy cảm trong XLSX

        // Khởi tạo Redactor với đường dẫn tệp
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Chọn kích thước và màu lớp phủ
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Đánh dấu khu vực cần xóa
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
  title: "Tính Năng Xóa Tài Liệu"
  description: "Với GroupDocs.Redaction for .NET, bạn có thể xóa hoặc ẩn nội dung trong các định dạng tệp khác nhau. Bảo vệ thông tin nhạy cảm trong khi duy trì một định dạng sạch."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Tính Năng Xóa Vững Chắc"
  features:
    # feature loop
    - title: "Tìm Kiếm và Thay Thế Văn Bản"
      content: "Nhanh chóng tìm và xóa văn bản bí mật để bảo vệ dữ liệu nhạy cảm."

    # feature loop
    - title: "Che Nội Dung Hình Ảnh"
      content: "Áp dụng lớp phủ cho toàn bộ hình ảnh hoặc các khu vực cụ thể để ẩn các hình ảnh cá nhân."

    # feature loop
    - title: "Xóa Dữ Liệu Siêu Ẩn"
      content: "Xóa hoặc điều chỉnh siêu dữ liệu ẩn để ngăn chặn việc tiết lộ dữ liệu tình cờ."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ẩn Nội Dung Hình Ảnh Với Lớp Phủ"
      content: |
        Tìm hiểu cách che giấu các khu vực hình ảnh nhạy cảm trong tài liệu của bạn.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Mở tài liệu để xóa
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Xác định thuộc tính lớp phủ: kích thước, vị trí, màu sắc
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Tập trung vào một khu vực hình ảnh cụ thể
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Áp dụng lớp phủ cho khu vực hình ảnh
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
    title: "Che Nội Dung XLSX Với Các Công Cụ Xóa .NET"
    exclude: "XLSX"
    description: "Sử dụng .NET để ẩn hoặc bảo mật thông tin nhạy cảm trong các tệp XLSX. Một giải pháp đáng tin cậy để bảo vệ tài liệu."
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