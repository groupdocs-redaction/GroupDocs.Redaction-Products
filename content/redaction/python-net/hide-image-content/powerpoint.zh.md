
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: zh
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "使用Python通过覆盖物遮蔽POWERPOINT中的敏感图像"
head_description: "通过GroupDocs.Redaction for Python via .NET，您可以使用覆盖物隐藏POWERPOINT文件中的私人图像区域。在不更改文档设计的情况下保护信息。"

############################# Header ############################
title: "使用Python覆盖POWERPOINT文档中的私人图像" 
description: "使用Python确保POWERPOINT文件中的敏感图像安全。设计用于强有力数据保护的简单工具。"
subtitle: "探索GroupDocs.Redaction for Python via .NET的功能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NET是什么？"
    link: "/redaction/python-net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET为Python开发者提供在POWERPOINT文件中隐藏或删除敏感内容的工具。通过覆盖私人文本、图像和元数据有效保护您的文档。

############################# Steps ############################
steps:
    enable: true
    title: "保护Powerpoint文件中的敏感数据"
    content: |
      GroupDocs.Redaction for Python via .NET使Python via .NET应用程序简单地通过覆盖敏感内容来保护文档。
      
      1. 创建一个Redactor对象并加载Powerpoint文件。
      2. 根据需要调整编辑选项。
      3. 选择图像区域并挑选覆盖物颜色。
      4. 应用覆盖物并保存文件。
   
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

        # 在POWERPOINT文件中遮蔽图像内容

        # 设置覆盖物的大小和颜色
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # 选择要隐藏的区域
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # 使用Redactor加载文件
        with gr.Redactor("input.pptx") as redactor:

            # 应用覆盖物并保存文件
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "保护文档中的私人数据"
  description: "GroupDocs.Redaction for Python via .NET允许您在不同文件格式中隐藏或删除敏感内容。确保您的文件安全且可用于共享。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "集成全面的编辑功能"
  features:
    # feature loop
    - title: "搜索和编辑文本"
      content: "查找文档中的私人文本并替换以保护隐私。"

    # feature loop
    - title: "遮蔽图像区域"
      content: "用覆盖物遮盖整个图像或选定部分，以隐藏私人视觉内容。"

    # feature loop
    - title: "删除隐藏的元数据"
      content: "删除元数据，以避免意外共享信息。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用覆盖物隐藏图像数据"
      content: |
        此示例展示了如何使用覆盖物保护文档中的敏感图像。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 设置覆盖物的大小、位置和颜色
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

          # 打开待编辑的文档
          with gr.Redactor("source.pptx") as redactor:

              # 应用覆盖物进行编辑
              result = redactor.apply(redaction)

              # 保存最终文档
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
    title: "使用Python保护POWERPOINT文件"
    exclude: "POWERPOINT"
    description: "借助Python，您可以轻松地在POWERPOINT文件中隐藏或删除敏感数据。信赖的文档保护解决方案。"
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