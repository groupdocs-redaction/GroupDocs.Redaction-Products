
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: vi
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Che dấu hình ảnh trong PDF với lớp phủ bằng Java"
head_description: "Với GroupDocs.Redaction for Java, bạn có thể che giấu hình ảnh riêng tư trong các tệp PDF bằng cách sử dụng các lớp phủ màu. Bảo vệ hình ảnh nhạy cảm trong khi giữ nguyên thiết kế của tài liệu."

############################# Header ############################
title: "Che giấu hình ảnh bí mật trong các tệp PDF bằng lớp phủ với Java" 
description: "Bảo vệ dữ liệu cá nhân và doanh nghiệp trong các tệp PDF với Java. Công cụ của chúng tôi giúp việc che giấu hình ảnh trở nên đơn giản và hiệu quả."
subtitle: "Các tính năng của GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Giới thiệu về GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java cung cấp cho các lập trình viên Java các công cụ hiệu quả để che giấu hoặc xóa nội dung trong các tệp PDF. Che khuất văn bản, hình ảnh và siêu dữ liệu để bảo vệ tài liệu của bạn trên nhiều định dạng khác nhau.

############################# Steps ############################
steps:
    enable: true
    title: "Bảo vệ thông tin doanh nghiệp trong các tệp Pdf"
    content: |
      GroupDocs.Redaction for Java giúp các ứng dụng Java của bạn bảo vệ tài liệu. Che giấu hình ảnh riêng tư trong vài bước đơn giản.
      
      1. Khởi tạo một Redactor và đặt đường dẫn đến tệp Pdf của bạn.
      2. Chọn cài đặt che giấu để đạt được kết quả tốt nhất.
      3. Chọn vùng hình ảnh và chọn màu lớp phủ.
      4. Xử lý và lưu tệp đã được bảo vệ.
   
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
        // Che giấu hình ảnh nhạy cảm trong PDF

        // Tải tệp bằng Redactor
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Đặt màu lớp phủ và kích thước
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Chọn vùng mục tiêu để che giấu
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
  title: "Che giấu nội dung trong tài liệu"
  description: "Với GroupDocs.Redaction for Java, bạn có thể che giấu hoặc xóa dữ liệu nhạy cảm trong nhiều định dạng tệp khác nhau. Bảo vệ thông tin cá nhân trong khi giữ cho các tệp dễ đọc và phân phối."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Tùy chọn che giấu mạnh mẽ"
  features:
    # feature loop
    - title: "Sửa đổi văn bản ở bất kỳ đâu"
      content: "Tìm và thay thế những từ nhạy cảm trên toàn bộ tài liệu của bạn để bảo vệ nội dung riêng tư."

    # feature loop
    - title: "Che giấu hình ảnh"
      content: "Thêm lớp phủ vào hình ảnh hoặc một phần của nó để giữ cho hình ảnh nhạy cảm được giấu kín."

    # feature loop
    - title: "Dọn dẹp siêu dữ liệu"
      content: "Xóa hoặc chỉnh sửa siêu dữ liệu ẩn để ngăn chặn thông tin không mong muốn bị rò rỉ."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Che giấu dữ liệu hình ảnh bằng các lớp phủ"
      content: |
        Ví dụ này minh họa cách che giấu hình ảnh bí mật trong tài liệu bằng lớp phủ.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Mở tài liệu để chỉnh sửa
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Xác định kích thước, màu sắc và vị trí lớp phủ
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Chọn vùng hình ảnh cần che giấu ở trang đầu
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Thêm lớp phủ để che dữ liệu nhạy cảm
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
    title: "Bảo vệ các tệp PDF với các lớp phủ của Java"
    exclude: "PDF"
    description: "Sử dụng Java để che giấu hoặc xóa dữ liệu nhạy cảm trong các tệp PDF. Hoàn hảo để bảo vệ tài liệu chính thức và cá nhân."
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