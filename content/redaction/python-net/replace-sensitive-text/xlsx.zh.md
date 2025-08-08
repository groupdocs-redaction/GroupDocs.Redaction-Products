
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: zh
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "使用 Python 删除 XLSX 中的私人文本"
head_description: "通过使用 GroupDocs.Redaction for Python via .NET 和 Python 来隐藏或删除敏感数据，保护您的 XLSX 文件。"

############################# Header ############################
title: "在 XLSX 文件中使用 Python 隐藏或删除私人文本" 
description: "借助 GroupDocs.Redaction for Python via .NET 和 Python，您可以从 XLSX 文档中快速可靠地删除私人文本。"
subtitle: "您可以使用 GroupDocs.Redaction for Python via .NET 做什么" 

############################# About ############################
about:
    enable: true
    title: "认识 GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET 为 Python 开发者提供了一切所需的工具，以在 XLSX 文件中删除或隐藏私人数据——文本、图像、注释等。

############################# Steps ############################
steps:
    enable: true
    title: "如何在 Xlsx 文件中删除内容"
    content: |
      在您的 Python via .NET 应用中使用 GroupDocs.Redaction for Python via .NET 快速删除或隐藏敏感内容。
      
      1. 启动一个 Redactor 并加载 Xlsx 文件。
      2. 选择您需要的删除设置。
      3. 设置搜索文本以及要替换的内容。
      4. 应用删除并保存您的文件。
   
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

        # 如何在 XLSX 文件中删除文本

        # 选择您的删除偏好
        # 设置搜索和替换值
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # 使用 Redactor 构造函数加载您的文件
        with gr.Redactor("input.xlsx") as redactor:

            # 应用更改并保存更新后的 XLSX
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "额外的删除功能"
  description: "GroupDocs.Redaction for Python via .NET 可以方便地在不同文件格式中隐藏或删除私人信息。仅分享您希望别人看到的内容。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "用于删除文本、图像和元数据的功能"
  features:
    # feature loop
    - title: "替换私人文本"
      content: "查找并替换任何匹配的单词或模式。支持正则表达式和关键词搜索。"

    # feature loop
    - title: "隐藏敏感图像"
      content: "使用覆盖来遮蔽文件的部分。根据需要自定义其外观。"

    # feature loop
    - title: "擦除元数据"
      content: "删除隐藏的信息，如文档历史、作者姓名或内部标签。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用正则表达式删除模式"
      content: |
        使用正则表达式查找电话号码、ID 或电子邮件文本模式，并快速删除它们。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # 设置电子邮件正则表达式模式和替换文本
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # 打开您想要清理的文档
          with gr.Redactor("source.xlsx") as redactor:

              # 应用删除规则
              result = redactor.apply(redaction)

              # 保存您的删除后的文件
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "使用 Python 在 XLSX 中删除内容"
    exclude: "XLSX"
    description: "在 XLSX 文件中使用 Python 工具删除敏感数据。"
    items: 
        # format loop 1
        - name: "红行动 PDF"
          format: "PDF"
          link: "/redaction/python-net/replace-sensitive-text//pdf/"
          description: "Adobe 便携式文档格式"

        # format loop 2
        - name: "红行动 Word"
          format: "WORD"
          link: "/redaction/python-net/replace-sensitive-text//word/"
          description: "MS Word 和 Open Office 文档"
          
        # format loop 3
        - name: "红行动 Excel"
          format: "EXCEL"
          link: "/redaction/python-net/replace-sensitive-text//excel/"
          description: "MS Excel 和 Open Office 电子表格"

        # format loop 4
        - name: "红行动 PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/replace-sensitive-text//powerpoint/"
          description: "MS PowerPoint 和 Open Office 演示文稿"

        # format loop 5
        - name: "红行动 DOCX"
          format: "DOCX"
          link: "/redaction/python-net/replace-sensitive-text//docx/"
          description: "Microsoft Word 开放 XML 文档"
          
        # format loop 6
        - name: "红行动 XLSX"
          format: "XLSX"
          link: "/redaction/python-net/replace-sensitive-text//xlsx/"
          description: "Microsoft Excel 开放 XML 电子表格"
          
        # format loop 7
        - name: "红行动 PPTX"
          format: "PPTX"
          link: "/redaction/python-net/replace-sensitive-text//pptx/"
          description: "PowerPoint 开放 XML 演示文稿"


---