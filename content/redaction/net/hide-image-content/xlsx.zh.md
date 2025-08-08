
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: zh
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "在 XLSX 文件中使用 C# 遮罩图像"
head_description: "通过使用 GroupDocs.Redaction for .NET，您可以通过添加彩色覆盖层来遮罩 XLSX 文件中的敏感图像内容。在保持文档结构不变的情况下保护重要数据。"

############################# Header ############################
title: "使用 .NET 在 XLSX 文档中遮罩敏感图像" 
description: "使用 C# 确保 XLSX 文件中的数据隐私。我们的工具旨在使图像涂抹快速有效。"
subtitle: "GroupDocs.Redaction for .NET 关键特性" 

############################# About ############################
about:
    enable: true
    title: "关于 GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET 为 C# 开发人员提供简单的工具，用于隐藏或删除 XLSX 文件中的内容。通过在不同格式中覆盖文本、图像和元数据来保护文档。

############################# Steps ############################
steps:
    enable: true
    title: "在 Xlsx 文档中保护私人数据"
    content: |
      GroupDocs.Redaction for .NET：帮助您的 .NET 应用程序高效保护文档。
      
      1. 创建一个 Redactor 实例并加载 Xlsx 文件。
      2. 设置涂抹参数以满足您的需求。
      3. 定义图像区域并选择覆盖层颜色。
      4. 应用涂抹并保存输出文件。
   
    code:
      platform: "net"
      copy_title: "复制"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "样本删除内容"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "点击复制"
        copy_done: "已复制"
      links:
        #  loop
        - title: "更多示例"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "文档"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // 在 XLSX 中遮罩敏感图像部分

        // 初始化 Redactor，并提供文件路径
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // 选择覆盖层大小和颜色
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // 标记要涂抹的区域
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // 应用并保存更改
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "文档涂抹功能"
  description: "使用 GroupDocs.Redaction for .NET，您可以在多种文件格式中删除或隐藏内容。在保持干净布局的同时，保护敏感数据。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "强大的涂抹功能"
  features:
    # feature loop
    - title: "搜索并替换文本"
      content: "快速查找并涂抹机密文本，以保护敏感数据。"

    # feature loop
    - title: "遮罩图像内容"
      content: "对整个图像或特定区域施加覆盖层，以隐藏私人视觉信息。"

    # feature loop
    - title: "清理元数据"
      content: "删除或调整隐藏元数据以防止意外数据暴露。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用覆盖层隐藏图像内容"
      content: |
        学习如何在文档中遮罩敏感图像区域。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  打开要涂抹的文档
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // 定义覆盖层属性：大小、位置、颜色
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // 聚焦于特定图像区域
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // 对图像区域应用覆盖
              redactor.Apply(redaction);

              // 保存已涂抹的文档
              var save_options = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_options);
          }
          ```
        platform: "net"
        copy_title: "复制"
        install:
          command: "dotnet add package GroupDocs.Redaction"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "文档"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "准备好开始了吗？"
  description: "免费尝试 GroupDocs.Redaction 的功能或请求许可证"
  items:
    #  loop
    - title: "Nuget 下载"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "许可证"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "使用 .NET 涂抹保护 XLSX 内容"
    exclude: "XLSX"
    description: "利用 .NET 涉及在 XLSX 文件中替代或删除敏感内容。这是保护业务和个人文档的实用解决方案。"
    items: 
        # format loop 1
        - name: "红行动 PDF"
          format: "PDF"
          link: "/redaction/net/hide-image-content//pdf/"
          description: "Adobe 便携式文档格式"

        # format loop 2
        - name: "红行动 Word"
          format: "WORD"
          link: "/redaction/net/hide-image-content//word/"
          description: "MS Word 和 Open Office 文档"
          
        # format loop 3
        - name: "红行动 Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-image-content//excel/"
          description: "MS Excel 和 Open Office 电子表格"

        # format loop 4
        - name: "红行动 PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-image-content//powerpoint/"
          description: "MS PowerPoint 和 Open Office 演示文稿"

        # format loop 5
        - name: "红行动 图像"
          format: "IMAGE"
          link: "/redaction/net/hide-image-content//image/"
          description: "常见图像格式"

        # format loop 6
        - name: "红行动 照片"
          format: "PHOTO"
          link: "/redaction/net/hide-image-content//photo/"
          description: "照片格式"

        # format loop 7
        - name: "红行动 DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-image-content//docx/"
          description: "Microsoft Word 开放 XML 文档"
          
        # format loop 8
        - name: "红行动 XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-image-content//xlsx/"
          description: "Microsoft Excel 开放 XML 电子表格"
          
        # format loop 9
        - name: "红行动 PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-image-content//pptx/"
          description: "PowerPoint 开放 XML 演示文稿"

        # format loop 10
        - name: "红行动 JPEG"
          format: "JPEG"
          link: "/redaction/net/hide-image-content//jpeg/"
          description: "JPEG 图像"


---