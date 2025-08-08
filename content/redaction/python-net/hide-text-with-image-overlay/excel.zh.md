
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: zh
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "使用 Python 覆盖隐藏 EXCEL 中的内容"
head_description: "使用 GroupDocs.Redaction for Python via .NET，您可以通过实色覆盖隐藏 EXCEL 文件中的文本。这是保护私人内容的简单方法。"

############################# Header ############################
title: "Python 中的 EXCEL 覆盖文本隐藏" 
description: "编写 Python 代码以隐藏文本并确保您 EXCEL 文件中的信息安全。保持文档安全清晰。"
subtitle: "您可以使用 GroupDocs.Redaction for Python via .NET 获取的内容" 

############################# About ############################
about:
    enable: true
    title: "为何使用 GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET 为需要在 EXCEL 文件中隐藏或删除内容的 Python 开发者而构建。轻松处理文本、图像和元数据。

############################# Steps ############################
steps:
    enable: true
    title: "在 Excel 中隐藏敏感数据"
    content: |
      GroupDocs.Redaction for Python via .NET 使 Python via .NET 开发者能够在分享之前准备文件。
      
      1. 创建一个 Redactor 并打开您的 Excel 文件。
      2. 选择适合您任务的红action设置。
      3. 输入要覆盖的文本或短语并选择一种颜色。
      4. 应用红action并保存文件。
   
    code:
      platform: "python-net"
      copy_title: "复制"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "样本删除内容"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "点击复制"
        copy_done: "已复制"
      links:
        #  loop
        - title: "更多示例"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "文档"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr
        import groupdocs.pydrawing as grd

        # 使用覆盖在 EXCEL 中隐藏文本

        # 选择您的红action设置
        # 选择要隐藏的内容和使用的颜色
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # 首先使用 Redactor 加载文件
        with gr.Redactor("input.xslx") as redactor:

            # 应用更改并保存文件
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "用于隐藏数据的有用工具"
  description: "GroupDocs.Redaction for Python via .NET 允许您在保持布局和内容清晰的情况下从文档中隐藏或删除数据。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "旨在保护您的文件"
  features:
    # feature loop
    - title: "隐藏或更改文本"
      content: "查找并替换需要隐藏的文本的任何部分。"

    # feature loop
    - title: "覆盖图像和视觉内容"
      content: "添加覆盖层以删除图片或图表的敏感部分。"

    # feature loop
    - title: "清除隐藏的元数据"
      content: "删除诸如作者姓名或时间戳等背景信息。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用正则表达式进行红action"
      content: |
        学习如何使用正则表达式模式查找和隐藏内容。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 添加正则表达式模式和颜色设置
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # 打开您想要清理的文件
          with gr.Redactor("source.xslx") as redactor:

              # 应用红action
              result = redactor.apply(redaction)

              # 保存红action后的版本
              so = gro.SaveOptions()
              so.add_suffix = True
              so.rasterize_to_pdf = False
              result_path = redactor.save(so)
          ```
        platform: "python-net"
        copy_title: "复制"
        install:
          command: "pip install groupdocs-redaction-net"
          copy_tip: "点击复制"
          copy_done: "已复制"
        top_links:
          #  loop
          - title: "下载结果"
            icon: "download"
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
        links:
          #  loop
          - title: "更多示例"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "文档"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "准备好开始了吗？"
  description: "免费尝试 GroupDocs.Redaction 的功能或请求许可证"
  items:
    #  loop
    - title: "PyPi 下载"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "许可证"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "使用 Python 红action 保护 EXCEL"
    exclude: "EXCEL"
    description: "使用正方形覆盖隐藏 EXCEL 中的内容或使用 Python 的功能将其完全删除。"
    items: 
        # format loop 1
        - name: "红行动 PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-text-with-image-overlay//pdf/"
          description: "Adobe 便携式文档格式"

        # format loop 2
        - name: "红行动 Word"
          format: "WORD"
          link: "/redaction/python-net/hide-text-with-image-overlay//word/"
          description: "MS Word 和 Open Office 文档"
          
        # format loop 3
        - name: "红行动 Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-text-with-image-overlay//excel/"
          description: "MS Excel 和 Open Office 电子表格"

        # format loop 4
        - name: "红行动 PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-text-with-image-overlay//powerpoint/"
          description: "MS PowerPoint 和 Open Office 演示文稿"

        # format loop 5
        - name: "红行动 DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-text-with-image-overlay//docx/"
          description: "Microsoft Word 开放 XML 文档"
          
        # format loop 6
        - name: "红行动 XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-text-with-image-overlay//xlsx/"
          description: "Microsoft Excel 开放 XML 电子表格"
          
        # format loop 7
        - name: "红行动 PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-text-with-image-overlay//pptx/"
          description: "PowerPoint 开放 XML 演示文稿"


---