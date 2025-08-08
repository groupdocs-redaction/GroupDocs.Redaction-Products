
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: vi
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Che Giấu Văn Bản Trong Các Bài Thuyết Trình PPTX Với Mặt Phủ Java"
head_description: "Sử dụng GroupDocs.Redaction for Java để chặn nội dung nhạy cảm trong các tệp PPTX bằng cách sử dụng mặt phủ màu. Giữ cho các trang trình bày nguyên vẹn trong khi che giấu thông tin quan trọng."

############################# Header ############################
title: "Che Giấu Văn Bản Trong Các Bài Thuyết Trình PPTX Bằng Cách Sử Dụng Java" 
description: "Dễ dàng bảo vệ thông tin cá nhân hoặc doanh nghiệp trong các trang trình bày PPTX của bạn bằng Java và GroupDocs.Redaction for Java."
subtitle: "Khám Phá Các Tính Năng Của GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Những Gì GroupDocs.Redaction for Java Là"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java cho phép các lập trình viên Java che giấu hoặc loại bỏ văn bản, hình ảnh, hoặc siêu dữ liệu trong các bài thuyết trình PPTX chỉ trong vài bước.

############################# Steps ############################
steps:
    enable: true
    title: "Che Giấu Nội Dung Riêng Tư Trong Các Trang Pptx"
    content: |
      GroupDocs.Redaction for Java giúp việc bảo vệ nội dung trở nên đơn giản cho các lập trình viên Java.
      
      1. Thiết lập một Redactor với đường dẫn bài thuyết trình của bạn.
      2. Chọn cách thức che giấu nên được áp dụng.
      3. Thêm mẫu văn bản và màu mặt phủ.
      4. Che giấu trang và lưu nó.
   
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
        // Sử dụng mặt phủ để chặn văn bản trong PPTX

        // Khởi tạo Redactor với bài thuyết trình của bạn
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Chọn tùy chọn che giấu của bạn
            // Thiết lập văn bản và màu sắc mặt phủ
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Chạy che giấu và lưu bộ tài liệu
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Công Cụ Che Giấu Mạnh Mẽ"
  description: "Với GroupDocs.Redaction for Java, bạn có thể chặn hoặc loại bỏ nội dung nhạy cảm trong các bài thuyết trình của bạn mà không làm thay đổi cấu trúc hoặc định dạng."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Các tính năng hoạt động trên các trang"
  features:
    # feature loop
    - title: "Che giấu hoặc thay thế văn bản"
      content: "Bảo vệ tên, thuật ngữ hoặc ghi chú không nên nhìn thấy."

    # feature loop
    - title: "Che các khu vực trực quan"
      content: "Thêm mặt phủ vào hình ảnh hoặc các phần đồ họa của các trang."

    # feature loop
    - title: "Xóa siêu dữ liệu"
      content: "Xóa thông tin ẩn có thể tiết lộ tác giả hoặc lịch sử chỉnh sửa."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Che Giấu Văn Bản Bằng Regex"
      content: |
        Sử dụng biên thức để tìm và che giấu các từ nhạy cảm
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Mở tệp bài thuyết trình
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Đặt mẫu tìm kiếm và màu mặt phủ
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Chạy quy tắc che giấu
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
    title: "Bảo Vệ Các Trang PPTX Với Công Cụ Java"
    exclude: "PPTX"
    description: "Che giấu nội dung nhạy cảm hoặc loại bỏ hoàn toàn từ các bài thuyết trình PPTX bằng các tính năng che giấu của Java."
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