---
############################# Static ############################
layout: "landing"
date: 2025-08-11T19:33:04
draft: false

lang: vi
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

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
head_title: "Xóa thông tin bí mật từ tài liệu với Python"
head_description: "Giữ cho các tệp của bạn an toàn bằng GroupDocs.Redaction for Python via .NET. Nhanh chóng xóa, ẩn hoặc loại bỏ nội dung nhạy cảm trong PDF, Word, Excel, PowerPoint và các tệp hình ảnh."

############################# Header ############################
title: "Giữ Tài Liệu của Bạn An Toàn với GroupDocs.Redaction"
description: "Dễ dàng xóa dữ liệu cá nhân, xóa văn bản và làm sạch siêu dữ liệu ẩn từ PDF, tài liệu Office và hình ảnh bằng bộ công cụ Python tiên tiến."
words:
  for: "cho"

actions:
  main: "Tải xuống PyPi"
  main_link: "https://pypi.org/project/groupdocs-redaction-net/"
  alt: "Giấy phép"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
  title: "Sẵn Sàng Bắt Đầu Chưa?"
  description: "Thử nghiệm các tính năng của GroupDocs.Redaction miễn phí hoặc yêu cầu một giấy phép."

release:
  title: "Phiên bản {0} Được Phát Hành"
  notes: "Xem những gì mới"
  downloads: "Tải xuống"

