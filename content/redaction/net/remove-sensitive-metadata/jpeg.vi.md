
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: vi
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Chỉnh sửa siêu dữ liệu trong JPEG bằng C#"
head_description: "Với GroupDocs.Redaction for .NET, bạn có thể làm sạch hoặc thay đổi siêu dữ liệu trong các tệp JPEG của bạn. Loại bỏ các chi tiết ẩn có thể chứa dữ liệu cá nhân."

############################# Header ############################
title: "Xóa siêu dữ liệu khỏi các tệp JPEG bằng .NET" 
description: "Bảo vệ các chi tiết riêng tư trong các tệp JPEG của bạn bằng C#. Công cụ đơn giản cho an toàn tài liệu tốt hơn."
subtitle: "Các tính năng hàng đầu của GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Về GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction giúp các nhà phát triển C# xóa văn bản, hình ảnh và siêu dữ liệu khỏi các tệp JPEG bằng các công cụ đơn giản.

############################# Steps ############################
steps:
    enable: true
    title: "Làm sạch siêu dữ liệu trong các tài liệu Jpeg"
    content: |
      GroupDocs.Redaction giúp bạn nhanh chóng xóa siêu dữ liệu trong các ứng dụng .NET của bạn.
      
      1. Thiết lập một Redactor và tải tệp Jpeg bạn muốn.
      2. Chọn các thiết lập để xóa tất cả siêu dữ liệu.
      3. Chạy quy trình chỉnh sửa để làm sạch tệp.
      4. Lưu tệp của bạn với siêu dữ liệu đã được làm sạch.
   
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
        // Xóa siêu dữ liệu khỏi các tệp JPEG

        // Sử dụng Redactor để tải tệp
        using (Redactor redactor  = new Redactor("input.jpg"))
        {
            // Cấu hình quy tắc chỉnh sửa siêu dữ liệu
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Áp dụng và lưu
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Xóa dữ liệu nhạy cảm khỏi tài liệu"
  description: "GroupDocs.Redaction for .NET cho phép bạn ẩn hoặc làm sạch nội dung cá nhân qua nhiều định dạng. Bảo vệ dữ liệu nhạy cảm trong khi giữ cho các tệp của bạn hữu ích và rõ ràng."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Các tính năng chỉnh sửa chính"
  features:
    # feature loop
    - title: "Tìm kiếm và xóa văn bản"
      content: "Tìm các từ hoặc cụm từ nhạy cảm trong tệp của bạn và xóa chúng."

    # feature loop
    - title: "Che khuất các khu vực hình ảnh"
      content: "Sử dụng lớp phủ để ẩn các phần riêng tư của hình ảnh."

    # feature loop
    - title: "Chỉnh sửa siêu dữ liệu"
      content: "Xóa hoặc chỉnh sửa siêu dữ liệu để tránh việc chia sẻ thông tin cá nhân."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Làm sạch các trường siêu dữ liệu ẩn"
      content: |
        Ví dụ này cho thấy cách xóa hoặc chỉnh sửa các siêu dữ liệu ẩn trong các tài liệu JPEG.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Mở tệp JPEG với bộ chỉnh sửa
          using (Redactor redactor  = new Redactor("source.jpg"))
          {
              // Thêm các quy tắc chỉnh sửa cho trường Tác giả
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Thêm các quy tắc chỉnh sửa cho trường Tiêu đề
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
    title: "Làm sạch siêu dữ liệu JPEG với .NET"
    exclude: "JPEG"
    description: "Sử dụng .NET để xóa dữ liệu ẩn từ các tài liệu JPEG của bạn. Một cách tuyệt vời để bảo vệ các chi tiết nhạy cảm."
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