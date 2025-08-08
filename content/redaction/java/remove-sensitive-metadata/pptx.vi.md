
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: vi
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Xóa siêu dữ liệu từ các tệp PPTX bằng Java"
head_description: "Sử dụng GroupDocs.Redaction for Java để xóa hoặc chỉnh sửa siêu dữ liệu ẩn trong các tệp PPTX của bạn. Bảo vệ nội dung của bạn và giữ cho tài liệu sạch sẽ."

############################# Header ############################
title: "Làm sạch siêu dữ liệu trong PPTX với công cụ Java" 
description: "Xóa các thông tin cá nhân được lưu trữ trong siêu dữ liệu bằng Java. Hoạt động tốt cho cả tài liệu cá nhân và doanh nghiệp."
subtitle: "Các tính năng chính của GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Gì GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Tìm hiểu thêm"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction cung cấp cho các nhà phát triển Java công cụ để xóa nội dung riêng tư trong các tệp PPTX. Xóa siêu dữ liệu, ẩn hình ảnh và làm sạch văn bản.

############################# Steps ############################
steps:
    enable: true
    title: "Xóa siêu dữ liệu trong các tệp Pptx"
    content: |
      Với GroupDocs.Redaction, các dự án Java của bạn có thể nhanh chóng làm sạch siêu dữ liệu trong chỉ vài bước.
      
      1. Thiết lập một Redactor và tải tệp Pptx của bạn.
      2. Chọn các trường siêu dữ liệu cần xóa.
      3. Chạy quy trình xóa siêu dữ liệu.
      4. Lưu tệp với siêu dữ liệu đã xóa.
   
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
        // Xóa siêu dữ liệu từ PPTX

        // Sử dụng Redactor để mở tệp
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Thiết lập các trường siêu dữ liệu cần xóa
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
  title: "Nhiều công cụ xóa khác mà bạn có thể sử dụng"
  description: "GroupDocs.Redaction for Java giúp bạn xóa thông tin nhạy cảm từ tất cả các loại tệp chính. Giữ cho tài liệu sạch sẽ và sẵn sàng để chia sẻ."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Các tính năng bảo mật tích hợp"
  features:
    # feature loop
    - title: "Xóa văn bản nhạy cảm"
      content: "Tìm và xóa tên, email và thông tin cá nhân khác từ tệp của bạn."

    # feature loop
    - title: "Che các phần của hình ảnh"
      content: "Thêm lớp phủ để che các khu vực trong hình ảnh mà bạn muốn giữ bí mật."

    # feature loop
    - title: "Làm sạch siêu dữ liệu"
      content: "Xóa thông tin nền như tác giả hoặc tiêu đề trước khi chia sẻ tệp của bạn."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ví dụ về xóa các trường siêu dữ liệu"
      content: |
        Ví dụ này cho thấy cách bạn có thể xóa siêu dữ liệu như tác giả và tiêu đề từ một tệp PPTX.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Mở tệp PPTX của bạn
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Nhắm mục tiêu đến siêu dữ liệu Tác giả
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Nhắm mục tiêu đến siêu dữ liệu Tiêu đề
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Áp dụng các quy tắc xóa
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Lưu tệp đã xóa
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
    title: "Xóa siêu dữ liệu từ PPTX với Java"
    exclude: "PPTX"
    description: "Java làm cho việc xóa dữ liệu ẩn trong các tệp PPTX trở nên đơn giản. Tuyệt vời để giữ tài liệu an toàn trước khi chia sẻ."
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