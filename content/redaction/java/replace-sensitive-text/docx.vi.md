
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: vi
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Xóa văn bản cá nhân từ DOCX với Java"
head_description: "Bảo vệ nội dung trong các tệp DOCX của bạn bằng cách sử dụng GroupDocs.Redaction for Java. Xóa văn bản, hình ảnh và metadata nhanh chóng và hiệu quả."

############################# Header ############################
title: "Chỉnh sửa hoặc xóa văn bản trong các tài liệu DOCX bằng Java" 
description: "Bảo vệ nội dung cá nhân hoặc doanh nghiệp trong các tệp DOCX của bạn bằng Java và GroupDocs.Redaction for Java."
subtitle: "Những gì bạn có thể làm với GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Điều gì là GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java giúp các nhà phát triển Java dọn dẹp và xóa nội dung trong các tệp DOCX. Loại bỏ văn bản, hình ảnh, bình luận và dữ liệu ẩn một cách hiệu quả.

############################# Steps ############################
steps:
    enable: true
    title: "Cách xóa nội dung trong các tệp Docx"
    content: |
      Sử dụng GroupDocs.Redaction for Java trong các dự án của bạn trên Java để dọn dẹp tệp trước khi chia sẻ.
      
      1. Tạo một Redactor và tải tệp.
      2. Chọn các tùy chọn xóa của bạn.
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
        // Xóa nội dung trong một tệp DOCX

        // Tải tài liệu bằng Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Thiết lập tùy chọn xóa
            // Xác định nội dung cần tìm và thay thế
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Áp dụng xóa và lưu
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Tùy chọn xóa"
  description: "GroupDocs.Redaction for Java cho phép bạn dọn dẹp nội dung nhạy cảm từ nhiều loại tệp. Bảo vệ tài liệu của bạn mà không làm mất cấu trúc."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Công cụ để loại bỏ nội dung"
  features:
    # feature loop
    - title: "Thay thế văn bản"
      content: "Tìm nội dung cụ thể và thay thế trong toàn bộ tài liệu."

    # feature loop
    - title: "Che khuất hình ảnh hoặc phần"
      content: "Che giấu các hình ảnh nhạy cảm bằng lớp phủ màu."

    # feature loop
    - title: "Loại bỏ dữ liệu ẩn"
      content: "Xóa metadata như tên tác giả, thời gian, hoặc thuộc tính tài liệu."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Xóa dựa trên Regex"
      content: |
        Sử dụng biểu thức chính quy để phát hiện và xóa các mẫu như số điện thoại hoặc email.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Tải tài liệu
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Thiết lập một mẫu regex EMAIL và văn bản thay thế
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Chạy quá trình xóa
              redactor.apply(redaction);

              // Lưu tệp sạch
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
    title: "Dọn dẹp các tệp DOCX bằng Java"
    exclude: "DOCX"
    description: "Xóa hoặc thay thế nội dung nhạy cảm trong các tài liệu DOCX bằng các công cụ do Java cung cấp."
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