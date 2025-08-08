
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: vi
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Làm sạch siêu dữ liệu trong PDF bằng Java"
head_description: "Sử dụng GroupDocs.Redaction for Java để xóa hoặc cập nhật siêu dữ liệu ẩn trong các tệp PDF. Xóa thông tin cá nhân trước khi chia sẻ tài liệu của bạn."

############################# Header ############################
title: "Xóa siêu dữ liệu từ tệp PDF bằng Java" 
description: "Bảo vệ thông tin cá nhân và doanh nghiệp trong các tệp PDF của bạn bằng Java. Công cụ đơn giản giúp bảo vệ dữ liệu của bạn."
subtitle: "Các tính năng chính của GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Giới thiệu về GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction cung cấp cho các nhà phát triển Java công cụ để ẩn nội dung văn bản, hình ảnh và siêu dữ liệu trong các tài liệu PDF.

############################# Steps ############################
steps:
    enable: true
    title: "Làm sạch siêu dữ liệu trong tài liệu Pdf"
    content: |
      Bắt đầu với GroupDocs.Redaction để bảo vệ siêu dữ liệu trong các dự án Java của bạn.
      
      1. Thiết lập một Redactor và mở tệp Pdf của bạn.
      2. Chọn xóa tất cả các trường siêu dữ liệu.
      3. Chạy chức năng xóa để làm sạch dữ liệu ẩn.
      4. Lưu tệp đã xóa siêu dữ liệu.
   
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
        // Làm sạch siêu dữ liệu trong các tệp PDF

        // Sử dụng Redactor để mở tệp
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Thiết lập các tùy chọn xóa siêu dữ liệu
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Áp dụng và lưu những thay đổi của bạn
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Xóa thông tin nhạy cảm từ các tệp"
  description: "GroupDocs.Redaction for Java cho phép bạn làm sạch nội dung riêng tư trong các định dạng tài liệu khác nhau. Giữ cho các tệp của bạn an toàn và dễ chia sẻ."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Các tính năng chính về Redaction"
  features:
    # feature loop
    - title: "Xóa văn bản"
      content: "Tìm và xóa các từ cá nhân hoặc nhạy cảm trong tài liệu của bạn."

    # feature loop
    - title: "Che hình ảnh"
      content: "Đặt lớp phủ trên hình ảnh để ẩn các hình ảnh riêng tư."

    # feature loop
    - title: "Xóa siêu dữ liệu"
      content: "Xóa siêu dữ liệu ẩn có thể rò rỉ thông tin cá nhân."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Xóa siêu dữ liệu ẩn"
      content: |
        Ví dụ này cho thấy cách thay đổi hoặc xóa siêu dữ liệu trong các tệp PDF.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Mở tệp PDF bằng cách sử dụng redactor
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Nhắm mục tiêu vào trường siêu dữ liệu Tác giả
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Nhắm mục tiêu vào trường siêu dữ liệu Tiêu đề
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Chạy quy trình làm sạch siêu dữ liệu
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Lưu tệp cuối cùng
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "Bảo vệ các tệp PDF với Redaction Metadata của Java"
    exclude: "PDF"
    description: "Xóa các trường ẩn trong các tệp PDF của bạn bằng Java. Bảo vệ quyền riêng tư với một công cụ làm sạch siêu dữ liệu đơn giản."
    items: 
        # format loop 1
        - name: "Chỉnh sửa PDF"
          format: "PDF"
          link: "/redaction/java/remove-sensitive-metadata//pdf/"
          description: "Định dạng Tài liệu Di động Adobe"

        # format loop 2
        - name: "Chỉnh sửa Word"
          format: "WORD"
          link: "/redaction/java/remove-sensitive-metadata//word/"
          description: "Tài liệu MS Word và Open Office"
          
        # format loop 3
        - name: "Chỉnh sửa Excel"
          format: "EXCEL"
          link: "/redaction/java/remove-sensitive-metadata//excel/"
          description: "Bảng tính MS Excel và Open Office"

        # format loop 4
        - name: "Chỉnh sửa PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/remove-sensitive-metadata//powerpoint/"
          description: "Trình bày MS PowerPoint và Open Office"

        # format loop 5
        - name: "Chỉnh sửa Hình ảnh"
          format: "IMAGE"
          link: "/redaction/java/remove-sensitive-metadata//image/"
          description: "Các định dạng hình ảnh phổ biến"

        # format loop 6
        - name: "Chỉnh sửa Ảnh"
          format: "PHOTO"
          link: "/redaction/java/remove-sensitive-metadata//photo/"
          description: "Định dạng ảnh"

        # format loop 7
        - name: "Chỉnh sửa DOCX"
          format: "DOCX"
          link: "/redaction/java/remove-sensitive-metadata//docx/"
          description: "Tài liệu Open XML của Microsoft Word"
          
        # format loop 8
        - name: "Chỉnh sửa XLSX"
          format: "XLSX"
          link: "/redaction/java/remove-sensitive-metadata//xlsx/"
          description: "Bảng tính Open XML của Microsoft Excel"
          
        # format loop 9
        - name: "Chỉnh sửa PPTX"
          format: "PPTX"
          link: "/redaction/java/remove-sensitive-metadata//pptx/"
          description: "Bài thuyết trình Open XML của PowerPoint"

        # format loop 10
        - name: "Chỉnh sửa JPEG"
          format: "JPEG"
          link: "/redaction/java/remove-sensitive-metadata//jpeg/"
          description: "Hình ảnh JPEG"


---