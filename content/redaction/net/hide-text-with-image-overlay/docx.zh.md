
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: zh
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "使用覆盖层和 C# 隐藏 DOCX 中的敏感文本"
head_description: "使用 GroupDocs.Redaction for .NET 通过简单的方形覆盖层保护 DOCX 文件中的私密文本。保持文档布局不变，并隐藏您的数据。"

############################# Header ############################
title: "使用 .NET 的覆盖层遮盖 DOCX 中的文本" 
description: "使用 C# 代码在 DOCX 文档中隐藏敏感内容。适用于法律、商业或个人文档保护。"
subtitle: "GroupDocs.Redaction for .NET 功能" 

############################# About ############################
about:
    enable: true
    title: "什么是 GroupDocs.Redaction for .NET？"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET 帮助 C# 开发人员在 DOCX 文件中隐藏或擦除私密内容。使用它来屏蔽不同文件格式中的文本、图像和元数据。

############################# Steps ############################
steps:
    enable: true
    title: "从 Docx 文档中删除私人数据"
    content: |
      GroupDocs.Redaction for .NET 帮助 .NET 开发人员仅需几行代码即可清理文档。
      
      1. 创建一个 Redactor 并提供您的文件路径。
      2. 定义编辑应如何工作。
      3. 输入要隐藏的文本并选择覆盖颜色。
      4. 编辑文件并保存。
   
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
        // 使用覆盖块隐藏 DOCX 中的文本

        // 创建一个 Redactor 并加载文件
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // 设置您的编辑偏好
            // 输入要隐藏的文本并设置块的颜色
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 编辑并保存更新的文档
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "清理文档的其他方法"
  description: "使用 GroupDocs.Redaction for .NET，编辑不同的文件类型以保持内容安全和专业。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "内置智能编辑"
  features:
    # feature loop
    - title: "编辑或删除文本"
      content: "查找特定短语并隐藏或替换它们。"

    # feature loop
    - title: "隐藏图像区域"
      content: "覆盖图片或扫描页面中的敏感位置。"

    # feature loop
    - title: "擦除隐藏的元数据"
      content: "删除可能暴露用户或系统数据的隐形信息。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "用于编辑内容的正则表达式"
      content: |
        看看正则表达式如何找到并隐藏敏感单词
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  打开目标文件
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // 设置模式和颜色
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // 应用编辑逻辑
              redactor.Apply(redaction);

              // 导出编辑过的文档
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
    title: "使用 .NET 隐藏 DOCX 中的内容"
    exclude: "DOCX"
    description: "通过使用 .NET 工具保护 DOCX 文档中的敏感数据，覆盖或完全删除其内容。"
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