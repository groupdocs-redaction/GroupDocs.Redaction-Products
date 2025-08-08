
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
head_title: "使用 Python 删除 XLSX 中的元数据"
head_description: "使用 GroupDocs.Redaction for Python via .NET 清除您 XLSX 文档中的隐藏元数据。保护隐私的清洁方式。"

############################# Header ############################
title: "使用 Python 从 XLSX 文件中删除元数据" 
description: "使用 Python，您可以安全地删除 XLSX 文件中的私有细节。适用于个人和专业用途。"
subtitle: "GroupDocs.Redaction for Python via .NET 的关键功能" 

############################# About ############################
about:
    enable: true
    title: "什么是 GroupDocs.Redaction for Python via .NET？"
    link: "/redaction/python-net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction 给予 Python 开发者删除或隐藏 XLSX 文件中的任何敏感内容的工具——从文本到图像再到元数据。

############################# Steps ############################
steps:
    enable: true
    title: "从 Xlsx 文件中删除元数据"
    content: |
      GroupDocs.Redaction 使您的 Python via .NET 项目快速删除不需要的文件数据。
      
      1. 创建一个 Redactor 实例并加载您的 Xlsx 文件。
      2. 选择要擦除的元数据条目。
      3. 运行涂抹以清除这些条目。
      4. 保存更新后的文件。
   
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

        # 删除 XLSX 文档中的隐藏元数据

        # 设置要删除的元数据字段
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # 使用 Redactor 打开该文件
        with gr.Redactor("input.xslx") as redactor:

            # 应用更改并保存文件
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "在文件中隐藏敏感内容"
  description: "GroupDocs.Redaction for Python via .NET 让您清理多种文件格式中的私人信息。保持您的内容准备好共享。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "元数据和内容涂抹"
  features:
    # feature loop
    - title: "删除敏感文本"
      content: "查找并删除文档中的名字、电子邮件或其他私人细节。"

    # feature loop
    - title: "覆盖图像区域"
      content: "放置覆盖以隐藏图像中不应该被看到的区域。"

    # feature loop
    - title: "元数据清理"
      content: "删除隐藏字段，如作者、标题或创建日期。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "从文档中删除元数据"
      content: |
        以下是如何使用几行代码从 XLSX 文件中删除元数据。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 标记作者字段进行删除
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # 标记标题字段进行删除
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # 打开文档
          with gr.Redactor("source.xslx") as redactor:

              # 运行涂抹规则
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
    title: "使用 Python 清除 XLSX 中的元数据"
    exclude: "XLSX"
    description: "使用 Python 清理您 XLSX 文件中的私有元数据。这是使文件在共享或发布之前准备就绪的好方法。"
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