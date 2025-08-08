
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: vi
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Xóa văn bản cá nhân từ PPTX bằng Java"
head_description: "Bảo vệ các chi tiết nhạy cảm trong các bản trình bày PPTX của bạn với GroupDocs.Redaction for Java và Java. Xóa văn bản một cách dễ dàng và hiệu quả."

############################# Header ############################
title: "Dọn dẹp văn bản trong các tệp PPTX với Java" 
description: "Sử dụng GroupDocs.Redaction for Java và Java để ẩn hoặc xóa nội dung trong các slide PPTX của bạn. Rất hữu ích cho kinh doanh, pháp lý hoặc cá nhân."
subtitle: "Những gì bạn có thể làm với GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Gặp gỡ GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java cung cấp cho các nhà phát triển Java một cách đáng tin cậy để chỉnh sửa hoặc ẩn nội dung trong các tệp PPTX. Làm việc với văn bản, hình ảnh, metadata và bình luận với sự kiểm soát hoàn toàn.

############################# Steps ############################
steps:
    enable: true
    title: "Cách xóa nội dung trong các bản trình bày Pptx"
    content: |
      Với GroupDocs.Redaction for Java, bạn có thể dọn dẹp các bản trình bày Java của mình chỉ trong vài bước nhanh chóng.
      
      1. Tạo một Redactor và tải tệp Pptx của bạn.
      2. Chọn các cài đặt xóa phù hợp với nhu cầu của bạn.
      3. Đặt từ khóa tìm kiếm và nội dung thay thế.
      4. Áp dụng thay đổi và lưu tệp đã cập nhật.
   
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
        // Xóa văn bản trong một bản trình bày PPTX

        // Tải tài liệu của bạn bằng Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Thiết lập các tùy chọn xóa
            // Chọn văn bản để tìm và thay thế bằng cái gì
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Xóa và lưu tệp
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nhiều công cụ xóa hơn"
  description: "GroupDocs.Redaction for Java giúp đơn giản hóa việc ẩn hoặc xóa nội dung nhạy cảm từ nhiều loại tệp. Hoàn hảo để giữ dữ liệu của bạn an toàn trước khi chia sẻ."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Các tùy chọn để xóa văn bản, hình ảnh và metadata"
  features:
    # feature loop
    - title: "Thay thế văn bản ở bất kỳ đâu"
      content: "Tìm kiếm và thay thế từ hoặc cụm từ trên tất cả các slide. Hỗ trợ văn bản chính xác hoặc các mẫu."

    # feature loop
    - title: "Che giấu nội dung hình ảnh"
      content: "Che phần của slide hoặc hình ảnh bằng các hộp lớp phủ với màu sắc bạn chọn."

    # feature loop
    - title: "Xóa metadata"
      content: "Xóa dữ liệu nền như tác giả, ngày tạo, hoặc chú thích có thể chứa thông tin riêng tư."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Xóa dựa trên Regex"
      content: |
        Sử dụng biểu thức chính quy để tìm và loại bỏ các mẫu như email, số điện thoại hoặc mã.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Mở tệp của bạn
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Thêm một mẫu regex EMAIL và nội dung thay thế
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Áp dụng quy tắc xóa dựa trên mẫu
              redactor.apply(redaction);

              // Lưu phiên bản đã dọn dẹp
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
    title: "Xóa nội dung trong PPTX bằng Java"
    exclude: "PPTX"
    description: "Loại bỏ chi tiết cá nhân hoặc nhạy cảm ra khỏi các tài liệu PPTX bằng Java. Một cách đáng tin cậy để giữ cho các tệp của bạn được bảo vệ."
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