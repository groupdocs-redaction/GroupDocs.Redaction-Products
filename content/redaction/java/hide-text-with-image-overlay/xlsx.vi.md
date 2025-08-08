
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: vi
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Chặn Văn Bản Trong XLSX Với Mặt Phủ Java"
head_description: "GroupDocs.Redaction for Java cho phép bạn che giấu thông tin nhạy cảm trong các tệp XLSX bằng các khối màu. Giữ dữ liệu trong khi vẫn duy trì bố cục."

############################# Header ############################
title: "Che Giấu Dữ Liệu Trong XLSX Bằng Cách Sử Dụng Mặt Phủ Trong Java" 
description: "Sử dụng Java và GroupDocs.Redaction for Java để che giấu nội dung riêng tư trong các tệp XLSX mà không làm ảnh hưởng đến định dạng."
subtitle: "Các Tính Năng Chính Của GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Tại Sao GroupDocs.Redaction for Java Hoạt Động"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java cho phép các lập trình viên Java bảo mật các tệp XLSX. Che giấu văn bản, hình ảnh hoặc siêu dữ liệu một cách nhanh chóng.

############################# Steps ############################
steps:
    enable: true
    title: "Bảo Vệ Thông Tin Trong Tài Liệu Xlsx"
    content: |
      Giữ cho tài liệu của bạn an toàn bằng mã đơn giản với GroupDocs.Redaction for Java trong Java.
      
      1. Tạo một Redactor với đường dẫn tệp.
      2. Thiết lập logic che giấu của bạn.
      3. Chọn từ khóa và màu mặt phủ.
      4. Che giấu và lưu tệp.
   
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
        // Che giấu thông tin trong XLSX bằng khối

        // Tải tệp với Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Thiết lập tùy chọn che giấu
            // Thêm văn bản và màu sắc để chặn
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Lưu tài liệu đã cập nhật
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Các Tính Năng Bảo Mật Tích Hợp"
  description: "Sử dụng GroupDocs.Redaction for Java để chặn hoặc xóa nội dung trong các tệp của bạn mà không làm thay đổi cấu trúc."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Công cụ bảo mật dễ dàng"
  features:
    # feature loop
    - title: "Thay đổi hoặc che giấu văn bản"
      content: "Chỉnh sửa hoặc che giấu các từ cụ thể dễ dàng."

    # feature loop
    - title: "Masque các phần của hình ảnh"
      content: "Thêm mặt phủ để che giấu ảnh hoặc chi tiết đồ họa."

    # feature loop
    - title: "Loại bỏ thông tin ẩn"
      content: "Xóa siêu dữ liệu như thông tin người dùng hoặc lịch sử tệp."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Sử Dụng Regex Để Che Giấu Nội Dung"
      content: |
        Tự động tìm và che giấu văn bản với mẫu tìm kiếm
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Mở bảng tính
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Xác định mẫu và màu sắc mặt phủ
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Áp dụng quy tắc che giấu
              redactor.apply(redaction);

              // Xuất kết quả của bạn
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
    title: "Che Giấu Dữ Liệu XLSX Sử Dụng Java"
    exclude: "XLSX"
    description: "Sử dụng mặt phủ hoặc xóa nội dung trong XLSX để giữ thông tin nhạy cảm riêng tư với Java."
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