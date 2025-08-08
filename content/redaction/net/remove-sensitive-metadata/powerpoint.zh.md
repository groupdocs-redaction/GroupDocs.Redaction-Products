
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: zh
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "通过 C# 从 POWERPOINT 中清理元数据"
head_description: "使用 GroupDocs.Redaction for .NET 从 POWERPOINT 文件中删除不需要的元数据。通过擦除隐藏数据来保护您的隐私。"

############################# Header ############################
title: "通过 .NET 从 POWERPOINT 文件中擦除元数据" 
description: "使用专为 C# 设计的简单工具保护 POWERPOINT 文件中的文档数据。只需几个步骤即可移除元数据。"
subtitle: "GroupDocs.Redaction for .NET 的功能" 

############################# About ############################
about:
    enable: true
    title: "更多关于 GroupDocs.Redaction for .NET 的信息"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction 是为 C# 开发者打造的审查工具包，帮助您在 POWERPOINT 文件中处理文本、图像和元数据的审查。

############################# Steps ############################
steps:
    enable: true
    title: "从 Powerpoint 文档中清理元数据"
    content: |
      使用 GroupDocs.Redaction，您的 .NET 应用可以轻松地从文档中移除元数据。
      
      1. 启动 Redactor 对象并加载文件。
      2. 选择要移除的元数据字段。
      3. 应用审查设置。
      4. 导出最终的清理文档。
   
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
        // 去除 POWERPOINT 中的元数据

        // 用审查工具打开文档
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // 设置元数据清理选项
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // 应用审查并保存
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "通过审查保护文档"
  description: "GroupDocs.Redaction for .NET 帮助您从文档中移除隐蔽内容，以便安全共享。适用于多种格式和内容类型。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "审查能力"
  features:
    # feature loop
    - title: "删除私人文本"
      content: "找到敏感的词语或短语并将其删除。"

    # feature loop
    - title: "遮蔽图像数据"
      content: "使用覆盖层覆盖需要隐藏的图像区域。"

    # feature loop
    - title: "删除元数据"
      content: "清理可能包含隐藏信息的元数据字段。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "清除隐藏的元数据字段"
      content: |
        本示例指导您如何从 POWERPOINT 文件中删除嵌入的数据，例如作者和标题。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  将文件导入审查工具
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // 移除作者数据
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // 移除标题数据
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // 运行审查
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // 保存清理后的版本
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
    title: "使用 .NET 清理 POWERPOINT 文件中的元数据"
    exclude: "POWERPOINT"
    description: "使用 .NET 删除 POWERPOINT 文件中的隐藏数据。非常适合清理机密文档。"
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