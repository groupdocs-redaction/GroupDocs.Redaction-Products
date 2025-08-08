
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: vi
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Che giấu hình ảnh trong PPTX với lớp phủ bằng Java"
head_description: "Với GroupDocs.Redaction for Java, bạn có thể che giấu hình ảnh nhạy cảm trong các tệp PPTX bằng cách thêm lớp phủ màu. Bảo vệ thông tin bí mật trong khi giữ nguyên bố cục tài liệu."

############################# Header ############################
title: "Che giấu hình ảnh nhạy cảm trong các tài liệu PPTX bằng Java" 
description: "Bảo vệ dữ liệu cá nhân và doanh nghiệp trong các tệp PPTX với Java. Các công cụ của chúng tôi giúp việc che giấu hình ảnh nhanh chóng và đơn giản."
subtitle: "Lợi ích chính của GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Giới thiệu về GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java cung cấp cho các lập trình viên Java các công cụ thực tế để che giấu hoặc xóa nội dung trong các tệp PPTX. Che khuất văn bản, hình ảnh và siêu dữ liệu trên nhiều loại tài liệu khác nhau.

############################# Steps ############################
steps:
    enable: true
    title: "Bảo vệ dữ liệu riêng tư trong các tài liệu Pptx"
    content: |
      GroupDocs.Redaction for Java giúp các ứng dụng Java dễ dàng bảo mật tài liệu bằng cách che giấu nội dung nhạy cảm.
      
      1. Khởi tạo một Redactor và tải tệp Pptx.
      2. Đặt các tùy chọn che giấu theo yêu cầu của bạn.
      3. Chọn vùng hình ảnh và xác định màu sắc lớp phủ.
      4. Áp dụng che giấu và lưu tệp đã cập nhật.
   
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
        // Che giấu các phần hình ảnh nhạy cảm trong PPTX

        // Mở tài liệu bằng Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Chọn màu sắc và kích thước lớp phủ
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Đánh dấu vùng cần che giấu
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Áp dụng thay đổi và lưu tài liệu
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Công cụ che dấu nội dung"
  description: "GroupDocs.Redaction for Java giúp bạn che giấu hoặc xóa thông tin nhạy cảm trong nhiều định dạng tệp. Giữ cho tài liệu bảo mật trong khi vẫn duy trì diện mạo chuyên nghiệp."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Các tính năng che giấu nâng cao"
  features:
    # feature loop
    - title: "Tìm kiếm và thay thế văn bản"
      content: "Tìm nhanh chóng văn bản nhạy cảm và che giấu nó để bảo vệ tài liệu."

    # feature loop
    - title: "Che hình ảnh bằng lớp phủ"
      content: "Che hoàn toàn hình ảnh hoặc các khu vực đã chọn bằng cách áp dụng lớp phủ."

    # feature loop
    - title: "Dọn dẹp siêu dữ liệu"
      content: "Xóa hoặc chỉnh sửa siêu dữ liệu ẩn để ngăn chia sẻ thông tin bí mật."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Che giấu dữ liệu hình ảnh bằng lớp phủ"
      content: |
        Ví dụ này cho thấy cách che giấu các hình ảnh nhạy cảm trong tài liệu của bạn.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Tải tài liệu của bạn
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Đặt kích thước, màu sắc và vị trí lớp phủ
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Chọn vùng hình ảnh ở trang đầu tiên
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Áp dụng lớp phủ để che giấu
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
    title: "Che giấu nội dung PPTX bằng Java"
    exclude: "PPTX"
    description: "Áp dụng Java để che giấu hoặc xóa nội dung nhạy cảm trong các tệp PPTX. Giải pháp đáng tin cậy cho việc bảo vệ tài liệu."
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