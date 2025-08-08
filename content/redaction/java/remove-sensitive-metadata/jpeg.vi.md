
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: vi
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Chỉnh sửa siêu dữ liệu trong JPEG bằng Java"
head_description: "Sử dụng GroupDocs.Redaction for Java để làm sạch hoặc thay đổi siêu dữ liệu trong các tệp JPEG. Bảo vệ quyền riêng tư bằng cách xóa dữ liệu ẩn."

############################# Header ############################
title: "Xóa siêu dữ liệu từ các tệp JPEG bằng Java" 
description: "Giữ cho các tài liệu JPEG của bạn an toàn với các công cụ Java đơn giản giúp xóa các chi tiết riêng tư."
subtitle: "Các tính năng chính của GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Giới thiệu về GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction cho phép các nhà phát triển Java xóa các nội dung không mong muốn — bao gồm văn bản, hình ảnh và siêu dữ liệu — khỏi các tệp JPEG.

############################# Steps ############################
steps:
    enable: true
    title: "Làm sạch siêu dữ liệu trong tài liệu Jpeg"
    content: |
      GroupDocs.Redaction giúp đơn giản hóa việc xóa siêu dữ liệu trong các dự án Java của bạn.
      
      1. Tạo một Redactor và tải tệp Jpeg của bạn.
      2. Chọn các tùy chọn để xóa tất cả các trường siêu dữ liệu.
      3. Chạy chức năng xóa để làm sạch tệp.
      4. Lưu tệp đã cập nhật mà không có dữ liệu ẩn.
   
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
        // Làm sạch siêu dữ liệu trong các tệp JPEG

        // Tải tệp bằng Redactor
        final Redactor redactor = new Redactor("input.jpg");
        try
        {
            // Thiết lập làm sạch siêu dữ liệu
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Chạy và lưu các thay đổi
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Bảo vệ tài liệu của bạn"
  description: "GroupDocs.Redaction for Java giúp loại bỏ các nội dung riêng tư khỏi nhiều loại tài liệu. Giữ thông tin nhạy cảm ra khỏi các tệp đã chia sẻ."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Các tính năng redaction chính"
  features:
    # feature loop
    - title: "Xóa văn bản"
      content: "Tìm và xóa các từ hoặc cụm từ cá nhân từ các tệp của bạn."

    # feature loop
    - title: "Ẩn nội dung hình ảnh"
      content: "Thêm lớp phủ để che các khu vực hình ảnh có thông tin nhạy cảm."

    # feature loop
    - title: "Chỉnh sửa siêu dữ liệu"
      content: "Làm sạch hoặc thay đổi các trường siêu dữ liệu để tránh lộ thông tin cá nhân."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Xóa các trường siêu dữ liệu ẩn"
      content: |
        Ví dụ này cho thấy cách xóa hoặc chỉnh sửa siêu dữ liệu như Tác giả và Tiêu đề trong các tài liệu JPEG.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Mở tệp JPEG bằng redactor
          final Redactor redactor = new Redactor("source.jpg");
          try
          {
              // Nhắm vào siêu dữ liệu Tác giả
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Nhắm vào siêu dữ liệu Tiêu đề
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Chạy quy trình xóa
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Lưu tệp đã làm sạch
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
    title: "Xóa siêu dữ liệu trong JPEG bằng Java"
    exclude: "JPEG"
    description: "Sử dụng Java để xóa dữ liệu ẩn khỏi các tệp JPEG và bảo vệ thông tin nhạy cảm."
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