code:
  title: "Xóa Nội Dung Tài Liệu"
  more: "Thêm ví dụ"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
  install: "pip install groupdocs-redaction-net"
  content: |
    ```python {style=abap}
    import groupdocs.redaction as gr
    import groupdocs.redaction.redactions as grr

    def run():

        # Điều chỉnh các tham số xóa
        repl_opt = grr.ReplacementOptions("[redacted]")
        red = grr.ExactPhraseRedaction("Data", repl_opt)

        # Tải tệp của bạn vào instance của Redactor
        with gr.Redactor("sample.pdf") as redactor:

            # Bắt đầu quy trình xóa
            result = redactor.apply(red)
        
            # Xuất tệp đã được làm sạch
            result_path = redactor.save()
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction Tóm Lược"
  description: "Tích hợp các khả năng xóa mạnh mẽ vào các dự án Python của bạn"
  features:
    # feature loop
    - title: "Xóa Văn bản Nhạy cảm"
      content: "Với GroupDocs.Redaction for Python via .NET, bạn có thể tự động tìm và che giấu các từ hoặc cụm từ nhạy cảm. Thay thế hoặc che giấu văn bản bằng các hộp màu để tăng cường bảo vệ trong các PDF, tài liệu Word và các định dạng khác."

    # feature loop
    - title: "Che Giấu Hình ảnh"
      content: "Công nghệ của chúng tôi có thể phát hiện các hình ảnh và làm mờ, ẩn hoặc chặn chúng dựa trên tiêu chí của bạn đã chọn. Định nghĩa các vùng cụ thể hoặc cho phép phát hiện tự động để hoàn toàn kiểm soát."

    # feature loop
    - title: "Xóa Siêu dữ liệu Ẩn"
      content: "Loại bỏ các chi tiết cá nhân hoặc theo dõi ẩn trong siêu dữ liệu, như tác giả hoặc thông tin thiết bị. GroupDocs.Redaction for Python via .NET đảm bảo rằng các tài liệu của bạn được làm sạch hoàn toàn và an toàn để chia sẻ."

    # feature loop
    - title: "Xóa Các Phần Tử Đặc Biệt"
      content: "Vượt ra ngoài văn bản bằng cách xóa các mục nhúng như bình luận, chú thích và các phần tử cụ thể khác của tệp để đạt được sự bảo mật hoàn toàn."

############################# Platforms ############################
platforms:
  enable: true
  title: "Tính Độc Lập Nền Tảng"
  description: "GroupDocs.Redaction for Python via .NET hoạt động trên tất cả các hệ điều hành chính, hỗ trợ các frameworks phổ biến và tích hợp với các trình quản lý gói thông dụng."
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
    GroupDocs.Redaction for Python via .NET hỗ trợ các [định dạng tệp](https://docs.groupdocs.com/redaction/python-net/supported-document-formats/) sau đây.
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
  title: "Các Tính Năng Chính của GroupDocs.Redaction for Python via .NET"
  description: "Dễ dàng quét, xác định và xóa nội dung nhạy cảm trong PDF, hình ảnh và các tài liệu Office."

  items:
    # feature loop
    - icon: "search"
      title: "Tìm Kiếm Tùy Chỉnh"
      content: "Sử dụng các chế độ tìm kiếm linh hoạt để tìm các sự phù hợp chính xác hoặc từ khóa để xóa."

    # feature loop
    - icon: "text"
      title: "Tìm, Thay thế hoặc Xóa Văn bản"
      content: "Xác định thông tin nhạy cảm và thay thế bằng văn bản an toàn hoặc xóa hoàn toàn."

    # feature loop
    - icon: "image"
      title: "Che Giấu Hình ảnh một Cách Trực Quan"
      content: "Đặt các hình dạng hoặc mẫu màu lên để che phủ các phần đã xóa một cách trực quan."

    # feature loop
    - icon: "search"
      title: "Phát hiện Dựa trên Regex"
      content: "Sử dụng biểu thức chính quy để đạt được độ chính xác tối đa trong tìm kiếm văn bản nâng cao."

    # feature loop
    - icon: "table"
      title: "Xóa Tập Trung"
      content: "Áp dụng xóa chỉ cho một số trang hoặc những khu vực xác định để tiết kiệm thời gian và tập trung vào các khu vực chính."

    # feature loop
    - icon: "template"
      title: "Làm sạch Siêu dữ liệu"
      content: "Dễ dàng xóa các trường siêu dữ liệu như tác giả, công ty hoặc thời gian trong các tệp của bạn."

    # feature loop
    - icon: "pdf"
      title: "Tùy chọn Xuất"
      content: "Lưu các tài liệu đã xử lý dưới dạng PDF hoặc định dạng tương thích khác mà không làm mất tính nguyên vẹn tình trạng."

    # feature loop
    - icon: "template"
      title: "Xóa Hoàn toàn Siêu dữ liệu"
      content: "Hoàn toàn xóa tất cả siêu dữ liệu với một cú nhấp chuột duy nhất để bảo vệ dữ liệu tối và."

    # feature loop
    - icon: "hyperlink"
      title: "Các Chính Sách XML Tái Sử dụng"
      content: "Lưu cấu hình xóa tùy chỉnh của bạn dưới dạng các mẫu XML để tự động hóa các tác vụ trong tương lai."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Mẫu Mã"
  description: "Khám phá cách GroupDocs.Redaction for Python via .NET đơn giản hóa các nhiệm vụ xóa"
  items:
    # code sample loop
    - title: "Xóa Văn bản Dựa trên Regex"
      content: |
        Các nhà phát triển sử dụng Python có thể áp dụng [các quy tắc dựa trên regex](https://docs.groupdocs.com/redaction/python-net/text-redactions/#use-regular-expression) để tìm và che giấu văn bản nhạy cảm bằng các lớp hình ảnh:
        {{< landing/code title="Xóa Tài liệu Word Sử dụng Biểu thức Chính quy">}}
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr
        import groupdocs.pydrawing as grd

        def run():

            # Định nghĩa các quy tắc xóa bằng cách sử dụng biểu thức chính quy
            color = grd.Color.from_argb(255, 220, 20, 60)
            repl_opt = grr.ReplacementOptions(color)
            reg_red = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

            # Tạo một instance của lớp Redactor
            with gr.Redactor("source.docx") as redactor:

                # Che phủ tất cả văn bản khớp với lớp phủ vuông màu xanh
                result = redactor.apply(reg_red)
        
                # Lưu tài liệu Word đã xóa
                redactor.save()
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Xóa Siêu dữ liệu"
      content: |
        Sử dụng API để [xóa siêu dữ liệu](https://docs.groupdocs.com/redaction/python-net/metadata-redactions/#clean-metadata) trên nhiều loại tệp chỉ trong vài bước:
        {{< landing/code title="Xóa Tất cả Siêu dữ liệu từ các Bài thuyết trình">}}
        ```python {style=abap}   
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # Cấu hình các tùy chọn xóa
        red = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Cung cấp đường dẫn của bài thuyết trình cho Redactor
        with gr.Redactor("source.pptx") as redactor:

            # Xóa tất cả siêu dữ liệu từ bài thuyết trình
            result = redactor.apply(red)
        
            # Lưu tệp thuyết trình đã được sạch
            redactor.save()
        ```
        {{< /landing/code >}}

---
