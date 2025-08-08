
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: zh
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "使用 Python 对 PDF 中的敏感文本进行删除"
head_description: "使用 GroupDocs.Redaction for Python via .NET 保护您的 PDF 文档中的私人信息。快速查找并隐藏敏感信息。"

############################# Header ############################
title: "使用 Python 从 PDF 文件中删除敏感文本" 
description: "使用 Python 和 GroupDocs.Redaction for Python via .NET 搜索并删除您的 PDF 文件中的私人、法律或个人数据。"
subtitle: "您可以使用 GroupDocs.Redaction for Python via .NET 做什么" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NET 是什么？"
    link: "/redaction/python-net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET 为 Python 开发者提供了所有在 PDF 文件中删除内容所需的工具——文本、图像、评论等。

############################# Steps ############################
steps:
    enable: true
    title: "如何在 Pdf 文件中删除内容"
    content: |
      在任何 Python via .NET 应用中使用 GroupDocs.Redaction for Python via .NET 保护您的内容安全。
      
      1. 创建一个 Redactor 并加载您的 Pdf 文件。
      2. 选择您需要的删除设置。
      3. 输入要搜索的文本，以及要替换成的内容。
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

        # 

        # 
        # 
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # 
        with gr.Redactor("input.pdf") as redactor:

            # 
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "更多删除功能"
  description: "GroupDocs.Redaction for Python via .NET 让您可以在多种文件类型中隐藏私人内容。确保您的数据安全并随时可共享。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "文本、图像和元数据删除工具"
  features:
    # feature loop
    - title: "查找和替换私人文本"
      content: "搜索并替换匹配文本。支持正则表达式和关键词搜索。"

    # feature loop
    - title: "覆盖私人图像"
      content: "使用覆盖层来遮蔽完整图像或部分图像。自定义外观设置。"

    # feature loop
    - title: "擦除隐藏的元数据"
      content: "删除隐藏的信息，如作者姓名、时间戳和修订注释。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用正则表达式进行删除"
      content: |
        使用正则表达式查找和删除像电子邮件、身份证或数字的模式。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # 设置正则表达式模式和替换文本
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # 打开您想要清理的文件
          with gr.Redactor("source.pdf") as redactor:

              # 应用您的删除规则
              result = redactor.apply(redaction)

              # 保存您的删除文件
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
    title: "使用 Python 在 PDF 中删除内容"
    exclude: "PDF"
    description: "通过使用 Python 工具，在 PDF 文件中删除文本，以保护个人或业务数据。"
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