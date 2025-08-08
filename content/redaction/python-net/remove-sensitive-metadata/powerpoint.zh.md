
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: zh
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "使用 Python 清理 POWERPOINT 中的元数据"
head_description: "通过 GroupDocs.Redaction for Python via .NET 保证您的 POWERPOINT 文档安全，清除可能含有私密信息的隐含元数据。"

############################# Header ############################
title: "使用 Python 清理 POWERPOINT 中的元数据" 
description: "使用 Python 工具更好地控制您的文件，以快速删除隐藏的元数据。"
subtitle: "GroupDocs.Redaction for Python via .NET 的顶级功能" 

############################# About ############################
about:
    enable: true
    title: "了解 GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction 旨在帮助 Python 开发者在 POWERPOINT 文件中进行文本、图像及元数据的涂抹。

############################# Steps ############################
steps:
    enable: true
    title: "在 Powerpoint 文件中清理元数据的步骤"
    content: |
      GroupDocs.Redaction 让您的 Python via .NET 应用快速清理文档中的元数据。
      
      1. 创建一个 Redactor 实例并打开文档。
      2. 选择要删除的元数据字段。
      3. 配置并应用涂抹设置。
      4. 保存最终版本，去除隐藏数据。
   
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

        # 清理 POWERPOINT 中的元数据

        # 选择要移除的元数据
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # 将文件加载到涂抹器中
        with gr.Redactor("input.pptx") as redactor:

            # 清理并保存文档
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "POWERPOINT 的高级涂抹"
  description: "GroupDocs.Redaction for Python via .NET 通过删除敏感内容帮助清理文件。支持多种文件格式和数据类型。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "主要涂抹选项"
  features:
    # feature loop
    - title: "删除私人文本"
      content: "搜索并删除不应共享的单词或短语。"

    # feature loop
    - title: "覆盖图像部分"
      content: "隐藏图片中包含私密或敏感视觉信息的部分。"

    # feature loop
    - title: "清除元数据"
      content: "擦除文件中的像作者、标题以及评论等元数据字段。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "如何删除隐藏元数据"
      content: |
        本示例展示了如何擦除 POWERPOINT 文档中的嵌入元数据，如作者和标题。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 清除作者字段
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # 清除标题字段
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # 在涂抹器中打开文件
          with gr.Redactor("source.pptx") as redactor:

              # 执行涂抹
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
    title: "使用 Python 在 POWERPOINT 中清除元数据"
    exclude: "POWERPOINT"
    description: "使用 Python 清理 POWERPOINT 文档中的私人数据。适合法律、商业和个人用途。"
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