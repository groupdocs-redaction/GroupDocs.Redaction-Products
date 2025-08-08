
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: zh
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "使用 Python 清理 EXCEL 中的元数据"
head_description: "使用 GroupDocs.Redaction for Python via .NET 从 EXCEL 文档中删除元数据。消除隐私数据并保护敏感信息。"

############################# Header ############################
title: "使用 Python 删除 EXCEL 中的隐藏元数据" 
description: "使用 Python 来控制您的 EXCEL 文件。删除不必要的数据，以保持文件私密。"
subtitle: "GroupDocs.Redaction for Python via .NET 的关键功能" 

############################# About ############################
about:
    enable: true
    title: "了解 GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction 面向 Python 开发者，旨在清理和保护 EXCEL 文件。轻松删除不必要的元数据、文本和图像。

############################# Steps ############################
steps:
    enable: true
    title: "清理 Excel 文件中的元数据的步骤"
    content: |
      在你的 Python via .NET 应用中，GroupDocs.Redaction 有助于在几步骤内删除元数据。
      
      1. 启动一个 Redactor 并打开 Excel 文件。
      2. 选择要删除的元数据字段。
      3. 运行涂抹过程。
      4. 导出最终文件。
   
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

        # 删除 EXCEL 中的隐含数据

        # 选择要删除的元数据
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # 使用涂抹器打开您的文件
        with gr.Redactor("input.xslx") as redactor:

            # 处理并保存文件
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "清理所有类型的敏感数据"
  description: "GroupDocs.Redaction for Python via .NET 提供工具来清除多种格式中的元数据、文本和图像。非常适合安全文档共享。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "元数据和隐私工具"
  features:
    # feature loop
    - title: "删除私人文本"
      content: "识别并删除文档中的个人或隐藏信息。"

    # feature loop
    - title: "遮盖图像细节"
      content: "覆盖部分图像以阻止私密信息的泄露。"

    # feature loop
    - title: "清除元数据"
      content: "删除可能包含敏感数据的隐藏字段。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "删除作者和标题元数据"
      content: |
        查看 GroupDocs.Redaction for Python via .NET 如何清理 EXCEL 文档中的特定元数据字段。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 删除作者信息
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # 删除标题字段
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # 打开待涂抹的文档
          with gr.Redactor("source.xslx") as redactor:

              # 应用更改
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # 保存清理后的文档
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
    title: "使用 Python 清除 EXCEL 中的元数据"
    exclude: "EXCEL"
    description: "使用 Python 删除 EXCEL 文件中的敏感元数据。在共享之前保护内容。"
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