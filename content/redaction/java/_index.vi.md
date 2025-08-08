---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: vi
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Drop-down ############################
supported_platforms:
  items:
    # supported_platforms loop
    - title: ".NET"
      tag: "net"
    # supported_platforms loop
    - title: "Java"
      tag: "java"
    # supported_platforms loop
    - title: "Python"
      tag: "python-net"

############################# Head ############################
head_title: "Xóa dữ liệu bí mật từ tài liệu bằng Java"
head_description: "Bảo vệ thông tin nhạy cảm của bạn với GroupDocs.Redaction for Java. Nhanh chóng ẩn, xóa hoặc xóa nội dung bí mật trong PDF, tài liệu Office và hình ảnh."

############################# Header ############################
title: "Bảo Vệ Dữ Liệu Bảo Mật với GroupDocs.Redaction"
description: "Dễ dàng xóa dữ liệu cá nhân, xóa văn bản và dọn dẹp siêu dữ liệu từ PDF, Word, Excel, PowerPoint và các định dạng hình ảnh bằng bộ công cụ Java đáng tin cậy."
words:
  for: "cho"

actions:
  main: "Tải xuống Maven"
  main_link: "https://releases.groupdocs.com/java/repo/com/groupdocs/groupdocs-redaction/"
  alt: "Giấy phép"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/java/"
  title: "Sẵn Sàng Bắt Đầu Chưa?"
  description: "Thử nghiệm các tính năng của GroupDocs.Redaction miễn phí hoặc yêu cầu một giấy phép."

release:
  title: "Phiên bản {0} Được Phát Hành"
  notes: "Xem những gì mới"
  downloads: "Tải xuống"

