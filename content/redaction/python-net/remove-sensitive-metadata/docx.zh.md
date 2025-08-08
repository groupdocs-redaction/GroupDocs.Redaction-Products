
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
head_title: "使用 Python 清除 DOCX 中的元数据"
head_description: "使用 GroupDocs.Redaction for Python via .NET 删除 DOCX 文件中的隐藏细节。通过删除敏感的元数据条目来保护您的数据。"

############################# Header ############################
title: "使用 Python 从 DOCX 文件中删除隐藏元数据" 
description: "借助 Python，您可以使用 GroupDocs.Redaction for Python via .NET 删除 DOCX 文件中的隐藏元数据。保持您的文件干净和私密。"
subtitle: "GroupDocs.Redaction for Python via .NET 的主要功能" 

############################# About ############################
about:
    enable: true
    title: "什么是 GroupDocs.Redaction for Python via .NET？"
    link: "/redaction/python-net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction 赋予 Python 开发者在 DOCX 文件中删除隐藏数据的能力。轻松清理文档中的文本、视觉内容和元数据。

############################# Steps ############################
steps:
    enable: true
    title: "从 Docx 文件中删除元数据"
    content: |
      GroupDocs.Redaction 为您的 Python via .NET 应用程序提供快速删除元数据的工具。
      
      1. 启动一个 Redactor 并加载您的 Docx 文档。
      2. 设置需删除的元数据字段。
      3. 应用涂抹以清理隐藏的内容。
      4. 保存该文件的最终版本。
   
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

        # 清理 DOCX 文件中的元数据

        # 选择要移除的元数据条目
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # 使用 Redactor 打开文档
        with gr.Redactor("input.docx") as redactor:

            # 应用涂抹并保存文件
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "保护文档的每个部分"
  description: "使用 GroupDocs.Redaction for Python via .NET，您可以在多种文件格式中清理文本、图像和元数据。非常适合隐私和安全。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "文档涂抹工具的实际应用"
  features:
    # feature loop
    - title: "文本清理"
      content: "查找并删除名字、术语或任何私人用语。"

    # feature loop
    - title: "覆盖图像"
      content: "通过放置颜色覆盖来隐藏图像特定区域。"

    # feature loop
    - title: "元数据删除"
      content: "清除隐藏的文档信息，如作者或软件细节。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "示例：删除隐藏元数据"
      content: |
        以下是如何使用涂抹从 DOCX 文档中移除作者和标题字段。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 选择删除作者字段
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # 选择删除标题字段
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # 打开 DOCX 文件
          with gr.Redactor("source.docx") as redactor:

              # 运行元数据涂抹
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # 保存干净的文件
              save_options = gro.SaveOptions()
              save_options.add_suffix = True
              save_options.rasterize_to_pdf = False
              result_path = redactor.save(save_options)
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "使用 Python 删除 DOCX 中的元数据"
    exclude: "DOCX"
    description: "使用 Python 删除 DOCX 文件中的隐藏元数据。这是保密和归档之前对文件安全的良好方法。"
    items: 
        # format loop 1
        - name: "红行动 PDF"
          format: "PDF"
          link: "/redaction/python-net/remove-sensitive-metadata//pdf/"
          description: "Adobe 便携式文档格式"

        # format loop 2
        - name: "红行动 Word"
          format: "WORD"
          link: "/redaction/python-net/remove-sensitive-metadata//word/"
          description: "MS Word 和 Open Office 文档"
          
        # format loop 3
        - name: "红行动 Excel"
          format: "EXCEL"
          link: "/redaction/python-net/remove-sensitive-metadata//excel/"
          description: "MS Excel 和 Open Office 电子表格"

        # format loop 4
        - name: "红行动 PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/remove-sensitive-metadata//powerpoint/"
          description: "MS PowerPoint 和 Open Office 演示文稿"

        # format loop 5
        - name: "红行动 图像"
          format: "IMAGE"
          link: "/redaction/python-net/remove-sensitive-metadata//image/"
          description: "常见图像格式"

        # format loop 6
        - name: "红行动 照片"
          format: "PHOTO"
          link: "/redaction/python-net/remove-sensitive-metadata//photo/"
          description: "照片格式"

        # format loop 7
        - name: "红行动 DOCX"
          format: "DOCX"
          link: "/redaction/python-net/remove-sensitive-metadata//docx/"
          description: "Microsoft Word 开放 XML 文档"
          
        # format loop 8
        - name: "红行动 XLSX"
          format: "XLSX"
          link: "/redaction/python-net/remove-sensitive-metadata//xlsx/"
          description: "Microsoft Excel 开放 XML 电子表格"
          
        # format loop 9
        - name: "红行动 PPTX"
          format: "PPTX"
          link: "/redaction/python-net/remove-sensitive-metadata//pptx/"
          description: "PowerPoint 开放 XML 演示文稿"

        # format loop 10
        - name: "红行动 JPEG"
          format: "JPEG"
          link: "/redaction/python-net/remove-sensitive-metadata//jpeg/"
          description: "JPEG 图像"


---