
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: zh
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "使用 Python 编辑 JPEG 中的元数据"
head_description: "GroupDocs.Redaction for Python via .NET 帮助您清除或更新 JPEG 文档中的元数据。删除可能暴露私人细节的隐藏字段。"

############################# Header ############################
title: "通过 Python 清理 JPEG 中的元数据" 
description: "通过使用专为 Python 构建的简单工具，保护您的 JPEG 文件，删除隐藏的元数据。"
subtitle: "GroupDocs.Redaction for Python via .NET 的核心功能" 

############################# About ############################
about:
    enable: true
    title: "了解 GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction 为 Python 开发者提供简单工具，以删除 JPEG 文档中的文本、图像和元数据。

############################# Steps ############################
steps:
    enable: true
    title: "清理 Jpeg 元数据的步骤"
    content: |
      GroupDocs.Redaction 让您在 Python via .NET 应用中快速轻松地移除元数据。
      
      1. 设置一个 Redactor 并打开您的 Jpeg 文档。
      2. 选择要删除的元数据字段。
      3. 运行涂抹以清理文件。
      4. 保存新版本，去除隐藏数据。
   
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

        # 清理 JPEG 中的元数据

        # 选择要清理的元数据字段
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # 使用 Redactor 打开文件
        with gr.Redactor("input.jpg") as redactor:

            # 应用涂抹并保存文件
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "在每个文件中保护隐私"
  description: "GroupDocs.Redaction for Python via .NET 让您控制文档中的敏感数据。删除文本、图像和元数据中的隐藏内容。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "元数据涂抹功能"
  features:
    # feature loop
    - title: "查找并擦除文本"
      content: "扫描关键字或私人信息并将其从文档中删除。"

    # feature loop
    - title: "隐藏图像细节"
      content: "遮盖不应被他人看到的图像区域。"

    # feature loop
    - title: "编辑文件元数据"
      content: "更改或删除元数据字段以保护文档信息。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "编辑元数据字段"
      content: |
        本示例演示如何移除或修改 JPEG 文档中的作者和标题字段。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 定位作者字段
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # 定位标题字段
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # 打开 JPEG 文件
          with gr.Redactor("source.jpg") as redactor:

              # 运行清除过程
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # 保存新版本
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
    title: "使用 Python 清理 JPEG 元数据"
    exclude: "JPEG"
    description: "快速清除 JPEG 文档中隐藏和私人数据，使用 Python。"
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