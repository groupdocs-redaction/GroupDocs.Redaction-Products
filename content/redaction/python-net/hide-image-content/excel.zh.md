
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: zh
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "使用Python在EXCEL文件中覆盖图像"
head_description: "通过使用GroupDocs.Redaction for Python via .NET在EXCEL文件中保护敏感图像区域。添加覆盖物来隐藏私人视觉内容，而不改变文档的外观。"

############################# Header ############################
title: "使用覆盖物保护EXCEL文件中的敏感图像" 
description: "使用Python确保您在EXCEL文件中的个人和商业图像安全。通过我们的易用工具获得可靠的保护。"
subtitle: "GroupDocs.Redaction for Python via .NET的关键功能" 

############################# About ############################
about:
    enable: true
    title: "关于GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET为Python开发者提供简单的工具，以在EXCEL文件中隐藏或删除敏感内容。遮盖图像、文本和元数据以保护您的文档。

############################# Steps ############################
steps:
    enable: true
    title: "保护Excel文件中的数据"
    content: |
      GroupDocs.Redaction for Python via .NET帮助Python via .NET应用程序快速有效地隐藏私人信息。
      
      1. 创建一个Redactor实例并加载Excel文件。
      2. 根据需要设置编辑选项。
      3. 选择图像区域并选择覆盖物颜色。
      4. 应用编辑并保存已修改的文件。
   
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

        # 在EXCEL中覆盖图像区域

        # 调整覆盖物的大小和颜色
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # 选择要遮盖的区域
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # 使用Redactor打开文档
        with gr.Redactor("input.xslx") as redactor:

            # 应用覆盖物并保存文件
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "隐藏或删除敏感内容"
  description: "GroupDocs.Redaction for Python via .NET使您能够通过隐藏或删除各种格式的敏感数据来保护文档。保持文件安全并清晰易分享。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "功能丰富的编辑工具"
  features:
    # feature loop
    - title: "安全编辑文本"
      content: "查找文档中的敏感文本并替换以保护隐私。"

    # feature loop
    - title: "隐藏图像部分"
      content: "遮盖选定的图像区域或整个视觉内容。"

    # feature loop
    - title: "删除隐藏的元数据"
      content: "清除不可见的元数据字段，以防泄露数据。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用覆盖物隐藏图像数据"
      content: |
        此示例展示了如何应用覆盖物来遮盖文档中的敏感图像。
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

          # 选择第一页上的特定图像区域
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # 加载文档以进行编辑
          with gr.Redactor("source.xslx") as redactor:

              # 应用覆盖物以隐藏该内容
              result = redactor.apply(redaction)

              # 保存更新的文件
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
    title: "使用Python在EXCEL中隐藏内容"
    exclude: "EXCEL"
    description: "通过Python，您可以轻松地在EXCEL文件中隐藏或删除敏感信息。有效确保文档安全的方法。"
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