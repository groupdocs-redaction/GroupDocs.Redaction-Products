
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: zh
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "使用 Python 和覆盖隐藏 PPTX 中的文本"
head_description: "使用 GroupDocs.Redaction for Python via .NET 在您的 PPTX 文件中使用彩色覆盖保护敏感内容。您的布局保持不变。"

############################# Header ############################
title: "使用 Python 和覆盖保护 PPTX 中的文本" 
description: "利用 GroupDocs.Redaction for Python via .NET 和 Python 通过遮盖彩色区块在 PPTX 演示文稿中隐藏私密信息。"
subtitle: "您可以使用 GroupDocs.Redaction for Python via .NET 做的事情" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NET 提供的内容"
    link: "/redaction/python-net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       通过 GroupDocs.Redaction for Python via .NET，Python 开发者能够在 PPTX 文件中覆盖或删除内容——从文本到图像再到隐藏数据。

############################# Steps ############################
steps:
    enable: true
    title: "在 Pptx 中遮盖私人信息"
    content: |
      使用 GroupDocs.Redaction for Python via .NET 在几个简单步骤中保护您的演示文稿。
      
      1. 创建一个 Redactor 并加载您希望编辑的文件。
      2. 选择符合您需求的红action设置。
      3. 将文本模式设置并选择覆盖颜色。
      4. 应用红action并保存更改。
   
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

        # 使用覆盖在 PPTX 中隐藏文本

        # 定义红action设置
        # 选择文本和颜色
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # 首先使用 Redactor 加载您的文件
        with gr.Redactor("input.pptx") as redactor:

            # 红action并保存文件
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "更多红action选项"
  description: "GroupDocs.Redaction for Python via .NET 为您提供隐藏或清除不同文件格式中的数据的工具，而不触及布局。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "关注隐私的有用功能"
  features:
    # feature loop
    - title: "更改或隐藏文本"
      content: "通过编辑或隐藏重要信息来保护敏感内容。"

    # feature loop
    - title: "隐藏图像或部分"
      content: "绘制覆盖层以屏蔽整张图像或选定区域。"

    # feature loop
    - title: "移除隐藏的细节"
      content: "删除可能包含私人或系统信息的元数据。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用正则表达式查找文本"
      content: |
        查看正则表达式如何帮助您查找和隐藏敏感内容。
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

          # 打开您的文件进行红action
          with gr.Redactor("source.pptx") as redactor:

              # 应用红action
              result = redactor.apply(redaction)

              # 保存编辑后的文件
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
    title: "使用 Python 保护 PPTX 幻灯片"
    exclude: "PPTX"
    description: "使用 Python 在 PPTX 文件中覆盖或擦除私人内容，同时保持幻灯片整洁。"
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