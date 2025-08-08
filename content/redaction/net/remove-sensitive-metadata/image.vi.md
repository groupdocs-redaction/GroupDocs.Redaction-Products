
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: vi
format: Image
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Xóa siêu dữ liệu ẩn trong IMAGE với C#"
head_description: "Sử dụng GroupDocs.Redaction for .NET để làm sạch siêu dữ liệu trong các tệp IMAGE của bạn. Đảm bảo các chi tiết cá nhân vẫn được bảo mật."

############################# Header ############################
title: "Xóa siêu dữ liệu trong các tệp IMAGE qua .NET" 
description: "Giữ an toàn cho các tệp IMAGE của bạn bằng cách sử dụng C#. Bảo vệ dữ liệu doanh nghiệp và cá nhân một cách dễ dàng."
subtitle: "Những gì bạn nhận được với GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Về GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction giúp người dùng C# làm sạch tệp bằng cách xóa văn bản không mong muốn, hình ảnh, và siêu dữ liệu trong các tệp IMAGE.

############################# Steps ############################
steps:
    enable: true
    title: "Làm sạch siêu dữ liệu trong các tệp Image"
    content: |
      Bắt đầu với GroupDocs.Redaction trong ứng dụng .NET của bạn để làm sạch siêu dữ liệu tệp.
      
      1. Tạo một Redactor và mở tệp Image của bạn.
      2. Chọn các tùy chọn để xóa các mục siêu dữ liệu ẩn.
      3. Áp dụng cài đặt chỉnh sửa.
      4. Lưu kết quả.
   
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
        // Xóa siêu dữ liệu ẩn từ các tệp IMAGE

        // Mở tệp bằng Redactor
        using (Redactor redactor  = new Redactor("input.png"))
        {
            // Thêm quy tắc chỉnh sửa cho siêu dữ liệu
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Xử lý và lưu
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Làm sạch nội dung trong bất kỳ tài liệu nào"
  description: "GroupDocs.Redaction for .NET loại bỏ văn bản riêng tư, các phần hình ảnh, hoặc các trường ẩn. Làm cho tài liệu an toàn để chia sẻ."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Các tính năng chính"
  features:
    # feature loop
    - title: "Chỉnh sửa văn bản"
      content: "Tìm và xóa các từ và số cá nhân."

    # feature loop
    - title: "Che khuất hình ảnh"
      content: "Thêm lớp che lên các phần hình ảnh với thông tin riêng tư."

    # feature loop
    - title: "Chỉnh sửa siêu dữ liệu"
      content: "Làm sạch các trường siêu dữ liệu có thể rò rỉ thông tin."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Xóa siêu dữ liệu nhạy cảm"
      content: |
        Mẫu này giải thích cách xóa các trường siêu dữ liệu cụ thể trong một tài liệu IMAGE.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Mở IMAGE bằng bộ chỉnh sửa
          using (Redactor redactor  = new Redactor("source.png"))
          {
              // Nhắm đến trường Tác giả
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Nhắm đến trường Tiêu đề
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Chỉnh sửa các trường
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Lưu tài liệu của bạn
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
    title: "Xóa siêu dữ liệu khỏi IMAGE bằng cách sử dụng .NET"
    exclude: "IMAGE"
    description: "Xóa dữ liệu nhạy cảm khỏi các tệp IMAGE với việc chỉnh sửa .NET. Giữ tài liệu của bạn an toàn để chia sẻ hoặc lưu trữ."
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