
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
head_title: "通过 C# 使用覆盖层隐藏 WORD 中的文本"
head_description: "GroupDocs.Redaction for .NET 使您能够轻松使用彩色方块覆盖 WORD 中的敏感文本。隐藏重要信息时保持文档不变。"

############################# Header ############################
title: "在 WORD 文件中使用 .NET 进行覆盖文本编辑" 
description: "使用 C# 编写的方形覆盖层保护 WORD 文件中的重要信息。非常适合安全和合规要求。"
subtitle: "看看 GroupDocs.Redaction for .NET 的功能" 

############################# About ############################
about:
    enable: true
    title: "了解 GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       与 C# 相关的开发人员可以使用 GroupDocs.Redaction for .NET 隐藏或删除 WORD 文档的部分内容。通过几行代码即可轻松隐藏姓名、数字或其他数据。

############################# Steps ############################
steps:
    enable: true
    title: "在 Word 文件中编辑私人数据"
    content: |
      GroupDocs.Redaction for .NET 帮助 .NET 开发人员快速删除敏感内容。按照以下步骤保护您的文件。
      
      1. 用您的 Word 文件路径初始化一个 Redactor。
      2. 设置编辑内容的规则。
      3. 选择文本模式和覆盖其的颜色。
      4. 应用编辑并保存您的文件。
   
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
        // 使用图像覆盖隐藏 WORD 中的文本

        // 使用 Redactor 加载您的文件
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // 定义需要编辑的内容
            // 添加匹配的文本和覆盖颜色
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 运行编辑并保存最终文件
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "额外的编辑工具"
  description: "使用 GroupDocs.Redaction for .NET 可以保持文件整洁，去除可见和隐形信息，同时保持布局完整。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "清晰安全的输出"
  features:
    # feature loop
    - title: "替换暴露的文本"
      content: "隐藏可能泄漏重要数据的词汇或短语。"

    # feature loop
    - title: "隐藏图像"
      content: "通过实心方块标记敏感视觉内容。"

    # feature loop
    - title: "擦除隐藏信息"
      content: "清除背景元数据，保护文件隐私。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "用正则表达式匹配文本"
      content: |
        此示例演示了如何使用正则表达式查找和覆盖敏感内容
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  打开要编辑的文档
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // 选择模式和颜色
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // 运行编辑规则
              redactor.Apply(redaction);

              // 保存并查看编辑后的副本
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "使用 .NET 保护您的 WORD 文件"
    exclude: "WORD"
    description: "通过 .NET 功能，您可以在 WORD 格式中隐藏文本或擦除元数据，而不会破坏布局或格式。"
    items: 
        # format loop 1
        - name: "红行动 PDF"
          format: "PDF"
          link: "/redaction/net/hide-text-with-image-overlay//pdf/"
          description: "Adobe 便携式文档格式"

        # format loop 2
        - name: "红行动 Word"
          format: "WORD"
          link: "/redaction/net/hide-text-with-image-overlay//word/"
          description: "MS Word 和 Open Office 文档"
          
        # format loop 3
        - name: "红行动 Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-text-with-image-overlay//excel/"
          description: "MS Excel 和 Open Office 电子表格"

        # format loop 4
        - name: "红行动 PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-text-with-image-overlay//powerpoint/"
          description: "MS PowerPoint 和 Open Office 演示文稿"

        # format loop 5
        - name: "红行动 DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-text-with-image-overlay//docx/"
          description: "Microsoft Word 开放 XML 文档"
          
        # format loop 6
        - name: "红行动 XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-text-with-image-overlay//xlsx/"
          description: "Microsoft Excel 开放 XML 电子表格"
          
        # format loop 7
        - name: "红行动 PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-text-with-image-overlay//pptx/"
          description: "PowerPoint 开放 XML 演示文稿"


---