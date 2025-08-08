
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: zh
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "使用 C# 从 PPTX 中删除私密文本"
head_description: "使用 GroupDocs.Redaction for .NET 和 C# 快速隐藏您的 PPTX 演示文稿中的私密内容。快速的红action，简单的设置。"

############################# Header ############################
title: "使用 .NET 编辑或隐藏 PPTX 文件中的敏感文本" 
description: "保持您的演示文稿整洁和私密。使用 GroupDocs.Redaction for .NET 和 C# 移除您不想共享的内容。"
subtitle: "您可以使用 GroupDocs.Redaction for .NET 做些什么" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET 是什么？"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET 为 C# 开发者提供了移除 PPTX 文件中敏感内容所需的工具。可以处理文本、视觉、评论和元数据。

############################# Steps ############################
steps:
    enable: true
    title: "清理 Pptx 演示文稿的步骤"
    content: |
      在您的 .NET 应用中使用 GroupDocs.Redaction for .NET 仅需几个步骤即可删除或遮盖敏感内容。
      
      1. 创建一个新的 Redactor 并加载您的 Pptx 文件。
      2. 选择您想要应用的红action规则。
      3. 设置要查找的文本及替换文本。
      4. 运行红action并保存文件。
   
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
        // 在 PPTX 演示文稿中删除文本

        // 与 Redactor 打开文件
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // 选择红action设置
            // 选择要搜索和替换的文本
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // 应用更改并保存更新后的文件
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "您可以使用的红action特性"
  description: "GroupDocs.Redaction for .NET 帮助您查找并隐藏敏感文本、图像和隐藏数据，支持多种文件类型。对于安全共享文件非常理想。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "可用的红action 选项"
  features:
    # feature loop
    - title: "替换隐藏文本"
      content: "搜索并替换文件中任何机密内容。也支持正则表达式。"

    # feature loop
    - title: "覆盖图片"
      content: "使用块隐藏图片或您想要遮蔽的区域。控制形状、大小和颜色。"

    # feature loop
    - title: "删除隐藏细节"
      content: "清理元数据，例如作者姓名、最后编辑日期或评论，以确保您的文件整洁。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用正则表达式删除"
      content: |
        使用正则表达式找到并清理电子邮件地址或身份证号等数据。非常适合可重复的红action。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  打开文件
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // 编写一个电子邮件正则表达式并设置替换项
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // 应用您的红action设置
              redactor.Apply(redaction);

              // 保存红action 版本
              var save_opt = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_opt);
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "使用 .NET 清理 PPTX 文件"
    exclude: "PPTX"
    description: "通过使用 .NET 隐藏 PPTX 文件中的私密文本，使其更安全地共享。快速、可靠的结果。"
    items: 
        # format loop 1
        - name: "红行动 PDF"
          format: "PDF"
          link: "/redaction/net/replace-sensitive-text//pdf/"
          description: "Adobe 便携式文档格式"

        # format loop 2
        - name: "红行动 Word"
          format: "WORD"
          link: "/redaction/net/replace-sensitive-text//word/"
          description: "MS Word 和 Open Office 文档"
          
        # format loop 3
        - name: "红行动 Excel"
          format: "EXCEL"
          link: "/redaction/net/replace-sensitive-text//excel/"
          description: "MS Excel 和 Open Office 电子表格"

        # format loop 4
        - name: "红行动 PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/replace-sensitive-text//powerpoint/"
          description: "MS PowerPoint 和 Open Office 演示文稿"

        # format loop 5
        - name: "红行动 DOCX"
          format: "DOCX"
          link: "/redaction/net/replace-sensitive-text//docx/"
          description: "Microsoft Word 开放 XML 文档"
          
        # format loop 6
        - name: "红行动 XLSX"
          format: "XLSX"
          link: "/redaction/net/replace-sensitive-text//xlsx/"
          description: "Microsoft Excel 开放 XML 电子表格"
          
        # format loop 7
        - name: "红行动 PPTX"
          format: "PPTX"
          link: "/redaction/net/replace-sensitive-text//pptx/"
          description: "PowerPoint 开放 XML 演示文稿"


---