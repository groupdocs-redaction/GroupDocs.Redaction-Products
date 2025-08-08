
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: ja
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#でPDF内の敏感なテキストを赤act"
head_description: "GroupDocs.Redaction for .NETを使用して、PDFファイル内の個人情報を保護します。敏感なデータを迅速に検索し、赤actします。"

############################# Header ############################
title: ".NETを使用してPDF文書から敏感なテキストを削除する" 
description: "C#とGroupDocs.Redaction for .NETを使って、PDFファイル内のコンテンツを完全に管理できます。個人情報、法的データ、または機密データを赤actします。"
subtitle: "GroupDocs.Redaction for .NETでできること" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NETとは？"
    link: "/redaction/net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NETは、C#開発者にPDFコンテンツを赤actするために必要なすべてのツールを提供します。人気のファイルタイプ内のテキスト、画像、注釈、コメント、およびメタデータをクリーンアップします。

############################# Steps ############################
steps:
    enable: true
    title: "Pdfファイルのコンテンツを赤actする方法"
    content: |
      GroupDocs.Redaction for .NETを使用して、すべての.NETアプリ内で文書を保護します。敏感なテキストを迅速かつ正確に赤actします。
      
      1. Redactorを初期化し、Pdfファイルを読み込みます。
      2. 必要な赤actionオプションを設定します。
      3. 検索するテキストと置き換えテキストを指定します。
      4. 赤actを実行し、ファイルを保存します。
   
    code:
      platform: "net"
      copy_title: "コピー"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "サンプルのマスキング"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "クリックしてコピー"
        copy_done: "コピーしました"
      links:
        #  loop
        - title: "さらに多くの例"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "ドキュメンテーション"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // PDFファイル内のテキストを赤actする方法

        // Redactorコンストラクタを用いてファイルを読み込みます
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // 赤actの設定を適用します
            // 検索する内容と置き換える内容を選択します
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // 赤actを適用し、新しいPDFファイルを保存します
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "文書を赤actするその他の方法"
  description: "GroupDocs.Redaction for .NETは、複数のファイルフォーマットで敏感なコンテンツを削除または隠すのに役立ちます。文書をクリーンで安全に保ち、共有できます。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "赤actツールとオプション"
  features:
    # feature loop
    - title: "機密テキストを置き換える"
      content: "ファイル内のどこでも一致するテキストを見つけて置き換えます。正規表現やスマート検索オプションをサポートしています。"

    # feature loop
    - title: "敏感な画像を隠す"
      content: "画像や特定の領域をオーバーレイでカバーします。ページ設定、色などを調整します。"

    # feature loop
    - title: "隠しメタデータをクリーンにする"
      content: "著作権、タイムスタンプ、コメントなどの隠れたデータを削除してプライバシーを保護します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "正規表現を使用したテキストの赤act"
      content: |
        メールアドレスやIDのような敏感なテキストパターンを検索し、赤actするために正規表現を使用します。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  クリーンにしたい文書を開きます
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // EMAILの正規表現パターンを定義し、置き換えとして使用するテキストを設定します
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // 赤actルールを適用します
              redactor.Apply(redaction);

              // 最終的な赤actされたファイルを保存します
              var save_opt = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_opt);
          }
          ```
        platform: "net"
        copy_title: "コピー"
        install:
          command: "dotnet add package GroupDocs.Redaction"
          copy_tip: "クリックしてコピー"
          copy_done: "コピーしました"
        top_links:
          #  loop
          - title: "結果をダウンロード"
            icon: "download"
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
        links:
          #  loop
          - title: "さらに多くの例"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "ドキュメンテーション"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "始める準備はできましたか？"
  description: "GroupDocs.Redactionの機能を無料で試すか、ライセンスをリクエストしてください"
  items:
    #  loop
    - title: "Nugetをダウンロード"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "ライセンス"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: ".NETを使用してPDF内のコンテンツを赤actする"
    exclude: "PDF"
    description: ".NETのツールを使用してPDFファイル内のテキストを赤actすることにより、公式情報や個人データを保護します。文書を安全でプライベートに保ちます。"
    items: 
        # format loop 1
        - name: "PDFのマスキング"
          format: "PDF"
          link: "/redaction/net/replace-sensitive-text//pdf/"
          description: "Adobeポータブル文書形式"

        # format loop 2
        - name: "Wordのマスキング"
          format: "WORD"
          link: "/redaction/net/replace-sensitive-text//word/"
          description: "MS WordおよびOpen Officeの文書"
          
        # format loop 3
        - name: "Excelのマスキング"
          format: "EXCEL"
          link: "/redaction/net/replace-sensitive-text//excel/"
          description: "MS ExcelおよびOpen Officeのスプレッドシート"

        # format loop 4
        - name: "PowerPointのマスキング"
          format: "POWERPOINT"
          link: "/redaction/net/replace-sensitive-text//powerpoint/"
          description: "MS PowerPointおよびOpen Officeのプレゼンテーション"

        # format loop 5
        - name: "DOCXのマスキング"
          format: "DOCX"
          link: "/redaction/net/replace-sensitive-text//docx/"
          description: "Microsoft WordオープンXMLドキュメント"
          
        # format loop 6
        - name: "XLSXのマスキング"
          format: "XLSX"
          link: "/redaction/net/replace-sensitive-text//xlsx/"
          description: "Microsoft ExcelオープンXMLスプレッドシート"
          
        # format loop 7
        - name: "PPTXのマスキング"
          format: "PPTX"
          link: "/redaction/net/replace-sensitive-text//pptx/"
          description: "PowerPointオープンXMLプレゼンテーション"


---