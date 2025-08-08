
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: vi
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Che Giấu Văn Bản Trong WORD Sử Dụng Mặt Phủ Của Java"
head_description: "Sử dụng GroupDocs.Redaction for Java để che giấu văn bản nhạy cảm trong các tệp WORD bằng các khối màu trong khi vẫn giữ nguyên cấu trúc tài liệu."

############################# Header ############################
title: "Overlay Che Giấu Trong Các Tệp WORD Với Java" 
description: "Che giấu các chi tiết quan trọng trong các tài liệu WORD của bạn bằng cách sử dụng các mặt phủ màu được hỗ trợ bởi Java và GroupDocs.Redaction for Java."
subtitle: "Những Gì GroupDocs.Redaction for Java Có Thể Thực Hiện" 

############################# About ############################
about:
    enable: true
    title: "Gặp Gỡ GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java cung cấp cho người dùng Java quyền kiểm soát hoàn toàn đối với việc che giấu WORD. Che giấu bất kỳ thứ gì bạn muốn—văn bản, hình ảnh hoặc siêu dữ liệu.

############################# Steps ############################
steps:
    enable: true
    title: "Bảo Vệ Thông Tin Riêng Tư Trong Định Dạng Word"
    content: |
      GroupDocs.Redaction for Java cung cấp cho các lập trình viên Java những cách nhanh chóng để làm sạch tệp và bảo vệ nội dung của chúng.
      
      1. Khởi động Redactor và tải tệp Word.
      2. Chọn tùy chọn che giấu của bạn.
      3. Thêm mẫu văn bản và màu mặt phủ.
      4. Chạy che giấu và lưu tệp.
   
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
        // Che giấu văn bản bằng cách sử dụng mặt phủ trong WORD

        // Sử dụng Redactor để mở tài liệu
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Đặt tùy chọn che giấu
            // Thêm từ khóa và chọn màu
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Áp dụng và lưu tệp đã che giấu của bạn
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nhiều Khả Năng Che Giấu"
  description: "Sử dụng GroupDocs.Redaction for Java để loại bỏ cả nội dung hiển thị và nội dung ẩn khỏi các tệp trong khi vẫn giữ nguyên bố cục."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Đầu ra sạch sẽ, đơn giản"
  features:
    # feature loop
    - title: "Thay thế văn bản"
      content: "Che giấu các từ hoặc thuật ngữ không nên nhìn thấy."

    # feature loop
    - title: "Che giấu hình ảnh"
      content: "Sử dụng mặt phủ màu để che giấu hình ảnh hoặc các phần của chúng."

    # feature loop
    - title: "Xóa siêu dữ liệu"
      content: "Loại bỏ các chi tiết ẩn trong thông tin tệp."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Che Giấu Được Hỗ Trợ Bằng Regex"
      content: |
        Học cách sử dụng regex để tự động che giấu nội dung cụ thể
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Tải tài liệu cần che giấu
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Định nghĩa mẫu regex của bạn và màu mặt phủ
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Áp dụng che giấu
              redactor.apply(redaction);

              // Lưu phiên bản đã làm sạch của bạn
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
    title: "Che Giấu Nội Dung Trong WORD Với Java"
    exclude: "WORD"
    description: "Giữ cho các tài liệu WORD của bạn riêng tư bằng cách che giấu hoặc loại bỏ dữ liệu nhạy cảm bằng Java."
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