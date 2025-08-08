
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: vi
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Che giấu hình ảnh trong WORD với lớp phủ bằng Java"
head_description: "Với GroupDocs.Redaction for Java, bạn có thể che giấu hình ảnh nhạy cảm trong các tệp WORD bằng cách sử dụng các lớp phủ màu. Bảo vệ dữ liệu riêng tư mà không thay đổi bố cục tài liệu."

############################# Header ############################
title: "Bảo vệ hình ảnh nhạy cảm trong các tệp WORD bằng Java" 
description: "Bảo mật các hình ảnh cá nhân và doanh nghiệp trong các tài liệu WORD với Java. Che giấu hình ảnh nhanh chóng và đáng tin cậy."
subtitle: "Các tính năng chính của GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Giới thiệu về GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java cung cấp cho các lập trình viên Java các công cụ hữu ích để che giấu hoặc xóa nội dung trong các tệp WORD. Che văn bản, hình ảnh và siêu dữ liệu trên nhiều định dạng khác nhau.

############################# Steps ############################
steps:
    enable: true
    title: "Bảo vệ dữ liệu bí mật trong các tệp Word"
    content: |
      GroupDocs.Redaction for Java làm cho các ứng dụng Java dễ dàng che giấu thông tin cá nhân bên trong tài liệu.
      
      1. Khởi tạo một Redactor và tải tệp Word.
      2. Xác định các cài đặt che giấu mà bạn cần.
      3. Đánh dấu vùng hình ảnh và chọn màu lớp phủ.
      4. Chạy quá trình che giấu và lưu tài liệu đã cập nhật.
   
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
        // Che giấu nội dung hình ảnh nhạy cảm trong WORD

        // Tải tệp bằng Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Chọn màu sắc và kích thước lớp phủ
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Đánh dấu khu vực hình ảnh để che
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Áp dụng lớp phủ và lưu tệp
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Công cụ để che giấu và xóa nội dung"
  description: "GroupDocs.Redaction for Java giúp bạn che giấu hoặc xóa dữ liệu nhạy cảm trong nhiều định dạng tệp khác nhau. Giữ cho tài liệu của bạn an toàn và có cấu trúc tốt."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Các tính năng che giấu hiệu quả"
  features:
    # feature loop
    - title: "Tìm & thay thế văn bản"
      content: "Tìm kiếm tài liệu để tìm văn bản cá nhân và thay thế nó để đảm bảo an toàn cho dữ liệu."

    # feature loop
    - title: "Che giấu các vùng hình ảnh"
      content: "Che toàn bộ hình ảnh hoặc các vùng đã chọn bằng cách sử dụng lớp phủ."

    # feature loop
    - title: "Xóa siêu dữ liệu"
      content: "Loại bỏ hoặc chỉnh sửa siêu dữ liệu ẩn để bảo vệ thông tin bí mật."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Sử dụng lớp phủ để che giấu dữ liệu hình ảnh"
      content: |
        Ví dụ này cho thấy cách bảo vệ nội dung hình ảnh nhạy cảm trong tài liệu bằng cách sử dụng lớp phủ.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Tải tài liệu
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Xác định các thuộc tính lớp phủ như kích thước, vị trí và màu
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Đánh dấu vùng hình ảnh ở trang đầu tiên
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Che khuất khu vực bằng lớp phủ
              redactor.apply(redaction);

              // Lưu tài liệu đã che giấu
              SaveOptions save_options = new SaveOptions();
              save_options.setAddSuffix(true);
              save_options.setRasterizeToPDF(false);
              redactor.save(save_options);
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Che giấu nội dung trong các tệp WORD với Java"
    exclude: "WORD"
    description: "Sử dụng Java để che giấu hoặc xóa dữ liệu nhạy cảm trong các tệp WORD. Một cách hiệu quả để giữ cho tài liệu an toàn."
    items: 
        # format loop 1
        - name: "Chỉnh sửa PDF"
          format: "PDF"
          link: "/redaction/java/hide-image-content//pdf/"
          description: "Định dạng Tài liệu Di động Adobe"

        # format loop 2
        - name: "Chỉnh sửa Word"
          format: "WORD"
          link: "/redaction/java/hide-image-content//word/"
          description: "Tài liệu MS Word và Open Office"
          
        # format loop 3
        - name: "Chỉnh sửa Excel"
          format: "EXCEL"
          link: "/redaction/java/hide-image-content//excel/"
          description: "Bảng tính MS Excel và Open Office"

        # format loop 4
        - name: "Chỉnh sửa PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/hide-image-content//powerpoint/"
          description: "Trình bày MS PowerPoint và Open Office"

        # format loop 5
        - name: "Chỉnh sửa Hình ảnh"
          format: "IMAGE"
          link: "/redaction/java/hide-image-content//image/"
          description: "Các định dạng hình ảnh phổ biến"

        # format loop 6
        - name: "Chỉnh sửa Ảnh"
          format: "PHOTO"
          link: "/redaction/java/hide-image-content//photo/"
          description: "Định dạng ảnh"

        # format loop 7
        - name: "Chỉnh sửa DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-image-content//docx/"
          description: "Tài liệu Open XML của Microsoft Word"
          
        # format loop 8
        - name: "Chỉnh sửa XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-image-content//xlsx/"
          description: "Bảng tính Open XML của Microsoft Excel"
          
        # format loop 9
        - name: "Chỉnh sửa PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-image-content//pptx/"
          description: "Bài thuyết trình Open XML của PowerPoint"

        # format loop 10
        - name: "Chỉnh sửa JPEG"
          format: "JPEG"
          link: "/redaction/java/hide-image-content//jpeg/"
          description: "Hình ảnh JPEG"


---