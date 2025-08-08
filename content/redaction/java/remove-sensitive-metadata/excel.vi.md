
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: vi
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Xóa siêu dữ liệu từ EXCEL bằng Java"
head_description: "Bảo vệ các tài liệu EXCEL của bạn bằng cách xóa siêu dữ liệu ẩn bằng GroupDocs.Redaction for Java. Giữ chi tiết riêng tư không bị lộ."

############################# Header ############################
title: "Làm sạch siêu dữ liệu trong các tệp EXCEL bằng Java" 
description: "Với Java, hãy xóa dữ liệu nhạy cảm khỏi các tệp EXCEL. Một cách thông minh để giữ các tài liệu của bạn an toàn."
subtitle: "Tại sao chọn GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Giới thiệu về GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction cung cấp cho các nhà phát triển Java công cụ để kiểm soát nội dung trong các tệp EXCEL. Xóa văn bản, siêu dữ liệu và hình ảnh khi cần.

############################# Steps ############################
steps:
    enable: true
    title: "Cách xóa siêu dữ liệu khỏi các tệp Excel"
    content: |
      Trong Java, GroupDocs.Redaction giúp đơn giản hóa việc làm sạch siêu dữ liệu tài liệu.
      
      1. Tạo một Redactor và tải tệp Excel của bạn.
      2. Thiết lập các quy tắc để xóa các trường dữ liệu ẩn.
      3. Chạy quy trình làm sạch.
      4. Lưu tài liệu đã làm sạch.
   
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
        // Xóa siêu dữ liệu ẩn từ EXCEL

        // Bắt đầu redactor và mở tệp
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Thiết lập tùy chọn cho việc xóa siêu dữ liệu
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Làm sạch và lưu tài liệu
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Xóa nội dung nhạy cảm khỏi các tệp"
  description: "Với GroupDocs.Redaction for Java bạn có thể xóa siêu dữ liệu, xóa văn bản và che chắn các khu vực hình ảnh trong nhiều loại tệp. Tốt cho việc sử dụng pháp lý, cá nhân hoặc doanh nghiệp."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Công cụ làm sạch siêu dữ liệu và nội dung"
  features:
    # feature loop
    - title: "Tìm và xóa văn bản"
      content: "Tìm kiếm văn bản nhạy cảm và xóa nó để bảo vệ thông tin."

    # feature loop
    - title: "Che nội dung hình ảnh"
      content: "Ẩn các khu vực bí mật trong hình ảnh bằng lớp phủ."

    # feature loop
    - title: "Xóa siêu dữ liệu"
      content: "Xóa các chi tiết nhúng có thể chứa dữ liệu riêng tư."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Tập trung vào các trường siêu dữ liệu cụ thể"
      content: |
        Ví dụ này hướng dẫn xóa các trường như Tác giả và Tiêu đề từ một tệp EXCEL.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Tải tệp vào redactor
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Chọn trường Tác giả
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Chọn trường Tiêu đề
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
    title: "Làm sạch siêu dữ liệu trong EXCEL bằng Java"
    exclude: "EXCEL"
    description: "Sử dụng công cụ Java để xóa dữ liệu ẩn từ các tệp EXCEL. Chia sẻ tài liệu sạch, an toàn."
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