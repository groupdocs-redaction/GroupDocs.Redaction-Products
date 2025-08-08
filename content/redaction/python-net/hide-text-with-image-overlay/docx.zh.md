
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: zh
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "使用 Python 通过覆盖隐藏 DOCX 中的文本"
head_description: "使用 GroupDocs.Redaction for Python via .NET 保护 DOCX 文件中的敏感文本。添加简单的方形覆盖而不改变布局。"

############################# Header ############################
title: "使用 Python 隐藏 DOCX 中的内容" 
description: "利用 Python 在 DOCX 文件中覆盖私人内容。非常适合法律、个人或业务文档。"
subtitle: "GroupDocs.Redaction for Python via .NET 的关键特性" 

############################# About ############################
about:
    enable: true
    title: "什么是 GroupDocs.Redaction for Python via .NET？"
    link: "/redaction/python-net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET 帮助 Python 开发者在 DOCX 文件中隐藏或删除私密内容。您可以屏蔽文本、图像，甚至隐藏的元数据。

############################# Steps ############################
steps:
    enable: true
    title: "在 Docx 中保持私人信息隐藏"
    content: |
      有了 GroupDocs.Redaction for Python via .NET，Python via .NET 开发者可以在几行代码内隐藏内容。
      
      1. 创建一个 Redactor 并打开您的文件。
      2. 选择您的红action设置。
      3. 输入要隐藏的文本并选择一种颜色。
      4. 应用并保存红action后的版本。
   
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

        # 使用覆盖层在 DOCX 中隐藏内容

        # 配置红action选项
        # 定义文本和覆盖颜色
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # 设置 Redactor 并加载您的文件
        with gr.Redactor("input.docx") as redactor:

            # 红action并保存文件
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "额外的红action工具"
  description: "GroupDocs.Redaction for Python via .NET 支持不同的文件类型，让您轻松保护任何内容。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "内置红action功能"
  features:
    # feature loop
    - title: "查找和编辑文本"
      content: "快速搜索关键字并隐藏或替换它们。"

    # feature loop
    - title: "覆盖图像区域"
      content: "在扫描页面或照片中屏蔽敏感区域。"

    # feature loop
    - title: "清除元数据"
      content: "删除可能暴露详细信息的隐藏信息。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用正则表达式查找文本并进行红action"
      content: |
        学习如何使用正则表达式查找并隐藏文本。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 设置模式和颜色
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # 打开要红action的文件
          with gr.Redactor("source.docx") as redactor:

              # 运行红action过程
              result = redactor.apply(redaction)

              # 保存清理后的文档
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
    title: "使用 Python 保护 DOCX 文件"
    exclude: "DOCX"
    description: "在 DOCX 文档中使用简单的 Python 工具覆盖或删除敏感内容。"
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