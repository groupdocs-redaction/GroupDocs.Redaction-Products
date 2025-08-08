
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: vi
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Xóa siêu dữ liệu khỏi DOCX bằng C#"
head_description: "Sử dụng GroupDocs.Redaction for .NET để xóa hoặc thay đổi siêu dữ liệu ẩn trong các tệp DOCX. Bảo vệ tài liệu của bạn khỏi việc tiết lộ các chi tiết riêng tư."

############################# Header ############################
title: "Xóa siêu dữ liệu trong các tệp DOCX với .NET" 
description: "Sử dụng C# để làm sạch siêu dữ liệu nhạy cảm từ các tệp DOCX. Giữ thông tin doanh nghiệp và cá nhân của bạn được bảo vệ."
subtitle: "Các tính năng hàng đầu của GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET là gì?"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction cung cấp cho các nhà phát triển C# các công cụ để ẩn hoặc xóa nội dung trong các tệp DOCX. Làm sạch văn bản, hình ảnh và siêu dữ liệu nhanh chóng.

############################# Steps ############################
steps:
    enable: true
    title: "Làm sạch dữ liệu ẩn trong các tệp Docx"
    content: |
      GroupDocs.Redaction giúp các dự án .NET của bạn loại bỏ siêu dữ liệu không mong muốn nhanh chóng.
      
      1. Tạo một phiên bản Redactor và mở tệp Docx của bạn.
      2. Thiết lập quy tắc xóa cho các mục siêu dữ liệu.
      3. Áp dụng thay đổi để làm sạch tài liệu.
      4. Lưu tệp đã làm sạch.
   
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
        // Xóa siêu dữ liệu từ các tài liệu DOCX

        // Tải tệp bằng Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Thiết lập tùy chọn xóa siêu dữ liệu
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Áp dụng và lưu các thay đổi
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ẩn thông tin nhạy cảm trong bất kỳ tài liệu nào"
  description: "GroupDocs.Redaction for .NET cho phép bạn làm sạch nội dung nhạy cảm trong nhiều loại tệp. Đảm bảo tài liệu của bạn an toàn khi chia sẻ hoặc lưu trữ."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Tùy chọn chỉnh sửa thông minh"
  features:
    # feature loop
    - title: "Xóa văn bản riêng tư"
      content: "Tìm kiếm và xóa các văn bản cá nhân hoặc doanh nghiệp từ tệp của bạn."

    # feature loop
    - title: "Che khuất hình ảnh"
      content: "Che dấu hình ảnh hoặc các khu vực đã chọn để ẩn nội dung bảo mật."

    # feature loop
    - title: "Xóa siêu dữ liệu"
      content: "Xóa các mục siêu dữ liệu ẩn để tránh việc rò rỉ thông tin chi tiết nền."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Làm sạch các trường siêu dữ liệu"
      content: |
        Ví dụ này trình bày cách xóa dữ liệu ẩn khỏi các tệp DOCX.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Tải tệp DOCX của bạn
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Định hướng trường Tác giả để xóa
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Định hướng trường Tiêu đề để xóa
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Chạy quá trình chỉnh sửa
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Lưu tệp đã cập nhật của bạn
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
    title: "Xóa siêu dữ liệu trong DOCX với .NET"
    exclude: "DOCX"
    description: "Xóa siêu dữ liệu không mong muốn trong các tệp DOCX bằng cách sử dụng .NET. Một cách đơn giản để bảo vệ chi tiết ẩn của tệp của bạn."
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