
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: zh
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "使用 Python 删除 POWERPOINT 中的私人文本"
head_description: "使用 GroupDocs.Redaction for Python via .NET 和 Python 快速保护您的 POWERPOINT 文件中的敏感数据。"

############################# Header ############################
title: "使用 Python 在 POWERPOINT 文件中查找和隐藏敏感文本" 
description: "使用 GroupDocs.Redaction for Python via .NET 和 Python 删除或隐藏您的 POWERPOINT 文件中的私人内容。无论是个人用途还是工作用途，请保持一切机密。"
subtitle: "您可以使用 GroupDocs.Redaction for Python via .NET 做什么" 

############################# About ############################
about:
    enable: true
    title: "认识 GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET 为 Python 开发者提供了在 POWERPOINT 文件中轻松清理文件的工具。轻松删除文本、图像、注释和元数据。

############################# Steps ############################
steps:
    enable: true
    title: "如何在 Powerpoint 文件中清理文本"
    content: |
      在您的 Python via .NET 应用中使用 GroupDocs.Redaction for Python via .NET 快速删除或替换敏感数据。
      
      1. 启动一个 Redactor 并打开您的 Powerpoint 文件。
      2. 选择您所需的删除选项。
      3. 设置您要搜索的文本以及要替换的内容。
      4. 运行删除并保存最终文件。
   
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

        # 如何在 POWERPOINT 文件中删除文本

        # 选择所需的删除设置
        # 输入要查找的文本及其替换内容
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # 使用 Redactor 构造函数加载您的文件
        with gr.Redactor("input.pptx") as redactor:

            # 运行删除并保存最终的 POWERPOINT 文件
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "更多工具来删除私人数据"
  description: "GroupDocs.Redaction for Python via .NET 让您在多种格式中清理私人内容。适合方便共享或安全存档文件。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "删除选项及工具"
  features:
    # feature loop
    - title: "查找和替换文本"
      content: "快速替换敏感单词或数字。支持正则表达式和关键词搜索。"

    # feature loop
    - title: "隐藏图像的部分"
      content: "使用形状或覆盖隐藏特定区域。根据需要调整视觉效果。"

    # feature loop
    - title: "删除隐藏信息"
      content: "擦除元数据，例如文件的创建者、注释或变更历史。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用正则表达式模式进行删除"
      content: |
        使用正则表达式查找并删除模式，如电子邮件、联系信息或其他私人细节。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # 设置电子邮件正则表达式模式和替换值
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # 打开需要清理的演示文稿
          with gr.Redactor("source.pptx") as redactor:

              # 应用删除步骤
              result = redactor.apply(redaction)

              # 保存最终的删除文件
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
    title: "使用 Python 在 POWERPOINT 中删除内容"
    exclude: "POWERPOINT"
    description: "使用 Python，您可以通过删除或隐藏私人文本来清理 POWERPOINT 文件。确保一切安全。"
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