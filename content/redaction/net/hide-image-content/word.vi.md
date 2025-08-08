
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: vi
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Che Ảnh Trong WORD Bằng Lớp Phủ Sử Dụng C#"
head_description: "Ẩn các khu vực hình ảnh nhạy cảm trong các tệp WORD bằng GroupDocs.Redaction for .NET. Thêm lớp phủ màu để bảo vệ dữ liệu riêng tư trong khi giữ nguyên định dạng gốc của tài liệu."

############################# Header ############################
title: "Ẩn Hình Ảnh Riêng Tư Trong Tài Liệu WORD Bằng Lớp Phủ Sử Dụng .NET" 
description: "Bảo vệ dữ liệu cá nhân và doanh nghiệp trong các tài liệu WORD bằng C#. Đạt được bảo vệ nội dung đáng tin cậy với các công cụ đơn giản của chúng tôi."
subtitle: "Các Tính Năng Chính của GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Về GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET cung cấp cho các nhà phát triển C# các công cụ để ẩn hoặc xóa nội dung trong các tệp WORD. Bảo vệ tài liệu bằng cách che phủ văn bản, hình ảnh và siêu dữ liệu ở nhiều định dạng.

############################# Steps ############################
steps:
    enable: true
    title: "Bảo Vệ Dữ Liệu Nhạy Cảm Trong Tệp Word"
    content: |
      GroupDocs.Redaction for .NET giúp các ứng dụng .NET của bạn nhanh chóng ẩn nội dung cá nhân trong tài liệu.
      
      1. Tạo một đối tượng Redactor và chỉ định đường dẫn tệp Word.
      2. Đặt các tham số xóa để phù hợp với nhu cầu của bạn.
      3. Đánh dấu khu vực hình ảnh và xác định màu lớp phủ.
      4. Xử lý và lưu tệp đã xóa.
   
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
        // Che hình ảnh nhạy cảm trong WORD

        // Tải tệp bằng constructor Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Xác định màu sắc và kích thước lớp phủ
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Chọn khu vực hình ảnh để xóa
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
  title: "Ẩn Hoặc Xóa Nội Dung Tài Liệu"
  description: "GroupDocs.Redaction for .NET giúp bạn dễ dàng ẩn hoặc xóa dữ liệu trong nhiều định dạng tệp. Bảo vệ thông tin nhạy cảm trong khi giữ cho tài liệu sạch sẽ và dễ đọc."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Công Cụ Xóa Chi Tiết"
  features:
    # feature loop
    - title: "Thay Thế Văn Bản Ở Bất Cứ Đâu"
      content: "Tìm kiếm và thay đổi văn bản nhạy cảm trên toàn bộ tài liệu để bảo vệ thông tin cá nhân."

    # feature loop
    - title: "Che Ảnh"
      content: "Thêm lớp phủ cho khu vực hình ảnh cụ thể hoặc toàn bộ hình ảnh nhằm ẩn các hình ảnh nhạy cảm."

    # feature loop
    - title: "Làm Sạch Siêu Dữ Liệu"
      content: "Xóa hoặc chỉnh sửa siêu dữ liệu ẩn để tránh rò rỉ thông tin không mong muốn."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Thêm Lớp Phủ Để Ẩn Nội Dung Hình Ảnh"
      content: |
        Ví dụ này minh họa cách bảo vệ dữ liệu nhạy cảm trong hình ảnh tài liệu bằng lớp phủ.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Tải tài liệu để chỉnh sửa
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Đặt kích thước lớp phủ, vị trí và màu sắc
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Tập trung vào một khu vực hình ảnh cụ thể trên trang đầu
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Áp dụng lớp phủ xóa
              redactor.Apply(redaction);

              // Lưu thay đổi vào tệp
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
    title: "Bảo Vệ Nội Dung WORD Với Lớp Phủ .NET"
    exclude: "WORD"
    description: ".NET cho phép bạn ẩn hoặc xóa nội dung nhạy cảm trong các tệp WORD. Một cách đáng tin cậy để bảo vệ tài liệu chính thức và bí mật."
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