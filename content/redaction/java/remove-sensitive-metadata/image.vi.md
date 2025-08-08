
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: vi
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Xóa siêu dữ liệu ẩn trong IMAGE bằng Java"
head_description: "Sử dụng GroupDocs.Redaction for Java để làm sạch siêu dữ liệu trong các tệp IMAGE. Đảm bảo thông tin cá nhân vẫn ẩn dấu."

############################# Header ############################
title: "Xóa siêu dữ liệu khỏi các tệp IMAGE bằng Java" 
description: "Giữ tài liệu IMAGE của bạn an toàn bằng cách sử dụng các công cụ được xây dựng cho Java. Xóa các chi tiết nhạy cảm một cách dễ dàng."
subtitle: "Những gì bạn có thể làm với GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Giới thiệu về GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction cho phép các nhà phát triển Java xóa nội dung nhạy cảm — bao gồm văn bản, hình ảnh và siêu dữ liệu — khỏi các tệp IMAGE.

############################# Steps ############################
steps:
    enable: true
    title: "Cách làm sạch siêu dữ liệu trong các tệp Image"
    content: |
      Bắt đầu sử dụng GroupDocs.Redaction trong ứng dụng Java của bạn để xóa siêu dữ liệu ẩn nhanh chóng.
      
      1. Tạo một Redactor và mở tài liệu Image của bạn.
      2. Chọn các trường siêu dữ liệu để xóa.
      3. Áp dụng các thiết lập xóa.
      4. Lưu tệp đã làm sạch.
   
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
        // Làm sạch siêu dữ liệu ẩn từ IMAGE

        // Tải tệp của bạn bằng Redactor
        final Redactor redactor = new Redactor("input.png");
        try
        {
            // Đặt các trường siêu dữ liệu để xóa
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Áp dụng thay đổi và lưu
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Làm sạch nội dung trong mọi tệp"
  description: "GroupDocs.Redaction for Java giúp xóa văn bản riêng tư, chi tiết hình ảnh ẩn và siêu dữ liệu khỏi tài liệu của bạn trước khi chia sẻ."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Các tính năng chính"
  features:
    # feature loop
    - title: "Làm sạch văn bản"
      content: "Tìm kiếm các từ cá nhân hoặc số và an toàn loại bỏ chúng."

    # feature loop
    - title: "Che các khu vực hình ảnh"
      content: "Ẩn các phần nhạy cảm của hình ảnh bằng cách sử dụng lớp phủ."

    # feature loop
    - title: "Xóa siêu dữ liệu"
      content: "Xóa các trường siêu dữ liệu có thể chứa thông tin riêng tư."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Xóa siêu dữ liệu nhạy cảm"
      content: |
        Hướng dẫn này cho thấy cách làm sạch các trường như Tác giả và Tiêu đề từ một tài liệu IMAGE.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Mở IMAGE trong redactor
          final Redactor redactor = new Redactor("source.png");
          try
          {
              // Chọn siêu dữ liệu Tác giả
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Chọn siêu dữ liệu Tiêu đề
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Áp dụng xóa
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
    title: "Làm sạch siêu dữ liệu trong IMAGE bằng Java"
    exclude: "IMAGE"
    description: "Sử dụng Java để xóa dữ liệu ẩn trong các tệp IMAGE. Tuyệt vời cho việc làm sạch tài liệu trước khi chia sẻ hoặc lưu trữ."
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