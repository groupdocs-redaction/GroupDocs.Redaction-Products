
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: vi
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Làm sạch siêu dữ liệu trong POWERPOINT bằng C#"
head_description: "Xóa siêu dữ liệu không mong muốn từ các tệp POWERPOINT bằng GroupDocs.Redaction for .NET. Bảo vệ quyền riêng tư của bạn bằng cách xóa dữ liệu ẩn."

############################# Header ############################
title: "Xóa siêu dữ liệu trong POWERPOINT qua .NET" 
description: "Bảo vệ dữ liệu tài liệu trong các tệp POWERPOINT với các công cụ đơn giản được xây dựng cho C#. Xóa siêu dữ liệu chỉ trong vài bước."
subtitle: "Các tính năng của GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Tìm hiểu thêm về GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction là bộ công cụ chỉnh sửa dành cho các nhà phát triển C#, giúp bạn làm việc với việc chỉnh sửa văn bản, hình ảnh và siêu dữ liệu trong các tệp POWERPOINT.

############################# Steps ############################
steps:
    enable: true
    title: "Làm sạch siêu dữ liệu từ tài liệu Powerpoint"
    content: |
      Với GroupDocs.Redaction, các ứng dụng .NET của bạn có thể dễ dàng loại bỏ siêu dữ liệu khỏi tài liệu.
      
      1. Bắt đầu với một đối tượng Redactor và tải tệp của bạn.
      2. Chọn các trường siêu dữ liệu để loại bỏ.
      3. Áp dụng cài đặt chỉnh sửa.
      4. Xuất tài liệu cuối cùng đã làm sạch.
   
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
        // Loại bỏ siêu dữ liệu trong POWERPOINT

        // Mở tài liệu với bộ chỉnh sửa
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Thiết lập tùy chọn làm sạch siêu dữ liệu
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Áp dụng chỉnh sửa và lưu
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Bảo vệ tài liệu bằng việc chỉnh sửa"
  description: "GroupDocs.Redaction for .NET giúp xóa nội dung ẩn khỏi tài liệu để bạn có thể chia sẻ chúng một cách an toàn. Hoạt động với nhiều định dạng và các loại nội dung."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Năng lực chỉnh sửa"
  features:
    # feature loop
    - title: "Xóa văn bản cá nhân"
      content: "Tìm các từ hoặc cụm từ nhạy cảm và loại bỏ chúng khỏi tài liệu."

    # feature loop
    - title: "Che khuất dữ liệu hình ảnh"
      content: "Sử dụng lớp phủ để che các khu vực trong hình ảnh cần giữ bí mật."

    # feature loop
    - title: "Xóa siêu dữ liệu"
      content: "Làm sạch các trường siêu dữ liệu có thể chứa thông tin ẩn."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Làm sạch các trường siêu dữ liệu ẩn"
      content: |
        Ví dụ này hướng dẫn bạn cách xóa dữ liệu nhúng như Tác giả và Tiêu đề khỏi một tệp POWERPOINT.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Nhập tệp vào bộ chỉnh sửa
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Xóa dữ liệu Tác giả
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Xóa dữ liệu Tiêu đề
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Chạy quá trình chỉnh sửa
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
    title: "Làm sạch các tệp POWERPOINT bằng .NET"
    exclude: "POWERPOINT"
    description: "Sử dụng .NET để xóa dữ liệu ẩn trong các tệp POWERPOINT. Lý tưởng cho việc làm sạch tài liệu bí mật."
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