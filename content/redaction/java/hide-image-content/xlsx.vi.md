
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: vi
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Che giấu hình ảnh trong các tệp XLSX với lớp phủ bằng Java"
head_description: "Sử dụng GroupDocs.Redaction for Java để che giấu hình ảnh nhạy cảm trong các tệp XLSX bằng cách thêm các lớp phủ màu. Bảo vệ dữ liệu quan trọng trong khi giữ cấu trúc tài liệu không đổi."

############################# Header ############################
title: "Che giấu hình ảnh riêng tư trong các tài liệu XLSX bằng Java" 
description: "Giữ cho nội dung hình ảnh nhạy cảm an toàn trong các tệp XLSX với Java. Các công cụ dễ sử dụng giúp việc che giấu hình ảnh nhanh chóng và đáng tin cậy."
subtitle: "Các tính năng chính của GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Giới thiệu về GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java cung cấp cho các lập trình viên Java các công cụ đơn giản để che giấu hoặc xóa nội dung từ các tệp XLSX. Che giấu văn bản, hình ảnh và siêu dữ liệu trên nhiều loại tài liệu.

############################# Steps ############################
steps:
    enable: true
    title: "Bảo vệ thông tin riêng tư trong các tài liệu Xlsx"
    content: |
      GroupDocs.Redaction for Java giúp các ứng dụng Java bảo vệ tài liệu với các bước đơn giản.
      
      1. Khởi tạo một Redactor và tải tài liệu Xlsx của bạn.
      2. Đặt tùy chọn che giấu để phù hợp với dự án của bạn.
      3. Chọn phần hình ảnh và chọn màu lớp phủ.
      4. Áp dụng quá trình che giấu và lưu tệp.
   
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
        // Che giấu các vùng hình ảnh nhạy cảm trong XLSX

        // Tạo Redactor với đường dẫn tệp
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Chọn kích thước và màu lớp phủ
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Chọn khu vực để che giấu
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Áp dụng lớp phủ và lưu tài liệu
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Các tính năng che dấu nâng cao"
  description: "Với GroupDocs.Redaction for Java, bạn có thể che giấu hoặc xóa nội dung nhạy cảm trong nhiều loại tệp khác nhau mà vẫn giữ bố cục tài liệu sạch và dễ đọc."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Công cụ che dấu mạnh mẽ"
  features:
    # feature loop
    - title: "Tìm kiếm và thay thế văn bản"
      content: "Tìm văn bản cá nhân và che giấu nó để bảo vệ tài liệu của bạn."

    # feature loop
    - title: "Che giấu nội dung hình ảnh"
      content: "Áp dụng lớp phủ để che giấu các hình ảnh bí mật hoặc các phần cụ thể."

    # feature loop
    - title: "Xóa siêu dữ liệu"
      content: "Dọn dẹp siêu dữ liệu ẩn để tránh lộ thông tin."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Che giấu chi tiết hình ảnh bằng các lớp phủ"
      content: |
        Tìm hiểu cách bảo vệ các phần nhạy cảm của hình ảnh trong tài liệu của bạn bằng các lớp phủ.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Tải tài liệu để che giấu
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Đặt kích thước, màu sắc và vị trí lớp phủ
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Chọn một vùng hình ảnh cụ thể
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Áp dụng lớp phủ để che giấu hình ảnh
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
    title: "Che giấu nội dung XLSX với các lớp phủ của Java"
    exclude: "XLSX"
    description: "Sử dụng Java để che giấu hoặc xóa dữ liệu cá nhân trong các tệp XLSX. Là lựa chọn thông minh để bảo vệ tài liệu doanh nghiệp và các tài liệu cá nhân."
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