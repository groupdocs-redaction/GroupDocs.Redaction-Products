
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: vi
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Xóa siêu dữ liệu trong PHOTO bằng C#"
head_description: "GroupDocs.Redaction for .NET giúp bạn xóa dữ liệu ẩn trong các tệp PHOTO có thể tiết lộ thông tin cá nhân hoặc doanh nghiệp."

############################# Header ############################
title: "Xóa siêu dữ liệu trong PHOTO bằng .NET" 
description: "Bảo vệ tài liệu của bạn dễ dàng bằng cách xóa thông tin ẩn khỏi các tệp PHOTO bằng C#."
subtitle: "Các điểm nổi bật của GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Về GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction hỗ trợ các nhà phát triển C# ẩn thông tin cá nhân trong các tệp PHOTO, bao gồm cả văn bản, hình ảnh và siêu dữ liệu.

############################# Steps ############################
steps:
    enable: true
    title: "Xóa siêu dữ liệu trong các tệp Photo"
    content: |
      Sử dụng GroupDocs.Redaction trong dự án .NET của bạn để làm sạch siêu dữ liệu tài liệu.
      
      1. Bắt đầu một Redactor và mở tệp Photo của bạn.
      2. Đặt quy tắc để xóa siêu dữ liệu.
      3. Áp dụng chỉnh sửa và làm sạch tệp.
      4. Lưu tệp kết quả.
   
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
        // Xóa siêu dữ liệu từ các tài liệu PHOTO

        // Sử dụng Redactor để tải tài liệu
        using (Redactor redactor  = new Redactor("input.jpeg"))
        {
            // Đặt các trường siêu dữ liệu để xóa
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Làm sạch tài liệu và lưu
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Xóa thông tin cá nhân khỏi các tệp"
  description: "GroupDocs.Redaction for .NET giúp bạn xóa dữ liệu cá nhân khỏi văn bản, hình ảnh và thông tin tệp. Hoàn hảo cho việc bảo mật dữ liệu."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Các tính năng chỉnh sửa hữu ích"
  features:
    # feature loop
    - title: "Dọn dẹp văn bản"
      content: "Quét và xóa bất kỳ văn bản nào không nên được chia sẻ."

    # feature loop
    - title: "Che khuất các khu vực hình ảnh"
      content: "Thêm lớp phủ lên các phần hình ảnh có thông tin riêng tư."

    # feature loop
    - title: "Xóa siêu dữ liệu"
      content: "Xóa dữ liệu ẩn trước khi chia sẻ hoặc xuất bản."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Xóa các trường siêu dữ liệu ẩn"
      content: |
        Ví dụ này hướng dẫn bạn xóa siêu dữ liệu khỏi tài liệu PHOTO.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Tải tệp PHOTO vào bộ chỉnh sửa
          using (Redactor redactor  = new Redactor("source.jpeg"))
          {
              // Chỉnh sửa trường Tác giả
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Chỉnh sửa trường Tiêu đề
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Xử lý tài liệu
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Lưu phiên bản đã làm sạch
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
    title: "Sử dụng .NET để chỉnh sửa siêu dữ liệu PHOTO"
    exclude: "PHOTO"
    description: "Giữ tài liệu PHOTO của bạn an toàn bằng cách làm sạch siêu dữ liệu với các công cụ .NET."
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