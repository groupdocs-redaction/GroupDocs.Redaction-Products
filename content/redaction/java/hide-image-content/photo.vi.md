
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: vi
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Che giấu hình ảnh trong PHOTO với lớp phủ bằng Java"
head_description: "Sử dụng GroupDocs.Redaction for Java để che giấu các vùng hình ảnh nhạy cảm trong các tệp PHOTO bằng lớp phủ. Bảo vệ nội dung riêng trong khi vẫn giữ nguyên bố cục của tệp."

############################# Header ############################
title: "Bảo vệ dữ liệu hình ảnh trong các tệp PHOTO với lớp phủ bằng Java" 
description: "Bảo vệ dữ liệu hình ảnh cá nhân và doanh nghiệp trong các tệp PHOTO bằng Java. Các công cụ đơn giản được thiết kế cho việc bảo vệ nhanh chóng và hiệu quả."
subtitle: "Các tính năng chính của GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Tìm hiểu về GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java cung cấp cho các lập trình viên Java các công cụ đáng tin cậy để che giấu hoặc xóa nội dung trong các tệp PHOTO. Bảo vệ tài liệu bằng cách che giấu văn bản, hình ảnh và siêu dữ liệu.

############################# Steps ############################
steps:
    enable: true
    title: "Che giấu nội dung trong các tệp Photo với lớp phủ"
    content: |
      GroupDocs.Redaction for Java giúp bạn dễ dàng che giấu các vùng nhạy cảm trong ứng dụng của bạn.
      
      1. Khởi tạo một Redactor và tải tệp Photo của bạn.
      2. Đặt các tùy chọn che giấu theo yêu cầu.
      3. Chọn vùng hình ảnh và chọn màu lớp phủ.
      4. Chạy quá trình che giấu và lưu tệp.
   
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
        // Che giấu các phần hình ảnh trong PHOTO bằng lớp phủ

        // Tải tệp bằng Redactor
        final Redactor redactor = new Redactor("input.jpeg");
        try
        {
            // Xác định màu sắc và kích thước lớp phủ
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Đánh dấu khu vực hình ảnh cần bảo vệ
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Áp dụng lớp phủ và lưu kết quả
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Che giấu nội dung nhạy cảm một cách nhanh chóng"
  description: "GroupDocs.Redaction for Java cho phép bạn che giấu hoặc xóa dữ liệu riêng trong nhiều loại tài liệu. Giữ cho tệp của bạn sạch sẽ và sẵn sàng để chia sẻ."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Kiểm soát toàn bộ về việc che giấu"
  features:
    # feature loop
    - title: "Tìm và thay thế văn bản"
      content: "Tìm văn bản nhạy cảm trong tài liệu và thay thế nó để bảo vệ thông tin."

    # feature loop
    - title: "Che giấu các vùng hình ảnh"
      content: "Sử dụng lớp phủ để che dấu toàn bộ hình ảnh hoặc các phần đã chọn."

    # feature loop
    - title: "Xóa siêu dữ liệu"
      content: "Xóa hoặc chỉnh sửa siêu dữ liệu ẩn để tránh bất kỳ rò rỉ nào về thông tin."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Che giấu dữ liệu hình ảnh bằng lớp phủ"
      content: |
        Ví dụ này cho thấy cách bảo vệ nội dung hình ảnh trong tài liệu bằng lớp phủ.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Tải tài liệu để chỉnh sửa
          final Redactor redactor = new Redactor("source.jpeg");
          try
          {
              // Đặt kích thước, màu sắc và vị trí lớp phủ
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Đánh dấu phần hình ảnh ở trang đầu
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Áp dụng lớp phủ để che giấu dữ liệu
              redactor.apply(redaction);

              // Lưu tài liệu đã chỉnh sửa
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
    title: "Bảo vệ các tệp PHOTO với lớp phủ của Java"
    exclude: "PHOTO"
    description: "Với Java, bạn có thể che giấu hoặc xóa dữ liệu nhạy cảm từ các tệp PHOTO. Một cách đáng tin cậy để bảo vệ tài liệu chính thức."
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