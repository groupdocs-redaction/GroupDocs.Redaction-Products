
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: zh
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "使用 Python 删除 DOCX 中的私人文本"
head_description: "通过使用 GroupDocs.Redaction for Python via .NET 和 Python 删除敏感内容，保护您的 DOCX 文件。快速且方便的删除。"

############################# Header ############################
title: "使用 Python 在 DOCX 文件中编辑或隐藏私人文本" 
description: "使用 GroupDocs.Redaction for Python via .NET 和 Python 控制您的 DOCX 内容。适合个人或商业用途。"
subtitle: "您可以使用 GroupDocs.Redaction for Python via .NET 做什么" 

############################# About ############################
about:
    enable: true
    title: "认识 GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET 为 Python 开发者提供了在 DOCX 文件中清理内容的工具。轻松删除文本、图像、评论和元数据。

############################# Steps ############################
steps:
    enable: true
    title: "如何清理 Docx 文件中的文本"
    content: |
      在您的 Python via .NET 应用中使用 GroupDocs.Redaction for Python via .NET 删除或隐藏私人文本。快速简便的删除过程。
      
      1. 创建一个 Redactor 并打开您的 Docx 文件。
      2. 设置您需要的删除规则。
      3. 选择要查找的文本及其替换内容。
      4. 运行删除并保存您的新文件。
   
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

        # 如何在 DOCX 文件中删除文本

        # 选择您的删除设置
        # 输入要查找的内容和其替换文本
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # 使用 Redactor 构造函数打开您的文件
        with gr.Redactor("input.docx") as redactor:

            # 应用更改并保存更新后的 DOCX 文件
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "更多删除工具"
  description: "GroupDocs.Redaction for Python via .NET 让您可以在不同格式中删除或遮蔽敏感文本。自信分享干净且安全的文件。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "文本、图像和元数据删除工具"
  features:
    # feature loop
    - title: "查找和替换私人文本"
      content: "搜索特定词或模式并替换。支持正则表达式和关键词选项。"

    # feature loop
    - title: "遮蔽敏感图像"
      content: "覆盖或隐藏图像区域。根据需要更改颜色、透明度和大小。"

    # feature loop
    - title: "删除元数据"
      content: "擦除隐藏的信息，如作者姓名、时间戳和内部注释，以保护文件隐私。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用正则表达式删除模式"
      content: |
        使用正则表达式查找电子邮件、ID 或模式，并轻松替换它们。
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

          # 打开您想要清理的文件
          with gr.Redactor("source.docx") as redactor:

              # 应用您的删除设置
              result = redactor.apply(redaction)

              # 保存删除后的文档
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
    title: "使用 Python 在 DOCX 中删除内容"
    exclude: "DOCX"
    description: "使用 Python 从 DOCX 文件中删除敏感文本。确保个人和工作文件受到保护。"
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