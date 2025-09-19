---
############################# Static ############################
layout: "family"
date:  2025-09-19T19:29:16
draft: false

product: "Redaction"
product_tag: "redaction"

lang: vi

############################# Head ############################
head_title: "Giải pháp Xóa Dữ liệu Tài liệu. Chỉnh sửa hoặc xóa bất kỳ dữ liệu nhạy cảm nào."
head_description: "Xóa, ẩn hoặc che giấu văn bản, hình ảnh, hoặc siêu dữ liệu trong PDF, tài liệu Word, bảng tính Excel, bài thuyết trình PowerPoint, hình ảnh và nhiều hơn nữa. Sử dụng thư viện của chúng tôi trong các ứng dụng .NET, Java, Python hoặc ứng dụng trên đám mây."

############################# Header ############################
title: "Thư viện Xóa Dữ liệu Tài liệu"
description:  |
  Ẩn hoặc xóa thông tin cá nhân từ các loại tệp khác nhau.

  Chỉnh sửa văn bản hoặc hình ảnh để loại bỏ nội dung nhạy cảm.

  Quản lý siêu dữ liệu tệp với các tính năng nâng cao của chúng tôi.

############################# Supported Platforms ###############################
supported_platforms:
  enable: true
  head_title: "Chọn Nền Tảng Của Bạn"
  title: "Tính Độc Lập Nền Tảng"
  description: "Thư viện GroupDocs.Redaction hỗ trợ các hệ điều hành và frameworks sau:"
  details_link_title: "Tìm hiểu thêm"

  items:
    # items loop
    - title: ".NET"
      description: GroupDocs.Redaction .NET 
      color: "blue"
      tag: "net"
      link: "/redaction/net/"
      features_link: "https://docs.groupdocs.com/redaction/net/system-requirements/"
      features:
          # features loop
          - rows: "3"
            content: |
                    NET 6.0+ <br> .NET Core 3.1 <br> .NET Framework 4.6.2+
      
          # features loop
          - rows: "4"
            content: |
                    Windows <br> Linux <br> Mac OS <br> Microsoft Azure
      
          # features loop
          - rows: "3"
            content: |
                    Microsoft Visual Studio <br> JetBrains Rider <br> Microsoft Visual Code
      
          # features loop
          - rows: "1"
            content: |
                    30+ file formats
      

    # items loop
    - title: "Java"
      description: GroupDocs.Redaction Java
      color: "red"
      tag: "java"
      link: "/redaction/java/"
      features_link: "https://docs.groupdocs.com/redaction/java/system-requirements/"
      features:
          # features loop
          - rows: "3"
            content: |
                    Java 8 or higher <br> Kotlin
      
          # features loop
          - rows: "4"
            content: |
                    Windows <br> Linux <br> Mac OS
      
          # features loop
          - rows: "3"
            content: |
                    IntelliJ IDEA <br> Eclipse <br> NetBeans
      
          # features loop
          - rows: "1"
            content: |
                    30+ file formats

    # items loop
    - title: "Python"
      description: GroupDocs.Redaction Python
      color: "yellow"
      tag: "python-net"
      link: "/redaction/python-net/"
      features_link: "https://docs.groupdocs.com/redaction/python-net/system-requirements/"
      features:
          # features loop
          - rows: "3"
            content: |
                    Python 3.9+ and .Net 6+
      
          # features loop
          - rows: "4"
            content: |
                    Windows <br> Linux <br> Mac OS
      
          # features loop
          - rows: "3"
            content: |
                    IDLE <br> PyCharm <br> Visual Studio Code
      
          # features loop
          - rows: "1"
            content: |
                    30+ file formats

############################# Features ###############################
features:
  enable: true
  title: "GroupDocs.Redaction Tóm Lược"
  description: "Giải pháp quản lý nội dung trong PDF, tài liệu Office, hình ảnh và các tệp kinh doanh khác."

  items:
    # items loop
    - icon: "text"
      title: "Xóa hoặc Chỉnh sửa Văn bản"
      content: "Tìm và xóa văn bản nhạy cảm trong tài liệu của bạn."

    # items loop
    - icon: "image"
      title: "Xóa Hình ảnh"
      content: "Ẩn các khu vực hình ảnh trong tệp của bạn một cách hiệu quả."

    # items loop
    - icon: "template"
      title: "Quản lý Siêu dữ liệu"
      content: "Xóa hoặc thay thế siêu dữ liệu như tác giả trong tài liệu Word hoặc dữ liệu EXIF trong hình ảnh."

    # items loop
    - icon: "pdf"
      title: "Các Tính năng Nâng cao"
      content: "Tìm kiếm dữ liệu để xóa bằng cách sử dụng biểu thức chính quy hoặc tích hợp AI."

