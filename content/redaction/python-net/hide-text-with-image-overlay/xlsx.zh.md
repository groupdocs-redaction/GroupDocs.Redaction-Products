
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: zh
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "使用 Python 和覆盖隐藏 XLSX 中的文本"
head_description: "GroupDocs.Redaction for Python via .NET 通过添加彩色覆盖帮助您隐藏 XLSX 文件中的文本。在不改变文件布局的情况下保持数据的私密性。"

############################# Header ############################
title: "使用 Python 的覆盖隐藏 XLSX 文件中的文本" 
description: "使用 GroupDocs.Redaction for Python via .NET 和 Python 保护您 XLSX 文件中的敏感文本，采用简单的覆盖层。"
subtitle: "您通过 GroupDocs.Redaction for Python via .NET 获取的内容" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NET 可以做什么"
    link: "/redaction/python-net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET 为 Python 开发者提供隐藏或删除 XLSX 文件中的文本、图像等内容的工具。

############################# Steps ############################
steps:
    enable: true
    title: "在 Xlsx 文件中保护数据"
    content: |
      GroupDocs.Redaction for Python via .NET 让 Python via .NET 开发者仅用几行代码即可隐藏私密信息。
      
      1. 首先创建一个 Redactor 并加载您的 Xlsx 文件。
      2. 设置适用于您的情况的红action选项。
      3. 添加您想要隐藏的文本模式并选择一种颜色。
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

        # 使用覆盖隐藏 XLSX 中的私人内容

        # 设置红action首选项
        # 选择要覆盖的文本和覆盖颜色
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # 使用 Redactor 加载您的文件
        with gr.Redactor("input.xslx") as redactor:

            # 红action并保存文件
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "有用的红action工具"
  description: "GroupDocs.Redaction for Python via .NET 允许您从多种文件类型中隐藏或删除内容。保持个人或商业信息的保护。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "易于使用的红action选项"
  features:
    # feature loop
    - title: "查找和编辑文本"
      content: "搜索特定文本并进行替换或隐藏。"

    # feature loop
    - title: "覆盖图像内容"
      content: "在图片上绘制覆盖层以屏蔽私密区域。"

    # feature loop
    - title: "删除元数据"
      content: "在分享文件之前清除背景信息。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用正则表达式模式隐藏文本"
      content: |
        此示例展示如何使用正则表达式查找并隐藏内容。
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

          # 打开您想要编辑的文件
          with gr.Redactor("source.xslx") as redactor:

              # 应用红action规则
              result = redactor.apply(redaction)

              # 保存撤回的版本
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
    title: "使用 Python 隐藏 XLSX 中的数据"
    exclude: "XLSX"
    description: "使用 Python 工具快速轻松地隐藏或移除 XLSX 文件的敏感部分。"
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