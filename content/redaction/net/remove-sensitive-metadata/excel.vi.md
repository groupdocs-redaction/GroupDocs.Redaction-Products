
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: vi
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Chỉnh sửa và xóa siêu dữ liệu trong EXCEL qua C#"
head_description: "Bảo mật các tài liệu EXCEL của bạn bằng cách xóa siêu dữ liệu bằng GroupDocs.Redaction for .NET. Loại bỏ dữ liệu ẩn có thể làm mất an toàn quyền riêng tư."

############################# Header ############################
title: "Bảo vệ siêu dữ liệu trong các tệp EXCEL qua .NET" 
description: "Bằng cách sử dụng C#, bạn có thể làm sạch dữ liệu nhạy cảm từ các tệp EXCEL. Công cụ được thiết kế để giữ thông tin của bạn được bảo vệ."
subtitle: "Các lợi ích hàng đầu của GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET là gì?"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction cung cấp một cách đáng tin cậy cho các nhà phát triển C# quản lý việc chỉnh sửa dữ liệu trong các tệp EXCEL. Nó hoạt động với văn bản, hình ảnh và siêu dữ liệu.

############################# Steps ############################
steps:
    enable: true
    title: "Làm sạch siêu dữ liệu trong các tệp Excel"
    content: |
      Sử dụng GroupDocs.Redaction trong các dự án .NET của bạn để xử lý siêu dữ liệu tài liệu một cách an toàn.
      
      1. Tạo một đối tượng Redactor và tải tệp Excel mà bạn muốn.
      2. Cấu hình chỉnh sửa để xóa siêu dữ liệu ẩn.
      3. Chạy quá trình dọn dẹp.
      4. Lưu phiên bản cuối cùng.
   
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
        // Làm sạch siêu dữ liệu khỏi EXCEL

        // Khởi tạo bộ chỉnh sửa và tải tệp
        using (Redactor redactor  = new Redactor("input.xlsx"))
        {
            // Thiết lập tùy chọn cho việc xóa siêu dữ liệu
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Chỉnh sửa và lưu kết quả
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Xóa dữ liệu cá nhân khỏi tệp của bạn"
  description: "GroupDocs.Redaction for .NET cho phép bạn làm sạch văn bản, hình ảnh và siêu dữ liệu trên nhiều định dạng. Lý tưởng cho tài liệu cá nhân, pháp lý và doanh nghiệp."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Công cụ xóa siêu dữ liệu"
  features:
    # feature loop
    - title: "Tìm kiếm và xóa văn bản"
      content: "Tìm văn bản cá nhân hoặc bí mật trong tài liệu và xóa nó một cách an toàn."

    # feature loop
    - title: "Che khuất các phần hình ảnh"
      content: "Thêm lớp phủ lên các phần nhạy cảm của hình ảnh để ngăn chặn việc xem."

    # feature loop
    - title: "Xóa siêu dữ liệu"
      content: "Xóa dữ liệu nhúng có thể rò rỉ thông tin nhạy cảm."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Nhắm mục tiêu siêu dữ liệu để chỉnh sửa"
      content: |
        Tìm hiểu cách xác định và xóa siêu dữ liệu như Tác giả hoặc Tiêu đề từ tài liệu EXCEL.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Nhập tài liệu vào bộ chỉnh sửa
          using (Redactor redactor  = new Redactor("source.xlsx"))
          {
              // Nhắm mục tiêu siêu dữ liệu Tác giả
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Nhắm mục tiêu siêu dữ liệu Tiêu đề
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Áp dụng thay đổi
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Lưu tài liệu đã cập nhật
              var saveOptions = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(saveOptions);
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "Xóa siêu dữ liệu trong EXCEL bằng .NET"
    exclude: "EXCEL"
    description: "Loại bỏ siêu dữ liệu riêng tư trong các tệp EXCEL với .NET. Giữ tài liệu của bạn sạch sẽ và an toàn."
    items: 
        # format loop 1
        - name: "Chỉnh sửa PDF"
          format: "PDF"
          link: "/redaction/net/remove-sensitive-metadata//pdf/"
          description: "Định dạng Tài liệu Di động Adobe"

        # format loop 2
        - name: "Chỉnh sửa Word"
          format: "WORD"
          link: "/redaction/net/remove-sensitive-metadata//word/"
          description: "Tài liệu MS Word và Open Office"
          
        # format loop 3
        - name: "Chỉnh sửa Excel"
          format: "EXCEL"
          link: "/redaction/net/remove-sensitive-metadata//excel/"
          description: "Bảng tính MS Excel và Open Office"

        # format loop 4
        - name: "Chỉnh sửa PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/remove-sensitive-metadata//powerpoint/"
          description: "Trình bày MS PowerPoint và Open Office"

        # format loop 5
        - name: "Chỉnh sửa Hình ảnh"
          format: "IMAGE"
          link: "/redaction/net/remove-sensitive-metadata//image/"
          description: "Các định dạng hình ảnh phổ biến"

        # format loop 6
        - name: "Chỉnh sửa Ảnh"
          format: "PHOTO"
          link: "/redaction/net/remove-sensitive-metadata//photo/"
          description: "Định dạng ảnh"

        # format loop 7
        - name: "Chỉnh sửa DOCX"
          format: "DOCX"
          link: "/redaction/net/remove-sensitive-metadata//docx/"
          description: "Tài liệu Open XML của Microsoft Word"
          
        # format loop 8
        - name: "Chỉnh sửa XLSX"
          format: "XLSX"
          link: "/redaction/net/remove-sensitive-metadata//xlsx/"
          description: "Bảng tính Open XML của Microsoft Excel"
          
        # format loop 9
        - name: "Chỉnh sửa PPTX"
          format: "PPTX"
          link: "/redaction/net/remove-sensitive-metadata//pptx/"
          description: "Bài thuyết trình Open XML của PowerPoint"

        # format loop 10
        - name: "Chỉnh sửa JPEG"
          format: "JPEG"
          link: "/redaction/net/remove-sensitive-metadata//jpeg/"
          description: "Hình ảnh JPEG"


---