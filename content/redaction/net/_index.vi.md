---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: vi
product: "Redaction"
product_tag: "redaction"
platform: "Net"
platform_tag: "net"

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
head_title: "Xóa dữ liệu nhạy cảm trong tài liệu của bạn bằng .NET"
head_description: "Bảo vệ tài liệu kinh doanh của bạn với GroupDocs.Redaction for .NET. Xóa, ẩn hoặc xóa các nội dung bí mật từ PDF, Word, Excel, PowerPoint và các tệp hình ảnh."

############################# Header ############################
title: "Bảo Mật Nội Dung của Bạn với GroupDocs.Redaction"
description: "Xóa, ẩn hoặc loại bỏ vĩnh viễn thông tin nhạy cảm và siêu dữ liệu từ PDF, tài liệu Word, bảng tính, bài thuyết trình và hình ảnh bằng giải pháp .NET mạnh mẽ của chúng tôi."
words:
  for: "cho"

actions:
  main: "Tải xuống Nuget"
  main_link: "https://www.nuget.org/packages/GroupDocs.Redaction"
  alt: "Giấy phép"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/net/"
  title: "Sẵn Sàng Bắt Đầu Chưa?"
  description: "Thử nghiệm các tính năng của GroupDocs.Redaction miễn phí hoặc yêu cầu một giấy phép."

release:
  title: "Phiên bản {0} Được Phát Hành"
  notes: "Xem những gì mới"
  downloads: "Tải xuống"

