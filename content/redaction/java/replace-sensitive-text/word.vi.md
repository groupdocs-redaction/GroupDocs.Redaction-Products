
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: vi
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Xóa văn bản cá nhân từ WORD bằng Java"
head_description: "Giữ cho các tệp WORD của bạn an toàn bằng cách xóa dữ liệu nhạy cảm với GroupDocs.Redaction for Java và Java. Dọn dẹp nhanh chóng và đơn giản."

############################# Header ############################
title: "Chỉnh sửa hoặc xóa văn bản trong các tệp WORD với Java" 
description: "Bảo vệ nội dung quan trọng trong các tệp WORD của bạn bằng GroupDocs.Redaction for Java và Java. Xóa bỏ dữ liệu doanh nghiệp, pháp lý hoặc cá nhân một cách tự tin."
subtitle: "Những gì bạn có thể làm với GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Điều gì là GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java cung cấp cho các nhà phát triển Java một cách đáng tin cậy để xóa các tệp WORD. Dọn dẹp văn bản, hình ảnh, bình luận và các chi tiết ẩn chỉ với vài dòng mã.

############################# Steps ############################
steps:
    enable: true
    title: "Các bước để xóa tài liệu Word"
    content: |
      Sử dụng GroupDocs.Redaction for Java trong các dự án Java của bạn để dọn dẹp các tệp trước khi chia sẻ chúng.
      
      1. Tạo một Redactor và tải tài liệu Word.
      2. Thiết lập các tùy chọn xóa mà bạn ưa thích.
      3. Chọn văn bản bạn muốn tìm và thay thế.
      4. Áp dụng xóa và lưu tệp của bạn.
   
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
        // Xóa một tài liệu WORD

        // Tải tệp bằng Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Chọn các quy tắc xóa của bạn
            // Nhập văn bản tìm kiếm và văn bản thay thế
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Chạy xóa và lưu tệp mới
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nhiều tính năng xóa hơn"
  description: "GroupDocs.Redaction for Java giúp bạn dọn dẹp thông tin nhạy cảm từ các loại tệp khác nhau. Loại bỏ văn bản, hình ảnh và metadata một cách nhanh chóng."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Xóa văn bản, hình ảnh và metadata"
  features:
    # feature loop
    - title: "Tìm và thay thế văn bản"
      content: "Tìm nội dung cụ thể và thay thế hoặc xóa nó trên toàn bộ tệp. Hỗ trợ regex."

    # feature loop
    - title: "Che khuất các phần của trang"
      content: "Sử dụng lớp phủ để ẩn hình ảnh hoặc các phần của tài liệu."

    # feature loop
    - title: "Dọn dẹp metadata"
      content: "Xóa thông tin phụ như tác giả, dấu thời gian hoặc chỉnh sửa đã theo dõi."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Xóa với các mẫu Regex"
      content: |
        Tìm văn bản bằng cách sử dụng các biểu thức chính quy để ẩn nội dung như số điện thoại, ngày tháng hoặc ID.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Tải tài liệu của bạn
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Thiết lập một mẫu regex EMAIL và giá trị thay thế
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Áp dụng xóa
              redactor.apply(redaction);

              // Lưu tài liệu đã cập nhật
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
    title: "Xóa nội dung trong WORD với Java"
    exclude: "WORD"
    description: "Ẩn hoặc loại bỏ nội dung cá nhân và riêng tư ra khỏi các tài liệu WORD bằng Java. Một cách đơn giản để giữ cho các tệp của bạn an toàn."
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