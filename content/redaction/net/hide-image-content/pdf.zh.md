
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: zh
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "使用 C# 在 PDF 中隐藏图像并添加覆盖层"
head_description: "通过 GroupDocs.Redaction for .NET，您可以通过添加彩色覆盖层保护 PDF 文件中的敏感图像。在不改变文档布局的情况下，保护私人信息。"

############################# Header ############################
title: "使用 .NET 通过覆盖层保护 PDF 文档中的敏感图像" 
description: "使用 C# 保持 PDF 文件中的业务和个人数据安全。我们的工具帮助您实现强大的数据保护。"
subtitle: "GroupDocs.Redaction for .NET 功能" 

############################# About ############################
about:
    enable: true
    title: "关于 GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET 为 C# 开发人员提供强大的工具，用于隐藏或删除 PDF 文件中的内容。通过覆盖文本、图像和元数据，轻松保护文档在多种格式中的安全。

############################# Steps ############################
steps:
    enable: true
    title: "保护 Pdf 文档中的业务数据"
    content: |
      GroupDocs.Redaction for .NET：旨在帮助您的 .NET 应用程序保护文档。快速且有效地涂抹私人信息。
      
      1. 创建一个 Redactor 实例，并提供要保护的 Pdf 文件路径。
      2. 调整涂抹设置以获得所需的结果。
      3. 选择图像区域并设置覆盖层颜色。
      4. 处理文件并保存已涂抹的文档。
   
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
        // 在 PDF 中隐藏敏感图像内容

        // 使用 Redactor 构造函数加载文件
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // 配置覆盖层的颜色和大小
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // 选择待涂抹的区域
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // 对图像应用覆盖层并保存文件
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "在文档中涂抹内容"
  description: "使用 GroupDocs.Redaction for .NET，您可以在众多文件格式中隐藏或删除内容。在保持文档易于阅读和共享的同时，保护机密信息。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "高级涂抹功能"
  features:
    # feature loop
    - title: "随处编辑文本"
      content: "在文档中搜索并替换敏感文本，以确保私人数据安全。"

    # feature loop
    - title: "遮盖图像"
      content: "对整个图像或选定区域应用覆盖层，以隐藏敏感视觉内容。"

    # feature loop
    - title: "处理元数据"
      content: "删除或更改隐藏的元数据，防止意外的数据暴露。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用覆盖层隐藏图像数据"
      content: |
        此示例展示如何覆盖文档图像中的敏感信息。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  加载需要涂抹的文档
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // 设置覆盖层参数：大小、位置和颜色
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // 针对第一页的特定图像区域
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // 应用覆盖层以隐藏图像
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
    title: "使用 .NET 替换保护 PDF 内容"
    exclude: "PDF"
    description: "利用 .NET 隐藏或删除 PDF 文件中的敏感内容。这是保护正式文件及机密资料的有效解决方案。"
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