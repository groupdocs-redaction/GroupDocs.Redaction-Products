
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: vi
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Che giấu hình ảnh nhạy cảm trong POWERPOINT với lớp phủ bằng Java"
head_description: "Che giấu nội dung hình ảnh riêng trong các tệp POWERPOINT với GroupDocs.Redaction for Java. Thêm lớp phủ để giữ cho tài liệu an toàn mà không ảnh hưởng tới bố cục."

############################# Header ############################
title: "Bảo vệ hình ảnh riêng tư trong các tài liệu POWERPOINT bằng lớp phủ với Java" 
description: "Giữ an toàn cho các hình ảnh cá nhân và doanh nghiệp trong các tệp POWERPOINT với Java. Công cụ dễ sử dụng cho việc bảo vệ riêng tư mạnh mẽ."
subtitle: "Các tính năng chính của GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Giới thiệu về GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java cung cấp cho các lập trình viên Java khả năng che giấu hoặc xóa nội dung trong các tệp POWERPOINT. Bảo vệ tài liệu của bạn bằng cách che khuất văn bản, hình ảnh và siêu dữ liệu.

############################# Steps ############################
steps:
    enable: true
    title: "Che giấu dữ liệu nhạy cảm trong các tài liệu Powerpoint"
    content: |
      GroupDocs.Redaction for Java giúp các ứng dụng Java nhanh chóng che giấu nội dung riêng trong tài liệu.
      
      1. Tạo một đối tượng Redactor và tải tệp Powerpoint.
      2. Đặt những sở thích che giấu cho nhiệm vụ.
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
        // Che giấu dữ liệu hình ảnh trong các tệp POWERPOINT

        // Mở tệp với Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Đặt màu sắc và kích thước lớp phủ
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Chọn khu vực cần che giấu
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Áp dụng lớp phủ và lưu thay đổi
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Che giấu dữ liệu nhạy cảm trong tài liệu"
  description: "GroupDocs.Redaction for Java giúp bạn che giấu hoặc xóa nội dung riêng trong nhiều định dạng tài liệu khác nhau. Giữ cho tệp của bạn an toàn cho việc chia sẻ và lưu trữ."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Công cụ che giấu dành cho mọi nhu cầu"
  features:
    # feature loop
    - title: "Tìm kiếm và thay thế văn bản"
      content: "Tìm các từ nhạy cảm và thay thế chúng để đảm bảo sự riêng tư dữ liệu."

    # feature loop
    - title: "Che giấu các vùng hình ảnh"
      content: "Áp dụng lớp phủ vào hình ảnh hoặc các phần của hình ảnh để giữ chúng bí mật."

    # feature loop
    - title: "Xóa siêu dữ liệu ẩn"
      content: "Xóa siêu dữ liệu ẩn để tránh rò rỉ dữ liệu."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Che giấu nội dung hình ảnh bằng lớp phủ"
      content: |
        Ví dụ này cho thấy cách áp dụng lớp phủ cho các phần hình ảnh nhạy cảm trong tài liệu.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Tải tệp để che giấu
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Xác định kích thước, màu sắc và vị trí lớp phủ
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

              // Lưu tài liệu đã sửa đổi
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
    title: "Bảo vệ các tệp POWERPOINT với lớp phủ của Java"
    exclude: "POWERPOINT"
    description: "Với Java, bạn có thể che giấu hoặc xóa dữ liệu nhạy cảm trong các tệp POWERPOINT. Một giải pháp đáng tin cậy cho việc bảo vệ tài liệu."
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