---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: zh
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
head_title: "使用 .NET 删除文档中的敏感数据"
head_description: "使用 GroupDocs.Redaction for .NET 保护您的业务文档。轻松删除、隐藏或移除PDF、Word、Excel、PowerPoint和图像文件中的机密内容。"

############################# Header ############################
title: "使用 GroupDocs.Redaction 保护您的内容"
description: "使用我们强大的 .NET 解决方案，从PDF、Word文档、电子表格、演示文稿和图像中删除、隐藏或永久移除敏感信息和元数据。"
words:
  for: "用于"

actions:
  main: "Nuget 下载"
  main_link: "https://www.nuget.org/packages/GroupDocs.Redaction"
  alt: "许可"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/net/"
  title: "准备好开始了吗？"
  description: "免费试用 GroupDocs.Redaction 的功能或请求许可证。"

release:
  title: "版本 {0} 已发布"
  notes: "查看新功能"
  downloads: "下载"

code:
  title: "如何删除文件内容"
  more: "更多示例"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
  install: "dotnet add package GroupDocs.Redaction"
  content: |
    ```csharp {style=abap}   
    // 将输入文件传递给 Redactor 实例
    using (Redactor redactor = new Redactor("source.pdf"))
    {
        // 配置删除选项
        var repl_opt = new ReplacementOptions("[redacted]");
        var red = new ExactPhraseRedaction("Data", repl_opt);

        // 运行删除过程
        RedactorChangeLog result = redactor.Apply(red);

        // 保存已删除的文件
        if (result.Status != RedactionStatus.Failed)
        {
            redactor.Save();
        }
    }  
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction 一览"
  description: "为您的 .NET 应用程序添加专业级内容删除"
  features:
    # feature loop
    - title: "删除文本内容"
      content: "GroupDocs.Redaction for .NET 允许您定位和删除敏感文本。可以使用彩色图像覆盖物替换或隐藏文本，以增强安全性。支持PDF和Office文档等多种格式，此功能有助于保护私密数据并简化业务合规。"

    # feature loop
    - title: "处理图像"
      content: "自动在文档页面检测和删除图像——无论是部分还是完全。指定搜索条件和目标区域，以高效地掩盖敏感视觉内容。"

    # feature loop
    - title: "管理文件元数据"
      content: "许多文件类型中包含隐藏元数据，例如Word文件中的作者名称或图像中的EXIF数据。GroupDocs.Redaction for .NET 使查找和删除这些信息变得简单，以确保数据完全隐私。"

    # feature loop
    - title: "删除文档对象"
      content: "通过删除文档特定元素（如注释、评论和嵌入对象）确保内容的完整保护，支持的格式包括PDF。"

############################# Platforms ############################
platforms:
  enable: true
  title: "平台独立性"
  description: "GroupDocs.Redaction for .NET 兼容多种操作系统、开发框架和软件包管理器。"
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
  title: "支持的文件格式"
  description: |
    GroupDocs.Redaction for .NET 支持与以下 [文件格式](https://docs.groupdocs.com/redaction/net/supported-document-formats/) 的操作。
  groups:
    # group loop
    - color: "green"
      content: |
        ### MS Office 格式
        * **Word:** DOCX, DOC, DOCM, DOT, DOTX, DOTM,
        * **Excel:** XLSX, XLS, XLSM, XLSB, 
        * **PowerPoint:** PPT, PPTX
    # group loop
    - color: "blue"
      content: |
        ### 其他Office格式
        * **可移植:** PDF 
        * **OpenDocument:** ODT, ODS, OTS, ODP, OTT
        * **文本格式:** RTF, CSV, TXT, TSV
      # group loop
    - color: "red"
      content: |
        ### 其他格式
        * **网络:** HTM, HTML, MD
        * **图像:** BMP, GIF, JPEG, PNG, TIFF, WEBP
        * **电子书:** DJVU 
        
        

############################# Features ############################
features:
  enable: true
  title: "GroupDocs.Redaction for .NET 特性"
  description: "快速高效地从PDF、Office文件和图像中提取和删除数据。"

  items:
    # feature loop
    - icon: "search"
      title: "灵活搜索"
      content: "执行区分大小写或不区分大小写的搜索以删除特定短语或术语。"

    # feature loop
    - icon: "text"
      title: "替换或删除文本"
      content: "轻松查找并在整个文档中替换或删除敏感文本。"

    # feature loop
    - icon: "image"
      title: "使用图像隐藏文本"
      content: "使用彩色图像覆盖物可视化掩盖删除内容，而不是替换文本。"

    # feature loop
    - icon: "search"
      title: "先进搜索能力"
      content: "使用正则表达式进行精确灵活的内容删除，跨复杂数据集。"

    # feature loop
    - icon: "table"
      title: "附加删除"
      content: "针对特定页面或定义的页面区域进行定位，以将删除限制在相关部分。"

    # feature loop
    - icon: "template"
      title: "元数据删除"
      content: "查找并删除元数据属性，以保护文档所有权和创建细节。"

    # feature loop
    - icon: "pdf"
      title: "灵活输出格式"
      content: "将删除后的文件导出为PDF或任何支持的格式，同时保持布局完整性。"

    # feature loop
    - icon: "template"
      title: "完全元数据擦除"
      content: "通过一次操作擦除文档中的所有元数据，以确保绝对隐私。"

    # feature loop
    - icon: "hyperlink"
      title: "基于XML的删除规则"
      content: "以XML格式定义删除策略，以便在多个文件中进行可重复的自动处理。"


############################# Code samples ############################
code_samples:
  enable: true
  title: "代码示例"
  description: "GroupDocs.Redaction for .NET 的典型用法示例"
  items:
    # code sample loop
    - title: "使用正则表达式进行删除"
      content: |
        GroupDocs.Redaction for .NET 使得 C# 开发者能够使用 [正则表达式](https://docs.groupdocs.com/redaction/net/text-redactions/#use-regular-expression) 删除文本，并用图像覆盖物遮盖：
        {{< landing/code title="使用正则表达式删除Word文档">}}
        ```csharp {style=abap}
        // 创建一个 Redactor 类的实例
        using (Redactor redactor = new Redactor("source.docx"))
        {
            // 使用正则表达式定义删除规则
            var replacement = new ReplacementOptions(System.Drawing.Color.Blue);
            var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);
            
            // 使用蓝色方框覆盖所有匹配文本
            redactor.Apply(redaction);

            // 保存已删除的Word文档
            redactor.Save();
        }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "元数据清理"
      content: |
        使用我们的API轻松 [删除](https://docs.groupdocs.com/redaction/net/metadata-redactions/#clean-metadata) 所有支持的文件格式的元数据：
        {{< landing/code title="从演示文稿中删除所有元数据">}}
        ```csharp {style=abap}   
        // 将演示文稿的路径提供给 Redactor
        using (Redactor redactor = new Redactor("source.pptx"))
        {
            // 配置删除选项
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // 从演示文稿中删除所有元数据
            redactor.Apply(redaction);

            // 保存清理后的演示文件
            redactor.Save();
        }
        ```
        {{< /landing/code >}}

---
