
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: vi
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Xóa văn bản cá nhân từ XLSX bằng Java"
head_description: "Giữ cho dữ liệu trong XLSX của bạn an toàn bằng cách loại bỏ văn bản và metadata bằng GroupDocs.Redaction for Java. Bảo vệ hiệu quả và đơn giản."

############################# Header ############################
title: "Dọn dẹp các tệp XLSX bằng Java" 
description: "Xóa nội dung nhạy cảm từ các tệp XLSX bằng Java và GroupDocs.Redaction for Java. Giữ cho bảng tính của bạn an toàn."
subtitle: "Những gì bạn có thể làm với GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Tại sao sử dụng GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java cung cấp cho các nhà phát triển Java công cụ để dọn dẹp các tệp XLSX. Xóa văn bản, metadata, hình ảnh và hơn thế nữa chỉ với vài dòng mã.

############################# Steps ############################
steps:
    enable: true
    title: "Xóa dữ liệu từ các tệp Xlsx"
    content: |
      Sử dụng GroupDocs.Redaction for Java trong bất kỳ ứng dụng Java nào để loại bỏ văn bản hoặc nội dung ẩn trước khi chia sẻ.
      
      1. Tạo một thể hiện Redactor và tải tệp của bạn.
      2. Chọn các tùy chọn xóa bạn muốn.
      3. Chọn văn bản để tìm và nội dung thay thế.
      4. Áp dụng xóa và lưu tài liệu của bạn.
   
    code:
      platform: "java"
      copy_title: "Sao chép"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Mẫu chỉnh sửa"
      install:
        command: |
          <dependencies>
            <dependency>
              <groupId>com.groupdocs</groupId>
              <artifactId>groupdocs-redaction</artifactId>
              <version>{0}</version>
            </dependency>
          </dependencies>

          <repositories>
            <repository>
              <id>repository.groupdocs.com</id>
              <name>GroupDocs Repository</name>
              <url>https://repository.groupdocs.com/repo/</url>
            </repository>
          </repositories>
        copy_tip: "nhấp để sao chép"
        copy_done: "đã sao chép"
      links:
        #  loop
        - title: "Nhiều ví dụ hơn"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "Tài liệu"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // Cách xóa một bảng tính XLSX

        // Tạo một Redactor và tải tệp của bạn
        final Redactor redactor = new Redactor("input.xlsx");
        try
        {
            // Chọn các cài đặt xóa của bạn
            // Nhập văn bản tìm kiếm và thay thế
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Áp dụng thay đổi và lưu
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Công cụ xóa hữu ích"
  description: "GroupDocs.Redaction for Java giúp xóa nội dung cá nhân từ nhiều loại tệp. Dọn dẹp tài liệu mà không làm mất định dạng."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Bảo vệ nội dung thông minh"
  features:
    # feature loop
    - title: "Tìm kiếm và thay thế văn bản"
      content: "Tìm và cập nhật hoặc ẩn dữ liệu nhạy cảm trong các ô."

    # feature loop
    - title: "Che khuất hình ảnh"
      content: "Ẩn biểu đồ, hình ảnh hoặc các vùng bằng lớp phủ màu."

    # feature loop
    - title: "Xóa metadata"
      content: "Loại bỏ thông tin tác giả, ngày tạo, và các dữ liệu nền khác."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Xóa bằng cách sử dụng Regex"
      content: |
        Tìm và xóa các giá trị như số tài khoản hoặc mẫu bằng regex.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Mở tệp để xử lý
          final Redactor redactor = new Redactor("source.xlsx");
          try
          {
              // Thêm một quy tắc regex EMAIL và nội dung thay thế
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Áp dụng các quy tắc xóa
              redactor.apply(redaction);

              // Lưu tệp đã cập nhật
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "Sao chép"
        install:
          command: |
            <dependencies>
              <dependency>
                <groupId>com.groupdocs</groupId>
                <artifactId>groupdocs-redaction</artifactId>
                <version>{0}</version>
              </dependency>
            </dependencies>
            <repositories>
              <repository>
                <id>repository.groupdocs.com</id>
                <name>GroupDocs Repository</name>
                <url>https://repository.groupdocs.com/repo/</url>
              </repository>
            </repositories>
          copy_tip: "nhấp để sao chép"
          copy_done: "đã sao chép"
        top_links:
          #  loop
          - title: "Tải xuống kết quả"
            icon: "download"
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
        links:
          #  loop
          - title: "Nhiều ví dụ hơn"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "Tài liệu"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "Sẵn sàng bắt đầu chưa?"
  description: "Thử nghiệm tính năng của GroupDocs.Redaction miễn phí hoặc yêu cầu cấp phép"
  items:
    #  loop
    - title: "Tải xuống Maven"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "Cấp phép"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Xóa nội dung trong XLSX với Java"
    exclude: "XLSX"
    description: "Dọn dẹp và bảo vệ các tệp XLSX bằng các tính năng xóa và loại bỏ nội dung của Java."
    items: 
        # format loop 1
        - name: "Chỉnh sửa PDF"
          format: "PDF"
          link: "/redaction/java/replace-sensitive-text//pdf/"
          description: "Định dạng Tài liệu Di động Adobe"

        # format loop 2
        - name: "Chỉnh sửa Word"
          format: "WORD"
          link: "/redaction/java/replace-sensitive-text//word/"
          description: "Tài liệu MS Word và Open Office"
          
        # format loop 3
        - name: "Chỉnh sửa Excel"
          format: "EXCEL"
          link: "/redaction/java/replace-sensitive-text//excel/"
          description: "Bảng tính MS Excel và Open Office"

        # format loop 4
        - name: "Chỉnh sửa PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/replace-sensitive-text//powerpoint/"
          description: "Trình bày MS PowerPoint và Open Office"

        # format loop 5
        - name: "Chỉnh sửa DOCX"
          format: "DOCX"
          link: "/redaction/java/replace-sensitive-text//docx/"
          description: "Tài liệu Open XML của Microsoft Word"
          
        # format loop 6
        - name: "Chỉnh sửa XLSX"
          format: "XLSX"
          link: "/redaction/java/replace-sensitive-text//xlsx/"
          description: "Bảng tính Open XML của Microsoft Excel"
          
        # format loop 7
        - name: "Chỉnh sửa PPTX"
          format: "PPTX"
          link: "/redaction/java/replace-sensitive-text//pptx/"
          description: "Bài thuyết trình Open XML của PowerPoint"


---