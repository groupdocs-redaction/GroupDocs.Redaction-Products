
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: zh
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "使用 Python 删除 WORD 中的私人文本"
head_description: "使用 GroupDocs.Redaction for Python via .NET 和 Python 保护您的 WORD 文件中的私人数据。快速和简单的文本移除。"

############################# Header ############################
title: "使用 Python 在 WORD 文件中编辑或隐藏私人文本" 
description: "使用 GroupDocs.Redaction for Python via .NET 和 Python 清理您的 WORD 文件中的敏感内容。保持个人或工作文件的安全。"
subtitle: "您可以使用 GroupDocs.Redaction for Python via .NET 做什么" 

############################# About ############################
about:
    enable: true
    title: "认识 GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET 帮助 Python 开发者轻松清理 WORD 文件。只需几个步骤即可删除文本、图像、注释和元数据。

############################# Steps ############################
steps:
    enable: true
    title: "在 Word 文件中删除文本的步骤"
    content: |
      在您的 Python via .NET 应用中使用 GroupDocs.Redaction for Python via .NET 快速删除或隐藏敏感信息。
      
      1. 启动一个 Redactor 并加载 Word 文件。
      2. 选择您需要的删除设置。
      3. 输入要查找的文本以及要替换成的内容。
      4. 运行删除并保存您的文档。
   
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

        # 如何在 WORD 文件中删除文本

        # 设置删除选项
        # 选择要替换的文本和新值
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # 使用 Redactor 构造函数加载文件
        with gr.Redactor("input.docx") as redactor:

            # 应用并保存您的删除后的 WORD 文件
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "更多删除工具"
  description: "GroupDocs.Redaction for Python via .NET 为您提供了在多个文件格式中清除敏感内容的工具。保持您的文档安全以便共享。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "删除选项概述"
  features:
    # feature loop
    - title: "替换敏感文本"
      content: "查找文本或模式并将其替换为其他内容。支持正则表达式。"

    # feature loop
    - title: "遮蔽私人图像"
      content: "隐藏或覆盖图像的部分内容。根据需要调整外观和大小。"

    # feature loop
    - title: "清除隐藏元数据"
      content: "擦除隐藏的细节，如作者姓名、创建日期和注释。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用正则表达式删除模式"
      content: |
        使用正则表达式查找并清理文本模式，如电子邮件、名称或 ID。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # 设置电子邮件正则表达式规则和替换文本
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # 打开您的文档
          with gr.Redactor("source.docx") as redactor:

              # 应用删除设置
              result = redactor.apply(redaction)

              # 保存文件的最终版本
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
    title: "使用 Python 在 WORD 中删除内容"
    exclude: "WORD"
    description: "使用 Python 工具通过删除敏感文本和信息来清理和保护 WORD 文档。"
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