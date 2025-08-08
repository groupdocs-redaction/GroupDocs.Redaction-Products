
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: vi
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Xóa nội dung nhạy cảm trong PDF bằng Java"
head_description: "Sử dụng GroupDocs.Redaction for Java để tìm và loại bỏ dữ liệu cá nhân từ các tệp PDF của bạn. Xóa nội dung văn bản một cách đơn giản, nhanh chóng và đáng tin cậy."

############################# Header ############################
title: "Xóa dữ liệu nhạy cảm từ các tệp PDF với Java" 
description: "Dọn dẹp các tệp PDF bằng Java và GroupDocs.Redaction for Java. Xóa bỏ nội dung cá nhân, pháp lý hoặc kinh doanh một cách hiệu quả."
subtitle: "Những gì bạn có thể làm với GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Giới thiệu về GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java cung cấp cho các nhà phát triển Java một cách đơn giản để dọn dẹp các tệp PDF. Xóa hoặc thay thế văn bản, hình ảnh, bình luận và dữ liệu ẩn.

############################# Steps ############################
steps:
    enable: true
    title: "Cách xóa văn bản trong các tệp Pdf"
    content: |
      Với GroupDocs.Redaction for Java, các nhà phát triển Java có thể loại bỏ nội dung nhạy cảm chỉ trong vài bước.
      
      1. Tạo một Redactor và tải tệp Pdf của bạn.
      2. Chọn các tùy chọn xóa bạn muốn.
      3. Nhập văn bản cần tìm và nội dung thay thế.
      4. Áp dụng xóa và lưu tệp.
   
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
        // Cách dọn dẹp một tệp PDF

        // Tạo một Redactor và tải tài liệu
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Thiết lập các quy tắc xóa của bạn
            // Thêm văn bản cần loại bỏ và thay thế bằng cái gì
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Áp dụng xóa và lưu tệp mới
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nhiều tính năng xóa hơn"
  description: "GroupDocs.Redaction for Java loại bỏ thông tin nhạy cảm trên nhiều định dạng khác nhau. Xóa văn bản, hình ảnh và metadata trong khi vẫn giữ tệp có thể đọc được."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Công cụ cho việc xóa văn bản và hình ảnh"
  features:
    # feature loop
    - title: "Tìm và thay thế văn bản"
      content: "Tìm kiếm bất kỳ từ hoặc cụm từ nào và thay thế chúng. Hoạt động với văn bản thuần túy hoặc regex."

    # feature loop
    - title: "Che khuất nội dung hình ảnh"
      content: "Ẩn hình ảnh hoặc phần của hình ảnh bằng lớp phủ màu."

    # feature loop
    - title: "Dọn dẹp metadata"
      content: "Loại bỏ tên tác giả, ngày tháng hoặc các chi tiết ẩn khác trước khi chia sẻ."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Xóa văn bản với Regex"
      content: |
        Sử dụng regex để tìm và ẩn các mẫu như email, ID hoặc định dạng tùy chỉnh.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Mở tài liệu bạn muốn chỉnh sửa
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Thêm một mẫu regex EMAIL và văn bản thay thế
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Áp dụng xóa cho các nội dung khớp
              redactor.apply(redaction);

              // Lưu phiên bản đã xóa
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
    title: "Xóa các tệp PDF với Java"
    exclude: "PDF"
    description: "Bảo vệ thông tin cá nhân hoặc doanh nghiệp bằng cách xóa nội dung PDF bằng các công cụ từ Java."
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