code:
  title: "Các Bước Xóa Nội Dung Tài Liệu"
  more: "Thêm ví dụ"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
  install: |
    <dependency>
      <groupId>com.groupdocs</groupId>
      <artifactId>groupdocs-redaction</artifactId>
      <version>{0}</version>
    </dependency>
  content: |
    ```java {style=abap}  
    // Tải tệp nguồn của bạn với một instance của Redactor
    final Redactor redactor = new Redactor("sample.pdf");
    try
    {
        // Định nghĩa các tiêu chí và thiết lập xóa
        ReplacementOptions ro = new ReplacementOptions("[redacted]");
        ExactPhraseRedaction red = new ExactPhraseRedaction("Data", ro);

        // Thực hiện thao tác xóa
        RedactorChangeLog result = redactor.apply(red);

        // Lưu tệp với các xóa đã được áp dụng
        redactor.save();
    }
    finally { redactor.close(); }
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction Tóm Lược"
  description: "Nâng cao các ứng dụng Java của bạn với các công cụ xóa chuyên nghiệp"
  features:
    # feature loop
    - title: "Xóa Văn bản Nhạy cảm"
      content: "Với GroupDocs.Redaction for Java, bạn có thể tìm kiếm và ẩn văn bản bí mật bằng cách sử dụng các lớp che khuất hoặc thay thế tùy chỉnh. Tương thích với PDF, Word, Excel và nhiều định dạng khác, nó lý tưởng cho việc tuân thủ quy định và chia sẻ tài liệu an toàn."

    # feature loop
    - title: "Ẩn Hình ảnh"
      content: "Xác định và che giấu hình ảnh hoàn toàn hoặc một phần dựa trên yêu cầu của bạn. Định nghĩa các quy tắc phát hiện và tọa độ khu vực để bảo vệ dữ liệu hình ảnh một cách hiệu quả."

    # feature loop
    - title: "Dọn Dẹp Siêu dữ liệu Nhúng"
      content: "Các tệp có thể chứa thông tin ẩn như tên tác giả, công cụ tạo hoặc chi tiết thiết bị. GroupDocs.Redaction for Java cho phép bạn phát hiện và làm sạch siêu dữ liệu trong Word, Excel, hình ảnh và các định dạng khác."

    # feature loop
    - title: "Xóa Các Đối Tượng Nhúng"
      content: "Làm sạch hoàn toàn các tài liệu bằng cách xóa các đối tượng như chú thích PDF, bình luận hoặc các mục khác nhúng để loại bỏ bất kỳ dấu vết nào của thông tin nhạy cảm."

############################# Platforms ############################
platforms:
  enable: true
  title: "Tính Độc Lập Nền Tảng"
  description: "GroupDocs.Redaction for Java hoạt động trên các hệ điều hành chính, frameworks và nền tảng phát triển."
  items:
    # platform loop
    - title: "Amazon"
      image: "amazon"
    # platform loop
    - title: "Docker"
      image: "docker"
    # platform loop
    - title: "Azure"
      image: "azure"
    # platform loop
    - title: "Eclipse"
      image: "eclipse"
    # platform loop
    - title: "IntelliJ"
      image: "intellij"
    # platform loop
    - title: "Windows"
      image: "windows"
    # platform loop
    - title: "Linux"
      image: "linux"
    # platform loop
    - title: "Maven"
      image: "maven"

############################# File formats ############################
formats:
  enable: true
  title: "Các Định Dạng Tệp Hỗ Trợ"
  description: |
    GroupDocs.Redaction for Java hỗ trợ làm việc với các [định dạng tệp](https://docs.groupdocs.com/redaction/java/supported-document-formats/) sau.
  groups:
    # group loop
    - color: "green"
      content: |
        ### Các Định Dạng MS Office
        * **Word:** DOCX, DOC, DOCM, DOT, DOTX, DOTM,
        * **Excel:** XLSX, XLS, XLSM, XLSB, 
        * **PowerPoint:** PPT, PPTX
    # group loop
    - color: "blue"
      content: |
        ### Các Định Dạng Văn Phòng Khác
        * **Di động:** PDF 
        * **OpenDocument:** ODT, ODS, OTS, ODP, OTT
        * **Các Định Dạng Văn bản:** RTF, CSV, TXT, TSV
      # group loop
    - color: "red"
      content: |
        ### Các Định Dạng Khác
        * **Web:** HTM, HTML, MD
        * **Hình ảnh:** BMP, GIF, JPEG, PNG, TIFF, WEBP
        * **eBooks:** DJVU 
        
        

############################# Features ############################
features:
  enable: true
  title: "Những Gì Bạn Có Thể Làm với GroupDocs.Redaction"
  description: "Nhanh chóng xác định và xóa nội dung từ PDF, tài liệu Office và hình ảnh với độ chính xác."

  items:
    # feature loop
    - icon: "search"
      title: "Tìm Kiếm Chính Xác"
      content: "Sử dụng chế độ tìm kiếm phân biệt và không phân biệt chữ để tìm và xóa các sự phù hợp chính xác."

    # feature loop
    - icon: "text"
      title: "Tìm và Thay thế Văn bản"
      content: "Tự động phát hiện và thay thế hoặc xóa văn bản bí mật trên toàn bộ tài liệu."

    # feature loop
    - icon: "image"
      title: "Che Giấu Bằng Hình ảnh Tùy chỉnh"
      content: "Sử dụng các khối hình ảnh để che đậy văn bản đã xóa, bảo toàn bố cục trong khi ẩn chi tiết."

    # feature loop
    - icon: "search"
      title: "Sử Dụng Regex để Xóa Nâng cao"
      content: "Tận dụng biểu thức chính quy để phát hiện các mẫu phức tạp và xóa một cách thông minh."

    # feature loop
    - icon: "table"
      title: "Xóa Khu Vực Cụ thể"
      content: "Giới hạn việc xóa chỉ trên các trang đã chọn hoặc khu vực bằng cách định nghĩa các khu vực chính xác để nhắm mục tiêu."

    # feature loop
    - icon: "template"
      title: "Làm sạch Các Trường Siêu dữ liệu"
      content: "Xác định và làm sạch siêu dữ liệu tài liệu, bao gồm tác giả, công ty hoặc dữ liệu theo dõi."

    # feature loop
    - icon: "pdf"
      title: "Xuất ra Định dạng Mong Muốn"
      content: "Lưu các tệp đã xóa của bạn dưới dạng PDF hoặc định dạng hỗ trợ khác mà không làm mất tính nguyên vẹn của bố cục."

    # feature loop
    - icon: "template"
      title: "Xóa Tất cả Siêu dữ liệu"
      content: "Hoàn toàn xóa siêu dữ liệu khỏi các tệp hỗ trợ trong chỉ một lệnh."

    # feature loop
    - icon: "hyperlink"
      title: "Các Chính Sách Xóa Tự động"
      content: "Tạo các cấu hình xóa có thể tái sử dụng được lưu trữ trong XML để xóa theo nhóm đồng nhất."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Mẫu Mã"
  description: "Các ví dụ về trường hợp sử dụng GroupDocs.Redaction for Java phổ biến"
  items:
    # code sample loop
    - title: "Xóa Sử Dụng Regex"
      content: |
        GroupDocs.Redaction for Java cho phép các nhà phát triển Java áp dụng [xóa dựa trên regex](https://docs.groupdocs.com/redaction/java/text-redactions/#use-regular-expression) với việc che giấu bằng hình ảnh tùy chọn:
        {{< landing/code title="Xóa Tài liệu Word Sử dụng Biểu thức Chính quy">}}
        ```java {style=abap}
        // Tạo một instance của lớp Redactor
        final Redactor redactor = new Redactor("source.docx");
        try
        {
            // Định nghĩa các quy tắc xóa bằng cách sử dụng biểu thức chính quy
            ReplacementOptions replacement = new ReplacementOptions(java.awt.Color.BLUE);
            RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);

            // Che phủ tất cả văn bản khớp với lớp phủ vuông màu xanh
            redactor.apply(redaction);

            // Lưu tài liệu Word đã xóa
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Xóa Tất cả Siêu dữ liệu"
      content: |
        Với API của chúng tôi, bạn có thể [xóa siêu dữ liệu](https://docs.groupdocs.com/redaction/java/metadata-redactions/#clean-metadata) trên nhiều loại tệp chỉ trong một bước:
        {{< landing/code title="Xóa Tất cả Siêu dữ liệu từ các Bài thuyết trình">}}
        ```java {style=abap}   
        // Cung cấp đường dẫn của bài thuyết trình cho Redactor
        final Redactor redactor  = new Redactor("source.pptx");
        try 
        {
            // Cấu hình các tùy chọn xóa
            EraseMetadataRedaction red = new EraseMetadataRedaction(MetadataFilters.All);

            // Xóa tất cả siêu dữ liệu từ bài thuyết trình
            redactor.apply(red);

            // Lưu tệp thuyết trình đã được sạch
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}

---
