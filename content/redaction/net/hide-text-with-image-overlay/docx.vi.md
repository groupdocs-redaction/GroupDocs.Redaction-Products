
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
head_title: "Che văn bản nhạy cảm trong DOCX bằng cách sử dụng lớp phủ và C#"
head_description: "Sử dụng GroupDocs.Redaction for .NET để bảo vệ văn bản riêng tư trong các tệp DOCX với các lớp phủ vuông đơn giản. Giữ cho định dạng tài liệu của bạn không thay đổi và dữ liệu của bạn được ẩn."

############################# Header ############################
title: "Che văn bản trong DOCX bằng lớp phủ sử dụng .NET" 
description: "Ẩn nội dung nhạy cảm trong các tài liệu DOCX của bạn bằng mã C#. Tuyệt vời cho việc bảo vệ tài liệu pháp lý, kinh doanh hoặc cá nhân."
subtitle: "Tính năng của GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET là gì?"
    link: "/redaction/net/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET giúp các nhà phát triển C# ẩn hoặc xóa nội dung riêng tư trong các tệp DOCX. Sử dụng nó để che khuất văn bản, hình ảnh và siêu dữ liệu trong các định dạng tệp khác nhau.

############################# Steps ############################
steps:
    enable: true
    title: "Xóa dữ liệu riêng tư từ các tài liệu Docx"
    content: |
      GroupDocs.Redaction for .NET giúp các nhà phát triển .NET dọn dẹp tài liệu chỉ với vài dòng mã.
      
      1. Tạo một Redactor và cung cấp đường dẫn tệp của bạn.
      2. Xác định cách mà quy trình xóa sẽ hoạt động.
      3. Nhập văn bản để ẩn và chọn màu lớp phủ.
      4. Xóa tệp và lưu lại.
   
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
        // Ẩn văn bản trong DOCX bằng các khối lớp phủ

        // Tạo một Redactor và tải tệp
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Thiết lập tùy chọn xóa của bạn
            // Nhập văn bản và xác định màu khối
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Xóa và lưu tài liệu đã cập nhật
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nhiều cách để dọn dẹp tài liệu"
  description: "Với GroupDocs.Redaction for .NET, xóa nhiều loại tệp khác nhau để giữ cho nội dung của bạn luôn an toàn và chuyên nghiệp."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Xóa thông minh được tích hợp"
  features:
    # feature loop
    - title: "Chỉnh sửa hoặc xóa văn bản"
      content: "Tìm các cụm từ cụ thể và ẩn hoặc thay thế chúng."

    # feature loop
    - title: "Ẩn khu vực hình ảnh"
      content: "Che khuất những điểm nhạy cảm trong hình ảnh hoặc các trang đã quét."

    # feature loop
    - title: "Xóa siêu dữ liệu"
      content: "Xóa thông tin vô hình có thể tiết lộ dữ liệu người dùng hoặc hệ thống."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Biểu thức chính quy cho việc xóa nội dung"
      content: |
        Xem cách biểu thức chính quy có thể tìm và ẩn các từ nhạy cảm.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Mở tệp mục tiêu
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Thiết lập mẫu và màu sắc
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Áp dụng logic xóa
              redactor.Apply(redaction);

              // Xuất tài liệu đã xóa
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
    title: "Ẩn nội dung trong DOCX với .NET"
    exclude: "DOCX"
    description: "Bảo vệ dữ liệu nhạy cảm trong tài liệu DOCX bằng cách che khuất nó bằng lớp phủ hoặc loại bỏ hoàn toàn bằng cách sử dụng các công cụ của .NET."
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