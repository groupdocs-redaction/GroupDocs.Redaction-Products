
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: vi
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Xóa siêu dữ liệu từ WORD bằng Java"
head_description: "Với GroupDocs.Redaction for Java, bạn có thể nhanh chóng xóa siêu dữ liệu ẩn khỏi các tệp WORD. Giữ cho tài liệu của bạn an toàn và riêng tư."

############################# Header ############################
title: "Làm sạch siêu dữ liệu ẩn trong các tệp WORD bằng Java" 
description: "Bảo vệ các tệp WORD của bạn bằng cách xóa thông tin riêng tư bằng các công cụ Java. Tuyệt vời cho cả sử dụng cá nhân và doanh nghiệp."
subtitle: "Cách GroupDocs.Redaction for Java giúp bạn" 

############################# About ############################
about:
    enable: true
    title: "Tìm hiểu về GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction cung cấp cho các nhà phát triển Java tất cả những gì họ cần để xóa dữ liệu khỏi các tệp WORD. Làm sạch siêu dữ liệu, văn bản và hình ảnh một cách dễ dàng.

############################# Steps ############################
steps:
    enable: true
    title: "Làm sạch siêu dữ liệu trong các tệp Word"
    content: |
      Sử dụng GroupDocs.Redaction để làm sạch siêu dữ liệu từ tài liệu trong các ứng dụng Java của bạn.
      
      1. Bắt đầu một đối tượng Redactor và tải tệp Word của bạn.
      2. Định nghĩa các quy tắc để xóa các trường siêu dữ liệu ẩn.
      3. Áp dụng chức năng xóa để xóa siêu dữ liệu.
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
        // Xóa siêu dữ liệu ẩn từ WORD

        // Tải tệp với Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Cấu hình các thiết lập xóa siêu dữ liệu
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Chạy quy trình xóa và lưu
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nhiều công cụ để xóa thông tin riêng tư"
  description: "Sử dụng GroupDocs.Redaction for Java để làm sạch văn bản, hình ảnh và siêu dữ liệu khỏi nhiều định dạng tệp. Chia sẻ tài liệu của bạn mà không tiết lộ dữ liệu nhạy cảm."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Các tính năng về siêu dữ liệu và nội dung Redaction"
  features:
    # feature loop
    - title: "Xóa văn bản riêng tư"
      content: "Tìm kiếm nội dung nhạy cảm trong tệp và xóa hoặc thay đổi khi cần."

    # feature loop
    - title: "Che các khu vực hình ảnh"
      content: "Ẩn các phần xác định trong hình ảnh có thể chứa thông tin riêng tư."

    # feature loop
    - title: "Xóa các trường siêu dữ liệu"
      content: "Xóa các nhãn ẩn như tác giả, tiêu đề và hơn thế nữa để đảm bảo quyền riêng tư."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Làm sạch các trường siêu dữ liệu trong tài liệu"
      content: |
        Ví dụ này giải thích cách xóa siêu dữ liệu như Tác giả và Tiêu đề trong một tệp WORD.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Tải tệp để xử lý
          final Redactor redactor = new Redactor("source.docx");
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

              // Thực hiện xóa
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
    title: "Xóa siêu dữ liệu trong WORD bằng Java"
    exclude: "WORD"
    description: "Java cho phép bạn làm sạch siêu dữ liệu ẩn khỏi các tệp WORD. Một cách đơn giản để bảo vệ tài liệu của bạn."
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