---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "zh/redaction/java/text/xlsx/"
otherformats: PDF DOC DOT DOCX DOCM DOTX DOTM RTF XLSM XLTX XLTM XLS XLT CSV PPT PPTX  PPS POT PPSX PPTM PPSM POTM 

############################# Head ############################
head_title: "通过 Java 中的精确短语/正则表达式编辑 XLSX 文本"
head_description: "GroupDocs.Redactions Java API 使开发人员能够通过 Java 中的精确短语或正则表达式编辑 PDF DOCX RTF XLSX CSV PPT PPTX 和图像中的文本"

############################# Header ############################
title: "如何使用 Java 编辑、隐藏或删除 XLSX 文件中的文本"
description: "GroupDocs.Redactions Java API 允许编辑、隐藏或删除文字处理文档、工作表、演示文稿、PDF 和图像中的敏感文本。"

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "什么是文本编辑"
    content: |
        文本编辑是从数字文档中删除机密或不需要的文本或信息的过程，同时保留文档的其余部分或包含它的段落。 编辑帮助用户和组织通过隐藏或永久删除敏感信息来保护它们。 使用 GroupDocs.Redaction Java API 用户现在可以编辑、隐藏或删除文字处理文档、工作表、演示文稿、PDF 和光栅图像文件中的敏感文本。 API 为编辑文档中的私人信息提供了广泛的选项和方法。 它支持使用精确匹配或正则表达式进行搜索和编辑，使用文本（豁免代码）或图形（彩色矩形）编辑等等。 那么为什么不尝试一下，通过下载 API 并探索其基本和高级功能来自动化您的文档编辑过程。 

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "在 Java 中编辑 XLSX 精确短语"
      content_left: |
        GroupDocs.Redaction 允许轻松地从您的文档中编辑敏感或私人性质的数据。 最流行的编辑案例是从文档中删除文本。 

        以下代码可用于通过精确短语将文本编辑应用于文档的特定部分。 它允许用户用个人（或任何豁免代码）替换个人确切短语“Michal Clark”，

      title_right: "从 XLSX 中删除敏感数据"
      content_right: |
        * 创建 [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) 类的实例并上传 sherazam_xxx4 文件
        * 使用 ExactPhraseRedaction 类的新实例调用 Redactor.apply 方法
        * 使用对象调用 redactor.save 方法 [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * 调用 redactor.save 方法保存更改

      gisthash: "3202859fc19b5dfd14e8f073b70a18f8"
      gistfile: "redact_exact_phrase.java"
      
    - title_left: "XLSX 中区分大小写的文本编辑"
      content_left: |
        以下示例使用户能够执行精确的区分大小写的编辑，以删除或隐藏文档中的特定文本块。 默认情况下，搜索精确相位不区分大小写。 
        
      title_right: "通过 Java 执行区分大小写的编辑"
      content_right: |
        * 创建 [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) 类的实例并上传 sherazam_xxx4 文件
        * 使用 ExactPhraseRedaction 类的新实例调用 Redactor.apply 方法
        * 使用对象调用 redactor.save 方法 [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * 调用 redactor.save 方法保存更改
        
      gisthash: "a43e3ce358f93df92373b5441bc579fb"
      gistfile: "case_sensitive_redaction.java"

    - title_left: "通过颜色框编辑 XLSX 中的文本"
      content_left: |
        除了删除编辑文本或在其中放置字符串之外，还可以在编辑文本上放置颜色框。 在这种情况下，匹配的文本将被删除，并且一个彩色矩形将放置在已编辑的文本上。
    
      title_right: "在 Java 中使用颜色框删除文本"
      content_right: |
        * 创建 [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) 类的实例并上传 sherazam_xxx4 文件
        * 使用 ExactPhraseRedaction 类的新实例调用 Redactor.apply 方法
        * 使用对象调用 redactor.save 方法 [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * 调用 redactor.save 方法保存更改 
        
      gisthash: "6d83e791388b6834a372dc90f4b455f6"
      gistfile: "redact_text_using_color_box.java"

    - title_left: "系统要求"
      content_left: |
        所有主要平台和操作系统都支持 Java API 的 GroupDocs.Redaction。 如需完整的系统要求指南，请访问 [系统要求](https://docs.groupdocs.com/redaction/java/system-requirements) 在执行以下代码之前，请确保您的系统上已安装以下先决条件 ：
         * 操作系统：Microsoft Windows、Linux、MacOS
         * 开发环境：NetBeans、Intellij IDEA、Eclipse 等
         * Java 运行环境：J2SE 6.0 及以上
         * 从 [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction) 获取最新版本的 GroupDocs.Redaction for Java
        
      title_right: "为什么使用 GroupDocs.Redaction"
      content_right: |
        * 允许用户添加自定义文档格式和编辑类型
        * 删除敏感信息不需要额外的软件
        * 能够将页面范围渲染文档设置为 PDF
        * 编辑不同类型元数据的简便方法：作者姓名、版本、标题、主题、描述等等
        * 文件信息提取——文件类型、页数等。

demos:
    enable: true
        

more_formats:
    enable: true


back_to_top:
    enable: true
---