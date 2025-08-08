
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: vi
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Xóa siêu dữ liệu từ POWERPOINT bằng Java"
head_description: "Sử dụng GroupDocs.Redaction for Java để làm sạch siêu dữ liệu ẩn từ các tệp POWERPOINT và giữ tài liệu của bạn riêng tư và an toàn."

############################# Header ############################
title: "Xóa siêu dữ liệu trong POWERPOINT bằng Java" 
description: "Bảo vệ các tệp của bạn bằng các công cụ dễ sử dụng được thiết kế cho Java. Các bước xóa siêu dữ liệu chỉ với vài bước."
subtitle: "Những gì bạn nhận được với GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Gì GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction là một công cụ redaction dành cho các nhà phát triển Java. Nó giúp bạn làm sạch văn bản, hình ảnh và siêu dữ liệu trong các tệp POWERPOINT.

############################# Steps ############################
steps:
    enable: true
    title: "Cách làm sạch siêu dữ liệu từ các tệp Powerpoint"
    content: |
      Với GroupDocs.Redaction, các ứng dụng Java của bạn có thể nhanh chóng làm sạch siêu dữ liệu từ tài liệu.
      
      1. Tạo một đối tượng Redactor và tải tài liệu.
      2. Chọn các trường siêu dữ liệu bạn muốn xóa.
      3. Áp dụng thiết lập xóa của bạn.
      4. Xuất tài liệu của bạn mà không có dữ liệu ẩn.
   
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
        // Xóa siêu dữ liệu từ các tệp POWERPOINT

        // Mở tệp của bạn với redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Thiết lập những gì siêu dữ liệu cần xóa
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Làm sạch và lưu tệp
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Giữ tài liệu của bạn an toàn với Redaction"
  description: "GroupDocs.Redaction for Java giúp làm sạch nội dung riêng tư hoặc ẩn để tài liệu có thể được chia sẻ an toàn. Hỗ trợ nhiều loại tệp."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Những gì bạn có thể Xóa"
  features:
    # feature loop
    - title: "Xóa văn bản nhạy cảm"
      content: "Tìm và xóa các từ cá nhân hoặc bí mật trong các tệp của bạn."

    # feature loop
    - title: "Che các khu vực hình ảnh"
      content: "Che các phần của hình ảnh mà không nên thấy."

    # feature loop
    - title: "Làm sạch siêu dữ liệu"
      content: "Xóa các trường có thể tiết lộ chi tiết ẩn."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Xóa các trường siêu dữ liệu ẩn"
      content: |
        Ví dụ này cho thấy cách xóa thông tin nhúng như Tác giả và Tiêu đề từ tài liệu POWERPOINT.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Mở tệp với redactor
          final Redactor redactor = new Redactor("source.pptx");
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

              // Áp dụng xóa
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Lưu tài liệu đã cập nhật
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
    title: "Làm sạch siêu dữ liệu POWERPOINT trong Java"
    exclude: "POWERPOINT"
    description: "Sử dụng Java để xóa dữ liệu riêng tư từ các tệp POWERPOINT. Hoàn hảo để làm sạch và chia sẻ tài liệu nhạy cảm."
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