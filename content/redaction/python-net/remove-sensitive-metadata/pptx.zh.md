
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
head_title: "使用 Python 删除 PPTX 文件中的元数据"
head_description: "GroupDocs.Redaction for Python via .NET 有助于清理 PPTX 文件中的隐私数据。删除可能暴露敏感信息的细节。"

############################# Header ############################
title: "使用 Python 在 PPTX 中删除元数据" 
description: "使用 Python 删除存储在 PPTX 文件中的私有元数据。这是保护您的信息的智能方法。"
subtitle: "GroupDocs.Redaction for Python via .NET 的主要工具" 

############################# About ############################
about:
    enable: true
    title: "更多关于 GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction 为 Python 开发者提供了保持文档干净的工具。使用它删除文本、覆盖图像或删除 PPTX 文件中的元数据。

############################# Steps ############################
steps:
    enable: true
    title: "清理 Pptx 文件中的元数据"
    content: |
      使用 GroupDocs.Redaction 快速从您的 Python via .NET 应用程序中移除元数据。
      
      1. 创建一个 Redactor 并打开 Pptx 文档。
      2. 选择您要擦除的元数据。
      3. 应用涂抹以删除隐藏的数据。
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

        # 删除 PPTX 中的元数据

        # 选择要涂抹的字段
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # 使用 Redactor 打开文件
        with gr.Redactor("input.pptx") as redactor:

            # 运行并保存更改
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "隐藏敏感信息的其他方法"
  description: "GroupDocs.Redaction for Python via .NET 支持多种格式的涂抹。这是快速移除文档中个人内容的方法。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "文件涂抹工具"
  features:
    # feature loop
    - title: "搜索并删除文本"
      content: "快速删除包含个人或敏感数据的单词或短语。"

    # feature loop
    - title: "添加图像覆盖"
      content: "覆盖不应共享的图像部分。"

    # feature loop
    - title: "删除隐含元数据"
      content: "清除作者名称、标题和其他隐藏标签。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "示例：删除元数据字段"
      content: |
        根据此示例在要共享之前删除 PPTX 文件中的常见元数据字段。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 标记作者字段进行涂抹
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # 标记标题字段进行涂抹
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # 加载文件
          with gr.Redactor("source.pptx") as redactor:

              # 应用涂抹
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # 导出清理后的文件
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
    title: "使用 Python 清理 PPTX 中的元数据"
    exclude: "PPTX"
    description: "使用 Python 删除 PPTX 中的背景数据。非常适合隐私和合规性。"
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