############################# Code samples ############################
code_samples:
  enable: true
  title: "Mẫu Mã GroupDocs.Redaction"
  description: "Các trường hợp sử dụng điển hình của các thao tác xóa dữ liệu trong GroupDocs.Redaction."
  items:
    # code sample loop
    - title: "Cách Xóa Văn bản trong Tài liệu PDF"
      content: |
       GroupDocs.Redaction là giải pháp tốt nhất để xóa văn bản trong tài liệu của bạn chỉ với vài bước.
      samples:
        - language: "C#"
          color: "blue"
          content: |
            ```csharp {style=abap}   
            // Gửi đường dẫn tệp cần xóa cho một instance của Redactor
            using (Redactor redactor  = new Redactor("source.pdf"))
            {
                // Cung cấp các tùy chọn xóa
                var redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // Xóa và lưu kết quả
                redactor.Apply(redaction);

                var outputFile = redactor.Save();
            }   
            ```
        - language: "Java"
          color: "red"
          content: |
            ```java {style=abap}   
            // Gửi đường dẫn tệp cần xóa cho một instance của Redactor
            final Redactor redactor  = new Redactor("source.pdf");

            try 
            {
                // Cung cấp các tùy chọn xóa
                ExactPhraseRedaction redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // Xóa và lưu kết quả
                redactor.apply(redaction);
                redactor.save();
            }
            finally { redactor.close(); } 
            ```
        - language: "Python"
          color: "yellow"
          content: |
            ```python {style=abap}
            import groupdocs.redaction as gr
            import groupdocs.redaction.options as gro
            import groupdocs.redaction.redactions as grr

            def run():

                # Gửi đường dẫn tệp cần xóa cho một instance của Redactor
                with gr.Redactor("source.pdf") as redactor:

                    # Cung cấp các tùy chọn xóa
                    repl_opt = grr.ReplacementOptions("[hidden]")
                    ex_red = grr.ExactPhraseRedaction("Sensitive data", repl_opt)

                    # Xóa và lưu kết quả
                    result = redactor.apply(ex_red)
        
                    so = gro.SaveOptions()
                    so.add_suffix = True
                    so.rasterize_to_pdf = False
                    result_path = redactor.save(so)
            ```

############################# Supported Formats ###############################
formats:
  enable: true
  title: "Hỗ Trợ Hơn 30 Định Dạng Tệp"
  description: "GroupDocs.Redaction hỗ trợ các thao tác xóa trên tất cả các định dạng tệp kinh doanh phổ biến."

############################# Metrics ###############################
metrics:
  enable: true
  title: "GroupDocs.Redaction Thành Tựu"
  description: "Khám Phá Các Chỉ Số Chính Nổi Bật Thành Công Của Thư Viện Chúng Tôi"

  items:
    # items loop
    - number: "30+"
      title: "Các Định Dạng Hỗ Trợ"
      content: "GroupDocs.Redaction hỗ trợ các thao tác với hơn 30 định dạng tệp phổ biến."

    # items loop
    - number: "440k"
      title: "Tải Xuống NuGet"
      content: "GroupDocs.Redaction cho .NET đã được tải xuống hơn 440.000 lần từ NuGet."

    # items loop
    - number: "12k"
      title: "Tải Xuống Maven"
      content: "GroupDocs.Redaction có hơn 12.000 lượt tải xuống trên Maven, cung cấp các tính năng xóa dữ liệu mạnh mẽ cho Java."

    # items loop
    - number: "140+"
      title: "Khách Hàng Hài Lòng"
      content: "Cả các doanh nghiệp toàn cầu và các nhà phát triển cá nhân đều tin tưởng vào các sản phẩm của GroupDocs để xây dựng các giải pháp đổi mới."


############################# Customers ###############################
customers:
  enable: true
  title: "Các Khách Hàng Hài Lòng Của Chúng Tôi"
  description: "Các thư viện của GroupDocs được tin dùng bởi những thương hiệu được công nhận và tôn trọng toàn cầu."

  items:
    # items loop
    - title: "BenQ Corporation"
      logo: "benq"
      
    # items loop
    - title: "Nasdaq Stock Market"
      logo: "nasdaq"
      
    # items loop
    - title: "AT&T Inc."
      logo: "att"
      
    # items loop
    - title: "Customer logo AstraZeneca"
      logo: "astrazeneca"
      
    # items loop
    - title: "Central Bank of Argentina"
      logo: "argentinacentralbank"
      
    # items loop
    - title: "Roche Holding AG"
      logo: "roche"
      
    # items loop
    - title: "Capita"
      logo: "capita"
      
    # items loop
    - title: "Axa S.A."
      logo: "axa"
      
    # items loop
    - title: "Instructure Inc."
      logo: "instructure"
      
    # items loop
    - title: "Wipro"
      logo: "wipro"


