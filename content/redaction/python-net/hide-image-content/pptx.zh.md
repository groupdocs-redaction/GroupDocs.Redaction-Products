
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: zh
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "使用Python在PPTX文件中用覆盖物遮蔽图像"
head_description: "使用GroupDocs.Redaction for Python via .NET通过彩色覆盖物遮盖PPTX文件中的敏感图像。保护重要数据的同时保持文档格式不变。"

############################# Header ############################
title: "使用Python保护PPTX文档中的私人图像" 
description: "使用Python在PPTX文件中保护敏感视觉内容。我们的工具使图像编辑简单快速。"
subtitle: "GroupDocs.Redaction for Python via .NET的功能" 

############################# About ############################
about:
    enable: true
    title: "关于GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET为Python开发者提供简单的工具来隐藏或删除PPTX文件中的内容。通过遮盖文本、图像和元数据来保护文档。

############################# Steps ############################
steps:
    enable: true
    title: "保护Pptx文件中的敏感数据"
    content: |
      GroupDocs.Redaction for Python via .NET帮助Python via .NET应用程序通过覆盖敏感内容来保护文档。
      
      1. 创建一个Redactor实例并加载Pptx文件。
      2. 根据任务设置编辑选项。
      3. 选择图像区域并分配覆盖物颜色。
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

        # 在PPTX中遮蔽私人图像区域

        # 设置覆盖物的颜色和大小
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # 标记要编辑的区域
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # 使用Redactor打开文档
        with gr.Redactor("input.pptx") as redactor:

            # 应用覆盖物并保存文件
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "文档编辑功能"
  description: "GroupDocs.Redaction for Python via .NET允许您在多种文件类型中隐藏或删除机密数据。保持文件安全并随时共享。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "全面的编辑工具"
  features:
    # feature loop
    - title: "搜索和替换文本"
      content: "查找敏感文本并进行编辑以保护您的信息。"

    # feature loop
    - title: "遮蔽图像区域"
      content: "使用覆盖物遮盖图像或特定部分，以隐藏私人视觉内容。"

    # feature loop
    - title: "清理元数据"
      content: "删除或修改隐藏的元数据，以防止意外数据泄露。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "用彩色覆盖物覆盖图像内容"
      content: |
        查看如何通过覆盖物遮蔽文档中的敏感图像部分。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 定义覆盖物属性：大小、位置、颜色
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

          # 加载文档
          with gr.Redactor("source.pptx") as redactor:

              # 覆盖选定区域
              result = redactor.apply(redaction)

              # 保存保护文档
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
    title: "使用Python在PPTX文件中遮蔽内容"
    exclude: "PPTX"
    description: "使用Python在PPTX文件中隐藏或删除私人内容。可靠的文档安全保护工具。"
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