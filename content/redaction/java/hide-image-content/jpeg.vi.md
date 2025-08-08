
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: vi
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Che giấu hình ảnh trong JPEG với lớp phủ bằng Java"
head_description: "Giữ cho các hình ảnh nhạy cảm riêng tư trong các tệp JPEG với GroupDocs.Redaction for Java. Thêm lớp phủ để che giấu thông tin mà không thay đổi bố cục tài liệu của bạn."

############################# Header ############################
title: "Che giấu hình ảnh nhạy cảm trong các tệp JPEG với lớp phủ bằng Java" 
description: "Bảo vệ hình ảnh cá nhân và doanh nghiệp trong các tệp JPEG bằng Java. Các công cụ đơn giản giúp bạn an toàn tài liệu một cách hiệu quả."
subtitle: "Các tính năng chính của GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Đây là GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java cung cấp cho các lập trình viên Java các công cụ để che giấu hoặc xóa nội dung trong các tệp JPEG. Bảo vệ tài liệu của bạn bằng cách che giấu văn bản, hình ảnh và siêu dữ liệu một cách dễ dàng.

############################# Steps ############################
steps:
    enable: true
    title: "Che giấu dữ liệu riêng tư trong các tệp Jpeg"
    content: |
      GroupDocs.Redaction for Java giúp các ứng dụng Java của bạn nhanh chóng che giấu nội dung riêng.
      
      1. Khởi tạo một đối tượng Redactor và tải tệp Jpeg của bạn.
      2. Điều chỉnh cài đặt che giấu để phù hợp với yêu cầu của bạn.
      3. Chọn vùng hình ảnh và chọn màu lớp phủ.
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
        // Che giấu dữ liệu hình ảnh trong các tệp JPEG

        // Tải tệp bằng Redactor
        final Redactor redactor = new Redactor("input.jpg");
        try
        {
            // Đặt kích thước và màu sắc lớp phủ
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Chọn khu vực cần che giấu
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
  title: "Che giấu dữ liệu nhạy cảm trong tài liệu"
  description: "GroupDocs.Redaction for Java giúp bạn che giấu hoặc xóa nội dung riêng từ nhiều loại tệp. Đảm bảo tài liệu của bạn luôn sạch sẽ và sẵn sàng cho việc chia sẻ."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Các tính năng che giấu tất cả trong một"
  features:
    # feature loop
    - title: "Tìm và thay thế văn bản"
      content: "Tìm kiếm tài liệu để tìm văn bản nhạy cảm và thay thế nó để bảo vệ thông tin."

    # feature loop
    - title: "Che giấu nội dung hình ảnh"
      content: "Sử dụng lớp phủ để che toàn bộ hình ảnh hoặc các phần đã chọn để giữ cho hình ảnh riêng tư."

    # feature loop
    - title: "Xóa siêu dữ liệu"
      content: "Cắt bỏ siêu dữ liệu ẩn để tránh lộ thông tin nhạy cảm."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Sử dụng lớp phủ để che giấu nội dung hình ảnh"
      content: |
        Ví dụ này cho thấy cách bảo vệ các phần nhạy cảm của hình ảnh bằng lớp phủ trong tài liệu.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Mở tệp để sửa đổi
          final Redactor redactor = new Redactor("source.jpg");
          try
          {
              // Xác định kích thước, màu sắc và vị trí lớp phủ
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Chọn một vùng hình ảnh ở trang đầu
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Áp dụng lớp phủ để che dấu hình ảnh
              redactor.apply(redaction);

              // Lưu tài liệu đã cập nhật
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
    title: "Bảo vệ các tệp JPEG với lớp phủ của Java"
    exclude: "JPEG"
    description: "Sử dụng Java để che giấu hoặc xóa dữ liệu nhạy cảm trong các tệp JPEG. Một giải pháp đáng tin cậy để bảo vệ tài liệu quan trọng của bạn."
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