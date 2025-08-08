
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: zh
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "使用 Python 覆盖保护 PDF 文件中的敏感文本"
head_description: "通过添加彩色覆盖层，使用 GroupDocs.Redaction for Python via .NET 隐藏 PDF 文件中的敏感文本。保护私密数据而不改变文件外观。"

############################# Header ############################
title: "使用 Python 在 PDF 中覆盖敏感文本" 
description: "利用 Python 保护您的 PDF 文件。使用覆盖层屏蔽法律、个人或机密信息。"
subtitle: "GroupDocs.Redaction for Python via .NET 亮点" 

############################# About ############################
about:
    enable: true
    title: "关于 GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET 为 Python 开发者提供了一种简单的方法来隐藏或删除 PDF 文件中的内容。屏蔽多种格式中的敏感文本、图像或元数据。

############################# Steps ############################
steps:
    enable: true
    title: "在 Pdf 文件中保护敏感信息"
    content: |
      使用 GroupDocs.Redaction for Python via .NET 迅速将私人内容隐藏在您的 Python via .NET 应用程序中。
      
      1. 设置一个 Redactor 并加载您的 Pdf 文件。
      2. 选择遮盖操作方式。
      3. 选择要隐藏的文本并选择覆盖层颜色。
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

        # 使用彩色覆盖层隐藏 PDF 中的敏感文本

        # 设置红action选项
        # 定义要隐藏的内容并选择颜色
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # 通过将文件路径传递给 Redactor 加载文件
        with gr.Redactor("input.pdf") as redactor:

            # 红action并保存您的 PDF 文件
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "隐藏或移除文档中的信息"
  description: "使用 GroupDocs.Redaction for Python via .NET，您可以在多种格式中隐藏文本、图片和其他数据。保护重要内容，同时保持文档的可读性和可分享性。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "灵活的遮盖功能"
  features:
    # feature loop
    - title: "编辑任何文本"
      content: "查找和替换敏感文本，以确保文档安全。"

    # feature loop
    - title: "覆盖图像"
      content: "使用覆盖层屏蔽完整图像或特定区域。"

    # feature loop
    - title: "清除元数据"
      content: "删除隐藏数据，防止无意的信息泄露。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用正则表达式查找并隐藏文本"
      content: |
        此示例展示如何使用正则表达式模式搜索和隐藏文本。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 设置文本模式和覆盖颜色
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # 加载您的文档
          with gr.Redactor("source.pdf") as redactor:

              # 红action已选择的内容
              result = redactor.apply(redaction)

              # 保存更新后的文件
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
    title: "使用 Python 工具保护 PDF 文件"
    exclude: "PDF"
    description: "使用 Python 隐藏或移除 PDF 文件中的内容。可靠的方式保护私密信息。"
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