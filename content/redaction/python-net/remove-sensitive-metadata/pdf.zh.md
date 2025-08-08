
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
head_title: "使用 Python 删除 PDF 中的元数据"
head_description: "GroupDocs.Redaction for Python via .NET 使清理 PDF 文件中的隐私数据变得简单。通过编辑或删除元数据来避免共享私人信息。"

############################# Header ############################
title: "使用 Python 在 PDF 文件中删除元数据" 
description: "使用 Python 和 GroupDocs.Redaction for Python via .NET 清理您的 PDF 文档中的敏感信息。使用简单的涂抹工具来控制您的数据。"
subtitle: "GroupDocs.Redaction for Python via .NET 的功能介绍" 

############################# About ############################
about:
    enable: true
    title: "关于 GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction 帮助 Python 开发者清理 PDF 文档，通过删除文本、图像内容和元数据。

############################# Steps ############################
steps:
    enable: true
    title: "删除 Pdf 文档中的元数据"
    content: |
      在 Python via .NET 应用程序中使用 GroupDocs.Redaction 保护您的文件。
      
      1. 创建一个 Redactor 并加载您的 Pdf 文件。
      2. 添加规则以删除隐藏的元数据。
      3. 运行涂抹以删除元数据条目。
      4. 保存不含隐藏数据的文件。
   
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

        # 从 PDF 文档中删除元数据

        # 选择要移除的元数据字段
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # 使用 Redactor 打开文件
        with gr.Redactor("input.pdf") as redactor:

            # 涂抹并保存您的文档
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "清理文档中的隐藏内容"
  description: "使用 GroupDocs.Redaction for Python via .NET，您可以安全地删除文本、图像和元数据。在共享之前保持文件私密和安全。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "涂抹选项"
  features:
    # feature loop
    - title: "文本删除"
      content: "在文档中搜索并删除敏感文本。"

    # feature loop
    - title: "图像遮罩"
      content: "使用简单的覆盖物隐藏图像的特定部分。"

    # feature loop
    - title: "元数据清理"
      content: "清除可能暴露私人数据的不必要的元数据。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "编辑和删除元数据字段"
      content: |
        本示例说明如何在 PDF 文件中清除隐藏的元数据。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 删除作者元数据
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # 删除标题元数据
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # 在 Redactor 中打开文件
          with gr.Redactor("source.pdf") as redactor:

              # 运行涂抹过程
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # 保存更新后的文件
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
    title: "使用 Python 清除 PDF 中的元数据"
    exclude: "PDF"
    description: "使用 Python 删除 PDF 中的隐藏数据字段。这是保护隐私和保持文件清洁的智能方法。"
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