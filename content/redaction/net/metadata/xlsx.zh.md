---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "zh/redaction/net/metadata /xlsx/"
otherformats: PDF DOC DOT DOCX DOCM DOTX DOTM RTF XLSM XLTX XLTM XLS XLT CSV PPT PPTX  PPS POT PPSX PPTM PPSM POTM JPEG TIFF PNG BMP GIF 

############################# Head ############################
head_title: "在 .NET 中对 PDF、DOCX、PPT、PPTX、XLS、XLSX 应用元数据编辑"
head_description: "GroupDocs.Redactions .NET API 允许软件开发人员将元数据编辑应用于不同的文件格式，如 PDF DOC DOCX RTF XLSX CSV PPT PPTX 和图像"

############################# Header ############################
title: "编辑和过滤来自 PDF、DOCX、PPT、PPTX、XLS、XLSX 等的元数据"
description: "GroupDocs.Redactions .NET API 允许软件开发人员编辑或过滤来自各种文件格式（如 PDF、DOC、DOCX、PPT、PPTX、XLS、XLSX 等）的元数据"

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "什么是元数据编辑？"
    content: |
        元数据是一种提供有关其他数据的信息的数据。换句话说，许多人认为元数据是对数据的引用。它有助于总结有关数据的基本信息，可用于轻松跟踪和管理数据。 GroupDocs.Redaction for .NET 是一个强大的本地 API，允许软件开发人员编辑来自各种文档类型的敏感和分类信息，而无需安装任何外部软件或第三方工具。它提供了对各种过滤器的支持，例如作者、公司、类别、文档大小、创建日期、标题、LastPrinted、评论等。它可以帮助用户将元数据编辑应用于各种流行的文档格式，如文字处理文档、Excel 工作表、演示文稿、PDF 和光栅图像文件。开发人员还可以通过应用过滤器或使用搜索来更新、替换或删除元数据。此外，开发人员可以在一次调用中轻松应用多个编辑。因此，最好尝试通过下载 API 并探索其基本和高级功能来自动化您的文档和元数据编辑过程。

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "如何从 Java 中的 XLSX 文档中清除元数据"
      content_left: |
        GroupDocs.Redaction for .NET 是一个强大的 API，允许程序员使用过滤器或通过正则表达式搜索来编辑、隐藏或替换来自众多流行文档类型的分类信息。

        以下 .NET 代码示例展示了如何应用元数据编辑以将文档中的所有或特定元数据替换为空值或最小值。 

      title_right: "将元数据编辑应用到 XLSX 文件"
      content_right: |
        * 创建 [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) 类的实例
        * 使用 [EraseMetadataRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) 的 EraseMetadataRedaction 对象调用 redactor.Apply 方法
        * 调用 redactor.save 方法将文档以原始格式保存到“*_Redacted.*”文件中

      gisthash: "8f1bc20dff33c9a45c01a9e251555bf1"
      gistfile: "how_to_clean_metadata_dotnet.cs"
      
    - title_left: "通过 .NET 编辑来自 XLSX 文件的元数据"
      content_left: |
        GroupDocs.Redaction .NET API 通过帮助开发人员嵌入文档自动化和报告作业，只需几行代码，无需任何外部依赖，从而使他们的生活变得轻松。
        
        下面的 C# .NET 代码示例展示了软件开发人员如何通过几行代码从文档的元数据中删除敏感数据。 
        
      title_right: "来自 XLSX 文件的元数据编辑"
      content_right: |
        * 创建 [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) 类的实例
        * 调用 [MetadataRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadataredaction)
        * 调用 redaction.Filter 方法
        * 调用 redactor.save 方法将文档以原始格式保存到“*_Redacted.*”文件中
        
      gisthash: "8dee499186930d60909dffa54579c9f4"
      gistfile: "how_to_redact_metadata_dotnet.cs"

    - title_left: "系统要求"
      content_left: |
        所有主要平台和操作系统都支持用于 .NET API 的 GroupDocs.Redaction。 如需完整的系统要求指南，请访问 [系统要求](https://docs.groupdocs.com/redaction/net/system-requirements/) 在执行以下代码之前，请确保您已安装以下先决条件 系统：
        * 操作系统：Microsoft Windows、Linux、MacOS
        * 开发环境：Visual Studio、Xamarin、MonoDevelop 等
        * 框架：.NET Framework、.NET Standard、.NET Core、Mono
        * 从 [NuGet](https://www.nuget.org/packages/GroupDocs.Redaction/) 获取最新版本的 GroupDocs.Redaction .NET API
        
      title_right: "为什么使用 GroupDocs.Redaction"
      content_right: |
        * 允许用户添加自定义文档格式和编辑类型
        * 删除敏感信息不需要额外的软件
        * 能够将页面范围渲染文档设置为 PDF
        * 编辑不同类型元数据的简便方法：作者姓名、版本、标题、主题、描述等等
        * 文件信息提取——文件类型、页数等。
        * 全面支持多种数据格式

demos:
    enable: true
  

more_formats:
    enable: true


back_to_top:
    enable: true
---