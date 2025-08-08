
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: vi
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Xóa siêu dữ liệu từ DOCX bằng Java"
head_description: "Sử dụng GroupDocs.Redaction for Java để làm sạch siêu dữ liệu ẩn trong các tệp DOCX của bạn. Đảm bảo rằng tài liệu của bạn không tiết lộ thông tin cá nhân."

############################# Header ############################
title: "Làm sạch siêu dữ liệu trong tài liệu DOCX bằng Java" 
description: "Xóa siêu dữ liệu không mong muốn từ các tệp DOCX của bạn bằng Java. Giữ cho các tệp của bạn riêng tư và an toàn khi chia sẻ hoặc lưu trữ."
subtitle: "Các công cụ chính bên trong GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "What is GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction giúp các nhà phát triển Java xóa các nội dung riêng tư trong các tệp DOCX. Khả năng xóa văn bản, hình ảnh và siêu dữ liệu.

############################# Steps ############################
steps:
    enable: true
    title: "Xóa thông tin ẩn từ các tệp Docx"
    content: |
      GroupDocs.Redaction giúp bạn dễ dàng xóa siêu dữ liệu trong các ứng dụng Java của bạn.
      
      1. Khởi tạo Redactor và tải tệp Docx.
      2. Thiết lập công cụ để xóa các trường siêu dữ liệu cụ thể.
      3. Áp dụng quy trình xóa để xóa thông tin ẩn.
      4. Lưu tệp đã cập nhật.
   
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
        // Xóa siêu dữ liệu từ các tệp DOCX

        // Mở tệp bằng Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Chọn các siêu dữ liệu cần xóa
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Áp dụng và lưu thay đổi
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Bảo vệ dữ liệu nhạy cảm trong tài liệu"
  description: "GroupDocs.Redaction for Java cho phép bạn ẩn nội dung riêng tư từ tất cả các loại tệp. Đảm bảo không có dữ liệu ẩn nào được chia sẻ."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Công cụ Xóa Metadata, Văn Bản và Hình Ảnh"
  features:
    # feature loop
    - title: "Xóa văn bản"
      content: "Tìm và xóa văn bản nhạy cảm trên toàn tài liệu của bạn."

    # feature loop
    - title: "Lớp phủ hình ảnh"
      content: "Che chắn các phần của hình ảnh để ẩn hình ảnh riêng tư."

    # feature loop
    - title: "Làm sạch siêu dữ liệu"
      content: "Xóa siêu dữ liệu nền có thể tiết lộ thông tin ẩn."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cách xóa siêu dữ liệu"
      content: |
        Ví dụ này cho thấy cách xóa các thuộc tính ẩn như Tác giả và Tiêu đề từ một tệp DOCX.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Mở tài liệu DOCX của bạn
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Chọn trường Tác giả để làm sạch
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Chọn trường Tiêu đề để làm sạch
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Chạy chức năng xóa
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
    title: "Làm sạch siêu dữ liệu từ DOCX với Java"
    exclude: "DOCX"
    description: "Sử dụng Java để xóa các siêu dữ liệu ẩn từ các tài liệu DOCX. Tốt cho quyền riêng tư và bảo vệ dữ liệu."
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