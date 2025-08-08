
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: vi
format: Image
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Bảo Vệ Hình Ảnh Trong IMAGE Bằng Cách Thêm Lớp Phủ Dùng C#"
head_description: "Với GroupDocs.Redaction for .NET, bạn có thể ẩn dữ liệu hình ảnh nhạy cảm trong các tệp IMAGE bằng lớp phủ màu. Bảo vệ thông tin quan trọng trong khi giữ nguyên thiết kế gốc của tệp."

############################# Header ############################
title: "Ẩn Hình Ảnh Riêng Tư Trong Các Tệp IMAGE Bằng Lớp Phủ Với .NET" 
description: "Giữ cho hình ảnh kinh doanh và cá nhân nhạy cảm được bảo vệ trong các tệp IMAGE bằng C#. Công cụ đơn giản cho việc bảo vệ nội dung nhanh chóng và hiệu quả."
subtitle: "Các Tính Năng Chính Của GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Điều Gì Là GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET trang bị cho các nhà phát triển C# các công cụ mạnh mẽ để ẩn hoặc xóa nội dung trong các tệp IMAGE. Bảo vệ tài liệu của bạn bằng cách che phủ văn bản nhạy cảm, hình ảnh và siêu dữ liệu.

############################# Steps ############################
steps:
    enable: true
    title: "Bảo Vệ Dữ Liệu Trong Các Tệp Image Bằng Lớp Phủ"
    content: |
      Sử dụng GroupDocs.Redaction for .NET để nhanh chóng ẩn nội dung nhạy cảm trong ứng dụng .NET của bạn.
      
      1. Tạo một thể hiện Redactor và cung cấp đường dẫn đến tệp Image của bạn.
      2. Điều chỉnh cài đặt xóa theo nhu cầu của bạn.
      3. Chọn các khu vực hình ảnh và xác định màu lớp phủ.
      4. Tiến hành xử lý tệp và lưu phiên bản an toàn.
   
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
        // Bảo vệ nội dung hình ảnh trong các tệp IMAGE

        // Mở tệp bằng cách sử dụng Redactor
        using (Redactor redactor  = new Redactor("input.png"))
        {
            // Định nghĩa kích thước và màu sắc lớp phủ
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Chọn khu vực mà bạn muốn ẩn
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Áp dụng lớp phủ và lưu kết quả
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Xóa Nội Dung Trong Nhiều Định Dạng Tệp"
  description: "Với GroupDocs.Redaction for .NET, bạn có thể ẩn hoặc xóa nội dung trong nhiều định dạng tệp khác nhau. Bảo vệ dữ liệu nhạy cảm trong khi duy trì định dạng sạch và dễ đọc."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Kiểm Soát Hoàn Toàn Các Nội Dung Được Xóa"
  features:
    # feature loop
    - title: "Tìm Kiếm và Thay Thế Văn Bản"
      content: "Tìm kiếm qua các tài liệu và thay thế văn bản nhạy cảm để bảo vệ thông tin riêng tư."

    # feature loop
    - title: "Áp Dụng Lớp Phủ Cho Hình Ảnh"
      content: "Áp dụng lớp phủ màu để che toàn bộ hình ảnh hoặc các phần được chọn."

    # feature loop
    - title: "Chỉnh Sửa Metadata"
      content: "Xóa hoặc cập nhật các trường siêu dữ liệu ẩn để ngăn chặn việc tiết lộ thông tin không mong muốn."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Che Giấu Nội Dung Hình Ảnh Bằng Lớp Phủ"
      content: |
        Ví dụ mã này cho bạn thấy cách áp dụng lớp phủ để ẩn các nội dung hình ảnh nhạy cảm.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Tải tệp để xóa
          using (Redactor redactor  = new Redactor("source.png"))
          {
              // Cấu hình kích thước lớp phủ, màu sắc và vị trí
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Chọn khu vực hình ảnh trên trang đầu
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Thêm lớp phủ để ẩn nội dung hình ảnh
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
    title: "Ẩn Nội Dung Trong IMAGE Bằng Cách Sử Dụng .NET Redactions"
    exclude: "IMAGE"
    description: "Sử dụng .NET để ẩn hoặc xóa dữ liệu nhạy cảm trong các tệp IMAGE. Một phương pháp đáng tin cậy để đảm bảo an toàn cho các tài liệu chính thức và bảo vệ thông tin bí mật."
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