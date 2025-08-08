
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
head_title: "Ẩn nội dung trong EXCEL với xóa lớp phủ và C#"
head_description: "Che văn bản trong các tài liệu EXCEL bằng các khối màu chắc chắn với GroupDocs.Redaction for .NET. Một cách dễ dàng để bảo vệ nội dung riêng tư."

############################# Header ############################
title: "Xóa lớp phủ cho các tệp EXCEL trong .NET" 
description: "Sử dụng mã C# để ẩn văn bản và bảo vệ dữ liệu bên trong các tệp EXCEL của bạn. Một giải pháp sạch sẽ cho an toàn tài liệu."
subtitle: "Những gì GroupDocs.Redaction for .NET bao gồm" 

############################# About ############################
about:
    enable: true
    title: "Tại sao chọn GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET được tạo ra dành cho các nhà phát triển C# những người muốn xóa hoặc xóa các nội dung trong các tệp EXCEL. Sử dụng nó để làm việc với văn bản, siêu dữ liệu và hình ảnh.

############################# Steps ############################
steps:
    enable: true
    title: "Xóa thông tin nhạy cảm trong định dạng Excel"
    content: |
      GroupDocs.Redaction for .NET là một công cụ đơn giản cho các nhà phát triển .NET dọn dẹp tài liệu trước khi chia sẻ.
      
      1. Khởi động một Redactor và tải tệp Excel của bạn.
      2. Quyết định về các thiết lập xóa cho tác vụ của bạn.
      3. Thêm từ khóa hoặc cụm từ cần xóa và chọn màu sắc.
      4. Chạy công cụ và lưu các thay đổi.
   
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
        // Sử dụng lớp phủ để ẩn văn bản trong EXCEL

        // Tạo một Redactor và tải tệp của bạn
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Chọn quy tắc xóa
            // Nhập những gì cần che và chọn màu sắc
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Thực hiện xóa và lưu tệp
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Tính năng chính cho bảo vệ dữ liệu"
  description: "GroupDocs.Redaction for .NET cho phép bạn ẩn hoặc xóa dữ liệu bên trong tài liệu mà không làm mất đi bố cục hoặc ý nghĩa."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Xây dựng để bảo vệ tài liệu"
  features:
    # feature loop
    - title: "Thay đổi nội dung văn bản"
      content: "Thay thế hoặc ẩn các từ đã chọn trong toàn bộ tệp."

    # feature loop
    - title: "Xóa hình ảnh"
      content: "Che khuất ảnh hoặc các khu vực bằng các khối đơn giản."

    # feature loop
    - title: "Xóa siêu dữ liệu"
      content: "Gỡ bỏ dữ liệu nền như tên tác giả hoặc thời gian."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Xóa văn bản bằng biểu thức chính quy"
      content: |
        Dưới đây là cách sử dụng regex để tìm và ẩn nội dung trong một tệp.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Tải tài liệu để xử lý
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Thêm mẫu và thiết lập lớp phủ
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Áp dụng các thay đổi
              redactor.Apply(redaction);

              // Lưu và đóng tài liệu đã xóa
              var save_opt = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_opt);
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Xóa các tệp EXCEL bằng .NET"
    exclude: "EXCEL"
    description: "Che khuất nội dung nhạy cảm trong EXCEL bằng cách sử dụng các lớp phủ vuông hoặc các quy định rõ ràng với các tính năng của .NET."
    items: 
        # format loop 1
        - name: "Chỉnh sửa PDF"
          format: "PDF"
          link: "/redaction/net/hide-text-with-image-overlay//pdf/"
          description: "Định dạng Tài liệu Di động Adobe"

        # format loop 2
        - name: "Chỉnh sửa Word"
          format: "WORD"
          link: "/redaction/net/hide-text-with-image-overlay//word/"
          description: "Tài liệu MS Word và Open Office"
          
        # format loop 3
        - name: "Chỉnh sửa Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-text-with-image-overlay//excel/"
          description: "Bảng tính MS Excel và Open Office"

        # format loop 4
        - name: "Chỉnh sửa PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-text-with-image-overlay//powerpoint/"
          description: "Trình bày MS PowerPoint và Open Office"

        # format loop 5
        - name: "Chỉnh sửa DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-text-with-image-overlay//docx/"
          description: "Tài liệu Open XML của Microsoft Word"
          
        # format loop 6
        - name: "Chỉnh sửa XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-text-with-image-overlay//xlsx/"
          description: "Bảng tính Open XML của Microsoft Excel"
          
        # format loop 7
        - name: "Chỉnh sửa PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-text-with-image-overlay//pptx/"
          description: "Bài thuyết trình Open XML của PowerPoint"


---