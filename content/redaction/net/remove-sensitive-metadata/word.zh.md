
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: zh
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "使用 C# 删除 WORD 中的元数据"
head_description: "使用 GroupDocs.Redaction for .NET 查找并删除 WORD 文件中的隐藏元数据。保持文档私密，安全，不受不必要曝光的影响。"

############################# Header ############################
title: "使用 .NET 删除 WORD 文件中的元数据" 
description: "使用 C# 保护 WORD 文件中的个人和企业数据。简单的工具用于可靠的文件隐私。"
subtitle: "您可以使用 GroupDocs.Redaction for .NET 做什么" 

############################# About ############################
about:
    enable: true
    title: "关于 GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction 帮助 C# 开发者保护 WORD 文件中的内容。快速和轻松地清理文本、图像和元数据。

############################# Steps ############################
steps:
    enable: true
    title: "从 Word 文件中删除元数据"
    content: |
      使用 GroupDocs.Redaction，在您的 .NET 环境中轻松清理文档元数据。
      
      1. 初始化一个 Redactor 对象并打开您的 Word 文档。
      2. 设置规则以清除所有隐藏元数据。
      3. 运行审查以移除敏感标签。
      4. 保存清理后的文档。
   
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
        // 从 WORD 文件中擦除元数据

        // 使用 Redactor 打开文档
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // 设置元数据移除选项
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // 审查并保存清理后的文件
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "从文档中审查机密数据"
  description: "借助 GroupDocs.Redaction for .NET，您可以删除各种格式中的私人内容。保持文件安全，同时保持其结构。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "元数据与内容审查工具"
  features:
    # feature loop
    - title: "替换敏感文本"
      content: "在文档中查找文字并安全地删除或更改，以保护私人信息。"

    # feature loop
    - title: "遮蔽图像"
      content: "使用覆盖层遮挡图像的敏感区域。"

    # feature loop
    - title: "清除元数据"
      content: "查找并清除隐藏数据，避免泄露信息。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "编辑或删除隐藏的元数据"
      content: |
        本示例展示了如何在 WORD 文档中定位并清理元数据条目。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  加载文件以进行审查
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // 移除作者元数据
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // 移除标题元数据
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // 执行审查过程
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // 导出清理后的文档
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
    title: "使用 .NET 在 WORD 中进行元数据审查"
    exclude: "WORD"
    description: "使用 .NET 清理 WORD 文件中的隐藏元数据。简单的工具使敏感信息保持安全。"
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