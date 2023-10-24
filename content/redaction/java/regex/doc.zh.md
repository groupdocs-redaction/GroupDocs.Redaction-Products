---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "zh/redaction/java/regex/doc"
otherformats: CSV DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "通过正则表达式在 Java 中编辑 DOC 文本"
head_description: "GroupDocs.Redaction 的 Java API 使开发者能够使用 Java 中的正则表达式编辑 PDF DOC DOCX RTF XLSX CSV PPT PPTX 和图像中的文本"

############################# Header ############################
title: "如何使用正则表达式和 Java 从 DOC 文件中删除文本"
description: "GroupDocs.Redaction 的 Java API 允许使用正则表达式编辑、隐藏或删除文字处理文档、工作表、演示文稿、PDF 和图像中的敏感文本。"

################### SubMenu/Download Button #####################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "什么是文本清理？"
    content: |
        文本编辑或清理是从数字文档中删除机密或不需要的文本或信息，同时保留包含该文本的文档或段落的其余部分完好无损的过程。密文可帮助用户和组织通过隐藏或永久删除敏感信息来保护其敏感信息。使用 GroupDocs.Redaction Java API，用户现在可以编辑、隐藏或删除文字处理文档、工作表、演示文稿、PDF 和光栅图像文件中的敏感文本。 API 提供了多种选项和方法来编辑文档中的私人信息。它支持使用正则表达式进行搜索和编辑、使用文本（豁免代码）或图形（彩色矩形）编辑等等。那么为什么不尝试一下，通过下载 API 来自动化文档编辑过程并探索其基本和高级功能。

############################# Steps ############################
steps:
    enable: true
    block:
    - title_left: "使用 Java 中的正则表达式编辑 DOC"
      content_left: |
        GroupDocs.Redaction 允许轻松编辑文档中的敏感或私人数据。最流行的编辑案例是从文档中删除文本。 

        以下代码可用于使用正则表达式将文本编辑应用于文档的特定部分。它允许用户替换所有数字，将模式“AA BB CCCCCC”与蓝色矩形匹配，

      title_right: "从 DOC 中删除敏感数据"
      content_right: |
        * 创建 [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) 类的实例并上传 DOC 文件
        * 创建 [RegexRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/RegexRedaction) 类的实例
        * 使用 RegexRedaction 类的对象调用 redactor.apply 方法
        * 调用 redactor.save 方法保存更改 

      gisthash: "6dea616a14aeeff21698dc03be62a341"
      gistfile: "正则表达式编辑.java"
      
    - title_left: "系统要求"
      content_left: |
        GroupDocs.Redaction for Java 所有主要平台和操作系统均支持 API。有关完整的系统要求指南，请访问[系统要求](https://docs.groupdocs.com/redaction/java/system-requirements) 在执行下面的代码之前，请确保您的系统上安装了以下先决条件：
        * 操作系统：Microsoft Windows、Linux、Mac操作系统
        * 开发环境：NetBeans、Intellij IDEA、Eclipse等
        * Java 运行时环境：J2SE 6.0 及更高版本
        * 从 [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction) 获取最新版本的 GroupDocs.Redaction for Java
        
      title_right: "为什么使用GroupDocs.Redaction"
      content_right: |
        * 允许用户添加自定义文档格式和密文类型
        * 无需额外软件即可删除敏感信息
        * 能够将页面范围渲染文档设置为 PDF
        * 编辑不同类型元数据的简单方法：作者姓名、版本、标题、主题、描述等等
        * 文档信息提取 - 文件类型、页数等。

############################# Demos ############################
demos:
    enable: true
############################# About Formats ############################
about_formats:
    enable: true
############################# More Formats ############################
more_formats:
    enable: true

############################# Back to top ###############################
back_to_top:
    enable: true
---