
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: vi
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Xóa siêu dữ liệu khỏi các tệp PPTX bằng C#"
head_description: "GroupDocs.Redaction for .NET giúp bạn xóa hoặc chỉnh sửa siêu dữ liệu trong các tệp PPTX. Bảo vệ tài liệu của bạn bằng cách loại bỏ dữ liệu ẩn cá nhân."

############################# Header ############################
title: "Xóa siêu dữ liệu trong PPTX bằng các công cụ .NET" 
description: "Ẩn siêu dữ liệu nhạy cảm trong các tệp PPTX bằng C#. Lý tưởng cho sự riêng tư trong doanh nghiệp và cá nhân."
subtitle: "Chức năng cốt lõi của GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Tìm hiểu về GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction dành cho các nhà phát triển C# cần xóa dữ liệu khỏi các tệp PPTX. Làm sạch văn bản, hình ảnh và siêu dữ liệu nhanh chóng.

############################# Steps ############################
steps:
    enable: true
    title: "Xóa siêu dữ liệu ẩn trong các tệp Pptx"
    content: |
      GroupDocs.Redaction giúp các giải pháp .NET của bạn làm sạch dữ liệu ẩn một cách dễ dàng.
      
      1. Tạo một phiên bản Redactor và tải tệp Pptx.
      2. Cấu hình các quy tắc chỉnh sửa cho các trường siêu dữ liệu.
      3. Áp dụng việc chỉnh sửa để xóa dữ liệu.
      4. Lưu tệp đã chỉnh sửa của bạn.
   
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
        // Xóa siêu dữ liệu trong PPTX

        // Mở tệp bằng Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Thiết lập chỉnh sửa cho việc làm sạch siêu dữ liệu
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Áp dụng và lưu tệp
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Công cụ chỉnh sửa bổ sung cho bất kỳ tệp nào"
  description: "GroupDocs.Redaction for .NET hỗ trợ việc chỉnh sửa nội dung trên nhiều định dạng khác nhau. Đảm bảo dữ liệu của bạn được bảo mật và các tệp sạch sẽ."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Công cụ bảo mật tích hợp"
  features:
    # feature loop
    - title: "Tìm và Xóa văn bản"
      content: "Nhanh chóng xóa các định dạng văn bản cá nhân từ tệp của bạn."

    # feature loop
    - title: "Che khuất hình ảnh bằng lớp phủ"
      content: "Ẩn các vùng hình ảnh không nên nhìn thấy."

    # feature loop
    - title: "Xóa siêu dữ liệu"
      content: "Làm sạch các trường siêu dữ liệu có thể chứa thông tin ẩn."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Làm sạch các trường siêu dữ liệu"
      content: |
        Ví dụ này cho thấy cách xóa siêu dữ liệu khỏi một tệp PPTX một cách an toàn.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Nhập tệp PPTX của bạn
          using (Redactor redactor  = new Redactor("source.pptx"))
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

              // Chạy quá trình chỉnh sửa
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Xuất tệp đã chỉnh sửa
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
    title: "Làm sạch siêu dữ liệu trong các tệp PPTX bằng .NET"
    exclude: "PPTX"
    description: "Dễ dàng xóa siêu dữ liệu nền khỏi các tệp PPTX bằng .NET. Hoàn hảo cho sự an toàn của tài liệu."
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