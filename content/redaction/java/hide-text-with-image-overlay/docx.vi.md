
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: vi
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Che Giấu Văn Bản Trong DOCX Bằng Cách Sử Dụng Mặt Phủ Trong Java"
head_description: "Sử dụng GroupDocs.Redaction for Java để chặn văn bản riêng tư trong các tệp DOCX. Giữ nguyên bố cục trong khi vẫn giữ dữ liệu nhạy cảm được ẩn."

############################# Header ############################
title: "Bảo Vệ Văn Bản DOCX Bằng Cách Sử Dụng Mặt Phủ Trong Java" 
description: "Nhanh chóng che giấu thông tin cá nhân, pháp lý hoặc doanh nghiệp trong các tệp DOCX bằng Java và GroupDocs.Redaction for Java."
subtitle: "Các Công Cụ Chính Trong GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java Là Gì"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java cung cấp cho các lập trình viên Java công cụ để làm sạch các tệp DOCX. Che giấu tên, số hoặc ghi chú một cách hiệu quả.

############################# Steps ############################
steps:
    enable: true
    title: "Thay Đổi Nội Dung Nhạy Cảm Trong Docx"
    content: |
      Dễ dàng làm sạch tài liệu trong dự án Java của bạn bằng cách sử dụng GroupDocs.Redaction for Java.
      
      1. Khởi tạo Redactor với tệp của bạn.
      2. Chọn cách thức che giấu sẽ hoạt động.
      3. Chọn văn bản cần che và màu mặt phủ.
      4. Áp dụng che giấu và lưu tệp.
   
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
        // Che văn bản với mặt phủ trong DOCX

        // Tạo một Redactor và tải tài liệu của bạn
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Chọn tùy chọn che giấu
            // Chọn văn bản và màu sắc
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Lưu phiên bản đã được che giấu
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Công Cụ Che Giấu Dùng Hàng Ngày"
  description: "GroupDocs.Redaction for Java cung cấp cho bạn các tùy chọn đơn giản để che dấu chi tiết nhạy cảm trên toàn bộ tài liệu trong khi giữ chúng khả dụng."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Tùy chọn che giấu đơn giản"
  features:
    # feature loop
    - title: "Tìm và thay đổi văn bản"
      content: "Che giấu hoặc thay thế từ trong vài giây."

    # feature loop
    - title: "Chặn phần hình ảnh"
      content: "Masque các phần của hình ảnh hoặc nội dung được quét."

    # feature loop
    - title: "Xóa thông tin nền"
      content: "Loại bỏ siêu dữ liệu ẩn như tác giả hoặc ngày tháng."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Tìm Văn Bản Với Regex và Che Giấu Nó"
      content: |
        Sử dụng mẫu để tự động che giấu các cụm từ chủ chốt
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Mở tài liệu bạn muốn che giấu
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Đặt mẫu regex và kiểu mặt phủ
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Áp dụng quy luật che giấu
              redactor.apply(redaction);

              // Lưu tài liệu đã được làm sạch
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
    title: "Che Giấu Các Tệp DOCX Sử Dụng Java"
    exclude: "DOCX"
    description: "Bảo vệ nội dung nhạy cảm trong DOCX bằng cách che hoặc loại bỏ nó bằng các công cụ trong Java."
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