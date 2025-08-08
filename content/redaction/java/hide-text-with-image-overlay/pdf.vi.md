
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: vi
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Che Giấu Văn Bản Riêng Tư Trong PDF Bằng Cách Sử Dụng Mặt Phủ Trong Java"
head_description: "GroupDocs.Redaction for Java cho phép bạn che giấu thông tin nhạy cảm trong các tệp PDF bằng cách đặt các hộp màu. Bảo vệ dữ liệu mà không thay đổi hình thức tệp của bạn."

############################# Header ############################
title: "Che Giấu Văn Bản Trong Tài Liệu PDF Sử Dụng Mặt Phủ Trong Java" 
description: "Nắm giữ toàn bộ nội dung tệp PDF với Java. Sử dụng phương pháp che giấu để bảo vệ thông tin tài chính, pháp lý hoặc cá nhân."
subtitle: "Các Tính Năng Nổi Bật Của GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Những Gì GroupDocs.Redaction for Java Cung Cấp"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java cung cấp cho các lập trình viên Java một cách đơn giản để che hoặc loại bỏ nội dung từ các tệp PDF. Che khuất văn bản, hình ảnh và siêu dữ liệu trên nhiều loại tài liệu khác nhau.

############################# Steps ############################
steps:
    enable: true
    title: "Bảo Vệ Thông Tin Bảo Mật Trong Tệp Pdf"
    content: |
      GroupDocs.Redaction for Java giúp các lập trình viên Java che giấu nội dung riêng tư chỉ với vài bước đơn giản.
      
      1. Khởi động Redactor và tải tệp Pdf của bạn.
      2. Thiết lập các tùy chọn che giấu của bạn.
      3. Chọn nội dung cần tìm và chọn màu mặt phủ.
      4. Áp dụng che giấu và lưu tài liệu của bạn.
   
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
        // Che giấu văn bản trong PDF bằng cách sử dụng mặt phủ màu

        // Truyền đường dẫn tệp tới Redactor
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Điều chỉnh cài đặt che giấu
            // Thiết lập văn bản mục tiêu và màu sắc
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Áp dụng và lưu PDF đã được che giấu
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Kiểm Soát Điều Gì Được Hiển Thị Trong Tài Liệu"
  description: "GroupDocs.Redaction for Java cho phép bạn chặn hoặc loại bỏ các phần của tệp trong khi vẫn giữ cho chúng dễ xem và chia sẻ."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Công Cụ Che Giấu Mạnh Mẽ"
  features:
    # feature loop
    - title: "Nhắm mục tiêu và che giấu văn bản"
      content: "Tìm kiếm tài liệu của bạn và che giấu các từ hoặc cụm từ cụ thể để bảo vệ thông tin riêng tư."

    # feature loop
    - title: "Che hình ảnh"
      content: "Thêm mặt phủ để che hoàn toàn hoặc một phần hình ảnh."

    # feature loop
    - title: "Loại bỏ siêu dữ liệu"
      content: "Xóa thông tin tài liệu ẩn để tránh phơi bày không mong muốn."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Che Giấu Văn Bản Bằng Regex"
      content: |
        Ví dụ này sử dụng biên thức để tìm và che giấu nội dung cụ thể
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Tải tệp bạn muốn xử lý
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Đặt mẫu văn bản và màu sắc mặt phủ
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Áp dụng che giấu
              redactor.apply(redaction);

              // Lưu thay đổi của bạn
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Bảo Vệ Các Tệp PDF Với Java"
    exclude: "PDF"
    description: "Sử dụng Java để che hoặc xóa nội dung trong các tài liệu PDF. Một cách tuyệt vời để giữ thông tin riêng tư an toàn và được bảo vệ."
    items: 
        # format loop 1
        - name: "Chỉnh sửa PDF"
          format: "PDF"
          link: "/redaction/java/hide-text-with-image-overlay//pdf/"
          description: "Định dạng Tài liệu Di động Adobe"

        # format loop 2
        - name: "Chỉnh sửa Word"
          format: "WORD"
          link: "/redaction/java/hide-text-with-image-overlay//word/"
          description: "Tài liệu MS Word và Open Office"
          
        # format loop 3
        - name: "Chỉnh sửa Excel"
          format: "EXCEL"
          link: "/redaction/java/hide-text-with-image-overlay//excel/"
          description: "Bảng tính MS Excel và Open Office"

        # format loop 4
        - name: "Chỉnh sửa PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/hide-text-with-image-overlay//powerpoint/"
          description: "Trình bày MS PowerPoint và Open Office"

        # format loop 5
        - name: "Chỉnh sửa DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-text-with-image-overlay//docx/"
          description: "Tài liệu Open XML của Microsoft Word"
          
        # format loop 6
        - name: "Chỉnh sửa XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-text-with-image-overlay//xlsx/"
          description: "Bảng tính Open XML của Microsoft Excel"
          
        # format loop 7
        - name: "Chỉnh sửa PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-text-with-image-overlay//pptx/"
          description: "Bài thuyết trình Open XML của PowerPoint"


---