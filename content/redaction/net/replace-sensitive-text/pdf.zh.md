
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: zh
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "使用 C# 在 PDF 中删除敏感文本"
head_description: "使用 GroupDocs.Redaction for .NET 保护您的 PDF 文件中的私密信息。快速搜索并删除敏感数据。"

############################# Header ############################
title: "使用 .NET 从 PDF 文档中删除敏感文本" 
description: "使用 C# 和 GroupDocs.Redaction for .NET 完全掌控您 PDF 文件中的内容。删除个人、法律或机密数据。"
subtitle: "您可以使用 GroupDocs.Redaction for .NET 做些什么" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET 是什么？"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET 为 C# 开发者提供了删除 PDF 内容所需的一切。清理流行文件类型中的文本、图像、注释、评论和元数据。

############################# Steps ############################
steps:
    enable: true
    title: "如何在 Pdf 文件中删除内容"
    content: |
      使用 GroupDocs.Redaction for .NET 在任何 .NET 应用程序中保护您的文档。快速且准确地删除敏感文本。
      
      1. 初始化一个 Redactor 并加载您的 Pdf 文件。
      2. 设置所需的红action选项。
      3. 指定搜索文本及替换文本。
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
        // 如何在 PDF 文件中删除文本

        // 使用 Redactor 构造函数加载您的文件
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // 设置您的红action首选项
            // 选择要搜索的内容和替换内容
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // 应用红action并保存新的 PDF 文件
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "更多文档红action方式"
  description: "GroupDocs.Redaction for .NET 帮助在多种文件格式中删除或隐藏敏感内容。保持文档干净，安全共享。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "红action 工具和选项"
  features:
    # feature loop
    - title: "替换机密文本"
      content: "查找并替换文件中的匹配文本。支持正则表达式和智能搜索选项。"

    # feature loop
    - title: "隐藏敏感图片"
      content: "用覆盖层覆盖图像或特定区域。调整页面设置、颜色等。"

    # feature loop
    - title: "清理隐藏的元数据"
      content: "删除诸如作者、时间戳或评论等隐藏数据以保护隐私。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用正则表达式删除文本"
      content: |
        使用正则表达式搜索并删除敏感文本模式，如电子邮件或身份证号。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  打开您想要清理的文档
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // 定义一个电子邮件正则表达式模式和替换文本
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // 应用红action规则
              redactor.Apply(redaction);

              // 保存最终的删除文件
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
    title: "使用 .NET 在 PDF 中删除内容"
    exclude: "PDF"
    description: "通过在 PDF 文件中删除文本来保护官方和个人数据，使用 .NET 工具。保持文档安全和私密。"
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