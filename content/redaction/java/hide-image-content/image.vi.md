
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: vi
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Che giấu hình ảnh trong IMAGE với lớp phủ bằng Java"
head_description: "Sử dụng GroupDocs.Redaction for Java để che giấu các vùng hình ảnh nhạy cảm trong các tệp IMAGE bằng các lớp phủ màu. Giữ thông tin quan trọng an toàn mà không làm thay đổi bố cục tài liệu."

############################# Header ############################
title: "Bảo vệ hình ảnh riêng tư trong các tệp IMAGE bằng lớp phủ với Java" 
description: "Bảo vệ hình ảnh cá nhân và doanh nghiệp trong các tệp IMAGE với Java. Công cụ dễ dàng cho việc bảo vệ dữ liệu nhanh chóng và đáng tin cậy."
subtitle: "Các tính năng chính của GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Giới thiệu về GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java cung cấp cho các lập trình viên Java khả năng che giấu hoặc xóa nội dung trong các tệp IMAGE. Bảo vệ tài liệu bằng cách che giấu văn bản, hình ảnh và siêu dữ liệu.

############################# Steps ############################
steps:
    enable: true
    title: "Bảo mật nội dung trong các tệp Image bằng lớp phủ"
    content: |
      Che giấu nhanh chóng các khu vực nhạy cảm trong các ứng dụng của bạn với GroupDocs.Redaction for Java.
      
      1. Tạo một đối tượng Redactor và chỉ định đường dẫn tệp của bạn đến Image.
      2. Đặt tùy chọn che giấu theo yêu cầu.
      3. Đánh dấu các phần hình ảnh và chọn màu lớp phủ.
      4. Xử lý và lưu tệp đã che giấu.
   
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
        // Che giấu nội dung hình ảnh trong IMAGE

        // Tải tệp bằng Redactor
        final Redactor redactor = new Redactor("input.png");
        try
        {
            // Đặt kích thước và màu sắc lớp phủ
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Chọn khu vực bạn muốn bảo vệ
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
  title: "Che giấu nội dung nhạy cảm trong bất kỳ tài liệu nào"
  description: "GroupDocs.Redaction for Java giúp bạn che giấu hoặc xóa nội dung cá nhân trong nhiều định dạng tệp. Bảo đảm tài liệu luôn sạch sẽ và an toàn cho việc phân phối."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Các công cụ che giấu với sự kiểm soát đầy đủ"
  features:
    # feature loop
    - title: "Tìm và thay thế văn bản"
      content: "Tìm văn bản nhạy cảm trong các tài liệu và thay thế nó để bảo vệ thông tin."

    # feature loop
    - title: "Che giấu hình ảnh bằng lớp phủ"
      content: "Sử dụng lớp phủ để che toàn bộ hình ảnh hoặc các phần riêng lẻ."

    # feature loop
    - title: "Dọn dẹp siêu dữ liệu"
      content: "Xóa hoặc chỉnh sửa siêu dữ liệu ẩn để ngăn chặn rò rỉ dữ liệu."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Che giấu khu vực hình ảnh bằng lớp phủ"
      content: |
        Ví dụ mã này trình bày cách che giấu các phần nhạy cảm của hình ảnh bằng lớp phủ.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Mở tệp để chỉnh sửa
          final Redactor redactor = new Redactor("source.png");
          try
          {
              // Xác định kích thước, màu sắc và vị trí lớp phủ
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Chọn vùng hình ảnh trên trang đầu
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Thêm lớp phủ để che dấu nội dung
              redactor.apply(redaction);

              // Lưu tệp đã sửa đổi
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
    title: "Bảo vệ các tệp IMAGE với lớp phủ của Java"
    exclude: "IMAGE"
    description: "Với Java, bạn có thể dễ dàng che giấu hoặc xóa dữ liệu nhạy cảm trong các tệp IMAGE. Một giải pháp đáng tin cậy để giữ tài liệu an toàn và bảo mật."
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