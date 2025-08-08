
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: zh
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "使用Python在IMAGE中覆盖图像"
head_description: "通过GroupDocs.Redaction for Python via .NET使用彩色覆盖物隐蔽敏感图像内容在IMAGE文件中。保护您的文件的原始布局，同时确保重要的视觉数据安全。"

############################# Header ############################
title: "使用Python覆盖IMAGE文件中的敏感图像" 
description: "使用Python保护IMAGE文件中的个人和商业图像数据。简单的工具实现快速有效的保护。"
subtitle: "您需要的GroupDocs.Redaction for Python via .NET功能" 

############################# About ############################
about:
    enable: true
    title: "了解GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET为Python开发者提供工具用于隐藏或删除IMAGE文件中的内容。通过遮盖文本、图像和元数据来有效保护您的文档。

############################# Steps ############################
steps:
    enable: true
    title: "在Image文件中遮盖私人内容"
    content: |
      GroupDocs.Redaction for Python via .NET使在您的Python via .NET应用程序中隐藏敏感数据变得简单。
      
      1. 初始化一个Redactor并指向您的Image文件。
      2. 根据需要配置编辑设置。
      3. 选择图像部分并定义覆盖物颜色。
      4. 处理文件并保存编辑版本。
   
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

        # 在IMAGE中隐藏图像内容

        # 指定覆盖物的大小和颜色
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # 选择要隐藏的区域
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # 使用Redactor加载文件
        with gr.Redactor("input.png") as redactor:

            # 应用覆盖物并保存文件
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "跨文档类型保护数据"
  description: "GroupDocs.Redaction for Python via .NET允许您在不同文件格式中隐藏或删除敏感内容。确保您的文档整洁、安全、易于分享。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "控制每个编辑的工具"
  features:
    # feature loop
    - title: "搜索和替换敏感文本"
      content: "扫描文档并替换私人文本以保护数据安全。"

    # feature loop
    - title: "使用覆盖物隐藏图像"
      content: "添加彩色覆盖物以隐藏图像或其特定部分。"

    # feature loop
    - title: "删除元数据"
      content: "删除或编辑隐藏元数据，以确保没有私人数据泄漏。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用覆盖物隐藏图像内容"
      content: |
        本示例展示了如何通过覆盖物保护文档中的敏感图像数据。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 设置覆盖的尺寸、颜色和位置
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

          # 打开待编辑的文件
          with gr.Redactor("source.png") as redactor:

              # 应用覆盖物以遮盖图像内容
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
    title: "使用Python在IMAGE文件中保护内容"
    exclude: "IMAGE"
    description: "通过Python，您可以在IMAGE文件中隐藏或删除敏感信息。可靠的方式确保文档安全和专业。"
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