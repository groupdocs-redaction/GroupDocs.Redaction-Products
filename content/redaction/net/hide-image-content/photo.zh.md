
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: zh
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "使用 C# 添加覆盖层以隐藏 PHOTO 中的图像"
head_description: "使用 GroupDocs.Redaction for .NET 通过应用覆盖层来隐藏 PHOTO 文件中的敏感图像内容。保护私人数据，同时保持文档的布局不变。"

############################# Header ############################
title: "使用 .NET 在 PHOTO 文件中隐藏图像内容" 
description: "利用 C# 保护 PHOTO 文件中的个人和商业图像。使用易于操作的工具有效保护内容。"
subtitle: "GroupDocs.Redaction for .NET 主要功能" 

############################# About ############################
about:
    enable: true
    title: "关于 GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET 为 C# 开发人员提供强大的工具，以在 PHOTO 文件中隐藏或删除内容。通过快速涂抹文本、图像和元数据，保护文档安全。

############################# Steps ############################
steps:
    enable: true
    title: "保护 Photo 文件中的内容"
    content: |
      GroupDocs.Redaction for .NET 使您能够快速且简单地在 .NET 应用程序中保护内容。
      
      1. 创建一个 Redactor 对象并指向 Photo 文件。
      2. 根据需要调整涂抹设置。
      3. 选择图像区域并设置覆盖层颜色。
      4. 运行涂抹并保存已保护的文件。
   
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
        // 对 PHOTO 中的图像应用覆盖层

        // 使用 Redactor 加载文件
        using (Redactor redactor  = new Redactor("input.jpeg"))
        {
            // 配置覆盖层的大小和颜色
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // 选择要隐藏的图像区域
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // 应用覆盖层并保存更改
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "轻松涂抹敏感内容"
  description: "GroupDocs.Redaction for .NET 帮助您在多种文件类型中隐藏或删除敏感内容。在保持文档整洁且易于阅读的同时保护私人数据。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "全面的涂抹工具"
  features:
    # feature loop
    - title: "在文档中编辑文本"
      content: "搜索并替换文档中的私人文本，以确保敏感信息的安全。"

    # feature loop
    - title: "隐藏图像区域"
      content: "为图像或选定部分添加覆盖层，以遮掩敏感视觉信息。"

    # feature loop
    - title: "清除元数据"
      content: "删除隐藏的元数据，以避免无意数据泄露。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "用覆盖层隐藏图像数据"
      content: |
        此代码示例展示如何通过覆盖层遮盖文件中的图像区域。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  加载文件以进行编辑
          using (Redactor redactor  = new Redactor("source.jpeg"))
          {
              // 设置覆盖层的位置、尺寸和颜色
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // 专注于第一页的特定图像区域
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // 应用覆盖层以隐藏图像
              redactor.Apply(redaction);

              // 保存已替换的文件
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
    title: "使用 .NET 替换保护 PHOTO 内容"
    exclude: "PHOTO"
    description: "利用 .NET 隐藏或删除 PHOTO 文件中的私人内容。确保文档安全性和可靠性的简易解决方案。"
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