
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: vi
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Che giấu hình ảnh trong DOCX với lớp phủ bằng Java"
head_description: "Với GroupDocs.Redaction for Java, bạn có thể che giấu hình ảnh nhạy cảm trong các tệp DOCX bằng cách áp dụng các lớp phủ màu. Bảo vệ thông tin cá nhân mà không thay đổi bố cục tài liệu."

############################# Header ############################
title: "Che giấu hình ảnh bí mật trong các tài liệu DOCX bằng lớp phủ với Java" 
description: "Bảo vệ dữ liệu doanh nghiệp và cá nhân trong các tệp DOCX bằng Java. Công cụ của chúng tôi giúp bạn giữ thông tin nhạy cảm an toàn và tài liệu của bạn sạch sẽ."
subtitle: "Các tính năng chính của GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Giới thiệu về GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java cung cấp cho các lập trình viên Java các công cụ để che giấu hoặc xóa nội dung trong các tệp DOCX. Bảo vệ văn bản, hình ảnh và siêu dữ liệu trong nhiều định dạng tài liệu khác nhau.

############################# Steps ############################
steps:
    enable: true
    title: "Bảo mật dữ liệu trong các tài liệu Docx"
    content: |
      GroupDocs.Redaction for Java cung cấp cho các ứng dụng Java sức mạnh để che giấu tài liệu. Che giấu nội dung cá nhân nhanh chóng và hiệu quả.
      
      1. Tạo một Redactor và đặt đường dẫn tệp đến tài liệu Docx của bạn.
      2. Điều chỉnh các cài đặt che giấu để phù hợp với nhu cầu của bạn.
      3. Chọn vùng hình ảnh bạn muốn che và chọn màu lớp phủ.
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
        // Che giấu các phần hình ảnh nhạy cảm trong DOCX

        // Tải tài liệu bằng Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Đặt màu lớp phủ và kích thước
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Đánh dấu vùng cần che giấu
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
  title: "Che giấu nội dung nhạy cảm trong các tệp"
  description: "Với GroupDocs.Redaction for Java, bạn có thể che giấu hoặc xóa nội dung từ nhiều loại tệp khác nhau. Giữ cho tài liệu của bạn an toàn và dễ đọc."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Các tính năng của việc che giấu tài liệu"
  features:
    # feature loop
    - title: "Chỉnh sửa nội dung văn bản"
      content: "Tìm và thay thế văn bản nhạy cảm trong các tệp của bạn để duy trì sự riêng tư của dữ liệu."

    # feature loop
    - title: "Đắp lớp phủ lên hình ảnh"
      content: "Che toàn bộ hình ảnh hoặc các phần được chọn để giữ thông tin hình ảnh bí mật."

    # feature loop
    - title: "Xóa siêu dữ liệu"
      content: "Dọn dẹp siêu dữ liệu ẩn trong tài liệu để ngăn ngừa rò rỉ dữ liệu."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Áp dụng lớp phủ để che giấu dữ liệu nhạy cảm"
      content: |
        Ví dụ này cho thấy cách áp dụng lớp phủ để che giấu các vùng hình ảnh bí mật trong tài liệu.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Mở tài liệu để chỉnh sửa
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Đặt kích thước, màu sắc và vị trí lớp phủ
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Chọn một vùng mục tiêu ở trang đầu
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
    title: "Che giấu các tệp DOCX với Java"
    exclude: "DOCX"
    description: "Sử dụng Java để che giấu hoặc xóa dữ liệu cá nhân trong các tệp DOCX. Hoàn hảo để giữ an toàn cho tài liệu kinh doanh và bí mật."
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