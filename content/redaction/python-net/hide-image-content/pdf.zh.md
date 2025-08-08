
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: zh
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "使用Python在PDF中通过覆盖物隐藏敏感图像"
head_description: "借助GroupDocs.Redaction for Python via .NET，您可以通过添加覆盖物轻松隐藏PDF文件中的敏感图像。保护隐私数据而不改变文档布局。"

############################# Header ############################
title: "使用Python通过覆盖物隐藏PDF文件中的图像" 
description: "使用Python保护PDF文件中的个人和商业图像。我们的工具使数据保护既可靠又高效。"
subtitle: "GroupDocs.Redaction for Python via .NET 功能" 

############################# About ############################
about:
    enable: true
    title: "关于GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET为Python开发者提供在PDF文件中隐藏或删除内容的工具。遮盖文本、图像和元数据，以保护不同格式的文档。

############################# Steps ############################
steps:
    enable: true
    title: "保护Pdf文件中的敏感数据"
    content: |
      GroupDocs.Redaction for Python via .NET赋予您的Python via .NET应用程序保护文档的能力。仅需几次点击即可隐藏私人内容。
      
      1. 创建一个Redactor对象并指向Pdf文件。
      2. 调整设置以匹配您的编辑需求。
      3. 选择要覆盖的图像区域并选择覆盖物颜色。
      4. 处理并保存编辑后的文件。
   
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

        # 在PDF中覆盖机密图像部分

        # 设置覆盖物颜色和大小
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # 选择要编辑的区域
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # 使用Redactor加载文档
        with gr.Redactor("input.pdf") as redactor:

            # 应用覆盖物并保存文档
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "隐藏文档中的敏感内容"
  description: "使用GroupDocs.Redaction for Python via .NET，您可以在不同文件格式中隐藏或删除数据。在保持文档整洁和可共享的同时保护敏感信息。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "关键编辑功能"
  features:
    # feature loop
    - title: "搜索和编辑文本"
      content: "查找并更改文档中的敏感文本，以保护私人信息。"

    # feature loop
    - title: "覆盖图像区域"
      content: "在图像或选定部分上放置覆盖物以隐藏机密视觉内容。"

    # feature loop
    - title: "管理元数据"
      content: "删除或编辑隐藏的元数据，以防止不必要的数据泄露。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用覆盖物隐藏图像信息"
      content: |
        此示例展示了如何使用覆盖物保护文档中的敏感图像数据。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 调整覆盖物设置：大小、颜色和位置
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # 选择第一页上的图像区域
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # 打开需要编辑的文件
          with gr.Redactor("source.pdf") as redactor:

              # 应用覆盖物以遮盖图像
              result = redactor.apply(redaction)

              # 保存编辑后的文件
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "使用Python保护PDF文件"
    exclude: "PDF"
    description: "使用Python在PDF文件中隐藏或删除敏感数据。为保护商业和个人文档提供实用解决方案。"
    items: 
        # format loop 1
        - name: "红行动 PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-image-content//pdf/"
          description: "Adobe 便携式文档格式"

        # format loop 2
        - name: "红行动 Word"
          format: "WORD"
          link: "/redaction/python-net/hide-image-content//word/"
          description: "MS Word 和 Open Office 文档"
          
        # format loop 3
        - name: "红行动 Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-image-content//excel/"
          description: "MS Excel 和 Open Office 电子表格"

        # format loop 4
        - name: "红行动 PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-image-content//powerpoint/"
          description: "MS PowerPoint 和 Open Office 演示文稿"

        # format loop 5
        - name: "红行动 图像"
          format: "IMAGE"
          link: "/redaction/python-net/hide-image-content//image/"
          description: "常见图像格式"

        # format loop 6
        - name: "红行动 照片"
          format: "PHOTO"
          link: "/redaction/python-net/hide-image-content//photo/"
          description: "照片格式"

        # format loop 7
        - name: "红行动 DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-image-content//docx/"
          description: "Microsoft Word 开放 XML 文档"
          
        # format loop 8
        - name: "红行动 XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-image-content//xlsx/"
          description: "Microsoft Excel 开放 XML 电子表格"
          
        # format loop 9
        - name: "红行动 PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-image-content//pptx/"
          description: "PowerPoint 开放 XML 演示文稿"

        # format loop 10
        - name: "红行动 JPEG"
          format: "JPEG"
          link: "/redaction/python-net/hide-image-content//jpeg/"
          description: "JPEG 图像"


---