---
############################# Static ############################
layout: "family"
date:  2025-08-11T19:33:03
draft: false

product: "Redaction"
product_tag: "redaction"

lang: zh

############################# Head ############################
head_title: "文档删除解决方案。编辑或移除任何敏感数据。"
head_description: "在PDF、Word文档、Excel电子表格、PowerPoint演示文稿、图像等文件中删除、删除或隐藏文本、图像或元数据。在您的.NET、Java、Python或基于云的应用程序中使用我们的库。"

############################# Header ############################
title: "文档删除库"
description:  |
  从各种文件类型中隐藏或移除私人信息。

  编辑文本或图像以消除敏感内容。

  使用我们的高级功能管理文件元数据。

############################# Supported Platforms ###############################
supported_platforms:
  enable: true
  head_title: "选择您的平台"
  title: "平台独立性"
  description: "GroupDocs.Redaction 库支持以下操作系统和框架："
  details_link_title: "了解更多"

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
          - rows: "2"
            content: |
                    .NET Framework 4.6.2 or higher <br> .NET Core 3.1 or higher
      
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
          - rows: "2"
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
          - rows: "2"
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
  title: "GroupDocs.Redaction 一览"
  description: "在PDF、Office文档、图像和其他商业文件中管理内容的解决方案。"

  items:
    # items loop
    - icon: "text"
      title: "移除或编辑文本"
      content: "轻松查找并删除文档中的敏感文本。"

    # items loop
    - icon: "image"
      title: "处理图像"
      content: "轻松隐藏文件中的图像区域，无需额外努力。"

    # items loop
    - icon: "template"
      title: "管理元数据"
      content: "删除或替换如Word文档中的作者信息或图像中的EXIF数据等元数据。"

    # items loop
    - icon: "pdf"
      title: "高级功能"
      content: "使用正则表达式或AI集成搜索需要删除的数据。"

############################# Code samples ############################
code_samples:
  enable: true
  title: "GroupDocs.Redaction 代码示例"
  description: "GroupDocs.Redaction 删除操作的典型用例。"
  items:
    # code sample loop
    - title: "如何在PDF文档中删除文本"
      content: |
       GroupDocs.Redaction 是在文档中删除文本的最佳解决方案，只需几个步骤。
      samples:
        - language: "C#"
          color: "blue"
          content: |
            ```csharp {style=abap}   
            // 将要删除的文件路径传递给 Redactor 实例
            using (Redactor redactor  = new Redactor("source.pdf"))
            {
                // 提供删除选项
                var redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // 删除并保存结果
                redactor.Apply(redaction);

                var outputFile = redactor.Save();
            }   
            ```
        - language: "Java"
          color: "red"
          content: |
            ```java {style=abap}   
            // 将要删除的文件路径传递给 Redactor 实例
            final Redactor redactor  = new Redactor("source.pdf");

            try 
            {
                // 提供删除选项
                ExactPhraseRedaction redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // 删除并保存结果
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

                # 将要删除的文件路径传递给 Redactor 实例
                with gr.Redactor("source.pdf") as redactor:

                    # 提供删除选项
                    repl_opt = grr.ReplacementOptions("[hidden]")
                    ex_red = grr.ExactPhraseRedaction("Sensitive data", repl_opt)

                    # 删除并保存结果
                    result = redactor.apply(ex_red)
        
                    so = gro.SaveOptions()
                    so.add_suffix = True
                    so.rasterize_to_pdf = False
                    result_path = redactor.save(so)
            ```

############################# Supported Formats ###############################
formats:
  enable: true
  title: "支持30多种文件格式"
  description: "GroupDocs.Redaction 支持所有常用商业文件格式的删除操作。"

