
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: vi
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Làm sạch siêu dữ liệu trong các tệp XLSX với C#"
head_description: "Với GroupDocs.Redaction for .NET, bạn có thể an toàn xóa siêu dữ liệu từ các tệp XLSX. Dọn dẹp thông tin ẩn có thể tiết lộ dữ liệu tư nhân."

############################# Header ############################
title: "Xóa siêu dữ liệu khỏi các tệp XLSX bằng .NET" 
description: "Bảo vệ thông tin nhạy cảm trong các tệp XLSX của bạn với C#. Quy trình chỉnh sửa đơn giản cho tài liệu cá nhân và công việc."
subtitle: "Khám phá những gì GroupDocs.Redaction for .NET có thể làm" 

############################# About ############################
about:
    enable: true
    title: "Tìm hiểu về GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction cung cấp cho các nhà phát triển C# công cụ để làm sạch nội dung trong các tài liệu XLSX. Che hoặc xóa văn bản, hình ảnh và siêu dữ liệu một cách nhanh chóng.

############################# Steps ############################
steps:
    enable: true
    title: "Làm sạch siêu dữ liệu trong các tệp Xlsx"
    content: |
      Với GroupDocs.Redaction, các ứng dụng .NET của bạn có thể nhanh chóng loại bỏ dữ liệu ẩn.
      
      1. Thiết lập một Redactor và mở tệp Xlsx của bạn.
      2. Xác định các siêu dữ liệu bạn muốn xóa.
      3. Áp dụng các quy tắc chỉnh sửa.
      4. Lưu tệp cuối cùng.
   
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
        // Làm sạch siêu dữ liệu ẩn trong XLSX

        // Mở tệp bằng Redactor
        using (Redactor redactor  = new Redactor("input.xlsx"))
        {
            // Xác định các siêu dữ liệu cần xóa
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Áp dụng việc chỉnh sửa và lưu
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Bảo vệ thông tin nhạy cảm trong tài liệu"
  description: "Sử dụng GroupDocs.Redaction for .NET để xóa hoặc ẩn nội dung trong nhiều định dạng tệp. Giữ tài liệu riêng tư và sẵn sàng chia sẻ."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Tính năng chỉnh sửa tất cả trong một"
  features:
    # feature loop
    - title: "Thay thế hoặc xóa văn bản"
      content: "Bảo vệ dữ liệu cá nhân bằng cách tìm và xóa văn bản nhạy cảm."

    # feature loop
    - title: "Che khuất các phần hình ảnh"
      content: "Sử dụng lớp phủ để che vùng hình ảnh chứa thông tin riêng tư."

    # feature loop
    - title: "Xóa siêu dữ liệu"
      content: "Dọn dẹp các trường siêu dữ liệu ẩn có thể chứa chi tiết cá nhân hoặc doanh nghiệp."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cách xóa siêu dữ liệu"
      content: |
        Mã mẫu này xóa các thuộc tính siêu dữ liệu trong một tài liệu XLSX.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Mở tài liệu
          using (Redactor redactor  = new Redactor("source.xlsx"))
          {
              // Nhắm đến siêu dữ liệu Tác giả
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Nhắm đến siêu dữ liệu Tiêu đề
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Chạy quá trình chỉnh sửa
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Lưu tài liệu đã làm sạch
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
    title: "Xóa siêu dữ liệu trong XLSX bằng .NET"
    exclude: "XLSX"
    description: ".NET giúp dễ dàng dọn dẹp siêu dữ liệu từ các tệp XLSX. Giữ tài liệu của bạn sạch sẽ và an toàn."
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