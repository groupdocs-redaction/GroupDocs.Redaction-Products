
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "zh/redaction/net/metadata/gif"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "将元数据编辑应用于 .NET 中的 PDF、DOCX、PPT、PPTX、XLS、XLSX"
head_description: "GroupDocs.Redaction 的 .NET API 允许软件开发者将元数据修订应用于不同的文件格式，例如 PDF DOC DOCX RTF XLSX CSV PPT PPTX 和图像"

############################# Header ############################
title: "编辑和过滤来自 PDF、DOCX、PPT、PPTX、XLS、XLSX 等的元数据"
description: "GroupDocs.Redaction 的 .NET API 允许软件开发者编辑或过滤各种文件格式（例如 PDF、DOC、DOCX、PPT、PPTX、XLS、XLSX 等）的元数据其他的"

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "什么是元数据编辑？"
    content: |
        元数据是一种提供有关其他数据的信息的数据。换句话说，许多人认为元数据是对数据的引用。它有助于总结有关数据的基本信息，可用于轻松跟踪和管理数据。 GroupDocs.Redaction for .NET 是一个功能强大的原生 API，允许软件开发者编辑各种文档类型中的敏感机密信息，而无需安装任何外部软件或第三方工具。它提供了对各种过滤器的支持，例如作者、公司、类别、文档大小、创建日期、标题、最后打印时间、评论等。它可以帮助用户将元数据编辑应用于各种流行的文档格式，例如文字处理文档、Excel 工作表、演示文稿、PDF 和光栅图像文件。开发人员还可以通过应用过滤器或使用搜索来更新、替换或删除元数据。此外，开发人员可以轻松地在一次调用中应用多个修订。因此，最好尝试通过下载 API 来自动化文档和元数据编辑过程，并探索其基本和高级功能。

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "如何清除 C# 中的 GIF 文档中的元数据"
      content_left: |
        GroupDocs.Redaction for .NET 是一个功能强大的 API，允许程序员使用过滤器或按正则表达式搜索来编辑、隐藏或替换众多流行文档类型中的分类信息。
        以下 .NET 代码示例展示了如何应用元数据修订以将文档中的所有或特定元数据替换为空值或最小值。

      title_right: "将元数据编辑应用于 GIF 文件"
      content_right: |
        * 创建 [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) 类的实例
        * 使用 [EraseMetadataRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) 的 EraseMetadataRedaction 对象调用 Redactor.Apply 方法
        * 调用Redactor.Save方法将文档以原始格式保存到“*_Redacted.*”文件中        
      gisthash: "8f1bc20dff33c9a45c01a9e251555bf1"
      gistfile: "how_to_clean_metadata_dotnet.cs"

    - title_left: "通过 .NET 编辑 GIF 文件中的元数据"
      content_left: |
        GroupDocs.Redaction .NET API 帮助开发者只需几行代码即可嵌入文档自动化和报告作业，无需任何外部依赖项，从而让开发者的工作变得轻松。
        以下 C# .NET 代码示例展示了软件开发人员如何只需几行代码即可从文档元数据中删除敏感数据。
        
      title_right: "GIF 文件的元数据编辑"
      content_right: |
        * 创建 [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) 类的实例
        * 创建 [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) 的实例
        * 调用 [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) 
        * 调用Redactor.Save方法将文档以原始格式保存到“*_Redacted.*”文件中
        
      gisthash: "8dee499186930d60909dffa54579c9f4"
      gistfile: "how_to_redact_metadata_dotnet.cs"

    - title_left: "系统要求"
      content_left: |
        GroupDocs.Redaction for .NET 所有主要平台和操作系统均支持 API。有关完整的系统要求指南，请访问[系统要求](https://docs.groupdocs.com/redaction/net/system-requirements/) 在执行下面的代码之前，请确保您的计算机上安装了以下先决条件系统：
        * 操作系统：Microsoft Windows、Linux、Mac操作系统
        * 开发环境：Visual Studio、Xamarin、MonoDevelop等
        * 框架：.NET 框架、.NET 标准、.NET 核心、Mono
        * 从 [NuGet](https://www.nuget.org/packages/GroupDocs.Redaction/) 获取最新版本的 GroupDocs.Redaction .NET API
        
      title_right: "为什么使用GroupDocs.Redaction"
      content_right: |
        * 允许用户添加自定义文档格式和密文类型
        * 无需额外软件即可删除敏感信息
        * 能够将页面范围渲染文档设置为 PDF
        * 编辑不同类型元数据的简单方法：作者姓名、版本、标题、主题、描述等等
        * 文档信息提取 - 文件类型、页数等。
        * 全面支持多种数据格式

############################# Demos ############################
demos:
    enable: true
############################# More Formats ############################
more_formats:
    enable: true

############################# Back to top ###############################
back_to_top:
    enable: true
---