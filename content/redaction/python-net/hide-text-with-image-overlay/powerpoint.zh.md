
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
head_title: "使用 Python 覆盖隐藏 POWERPOINT 中的敏感文本"
head_description: "GroupDocs.Redaction for Python via .NET 帮助您使用颜色覆盖隐藏 POWERPOINT 文件中的私密内容。在保持所有内容原样的情况下隐藏重要信息。"

############################# Header ############################
title: "使用 Python 隐藏 POWERPOINT 演示文稿中的文本" 
description: "使用 Python 和 GroupDocs.Redaction for Python via .NET 添加覆盖并隐藏您的 POWERPOINT 幻灯片中的敏感文本。"
subtitle: "您可以使用 GroupDocs.Redaction for Python via .NET 做的事情" 

############################# About ############################
about:
    enable: true
    title: "了解更多关于 GroupDocs.Redaction for Python via .NET 的信息"
    link: "/redaction/python-net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET 帮助 Python 开发者通过覆盖或删除文本、图像和隐藏信息来清理 POWERPOINT 演示文稿。

############################# Steps ############################
steps:
    enable: true
    title: "在 Powerpoint 文件中进行红action"
    content: |
      使用 GroupDocs.Redaction for Python via .NET，可以通过简单的红action步骤准备 Powerpoint 文件进行共享。
      
      1. 创建一个新的 Redactor 并加载您的文件。
      2. 选择要隐藏的内容及其应用方式。
      3. 添加搜索模式并设置覆盖颜色。
      4. 应用红action并保存更新后的文档。
   
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

        # 使用覆盖在 POWERPOINT 中覆盖敏感文本

        # 设置红action工作方式
        # 选择要隐藏的文本和颜色
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # 使用 Redactor 加载您的演示文稿
        with gr.Redactor("input.pptx") as redactor:

            # 红action并保存文件
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "便捷的隐藏信息方法"
  description: "GroupDocs.Redaction for Python via .NET 使隐藏或删除文件中敏感部分变得简单——非常适合法律、个人或商业用途。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "隐私工具的实用功能"
  features:
    # feature loop
    - title: "查找并替换文本"
      content: "搜索单词或数字并进行隐藏或更改。"

    # feature loop
    - title: "遮盖图像部分"
      content: "绘制覆盖层以隐藏整张图像或选定的地方。"

    # feature loop
    - title: "移除隐藏的信息"
      content: "删除用户看不见的元数据，如姓名或时间戳。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用正则表达式进行红action"
      content: |
        查看如何通过正则表达式帮助您查找并隐藏幻灯片中的文本。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 定义模式和覆盖颜色
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # 打开您的 POWERPOINT 文件
          with gr.Redactor("source.pptx") as redactor:

              # 执行红action
              result = redactor.apply(redaction)

              # 保存最终版本
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
    title: "使用 Python 隐藏 POWERPOINT 中的文本"
    exclude: "POWERPOINT"
    description: "使用 Python 添加覆盖或移除您的 POWERPOINT 幻灯片中的内容，以保护私人数据。"
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