
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: vi
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Xóa siêu dữ liệu trong WORD bằng C#"
head_description: "Sử dụng GroupDocs.Redaction for .NET để tìm và xóa siêu dữ liệu ẩn trong các tệp WORD. Giữ tài liệu của bạn riêng tư và an toàn khỏi sự rò rỉ không mong muốn."

############################# Header ############################
title: "Xóa siêu dữ liệu trong các tệp WORD bằng .NET" 
description: "Bảo vệ dữ liệu cá nhân và doanh nghiệp trong các tệp WORD bằng C#. Công cụ đơn giản cho sự riêng tư đáng tin cậy."
subtitle: "Những gì bạn có thể làm với GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Về GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction giúp các nhà phát triển C# bảo vệ nội dung trong các tệp WORD. Làm sạch văn bản, hình ảnh và siêu dữ liệu nhanh chóng và đơn giản.

############################# Steps ############################
steps:
    enable: true
    title: "Xóa siêu dữ liệu khỏi các tệp Word"
    content: |
      Với GroupDocs.Redaction, việc làm sạch siêu dữ liệu tài liệu trong môi trường .NET của bạn trở nên dễ dàng.
      
      1. Khởi tạo một đối tượng Redactor và mở tài liệu Word của bạn.
      2. Thiết lập quy tắc để xóa tất cả siêu dữ liệu ẩn.
      3. Chạy quá trình chỉnh sửa để xóa các thẻ nhạy cảm.
      4. Lưu tài liệu đã làm sạch của bạn.
   
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
        // Xóa siêu dữ liệu từ các tệp WORD

        // Mở tài liệu bằng Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Thiết lập tùy chọn xóa siêu dữ liệu
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Chỉnh sửa và lưu tệp đã làm sạch
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Chỉnh sửa dữ liệu bảo mật từ tài liệu"
  description: "Với GroupDocs.Redaction for .NET, bạn có thể xóa nội dung cá nhân từ nhiều định dạng khác nhau. Giữ cho các tệp của bạn an toàn trong khi vẫn giữ cấu trúc của chúng."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Công cụ chỉnh sửa siêu dữ liệu và nội dung"
  features:
    # feature loop
    - title: "Thay thế văn bản nhạy cảm"
      content: "Tìm văn bản trong tài liệu và xóa hoặc thay đổi chúng để bảo vệ thông tin cá nhân."

    # feature loop
    - title: "Che khuất hình ảnh"
      content: "Che khuất các khu vực nhạy cảm của hình ảnh bằng lớp phủ để ẩn dữ liệu trực quan."

    # feature loop
    - title: "Xóa siêu dữ liệu"
      content: "Tìm và làm sạch thông tin ẩn để tránh bị rò rỉ thông tin."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Chỉnh sửa hoặc xóa siêu dữ liệu ẩn"
      content: |
        Ví dụ này cho thấy cách nhắm mục tiêu và làm sạch các mục siêu dữ liệu trong một tài liệu WORD.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Tải tệp để chỉnh sửa
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Xóa siêu dữ liệu Tác giả
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Xóa siêu dữ liệu Tiêu đề
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Chạy quá trình chỉnh sửa
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Xuất tài liệu đã làm sạch
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
    title: "Chỉnh sửa siêu dữ liệu trong WORD với .NET"
    exclude: "WORD"
    description: "Sử dụng .NET để làm sạch siêu dữ liệu ẩn từ các tệp WORD. Công cụ đơn giản để giữ thông tin nhạy cảm an toàn."
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