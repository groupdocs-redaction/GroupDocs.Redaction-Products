
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: vi
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Xóa siêu dữ liệu trong PDF bằng C#"
head_description: "Với GroupDocs.Redaction for .NET, bạn có thể xóa hoặc cập nhật siêu dữ liệu trong các tệp PDF. Dọn dẹp dữ liệu ẩn có thể tiết lộ thông tin cá nhân."

############################# Header ############################
title: "Làm sạch siêu dữ liệu trong các tệp PDF với .NET" 
description: "Bảo vệ thông tin nhạy cảm trong các tệp PDF bằng cách sử dụng C#. Công cụ dễ sử dụng cho việc bảo vệ dữ liệu đáng tin cậy."
subtitle: "Các tính năng chính của GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Giới thiệu GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction cung cấp cho các nhà phát triển C# các công cụ dễ sử dụng để chỉnh sửa nội dung trong các tệp PDF. Che khuất văn bản, hình ảnh và siêu dữ liệu trên nhiều định dạng khác nhau.

############################# Steps ############################
steps:
    enable: true
    title: "Xóa siêu dữ liệu khỏi tài liệu Pdf"
    content: |
      Sử dụng GroupDocs.Redaction để nhanh chóng bảo vệ siêu dữ liệu tài liệu trong các ứng dụng .NET của bạn.
      
      1. Tạo một phiên bản Redactor và tải tệp Pdf của bạn.
      2. Thiết lập các quy tắc xóa để loại bỏ tất cả siêu dữ liệu ẩn.
      3. Áp dụng việc chỉnh sửa để làm sạch tài liệu.
      4. Lưu tệp đã cập nhật.
   
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
        // Xóa siêu dữ liệu từ các tệp PDF

        // Tải tệp bằng Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Cấu hình các quy tắc xóa siêu dữ liệu
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Áp dụng thay đổi và lưu tệp
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Xóa dữ liệu nhạy cảm trong tài liệu"
  description: "GroupDocs.Redaction for .NET giúp bạn ẩn hoặc xóa nội dung bảo mật trong nhiều định dạng tệp khác nhau. Bảo vệ dữ liệu riêng tư trong khi giữ cho tài liệu rõ ràng và chuyên nghiệp."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Tính năng chỉnh sửa mạnh mẽ"
  features:
    # feature loop
    - title: "Tìm và Thay thế văn bản"
      content: "Tìm kiếm văn bản nhạy cảm trong tài liệu của bạn và thay thế hoặc xóa để bảo vệ quyền riêng tư."

    # feature loop
    - title: "Ẩn nội dung hình ảnh"
      content: "Thêm lớp phủ cho hình ảnh hoặc các khu vực cụ thể để che chắn hình ảnh nhạy cảm."

    # feature loop
    - title: "Làm sạch siêu dữ liệu"
      content: "Xóa hoặc chỉnh sửa siêu dữ liệu ẩn để ngăn ngừa rò rỉ dữ liệu không mong muốn."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Xóa các mục siêu dữ liệu ẩn"
      content: |
        Ví dụ này cho thấy cách chỉnh sửa siêu dữ liệu trong một tệp PDF.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Tải tệp PDF vào bộ chỉnh sửa
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Thiết lập xóa cho thuộc tính Tác giả
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Thiết lập xóa cho thuộc tính Tiêu đề
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Chạy quá trình chỉnh sửa trên tài liệu
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Lưu tệp đã làm sạch
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
    title: "Bảo vệ các tệp PDF với việc chỉnh sửa siêu dữ liệu .NET"
    exclude: "PDF"
    description: "Sử dụng .NET để xóa dữ liệu ẩn từ các tệp PDF. Một cách đơn giản và hiệu quả để bảo vệ thông tin nhạy cảm trong tài liệu của bạn."
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