############################# Metrics ###############################
metrics:
  enable: true
  title: "GroupDocs.Redaction 成就"
  description: "发现突出我们库成功的关键指标"

  items:
    # items loop
    - number: "30+"
      title: "支持的格式"
      content: "GroupDocs.Redaction 支持超过30种广泛使用文件格式的操作。"

    # items loop
    - number: "440k"
      title: "NuGet 下载"
      content: "GroupDocs.Redaction for .NET 在NuGet上下载次数超过440,000次。"

    # items loop
    - number: "12k"
      title: "Maven 下载"
      content: "GroupDocs.Redaction 在Maven上有超过12,000次下载，提供强大的Java删除功能。"

    # items loop
    - number: "140+"
      title: "满意的客户"
      content: "全球企业和个人开发者依赖 GroupDocs 的产品构建创新解决方案。"


############################# Customers ###############################
customers:
  enable: true
  title: "我们的满意客户"
  description: "GroupDocs 的库已被全球知名和受人尊敬的品牌所信任。"

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
  title: "准备好开始了吗？"
  description: "在您的平台上免费试用 GroupDocs.Redaction 的功能。"

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
  title: "常见问题"
  description: "对最常见问题的回答。"

  items:
    # items loop
    - question: "GroupDocs.Redaction 库是否需要任何第三方软件来处理文档？"
      answer: "GroupDocs.Redaction 不需要任何外部软件，如Adobe Acrobat、Microsoft Office等。"

    # items loop
    - question: "我可以在购买之前尝试 GroupDocs.Redaction 库吗？"
      answer: "是的，您可以在不购买许可证的情况下尝试 GroupDocs.Redaction。它以试用模式工作，添加试用标记并将输出限制在前3页。要测试无限制，请请求一个为期30天的临时许可证。有关更多信息，[请查看](https://purchase.groupdocs.com/temporary-license/)。"

    # items loop
    - question: "有哪些许可选项？"
      answer: "我们根据您的开发和分发需求提供多种许可类型。这些包括基于开发者、基于站点和按使用计费的许可证。了解更多信息 [这里](https://purchase.groupdocs.com/pricing/redaction/net/)。"

############################# Cloud Links ###############################
cloud_links:
  enable: false
  title: "GroupDocs.Redaction 低代码 API"
  description: "通过我们的基于云的REST API将文档删除集成到任何应用程序中。"
  
  items:
    # items loop
    - title: "GroupDocs.Redaction Cloud for cURL"
      content: "使用我们的RESTful云API的cURL命令在广泛支持的文件格式中删除文档。"
      icon: "groupdocs_redaction-for-curl"
      link: "https://products.groupdocs.cloud/redaction/curl"

    # items loop
    - title: "GroupDocs.Redaction Cloud for .NET"
      content: "提取图像、文本和元数据，或使用Microsoft .NET应用程序中的模板删除文档。"
      icon: "groupdocs_redaction-for-net"
      link: "https://products.groupdocs.cloud/redaction/net"

    # items loop
    - title: "GroupDocs.Redaction Cloud for Java"
      content: "Java SDK用于在您的Java应用程序中删除文档和提取数据。"
      icon: "groupdocs_redaction-for-java"
      link: "https://products.groupdocs.cloud/redaction/java"

############################# App links ###############################
app_links:
  enable: true
  title: "GroupDocs.Redaction 无代码应用"
  description: "一个基于Web的应用程序，使您能够直接在浏览器中删除30多种流行文件格式。"

  items:
    # items loop
    - title: "GroupDocs.Redaction Total"
      content: "免费的在线工具，删除Word、Excel、PowerPoint、PDF和30多种其他类型的文件。"
      icon: "groupdocs_redaction-app"
      link: "https://products.groupdocs.app/redaction/total"

    # items loop
    - title: "GroupDocs.Redaction DOCX"
      content: "在浏览器中删除Word文档并提取图像、文本或元数据。"
      icon: "groupdocs_words-app"
      link: "https://products.groupdocs.app/redaction/docx"

    # items loop
    - title: "GroupDocs.Redaction PDF"
      content: "免费的PDF删除工具，在任何设备或平台上工作，没有限制。"
      icon: "groupdocs_pdf-app"
      link: "https://products.groupdocs.app/redaction/pdf"


      


---