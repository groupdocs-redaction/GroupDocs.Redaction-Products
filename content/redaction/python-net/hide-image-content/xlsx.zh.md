
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: zh
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "使用Python在XLSX文件中通过覆盖物隐藏图像区域"
head_description: "通过使用GroupDocs.Redaction for Python via .NET在XLSX文件中应用覆盖物来保护敏感图像区域。在确保文档的结构不受影响的同时保护私人视觉内容。"

############################# Header ############################
title: "使用Python在XLSX文档中隐藏敏感图像" 
description: "使用Python轻松保护XLSX文件中的机密图像。我们的工具确保快速有效的图像编辑。"
subtitle: "GroupDocs.Redaction for Python via .NET的主要功能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NET是什么？"
    link: "/redaction/python-net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET为Python开发者提供工具，以在XLSX文档中隐藏或清除敏感数据。遮盖文本、图像和元数据，跨不同格式保护文档。

############################# Steps ############################
steps:
    enable: true
    title: "保护Xlsx文件中的敏感数据"
    content: |
      GroupDocs.Redaction for Python via .NET使您的Python via .NET应用程序能够轻松保护文档。
      
      1. 初始化Redactor并加载Xlsx文档。
      2. 设置编辑参数以匹配您的任务。
      3. 定义要覆盖的图像部分并选择颜色。
      4. 应用编辑并保存最终文件。
   
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

        # 在XLSX中隐藏机密图像部分

        # 选择覆盖物的大小和颜色
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # 标记编辑区域
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # 使用Redactor加载文档
        with gr.Redactor("input.xslx") as redactor:

            # 应用更改并保存文件
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "在文档中编辑内容"
  description: "通过GroupDocs.Redaction for Python via .NET您可以在多种文档格式中隐藏或删除敏感数据。保持文档安全和专业。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "高效的编辑工具"
  features:
    # feature loop
    - title: "搜索和替换文本"
      content: "轻松找到私人文本并进行替换或隐藏。"

    # feature loop
    - title: "使用覆盖物覆盖图像"
      content: "隐藏完整图像或特定部分以保护敏感视觉内容。"

    # feature loop
    - title: "删除隐藏的元数据"
      content: "清除文件中的元数据以避免分享私人信息。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "用覆盖物遮蔽图像内容"
      content: |
        此指南展示了如何使用覆盖物保护文档中的敏感图像区域。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 定义覆盖物的大小、位置和颜色
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # 选择特定的图像区域
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # 打开文件以进行编辑
          with gr.Redactor("source.xslx") as redactor:

              # 应用覆盖物以隐藏该区域
              result = redactor.apply(redaction)

              # 保存已编辑的文档
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
    title: "使用Python在XLSX文件中隐藏内容"
    exclude: "XLSX"
    description: "使用Python在XLSX文件中编辑或删除敏感数据。理想的保护文件的工具。"
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