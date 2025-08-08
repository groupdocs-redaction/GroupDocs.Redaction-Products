
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: vi
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Xóa siêu dữ liệu trong PHOTO bằng Java"
head_description: "GroupDocs.Redaction for Java giúp bạn xóa dữ liệu ẩn khỏi các tệp PHOTO có thể tiết lộ chi tiết cá nhân hoặc doanh nghiệp."

############################# Header ############################
title: "Xóa siêu dữ liệu từ PHOTO bằng Java" 
description: "Giữ cho các tệp PHOTO của bạn an toàn bằng cách xóa siêu dữ liệu ẩn bằng công cụ Java."
subtitle: "Điểm nổi bật của GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Giới thiệu về GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction cung cấp cho các nhà phát triển Java công cụ để ẩn nội dung nhạy cảm trong các tệp PHOTO, bao gồm văn bản, hình ảnh và siêu dữ liệu.

############################# Steps ############################
steps:
    enable: true
    title: "Cách xóa siêu dữ liệu khỏi các tệp Photo"
    content: |
      Sử dụng GroupDocs.Redaction trong ứng dụng Java của bạn để xóa siêu dữ liệu khỏi tài liệu.
      
      1. Bắt đầu một Redactor và mở tệp Photo.
      2. Đặt các quy tắc để xóa các trường ẩn.
      3. Áp dụng quy trình xóa để làm sạch tệp.
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
        // Làm sạch siêu dữ liệu trong các tệp PHOTO

        // Mở tệp bằng Redactor
        final Redactor redactor = new Redactor("input.jpeg");
        try
        {
            // Chọn các trường siêu dữ liệu cần xóa
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Áp dụng và lưu tệp
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Xóa thông tin riêng tư từ tài liệu"
  description: "GroupDocs.Redaction for Java giúp làm sạch các tệp bằng cách xóa văn bản nhạy cảm, nội dung hình ảnh và siêu dữ liệu. Tuyệt vời cho quyền riêng tư và bảo mật."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Các tính năng redaction hữu ích"
  features:
    # feature loop
    - title: "Làm sạch văn bản"
      content: "Tìm và xóa các từ hoặc số không nên chia sẻ."

    # feature loop
    - title: "Redaction hình ảnh"
      content: "Thêm lớp che chắn lên các phần hình ảnh có nội dung nhạy cảm."

    # feature loop
    - title: "Xóa các trường siêu dữ liệu"
      content: "Làm sạch các chi tiết tệp có thể mang theo thông tin riêng tư."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Xóa các trường siêu dữ liệu ẩn"
      content: |
        Ví dụ này cho thấy cách xóa các trường như Tác giả và Tiêu đề khỏi một tài liệu PHOTO.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Mở tệp PHOTO trong redactor
          final Redactor redactor = new Redactor("source.jpeg");
          try
          {
              // Xóa trường Tác giả
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Xóa trường Tiêu đề
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Chạy quy trình
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
    title: "Sử dụng Java để xóa siêu dữ liệu PHOTO"
    exclude: "PHOTO"
    description: "Bảo vệ các tài liệu PHOTO của bạn bằng cách xóa siêu dữ liệu bằng các công cụ Java."
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