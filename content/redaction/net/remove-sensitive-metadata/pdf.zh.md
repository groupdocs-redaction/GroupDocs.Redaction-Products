
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: zh
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "使用 C# 删除 PDF 中的元数据"
head_description: "借助 GroupDocs.Redaction for .NET，您可以移除或更新 PDF 文件中的元数据。清理可能暴露私人信息的隐藏数据。"

############################# Header ############################
title: "使用 .NET 清理 PDF 文件中的元数据" 
description: "使用 C# 保护 PDF 文件中的敏感商业和个人信息。可靠的数据保护工具，易于使用。"
subtitle: "GroupDocs.Redaction for .NET 的主要功能" 

############################# About ############################
about:
    enable: true
    title: "关于 GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction 为 C# 开发者提供易于使用的工具，以审查 PDF 文件中的内容。遮盖文本、图像和多种格式中的元数据。

############################# Steps ############################
steps:
    enable: true
    title: "从 Pdf 文档中删除元数据"
    content: |
      使用 GroupDocs.Redaction 快速保护您 .NET 应用中的文档元数据。
      
      1. 创建 Redactor 实例并加载您的 Pdf 文件。
      2. 设置审查以移除所有隐藏的元数据。
      3. 应用审查以清理文档。
      4. 保存更新后的文件。
   
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
        // 从 PDF 文件中擦除元数据

        // 使用 Redactor 加载文件
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // 配置元数据移除审查
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // 应用更改并保存文件
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "在文档中审查敏感数据"
  description: "GroupDocs.Redaction for .NET 帮助您在各种文件格式中隐藏或擦除机密内容。保护私人数据，同时保持文档清晰专业。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "强大的审查功能"
  features:
    # feature loop
    - title: "查找和替换文本"
      content: "搜索文档中的敏感文本，并替换或移除以保护隐私。"

    # feature loop
    - title: "隐藏图像内容"
      content: "对图像或特定区域添加覆盖层，以遮盖敏感视觉信息。"

    # feature loop
    - title: "清除元数据"
      content: "删除或编辑隐藏的元数据，以防止不必要的数据泄露。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "去除隐藏的元数据条目"
      content: |
        本示例展示了如何修改 PDF 文件中的元数据。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  将 PDF 文件加载到审查工具中
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // 设置对作者属性的审查
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // 设置对标题属性的审查
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // 对文档执行审查
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // 保存清理后的文件
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
    title: "使用 .NET 元数据审查保护 PDF 文件"
    exclude: "PDF"
    description: "使用 .NET 从 PDF 文件中擦除隐藏数据。简单有效的方法来保护文档中的敏感信息。"
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