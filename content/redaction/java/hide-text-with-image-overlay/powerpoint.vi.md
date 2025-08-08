
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: vi
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Bảo Vệ Văn Bản Trong POWERPOINT Bằng Mặt Phủ Của Java"
head_description: "Với GroupDocs.Redaction for Java, bạn có thể chặn văn bản riêng tư trong các slide POWERPOINT bằng cách sử dụng các khối mặt phủ đơn giản—mà không thay đổi bố cục."

############################# Header ############################
title: "Che Giấu Văn Bản Trong POWERPOINT Sử Dụng Các Mặt Phủ Và Java" 
description: "Sử dụng Java và GroupDocs.Redaction for Java để giữ cho các slide POWERPOINT của bạn an toàn bằng cách che giấu nội dung nhạy cảm."
subtitle: "Bên Trong GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Về GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java giúp các lập trình viên Java làm sạch các slide POWERPOINT bằng cách che giấu hoặc xóa nội dung nhạy cảm như văn bản, siêu dữ liệu hoặc hình ảnh.

############################# Steps ############################
steps:
    enable: true
    title: "Làm Sạch Các Bài Thuyết Trình Powerpoint Trước Khi Chia Sẻ"
    content: |
      Sử dụng GroupDocs.Redaction for Java trong các ứng dụng Java để che giấu hoặc loại bỏ các phần nhạy cảm của các slide của bạn.
      
      1. Tạo một Redactor mới với đường dẫn bộ tài liệu của bạn.
      2. Định nghĩa những tùy chọn che giấu của bạn.
      3. Đặt mẫu văn bản và màu mặt phủ.
      4. Chạy và lưu tệp đã che giấu.
   
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
        // Che giấu các khu vực văn bản trong POWERPOINT

        // Mở tệp với Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Điều chỉnh cài đặt che giấu
            // Nhập văn bản và chọn màu mặt phủ
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Che giấu và lưu tệp đã cập nhật
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Che Giấu Đơn Giản Cho Các Slide Nhạy Cảm"
  description: "GroupDocs.Redaction for Java làm cho việc chặn hoặc loại bỏ nội dung từ các slide trở nên dễ dàng, bất kể trường hợp sử dụng."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Các công cụ che giấu có thể điều chỉnh"
  features:
    # feature loop
    - title: "Tìm và thay thế văn bản"
      content: "Bảo vệ các cụm từ hoặc nhãn nhạy cảm ở bất kỳ slide nào."

    # feature loop
    - title: "Che các phần hình ảnh"
      content: "Thêm mặt phủ vào các khu vực đã chọn của các slide hoặc hình ảnh."

    # feature loop
    - title: "Xóa nội dung ẩn"
      content: "Xóa siêu dữ liệu hoặc ghi chú sửa đổi của các slide trước khi chia sẻ."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regex Cho Che Giấu Văn Bản"
      content: |
        Học cách phát hiện và che giấu văn bản bằng cách sử dụng mẫu tìm kiếm
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Tải bộ tài liệu
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Áp dụng quy tắc regex của bạn
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Chạy che giấu
              redactor.apply(redaction);

              // Lưu phiên bản cuối cùng
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
    title: "Bảo Vệ Các Slide POWERPOINT Với Java"
    exclude: "POWERPOINT"
    description: "Sử dụng các công cụ che giấu và làm sạch từ Java để giữ các slide POWERPOINT của bạn riêng tư."
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