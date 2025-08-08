
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: zh
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "通过 C# 编辑和删除 EXCEL 中的元数据"
head_description: "通过使用 GroupDocs.Redaction for .NET 移除元数据来保护您的 EXCEL 文档。消除可能危害隐私的隐藏数据。"

############################# Header ############################
title: "通过 .NET 保护 EXCEL 文件中的元数据" 
description: "使用 C#，您可以清理 EXCEL 文件中的敏感数据。工具旨在保护您的信息。"
subtitle: "GroupDocs.Redaction for .NET 的顶级好处" 

############################# About ############################
about:
    enable: true
    title: "什么是 GroupDocs.Redaction for .NET？"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction 为 C# 开发者提供一种可靠的方法来管理 EXCEL 文件中的审查。它适用于文本、图像和元数据。

############################# Steps ############################
steps:
    enable: true
    title: "清除 Excel 文件中的元数据"
    content: |
      在您的 .NET 项目中使用 GroupDocs.Redaction 安全处理文档元数据。
      
      1. 创建一个 Redactor 对象并加载目标 Excel 文件。
      2. 配置审查以清除隐藏元数据。
      3. 运行清理过程。
      4. 保存最终版本。
   
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
        // 从 EXCEL 中清除元数据

        // 初始化审查工具并加载文件
        using (Redactor redactor  = new Redactor("input.xlsx"))
        {
            // 为元数据设置移除选项
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // 审查并保存结果
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "擦除文件中的私人数据"
  description: "GroupDocs.Redaction for .NET 允许您清理多种格式中的文本、图像和元数据。非常适用于个人、法律和企业文档。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "元数据移除工具"
  features:
    # feature loop
    - title: "搜索并移除文本"
      content: "查找文档中的个人或机密文本并安全移除。"

    # feature loop
    - title: "隐藏视觉元素"
      content: "覆盖图像的敏感部分以防止查看。"

    # feature loop
    - title: "移除元数据"
      content: "擦除可能泄漏敏感信息的嵌入数据。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "定位元数据进行审查"
      content: |
        学习如何定位并移除 EXCEL 文档中的元数据，像作者或标题。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  将文档导入到审查工具
          using (Redactor redactor  = new Redactor("source.xlsx"))
          {
              // 定位作者元数据
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // 定位标题元数据
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // 应用更改
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // 保存更新的文档
              var saveOptions = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(saveOptions);
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "使用 .NET 在 EXCEL 中删除元数据"
    exclude: "EXCEL"
    description: "使用 .NET 清除 EXCEL 文件中的私人元数据。保持文档整洁和安全。"
    items: 
        # format loop 1
        - name: "红行动 PDF"
          format: "PDF"
          link: "/redaction/net/remove-sensitive-metadata//pdf/"
          description: "Adobe 便携式文档格式"

        # format loop 2
        - name: "红行动 Word"
          format: "WORD"
          link: "/redaction/net/remove-sensitive-metadata//word/"
          description: "MS Word 和 Open Office 文档"
          
        # format loop 3
        - name: "红行动 Excel"
          format: "EXCEL"
          link: "/redaction/net/remove-sensitive-metadata//excel/"
          description: "MS Excel 和 Open Office 电子表格"

        # format loop 4
        - name: "红行动 PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/remove-sensitive-metadata//powerpoint/"
          description: "MS PowerPoint 和 Open Office 演示文稿"

        # format loop 5
        - name: "红行动 图像"
          format: "IMAGE"
          link: "/redaction/net/remove-sensitive-metadata//image/"
          description: "常见图像格式"

        # format loop 6
        - name: "红行动 照片"
          format: "PHOTO"
          link: "/redaction/net/remove-sensitive-metadata//photo/"
          description: "照片格式"

        # format loop 7
        - name: "红行动 DOCX"
          format: "DOCX"
          link: "/redaction/net/remove-sensitive-metadata//docx/"
          description: "Microsoft Word 开放 XML 文档"
          
        # format loop 8
        - name: "红行动 XLSX"
          format: "XLSX"
          link: "/redaction/net/remove-sensitive-metadata//xlsx/"
          description: "Microsoft Excel 开放 XML 电子表格"
          
        # format loop 9
        - name: "红行动 PPTX"
          format: "PPTX"
          link: "/redaction/net/remove-sensitive-metadata//pptx/"
          description: "PowerPoint 开放 XML 演示文稿"

        # format loop 10
        - name: "红行动 JPEG"
          format: "JPEG"
          link: "/redaction/net/remove-sensitive-metadata//jpeg/"
          description: "JPEG 图像"


---