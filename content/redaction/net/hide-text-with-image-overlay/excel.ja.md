
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ja
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#を使用したオーバーレッド赤色処理でEXCEL内のコンテンツを隠す"
head_description: "GroupDocs.Redaction for .NETを使用して、ファイル内のテキストをオーバーレイで35272836.c41e5bdb4b81b7fcb178f280d102c30e59e7c00a932156f6bed60dc13e82e38a隠します。"

############################# Header ############################
title: ".NETのEXCELファイルのオーバーレッド赤色処理" 
description: "C#コードを使用して、EXCELファイル内のテキストを隠し、データを保護します。文書の安全性を確保するためのクリーンなソリューションです。"
subtitle: "GroupDocs.Redaction for .NETの詳細" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NETを選ぶ理由"
    link: "/redaction/net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NETは、C#開発者向けに設計され、EXCELファイル内のコンテンツを赤色処理または削除できます。テキスト、メタデータ、画像で作業するためにそれを使用してください。

############################# Steps ############################
steps:
    enable: true
    title: "Excel形式内の機密情報を赤色処理"
    content: |
      GroupDocs.Redaction for .NETは、.NETの開発者が共有前に文書をクリーンに保つためのシンプルなツールです。
      
      1. Redactorを開始し、Excelファイルをロードします。
      2. タスクのために赤色処理の設定を決定します。
      3. 赤色処理するキーワードまたはフレーズを追加し、色を選択します。
      4. ツールを実行し、変更を保存します。
   
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
        // EXCEL内のテキストを隠すためにオーバーレイを使用する

        // Redactorを作成し、ファイルを読み込みます
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // 赤色処理のルールを選択します
            // 隠すテキストを入力し、色を選択します
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 赤色処理を適用し、ファイルを保存します
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "データ保護のための重要な機能"
  description: "GroupDocs.Redaction for .NETを使用すると、レイアウトや意味を失うことなく文書内のデータを隠したり削除したりできます。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "文書の安全性を高めるために作られました"
  features:
    # feature loop
    - title: "テキストコンテンツを変更"
      content: "選択した単語をファイル全体にわたって交換したり隠したりします。"

    # feature loop
    - title: "ビジュアルを赤色処理"
      content: "簡単なブロックで写真やエリアを隠します。"

    # feature loop
    - title: "メタデータを消去"
      content: "作者の名前やタイムスタンプなどのバックグラウンドデータを削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "テキスト赤色処理にregexを使用"
      content: |
        ファイル内のコンテンツを見つけて隠すために正規表現を使用する方法を示します
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  処理する文書を読み込みます
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // パターンとオーバーレイの設定を追加します
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // 変更を適用します
              redactor.Apply(redaction);

              // 赤色処理された文書を保存し、閉じます
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: ".NETを使用してEXCELファイルを赤色処理"
    exclude: "EXCEL"
    description: ".NETの機能を使用して、EXCEL内の機密コンテンツをオーバーレイで覆ったり、完全に赤色処理したりします。"
    items: 
        # format loop 1
        - name: "PDFのマスキング"
          format: "PDF"
          link: "/redaction/net/hide-text-with-image-overlay//pdf/"
          description: "Adobeポータブル文書形式"

        # format loop 2
        - name: "Wordのマスキング"
          format: "WORD"
          link: "/redaction/net/hide-text-with-image-overlay//word/"
          description: "MS WordおよびOpen Officeの文書"
          
        # format loop 3
        - name: "Excelのマスキング"
          format: "EXCEL"
          link: "/redaction/net/hide-text-with-image-overlay//excel/"
          description: "MS ExcelおよびOpen Officeのスプレッドシート"

        # format loop 4
        - name: "PowerPointのマスキング"
          format: "POWERPOINT"
          link: "/redaction/net/hide-text-with-image-overlay//powerpoint/"
          description: "MS PowerPointおよびOpen Officeのプレゼンテーション"

        # format loop 5
        - name: "DOCXのマスキング"
          format: "DOCX"
          link: "/redaction/net/hide-text-with-image-overlay//docx/"
          description: "Microsoft WordオープンXMLドキュメント"
          
        # format loop 6
        - name: "XLSXのマスキング"
          format: "XLSX"
          link: "/redaction/net/hide-text-with-image-overlay//xlsx/"
          description: "Microsoft ExcelオープンXMLスプレッドシート"
          
        # format loop 7
        - name: "PPTXのマスキング"
          format: "PPTX"
          link: "/redaction/net/hide-text-with-image-overlay//pptx/"
          description: "PowerPointオープンXMLプレゼンテーション"


---