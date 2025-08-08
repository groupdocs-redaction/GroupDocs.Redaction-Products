
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: zh
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "使用Python在DOCX中隐藏图像内容通过覆盖物"
head_description: "通过使用GroupDocs.Redaction for Python via .NET在DOCX文件中添加覆盖物来保护敏感图像。在确保文档格式完整的同时保护私人图像。"

############################# Header ############################
title: "使用Python通过覆盖物保护DOCX文档中的图像" 
description: "使用Python保护DOCX文件中的个人和商业视觉内容。我们的编辑工具使文档安全变得简单。"
subtitle: "GroupDocs.Redaction for Python via .NET的亮点" 

############################# About ############################
about:
    enable: true
    title: "关于GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET使Python开发者能够在DOCX文件中隐藏或删除内容。保护跨多种文档格式的文本、图像和元数据。

############################# Steps ############################
steps:
    enable: true
    title: "保持Docx文件中的数据安全"
    content: |
      GroupDocs.Redaction for Python via .NET使Python via .NET应用程序能够轻松保护文档。只需几个步骤即可遮盖敏感数据。
      
      1. 创建一个Redactor实例并指定Docx文件的路径。
      2. 根据任务设置编辑首选项。
      3. 选择要覆盖的图像部分并确定覆盖物颜色。
      4. 运行处理并保存编辑后的文件。
   
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

        # 隐藏DOCX中图像的敏感部分

        # 定义覆盖物的大小和颜色
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # 指定编辑区域
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # 使用Redactor加载文件
        with gr.Redactor("input.docx") as redactor:

            # 应用覆盖物并保存文档
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "隐藏文档中的内容"
  description: "通过GroupDocs.Redaction for Python via .NET，您可以轻松地从各种文档类型中隐藏或删除敏感信息。保持文件安全和可分享。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "有效的编辑功能"
  features:
    # feature loop
    - title: "搜索和编辑文本"
      content: "定位敏感单词并进行替换，以保护您的数据。"

    # feature loop
    - title: "覆盖图像"
      content: "对整个图像或选定部分应用覆盖物，以保护视觉数据。"

    # feature loop
    - title: "清理隐藏的元数据"
      content: "删除或更新元数据，以防止意外的数据共享。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用覆盖物隐藏图像数据"
      content: |
        此示例展示了如何用覆盖物保护文档中的敏感图像区域。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 设置覆盖物的颜色、大小和位置
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # 选择第一页上的编辑区域
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # 加载要编辑的文件
          with gr.Redactor("source.docx") as redactor:

              # 应用覆盖物遮盖图像
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
    title: "使用Python在DOCX文件中隐藏敏感数据"
    exclude: "DOCX"
    description: "通过Python在DOCX文件中覆盖或清除私人数据。保护机密文件的理想工具。"
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