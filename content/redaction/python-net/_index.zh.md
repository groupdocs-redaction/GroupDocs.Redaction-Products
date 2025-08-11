---
############################# Static ############################
layout: "landing"
date: 2025-08-11T19:33:04
draft: false

lang: zh
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
head_title: "使用 Python 擦除文档中的机密信息"
head_description: "使用 GroupDocs.Redaction for Python via .NET 保持您的文件安全。快速删除、隐藏或删除PDF、Word、Excel、PowerPoint和图像文件中的敏感内容。"

############################# Header ############################
title: "使用 GroupDocs.Redaction 保持您的文档安全"
description: "轻松去除私有数据、删除文本，并清理PDF、Office文件和图像中的隐藏元数据，使用高级的 Python 工具包。"
words:
  for: "用于"

actions:
  main: "PyPi 下载"
  main_link: "https://pypi.org/project/groupdocs-redaction-net/"
  alt: "许可"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
  title: "准备好开始了吗？"
  description: "免费试用 GroupDocs.Redaction 的功能或请求许可证。"

release:
  title: "版本 {0} 已发布"
  notes: "查看新功能"
  downloads: "下载"

code:
  title: "删除文档内容"
  more: "更多示例"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
  install: "pip install groupdocs-redaction-net"
  content: |
    ```python {style=abap}
    import groupdocs.redaction as gr
    import groupdocs.redaction.redactions as grr

    def run():

        # 调整删除参数
        repl_opt = grr.ReplacementOptions("[redacted]")
        red = grr.ExactPhraseRedaction("Data", repl_opt)

        # 将文件加载到 Redactor 实例中
        with gr.Redactor("sample.pdf") as redactor:

            # 开始删除过程
            result = redactor.apply(red)
        
            # 导出清理后的文件
            result_path = redactor.save()
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction 一览"
  description: "将强大的删除功能集成到您的 Python 项目中"
  features:
    # feature loop
    - title: "删除敏感文本"
      content: "使用 GroupDocs.Redaction for Python via .NET，您可以自动找到并覆盖敏感单词或短语。用彩色框替换或遮盖文本，以增强保护，适用于PDF、Word文档及其他格式。"

    # feature loop
    - title: "遮罩图像"
      content: "我们的技术可以根据您选择的标准检测图像并模糊、隐藏或阻止它们。定义特定区域或允许自动检测以完全控制。"

    # feature loop
    - title: "删除隐藏的元数据"
      content: "消除隐藏在元数据中的个人或跟踪详细信息，如作者信息或设备信息。GroupDocs.Redaction for Python via .NET 确保您的文档被全面清理，并且可以安全共享。"

    # feature loop
    - title: "删除特殊元素"
      content: "通过删除嵌入项目，如评论、注释和其他文件特定元素，实现完全机密性。"

############################# Platforms ############################
platforms:
  enable: true
  title: "平台独立性"
  description: "GroupDocs.Redaction for Python via .NET 适用于所有主要操作系统，支持流行框架，并与常见软件包管理器集成。"
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
    GroupDocs.Redaction for Python via .NET 支持以下 [文件格式](https://docs.groupdocs.com/redaction/python-net/supported-document-formats/) 的操作。
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
  title: "GroupDocs.Redaction for Python via .NET 的关键特性"
  description: "轻松扫描、定位和删除PDF、图像和Office文件中的敏感内容。"

  items:
    # feature loop
    - icon: "search"
      title: "可定制搜索"
      content: "使用灵活的搜索模式查找精确匹配或关键字进行删除。"

    # feature loop
    - icon: "text"
      title: "查找、替换或删除文本"
      content: "查找敏感数据，可以将其替换为安全文本或彻底擦除。"

    # feature loop
    - icon: "image"
      title: "可视遮罩"
      content: "使用彩色形状或图案重叠以在可视上覆盖删除的部分。"

    # feature loop
    - icon: "search"
      title: "基于正则表达式的检测"
      content: "利用正则表达式，进行高级文本搜索时实现精确准确。"

    # feature loop
    - icon: "table"
      title: "有针对性地删除"
      content: "仅针对某些页面或定义的区域进行删除，以节省时间并关注重点区域。"

    # feature loop
    - icon: "template"
      title: "元数据清理"
      content: "轻松清除文件中的元数据字段，如创作者、公司或时间戳。"

    # feature loop
    - icon: "pdf"
      title: "导出选项"
      content: "以PDF或其他兼容格式保存处理后的文档，而不会损失布局保真度。"

    # feature loop
    - icon: "template"
      title: "完全的元数据擦除"
      content: "只需单击一下，即可完全擦除所有嵌入元数据，以确保数据保护的最大化。"

    # feature loop
    - icon: "hyperlink"
      title: "可重用的XML策略"
      content: "将自定义删除配置保存为XML模板，以自动化未来的任务。"


############################# Code samples ############################
code_samples:
  enable: true
  title: "代码示例"
  description: "探索 GroupDocs.Redaction for Python via .NET 如何简化删除任务"
  items:
    # code sample loop
    - title: "基于正则表达式的文本删除"
      content: |
        使用 Python 的开发者可以应用 [基于正则表达式的规则](https://docs.groupdocs.com/redaction/python-net/text-redactions/#use-regular-expression) 查找并覆盖敏感文本：
        {{< landing/code title="使用正则表达式删除Word文档">}}
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr
        import groupdocs.pydrawing as grd

        def run():

            # 使用正则表达式定义删除规则
            color = grd.Color.from_argb(255, 220, 20, 60)
            repl_opt = grr.ReplacementOptions(color)
            reg_red = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

            # 创建一个 Redactor 类的实例
            with gr.Redactor("source.docx") as redactor:

                # 使用蓝色方框覆盖所有匹配文本
                result = redactor.apply(reg_red)
        
                # 保存已删除的Word文档
                redactor.save()
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "删除元数据"
      content: |
        使用API [擦除元数据](https://docs.groupdocs.com/redaction/python-net/metadata-redactions/#clean-metadata) 仅需几步即可覆盖多种文件类型：
        {{< landing/code title="从演示文稿中删除所有元数据">}}
        ```python {style=abap}   
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # 配置删除选项
        red = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # 将演示文稿的路径提供给 Redactor
        with gr.Redactor("source.pptx") as redactor:

            # 从演示文稿中删除所有元数据
            result = redactor.apply(red)
        
            # 保存清理后的演示文件
            redactor.save()
        ```
        {{< /landing/code >}}

---
