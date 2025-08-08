
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: ja
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#を使用してXLSXからプライベートテキストを削除する"
head_description: "GroupDocs.Redaction for .NETとC#を使用して、XLSXファイル内のプライベートコンテンツを迅速にクリーンアップします。迅速かつ簡単な赤act方法。"

############################# Header ############################
title: ".NETを使用してXLSX文書内の敏感なテキストを編集または隠す" 
description: "GroupDocs.Redaction for .NETとC#を使用すれば、プライベートまたはビジネス情報をXLSXファイルから削除し、安心して共有できます。"
subtitle: "GroupDocs.Redaction for .NETでできること" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NETとは？"
    link: "/redaction/net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NETは、C#開発者にXLSXファイルからセンシティブな情報を検索し削除するためのツールを提供します。テキスト、画像、ノート、ファイルデータのすべてを扱います。

############################# Steps ############################
steps:
    enable: true
    title: "Xlsxファイルのテキストを赤actする方法"
    content: |
      GroupDocs.Redaction for .NETを使用して.NETプロジェクト内で敏感な情報を隠すか削除できます。
      
      1. Redactorを作成して、Xlsxファイルを読み込みます。
      2. 必要な赤act設定を選択します。
      3. 見つけるテキストと何に置き換えるかを入力します。
      4. 赤actプロセスを実行し、更新されたファイルを保存します。
   
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
        // XLSXファイルからテキストを赤actする手順

        // Redactorを使用してファイルを開きます
        using (Redactor redactor  = new Redactor("input.xlsx"))
        {
            // 赤actオプションを選択します
            // 検索と置き換えに使うテキストを設定します
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // 赤actを適用し、クリーンなファイルを保存します
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "赤actツールのさらなる機能"
  description: "GroupDocs.Redaction for .NETは、テキスト、画像、メタデータなど、さまざまなコンテンツをクリーンにするのに役立ちますので、ファイルを安全に共有できます。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "赤actオプションの表示"
  features:
    # feature loop
    - title: "敏感なテキストを置き換える"
      content: "ファイル内の任意の場所で機密情報を検索し、置き換えます。正規表現や特定のパターンがサポートされています。"

    # feature loop
    - title: "画像領域を隠す"
      content: "オーバーレイを使用して視覚データを隠します。色や面積のサイズ、ページレイアウトを選択できます。"

    # feature loop
    - title: "余分なデータを削除する"
      content: "著者名、タイムスタンプ、内部ノートなどのメタデータを削除して情報漏洩を防ぎます。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "正規表現ルールで赤act"
      content: |
        電話番号、メールアドレス、またはその他の個人情報のパターンを検索し、クリーンアップします。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  開始するためにファイルを開きます
          using (Redactor redactor  = new Redactor("source.xlsx"))
          {
              // EMAILの正規表現ルールを書き、置き換え文字列を選択します
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // パターンに基づいて赤actを実行します
              redactor.Apply(redaction);

              // 赤actされたファイルを保存します
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
    title: ".NETを使用してXLSX内の情報を隠す"
    exclude: "XLSX"
    description: ".NETツールを使用して、XLSX文書内の個人または敏感なテキストを削除します。データをプライベートに保つことができます。"
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