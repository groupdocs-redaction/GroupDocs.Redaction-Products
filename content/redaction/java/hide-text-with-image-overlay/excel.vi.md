
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: vi
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Che Giấu Văn Bản Trong EXCEL Bằng Mặt Phủ Và Java"
head_description: "Bảo vệ nội dung nhạy cảm trong các tệp EXCEL bằng cách áp dụng mặt phủ màu bằng GroupDocs.Redaction for Java. Giữ nguyên bố cục của tài liệu."

############################# Header ############################
title: "Che Giấu Dữ Liệu EXCEL Với Mặt Phủ Trong Java" 
description: "Sử dụng mã Java để che giấu thông tin nhạy cảm trong các bảng tính EXCEL. Một cách hiệu quả để giữ dữ liệu riêng tư."
subtitle: "Các Tính Năng Chính Của GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Tại Sao Lại Chọn GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java được xây dựng cho các lập trình viên Java muốn che giấu hoặc làm sạch nội dung trong các bảng tính EXCEL một cách nhanh chóng.

############################# Steps ############################
steps:
    enable: true
    title: "Che Giấu Thông Tin Trong Các Bảng Tính Excel"
    content: |
      GroupDocs.Redaction for Java giúp các lập trình viên Java bảo vệ tệp bằng cách che giấu thông tin riêng tư chỉ trong vài dòng.
      
      1. Khởi động Redactor và tải bảng tính của bạn.
      2. Thiết lập quy tắc che giấu khi cần.
      3. Chọn văn bản và màu mặt phủ.
      4. Áp dụng và lưu tệp.
   
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
        // Sử dụng mặt phủ để che giấu văn bản trong EXCEL

        // Tạo một Redactor và tải tệp của bạn
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Chọn quy tắc che giấu
            // Nhập những gì cần che giấu và chọn màu sắc
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Áp dụng che giấu và lưu tệp
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Các Công Cụ Bảo Vệ Dữ Liệu Cần Thiết"
  description: "Che giấu hoặc xóa thông tin nhạy cảm từ các bảng tính của bạn mà không làm hỏng bố cục hoặc ý nghĩa sử dụng GroupDocs.Redaction for Java."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Được thiết kế cho việc làm sạch dữ liệu an toàn"
  features:
    # feature loop
    - title: "Chỉnh sửa hoặc che giấu văn bản"
      content: "Tìm và chặn bất kỳ văn bản nào cần được bảo vệ."

    # feature loop
    - title: "Che giấu hình ảnh nhạy cảm"
      content: "Áp dụng mặt phủ màu lên các khu vực biểu đồ hoặc hình ảnh."

    # feature loop
    - title: "Xóa siêu dữ liệu"
      content: "Xóa lịch sử tài liệu, thông tin tác giả hoặc dấu thời gian."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Che Giấu Bằng Regex"
      content: |
        Sử dụng regex để tìm và che giấu văn bản một cách tự động
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Mở bảng tính của bạn
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Đặt mẫu và chi tiết mặt phủ
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Áp dụng che giấu
              redactor.apply(redaction);

              // Lưu phiên bản sạch sẽ
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
    title: "Che Giấu Các Bảng EXCEL Với Java"
    exclude: "EXCEL"
    description: "Che giấu hoặc xóa dữ liệu nhạy cảm trong EXCEL bằng cách sử dụng mặt phủ và công cụ từ Java."
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