############################# Actions ###############################
actions:
  enable: true
  title: "Sẵn Sàng Bắt Đầu Chưa?"
  description: "Thử nghiệm các tính năng của GroupDocs.Redaction miễn phí trên nền tảng của bạn."

  items:
    # items loop
    - title: ".NET"
      color: "blue"
      link: "/redaction/net/"

    # items loop
    - title: "Java"
      color: "red"
      link: "/redaction/java/"

    # items loop
    - title: "Node.js"
      color: "yellow"
      link: "/redaction/python-net/"   

############################# FAQ ###############################
faq:
  enable: true
  title: "Câu Hỏi Thường Gặp"
  description: "Các câu trả lời cho những câu hỏi thường gặp nhất."

  items:
    # items loop
    - question: "Thư viện GroupDocs.Redaction có cần bất kỳ phần mềm bên thứ ba nào để thao tác tài liệu không?"
      answer: "GroupDocs.Redaction không yêu cầu phần mềm bên ngoài như Adobe Acrobat, Microsoft Office hoặc các phần mềm khác."

    # items loop
    - question: "Tôi có thể thử thư viện GroupDocs.Redaction trước khi mua không?"
      answer: "Có, bạn có thể thử nghiệm GroupDocs.Redaction mà không cần mua giấy phép. Nó hoạt động ở chế độ thử nghiệm, thêm vào dấu nhắc thử nghiệm và giới hạn đầu ra trên 3 trang đầu tiên. Để kiểm tra mà không bị giới hạn, yêu cầu một giấy phép tạm thời 30 ngày. Để biết thêm chi tiết, [xem](https://purchase.groupdocs.com/temporary-license/)."

    # items loop
    - question: "Các tùy chọn giấy phép nào có sẵn?"
      answer: "Chúng tôi cung cấp một số loại giấy phép dựa trên nhu cầu phát triển và phân phối của bạn. Bao gồm giấy phép dựa trên nhà phát triển, giấy phép theo trang và giấy phép tính phí theo mức độ sử dụng. Tìm hiểu thêm [tại đây](https://purchase.groupdocs.com/pricing/redaction/net/)."

############################# Cloud Links ###############################
cloud_links:
  enable: false
  title: "GroupDocs.Redaction APIs Không Mã"
  description: "Tích hợp việc xóa tài liệu vào bất kỳ ứng dụng nào bằng cách sử dụng API REST dựa trên đám mây của chúng tôi."
  
  items:
    # items loop
    - title: "GroupDocs.Redaction Cloud for cURL"
      content: "Sử dụng lệnh cURL với API đám mây RESTful của chúng tôi để xóa tài liệu trong một loạt các định dạng tệp được hỗ trợ."
      icon: "groupdocs_redaction-for-curl"
      link: "https://products.groupdocs.cloud/redaction/curl"

    # items loop
    - title: "GroupDocs.Redaction Cloud for .NET"
      content: "Trích xuất hình ảnh, văn bản và siêu dữ liệu hoặc xóa tài liệu bằng cách sử dụng các mẫu trong các ứng dụng .NET của Microsoft."
      icon: "groupdocs_redaction-for-net"
      link: "https://products.groupdocs.cloud/redaction/net"

    # items loop
    - title: "GroupDocs.Redaction Cloud for Java"
      content: "SDK Java để xóa tài liệu và trích xuất dữ liệu trong các ứng dụng dựa trên Java của bạn."
      icon: "groupdocs_redaction-for-java"
      link: "https://products.groupdocs.cloud/redaction/java"

############################# App links ###############################
app_links:
  enable: true
  title: "GroupDocs.Redaction Ứng Dụng Không Mã"
  description: "Một ứng dụng web cho phép bạn xóa hơn 30 định dạng tệp phổ biến ngay trong trình duyệt của bạn."

  items:
    # items loop
    - title: "GroupDocs.Redaction Total"
      content: "Công cụ trực tuyến miễn phí để xóa Word, Excel, PowerPoint, PDF và hơn 30 loại tệp khác."
      icon: "groupdocs_redaction-app"
      link: "https://products.groupdocs.app/redaction/total"

    # items loop
    - title: "GroupDocs.Redaction DOCX"
      content: "Xóa tài liệu Word trong trình duyệt của bạn và trích xuất hình ảnh, văn bản hoặc siêu dữ liệu."
      icon: "groupdocs_words-app"
      link: "https://products.groupdocs.app/redaction/docx"

    # items loop
    - title: "GroupDocs.Redaction PDF"
      content: "Công cụ xóa PDF miễn phí hoạt động trên bất kỳ thiết bị hoặc nền tảng nào mà không có giới hạn."
      icon: "groupdocs_pdf-app"
      link: "https://products.groupdocs.app/redaction/pdf"


      


---