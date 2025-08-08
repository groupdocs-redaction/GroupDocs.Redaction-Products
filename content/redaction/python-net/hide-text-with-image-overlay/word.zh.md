
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: zh
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "使用 Python 覆盖隐藏 WORD 中的文本"
head_description: "使用 GroupDocs.Redaction for Python via .NET，您可以轻松地使用颜色块隐藏 WORD 文档中的私密文本。您的布局保持不变。"

############################# Header ############################
title: "使用 Python 隐藏 WORD 中的文本" 
description: "使用 Python 和 GroupDocs.Redaction for Python via .NET 在 WORD 文档中通过放置覆盖块保护关键信息。"
subtitle: "您可以使用 GroupDocs.Redaction for Python via .NET 做的事情" 

############################# About ############################
about:
    enable: true
    title: "认识 GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       通过 GroupDocs.Redaction for Python via .NET，Python 开发者可以在 WORD 文档中隐藏或删除内容——例如姓名、数字等。

############################# Steps ############################
steps:
    enable: true
    title: "在 Word 中隐蔽私人内容"
    content: |
      GroupDocs.Redaction for Python via .NET 使 Python via .NET 开发者能够快速轻松地隐藏敏感数据。
      
      1. 创建一个 Redactor 并加载您的 Word 文件。
      2. 设置红action选项。
      3. 选择要隐藏的文本和覆盖颜色。
      4. 运行红action并保存文件。
   
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

        # 使用覆盖在 WORD 中覆盖文本

        # 选择要遮盖的内容
        # 输入要隐藏的文本并设置颜色
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # 使用 Redactor 加载文件
        with gr.Redactor("input.docx") as redactor:

            # 红action并保存
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "更多隐藏信息的方法"
  description: "使用 GroupDocs.Redaction for Python via .NET 清理文件，隐藏可见和隐藏内容，而不改变它们的外观。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "以隐私为重点的功能"
  features:
    # feature loop
    - title: "隐藏或替换文本"
      content: "通过移除或替换词语来保护重要信息。"

    # feature loop
    - title: "覆盖图像"
      content: "用实心形状屏蔽敏感图像。"

    # feature loop
    - title: "删除隐藏数据"
      content: "清理可能泄露系统或用户信息的元数据。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用正则表达式查找并隐藏文本"
      content: |
        此示例展示如何使用正则表达式匹配并隐藏内容。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 设置模式和覆盖颜色
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # 打开要编辑的文件
          with gr.Redactor("source.docx") as redactor:

              # 应用红action
              result = redactor.apply(redaction)

              # 保存您的更新副本
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
    title: "使用 Python 保护 WORD 内容"
    exclude: "WORD"
    description: "使用 Python 隐藏或删除 WORD 文件中的敏感信息，而不影响结构或布局。"
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