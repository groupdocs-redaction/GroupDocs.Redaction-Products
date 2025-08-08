
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: vi
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Xóa siêu dữ liệu từ XLSX bằng Java"
head_description: "GroupDocs.Redaction for Java giúp làm sạch siêu dữ liệu ẩn từ các tệp XLSX. Giữ tài liệu của bạn riêng tư và không có chi tiết không mong muốn."

############################# Header ############################
title: "Làm sạch siêu dữ liệu từ các tệp XLSX trong Java" 
description: "Sử dụng Java để loại bỏ các chi tiết cá nhân hoặc ẩn trong các tài liệu XLSX của bạn. Lý tưởng cho cả công việc và sử dụng cá nhân."
subtitle: "Xem những gì bạn có thể làm với GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Giới thiệu về GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction cung cấp cho các nhà phát triển Java công cụ để kiểm soát nội dung trong các tệp XLSX. Xóa văn bản, siêu dữ liệu và hình ảnh khi cần.

############################# Steps ############################
steps:
    enable: true
    title: "Xóa siêu dữ liệu từ các tệp Xlsx"
    content: |
      GroupDocs.Redaction giúp dự án Java của bạn nhanh chóng xóa siêu dữ liệu nhạy cảm.
      
      1. Bắt đầu một Redactor và mở tệp Xlsx.
      2. Chọn các trường siêu dữ liệu cần xóa.
      3. Chạy quy trình xóa để xóa chúng khỏi tệp.
      4. Lưu phiên bản đã làm sạch.
   
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
        // Xóa siêu dữ liệu ẩn trong các tệp XLSX

        // Mở tệp bằng Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Chọn các trường siêu dữ liệu cần xóa
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Áp dụng xóa và lưu tệp của bạn
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Bảo vệ các tệp của bạn bằng cách ẩn thông tin nhạy cảm"
  description: "Với GroupDocs.Redaction for Java, bạn có thể làm sạch dữ liệu cá nhân từ nhiều loại tài liệu. Một cách đơn giản để giữ cho các tệp của bạn an toàn."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Các tính năng cho việc xóa nội dung"
  features:
    # feature loop
    - title: "Xóa văn bản"
      content: "Tìm và xóa các từ hoặc cụm từ chứa thông tin cá nhân."

    # feature loop
    - title: "Che hình ảnh"
      content: "Ẩn các phần hình ảnh có chứa những phần riêng tư hoặc nhạy cảm."

    # feature loop
    - title: "Xóa siêu dữ liệu"
      content: "Gom nhóm siêu dữ liệu có thể tiết lộ thông tin cá nhân hoặc doanh nghiệp."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ví dụ về xóa siêu dữ liệu"
      content: |
        Ví dụ này cho thấy cách xóa siêu dữ liệu như Tác giả hoặc Tiêu đề từ một tệp XLSX.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Mở tài liệu của bạn
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Chọn trường Tác giả để xóa
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Chọn trường Tiêu đề để xóa
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Chạy công cụ xóa
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Lưu kết quả
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
    title: "Xóa siêu dữ liệu trong XLSX bằng Java"
    exclude: "XLSX"
    description: "Sử dụng công cụ Java để xóa dữ liệu ẩn từ các tệp XLSX. Chia sẻ các tài liệu sạch, an toàn."
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