code:
  title: "Cách Xóa Nội Dung Tệp"
  more: "Thêm ví dụ"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
  install: "dotnet add package GroupDocs.Redaction"
  content: |
    ```csharp {style=abap}   
    // Gửi tệp đầu vào cho một instance của Redactor
    using (Redactor redactor = new Redactor("source.pdf"))
    {
        // Cấu hình các tùy chọn xóa
        var repl_opt = new ReplacementOptions("[redacted]");
        var red = new ExactPhraseRedaction("Data", repl_opt);

        // Chạy quy trình xóa
        RedactorChangeLog result = redactor.Apply(red);

        // Lưu tệp đã xóa
        if (result.Status != RedactionStatus.Failed)
        {
            redactor.Save();
        }
    }  
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction Tóm Lược"
  description: "Thêm tính năng xóa nội dung cấp chuyên nghiệp vào các ứng dụng .NET của bạn"
  features:
    # feature loop
    - title: "Xóa Nội Dung Văn bản"
      content: "GroupDocs.Redaction for .NET cho phép bạn xác định và xóa văn bản nhạy cảm. Văn bản có thể được thay thế hoặc ẩn bằng cách sử dụng các lớp hình ảnh màu để tăng cường bảo mật. Hỗ trợ cho một loạt các định dạng bao gồm PDF và tài liệu Office, tính năng này giúp bảo vệ dữ liệu riêng tư và đảm bảo tuân thủ trong kinh doanh."

    # feature loop
    - title: "Xóa Hình ảnh"
      content: "Tự động phát hiện và xóa hình ảnh—hoặc hoàn toàn hoặc một phần—trên các trang tài liệu. Xác định các tiêu chí tìm kiếm và các khu vực nhắm mục tiêu để che dấu nội dung hình ảnh nhạy cảm một cách hiệu quả."

    # feature loop
    - title: "Quản lý Siêu dữ liệu Tệp"
      content: "Nhiều loại tệp chứa siêu dữ liệu ẩn, như tên tác giả trong tệp Word hoặc dữ liệu EXIF trong hình ảnh. GroupDocs.Redaction for .NET giúp bạn tìm và xóa thông tin này một cách đơn giản để đảm bảo bảo mật dữ liệu toàn diện."

    # feature loop
    - title: "Xóa Các Đối Tượng Tài Liệu"
      content: "Đảm bảo bảo vệ nội dung hoàn toàn bằng cách xóa các phần tử cụ thể của tài liệu như chú thích, bình luận và các đối tượng nhúng trong các định dạng như PDF."

############################# Platforms ############################
platforms:
  enable: true
  title: "Tính Độc Lập Nền Tảng"
  description: "GroupDocs.Redaction for .NET tương thích với một loạt các hệ điều hành, frameworks phát triển và trình quản lý gói."
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
    - title: "VS Code"
      image: "vs_code"
    # platform loop
    - title: "ReSharper"
      image: "resharper"
    # platform loop
    - title: "macOS"
      image: "finder"
    # platform loop
    - title: "Linux"
      image: "linux"
    # platform loop
    - title: "NuGet"
      image: "nuget"

############################# File formats ############################
formats:
  enable: true
  title: "Các Định Dạng Tệp Hỗ Trợ"
  description: |
    GroupDocs.Redaction for .NET hỗ trợ các thao tác với các [định dạng tệp](https://docs.groupdocs.com/redaction/net/supported-document-formats/) sau.
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
  title: "Các Tính Năng của GroupDocs.Redaction for .NET"
  description: "Trích xuất và xóa dữ liệu từ PDF, tài liệu Office và hình ảnh với tốc độ và độ chính xác cao."

  items:
    # feature loop
    - icon: "search"
      title: "Tìm Kiếm Linh Hoạt"
      content: "Thực hiện tìm kiếm phân biệt chữ hoa chữ thường hoặc không phân biệt để xóa các cụm từ hoặc từ đặc biệt."

    # feature loop
    - icon: "text"
      title: "Thay Thế hoặc Xóa Văn bản"
      content: "Tìm và thay thế hoặc xóa văn bản nhạy cảm trong tài liệu của bạn."

    # feature loop
    - icon: "image"
      title: "Ẩn Văn bản Bằng Hình ảnh"
      content: "Sử dụng các lớp hình ảnh màu để che giấu nội dung đã xóa một cách trực quan thay vì thay thế văn bản."

    # feature loop
    - icon: "search"
      title: "Khả Năng Tìm Kiếm Nâng cao"
      content: "Sử dụng biểu thức chính quy để xóa nội dung chính xác và linh hoạt trên các tập hợp dữ liệu phức tạp."

    # feature loop
    - icon: "table"
      title: "Xóa Có Định Nghĩa"
      content: "Nhắm đến các trang cụ thể hoặc các khu vực trang đã định để giới hạn việc xóa chỉ cho các phần liên quan."

    # feature loop
    - icon: "template"
      title: "Xóa Siêu dữ liệu"
      content: "Tìm và xóa các thuộc tính siêu dữ liệu để bảo vệ chi tiết sở hữu và tạo tài liệu."

    # feature loop
    - icon: "pdf"
      title: "Định Dạng Đầu Ra Linh Hoạt"
      content: "Xuất các tệp đã xóa sang PDF hoặc bất kỳ định dạng hỗ trợ nào trong khi vẫn giữ nguyên cấu trúc bố cục."

    # feature loop
    - icon: "template"
      title: "Xóa Hoàn Toàn Siêu dữ liệu"
      content: "Xóa tất cả siêu dữ liệu từ một tài liệu trong một hành động duy nhất để đảm bảo bảo mật tuyệt đối."

    # feature loop
    - icon: "hyperlink"
      title: "Các Quy Tắc Xóa Dựa Trên XML"
      content: "Định nghĩa các chính sách xóa trong định dạng XML để xử lý tự động và lặp lại qua nhiều tệp."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Mẫu Mã"
  description: "Các ví dụ sử dụng điển hình của GroupDocs.Redaction for .NET trong hành động"
  items:
    # code sample loop
    - title: "Xóa với Biểu thức Chính quy"
      content: |
        GroupDocs.Redaction for .NET cho phép các nhà phát triển C# xóa văn bản bằng cách sử dụng [biểu thức chính quy](https://docs.groupdocs.com/redaction/net/text-redactions/#use-regular-expression) và che giấu nó bằng các lớp hình ảnh:
        {{< landing/code title="Xóa Tài liệu Word Sử dụng Biểu thức Chính quy">}}
        ```csharp {style=abap}
        // Tạo một instance của lớp Redactor
        using (Redactor redactor = new Redactor("source.docx"))
        {
            // Định nghĩa các quy tắc xóa bằng cách sử dụng biểu thức chính quy
            var replacement = new ReplacementOptions(System.Drawing.Color.Blue);
            var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);
            
            // Che phủ tất cả văn bản khớp với lớp phủ vuông màu xanh
            redactor.Apply(redaction);

            // Lưu tài liệu Word đã xóa
            redactor.Save();
        }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Dọn Dẹp Siêu dữ liệu"
      content: |
        Sử dụng API của chúng tôi để dễ dàng [xóa](https://docs.groupdocs.com/redaction/net/metadata-redactions/#clean-metadata) tất cả siêu dữ liệu từ các định dạng tệp được hỗ trợ:
        {{< landing/code title="Xóa Tất cả Siêu dữ liệu từ các Bài thuyết trình">}}
        ```csharp {style=abap}   
        // Cung cấp đường dẫn của bài thuyết trình cho Redactor
        using (Redactor redactor = new Redactor("source.pptx"))
        {
            // Cấu hình các tùy chọn xóa
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Xóa tất cả siêu dữ liệu từ bài thuyết trình
            redactor.Apply(redaction);

            // Lưu tệp thuyết trình đã được sạch
            redactor.Save();
        }
        ```
        {{< /landing/code >}}

---
