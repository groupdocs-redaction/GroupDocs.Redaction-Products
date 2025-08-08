
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: zh
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "使用Python覆盖PHOTO文件中的图像"
head_description: "使用覆盖物隐藏PHOTO文件中的敏感图像数据。利用GroupDocs.Redaction for Python via .NET，保持文档设计完整，同时保护私人信息。"

############################# Header ############################
title: "使用Python覆盖PHOTO文件中的敏感图像" 
description: "使用Python保护PHOTO文件中的图像内容。简单工具实现快速有效的数据保护。"
subtitle: "GroupDocs.Redaction for Python via .NET的关键功能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NET是什么？"
    link: "/redaction/python-net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET为Python开发者提供强大的工具，以在PHOTO文件中隐藏或删除内容。有效保护重要数据，遮盖文本、图像和元数据。

############################# Steps ############################
steps:
    enable: true
    title: "保护Photo文件中的图像区域"
    content: |
      使用GroupDocs.Redaction for Python via .NET轻松覆盖您Python via .NET应用程序中的敏感图像区域。
      
      1. 创建一个Redactor对象并连接到您的Photo文件。
      2. 配置编辑设置以适应您的任务。
      3. 高亮图像部分并设置覆盖物颜色。
      4. 应用编辑并保存受保护的文件。
   
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

        # 使用覆盖物隐藏PHOTO中的图像数据

        # 设置覆盖物的尺寸和颜色
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # 选择要遮盖的图像区域
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # 使用Redactor加载文件
        with gr.Redactor("input.jpeg") as redactor:

            # 应用覆盖物，保存文件
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "在多个格式中隐藏私人数据"
  description: "GroupDocs.Redaction for Python via .NET使您能够在不同文件类型中覆盖或清除敏感内容。保持文档整洁和安全，用于共享。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "功能全面的编辑工具"
  features:
    # feature loop
    - title: "查找并编辑文本"
      content: "搜索敏感文本并替换以确保您的文档安全。"

    # feature loop
    - title: "使用覆盖物隐藏图像"
      content: "添加覆盖物以遮盖完整图像或特定区域。"

    # feature loop
    - title: "删除元数据"
      content: "清除隐藏的元数据库，以防止数据泄漏。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用覆盖物遮蔽图像区域"
      content: |
        本代码示例展示了在文档中使用覆盖物进行遮盖敏感图像的区域。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 定义覆盖物的尺寸、颜色和位置
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

          # 打开文件进行编辑
          with gr.Redactor("source.jpeg") as redactor:

              # 应用覆盖物以隐藏内容
              result = redactor.apply(redaction)

              # 保存安全的文件
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
    title: "使用Python在PHOTO中编辑敏感内容"
    exclude: "PHOTO"
    description: "使用Python在PHOTO文件中隐藏或删除私人数据。这是一种简单的方式确保官方文档的安全。"
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