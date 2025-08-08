
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: zh
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "使用 C# 从 PPTX 文件中擦除元数据"
head_description: "GroupDocs.Redaction for .NET 帮助您删除或编辑 PPTX 文件中的元数据。通过移除私人背景数据来保护您的文档。"

############################# Header ############################
title: "使用 .NET 工具从 PPTX 中删除元数据" 
description: "使用 C# 隐藏 PPTX 文件中的敏感元数据。非常适合商业和个人隐私。"
subtitle: "GroupDocs.Redaction for .NET 核心功能" 

############################# About ############################
about:
    enable: true
    title: "了解 GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction 是面向 C# 开发者的审查工具包，帮助您在 PPTX 文件中处理文本、图像和元数据的审查。

############################# Steps ############################
steps:
    enable: true
    title: "擦除 Pptx 文件中的隐藏元数据"
    content: |
      GroupDocs.Redaction 帮助您的 .NET 解决方案轻松清理隐藏数据。
      
      1. 创建一个 Redactor 实例并加载 Pptx 文件。
      2. 针对元数据字段配置审查规则。
      3. 应用审查以移除数据。
      4. 保存您的审查文件。
   
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
        // 在 PPTX 中删除元数据

        // 使用 Redactor 打开文件
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // 设置元数据清理审查
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // 应用并保存文件
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "为任何文件提供额外的审查工具"
  description: "GroupDocs.Redaction for .NET 支持在不同格式间进行内容审查。确保您的数据隐私，保持文件清洁。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "内置隐私工具"
  features:
    # feature loop
    - title: "查找并删除文本"
      content: "快速删除您文件中的个人文本条目。"

    # feature loop
    - title: "用覆盖层覆盖图像"
      content: "隐藏不应可见的图像区域。"

    # feature loop
    - title: "删除元数据"
      content: "清理可能包含隐私信息的隐藏字段。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "清理元数据字段"
      content: |
        本示例展示了如何安全清除 PPTX 文件中的元数据。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  导入您的 PPTX 文件
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // 对作者字段进行审查
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // 对标题字段进行审查
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // 运行审查过程
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // 导出审查后的文件
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
    title: "使用 .NET 清理 PPTX 文件中的元数据"
    exclude: "PPTX"
    description: "使用 .NET 从 PPTX 文件中轻松移除背景元数据。非常适合文档安全。"
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