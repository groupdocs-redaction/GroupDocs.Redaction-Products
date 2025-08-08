
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: vi
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Xóa văn bản cá nhân từ EXCEL bằng Java"
head_description: "Giữ cho các bảng tính EXCEL của bạn an toàn bằng cách xóa nội dung nhạy cảm với GroupDocs.Redaction for Java và Java. Dọn dẹp nhanh chóng và hiệu quả."

############################# Header ############################
title: "Chỉnh sửa hoặc xóa văn bản trong các tệp EXCEL với Java" 
description: "Dọn dẹp các tệp EXCEL của bạn với GroupDocs.Redaction for Java và Java. Rất tốt cho việc bảo vệ dữ liệu doanh nghiệp hoặc cá nhân."
subtitle: "Những gì bạn có thể làm với GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Gặp gỡ GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java cung cấp cho các nhà phát triển Java tất cả những gì họ cần để dọn dẹp các tệp EXCEL. Chỉnh sửa hoặc ẩn văn bản, hình ảnh, metadata và ghi chú với độ chính xác cao.

############################# Steps ############################
steps:
    enable: true
    title: "Cách xóa nội dung trong các tệp Excel"
    content: |
      Sử dụng GroupDocs.Redaction for Java trong các dự án Java của bạn để loại bỏ hoặc che giấu văn bản bạn không muốn chia sẻ.
      
      1. Tạo một Redactor và tải tệp Excel.
      2. Chọn các tùy chọn xóa của bạn.
      3. Định nghĩa những gì cần tìm và những gì để thay thế.
      4. Chạy xóa và lưu tệp của bạn.
   
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
        // Cách xóa văn bản trong một tệp EXCEL

        // Tải tệp bằng Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Thiết lập các quy tắc xóa của bạn
            // Nhập văn bản cần tìm và thay thế
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Áp dụng và lưu tệp đã dọn dẹp
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nhiều công cụ xóa hơn"
  description: "GroupDocs.Redaction for Java giúp dọn dẹp nội dung cá nhân trong nhiều loại tài liệu. Rất tốt cho việc bảo vệ quyền riêng tư trước khi chia sẻ."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Các tính năng xóa văn bản, hình ảnh và metadata"
  features:
    # feature loop
    - title: "Thay thế văn bản riêng tư"
      content: "Tìm và thay đổi các từ hoặc số khớp trên toàn tệp. Sử dụng các mẫu tìm kiếm hoặc văn bản chính xác."

    # feature loop
    - title: "Che khuất các phần hình ảnh"
      content: "Thêm hộp lớp phủ để ẩn hình ảnh hoặc ô. Chọn màu sắc, kích thước và vị trí."

    # feature loop
    - title: "Xóa thông tin nền"
      content: "Xóa dữ liệu ẩn như thông tin tác giả, dấu thời gian, hoặc chú thích tài liệu."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Xóa các mẫu bằng Regex"
      content: |
        Sử dụng các biểu thức chính quy để tìm và ẩn các mẫu như địa chỉ email hoặc số tài khoản.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Mở tệp bạn muốn dọn dẹp
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Tạo một mẫu regex EMAIL và đặt văn bản thay thế
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Chạy quá trình xóa
              redactor.apply(redaction);

              // Lưu phiên bản đã cập nhật
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
    title: "Xóa nội dung trong EXCEL bằng Java"
    exclude: "EXCEL"
    description: "Dọn dẹp dữ liệu cá nhân từ các tệp EXCEL bằng cách sử dụng Java. Một cách thông minh để giữ cho các bảng tính của bạn an toàn."
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