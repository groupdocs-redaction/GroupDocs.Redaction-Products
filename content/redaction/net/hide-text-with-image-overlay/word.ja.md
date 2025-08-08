
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ja
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#を介してWORD内のテキストを隠すオーバーレイを使用"
head_description: "GroupDocs.Redaction for .NETを使用すると、カラーブロックでWORD内の機密テキストを隠すのが容易です。重要な情報を隠したままドキュメントをそのままにしておきます。"

############################# Header ############################
title: ".NETを使用したWORDファイルのオーバーレイテキスト赤色処理" 
description: "プログラミング言語C#で記述されたオーバーレイを使用して、WORDファイル内の重要な情報を保護します。セキュリティとコンプライアンスに最適です。"
subtitle: "GroupDocs.Redaction for .NETの機能の詳細" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NETとは"
    link: "/redaction/net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       C#を使用する開発者は、必要に応じてWORD文書の一部を隠したり削除したりするためにGroupDocs.Redaction for .NETを利用できます。数行のコードで名前、数字、または他のデータを隠します。

############################# Steps ############################
steps:
    enable: true
    title: "Wordファイル内のプライベートデータを赤色処理"
    content: |
      GroupDocs.Redaction for .NETは.NET開発者が迅速に機密データを削除できるようにします。ファイルを安全に保護するためにこれらのステップに従ってください。
      
      1. Wordファイルへのパスを指定してRedactorを初期化します。
      2. コンテンツを赤色処理するルールを設定します。
      3. 選択したテキストパターンとその色を選択します。
      4. 赤色処理を適用して赤色処理されたファイルを保存します。
   
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
        // 画像オーバーレイを使用してWORD内のテキストを赤色処理

        // Redactorでファイルを読み込みます
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // 赤色処理が必要な内容を定義します
            // 一致するテキストとオーバーレイ色を追加します
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 赤色処理を実行し、最終的なファイルを保存します
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "追加の赤色処理ツール"
  description: "GroupDocs.Redaction for .NETを使用することで、レイアウトを維持しながら可視および隠れた情報を削除します。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "クリーンで安全な出力"
  features:
    # feature loop
    - title: "露出したテキストを置き換え"
      content: "重要なデータが漏れる可能性のある単語やフレーズを隠します。"

    # feature loop
    - title: "画像を覆う"
      content: "敏感なビジュアルを固体ブロックで隠します。"

    # feature loop
    - title: "隠れた情報を消去"
      content: "ファイルのプライバシーを保つために隠れたメタデータをクリアします。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "正規表現で一致したテキストを隠す"
      content: |
        正規表現を使用して機密コンテンツを見つけてカバーする方法を示すサンプルです。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  赤色処理する文書を開きます
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // パターンと色を選択します
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // 赤色処理のルールを実行します
              redactor.Apply(redaction);

              // 赤色処理されたコピーを保存し確認します
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
    title: ".NETを使用してWORDファイルを保護"
    exclude: "WORD"
    description: ".NETを使用して、レイアウトやフォーマットを壊さずにWORDフォーマット内のテキストを隠したりメタデータを消去したりできます。"
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