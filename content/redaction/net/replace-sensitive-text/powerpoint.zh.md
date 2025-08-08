
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: zh
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "使用 C# 从 POWERPOINT 中删除私密文本"
head_description: "使用 GroupDocs.Redaction for .NET 和 C# 保持您的 POWERPOINT 文件私密。快速简单的文本红action。"

############################# Header ############################
title: "使用 .NET 查找并删除 POWERPOINT 文件中的敏感文本" 
description: "使用 C# 和 GroupDocs.Redaction for .NET 保护您的个人或工作文件。您的私密信息保持隐蔽。"
subtitle: "GroupDocs.Redaction for .NET 的主要特性" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET 是什么？"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET 为 C# 用户提供了清理 POWERPOINT 文档所需的工具。删除文本、图像、注释和背景数据。

############################# Steps ############################
steps:
    enable: true
    title: "如何删除 Powerpoint 文件"
    content: |
      通过 GroupDocs.Redaction for .NET，在 .NET 应用中快速查找和替换私密内容。
      
      1. 创建一个 Redactor 并打开您的 Powerpoint 文件。
      2. 选择您的红action设置。
      3. 告诉它要搜索什么以及要使用什么文本作为替换。
      4. 开始红action，并保存您更新的文件。
   
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
        // 在 POWERPOINT 文档中删除内容的步骤

        // 使用 Redactor 打开文件
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // 调整您的红action设置
            // 选择要搜索的内容和替换内容
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // 运行红action并保存您新的 POWERPOINT 文件
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "更多红action工具"
  description: "GroupDocs.Redaction for .NET 为您提供了多种在多种文件类型中隐藏或擦除私人信息的强大方法。非常适合安全共享。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "可用的红action 工具和设置"
  features:
    # feature loop
    - title: "替换私人文本"
      content: "搜索并用智能文本选项替换确切匹配，包括支持正则表达式。"

    # feature loop
    - title: "隐藏私人图片"
      content: "遮盖整张图片或页面的部分内容。您可以调整覆盖颜色和大小。"

    # feature loop
    - title: "擦除隐藏的元数据"
      content: "删除如作者姓名、编辑历史和评论等信息，以保护您的身份。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用正则表达式进行更智能的红action"
      content: |
        使用正则表达式查找并移除电子邮件或身份证号等数据模式。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  打开您想要清理的文件
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // 设置一个电子邮件正则表达式模式并选择替换文本
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // 运行红action过程
              redactor.Apply(redaction);

              // 保存您的最终红action 文件
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
    title: "如何用 .NET 删除 POWERPOINT"
    exclude: "POWERPOINT"
    description: "使用 .NET 清理 POWERPOINT 文件。保持您的内容私密，并确保数据不会泄漏。"
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