
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ja
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#を使用してPPTX内のテキストを赤色処理する"
head_description: "GroupDocs.Redaction for .NETを使用すれば、カラフルな四角でPPTX文書に隠すことができます。レイアウトをそのままにしておきます。"

############################# Header ############################
title: ".NETを使用してPPTX内のテキストを赤色処理" 
description: "C#とGroupDocs.Redaction for .NETを使用して、PPTXファイル内の機密データを視界から隠すオーバーレイを追加します。"
subtitle: "GroupDocs.Redaction for .NETを探求する" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NETとは"
    link: "/redaction/net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NETはC#を使用して文書内のコンテンツを覆ったり削除したりします。名前からメモまで、数ステップで何でもカバーできます。

############################# Steps ############################
steps:
    enable: true
    title: "Pptxファイル内のプライベートコンテンツを隠す"
    content: |
      GroupDocs.Redaction for .NETを使うことで、.NETの開発者は数ステップで文書を保護できます。
      
      1. クリーンアップしたいファイルへのパスを指定したRedactorを開始します。
      2. ニーズに合った赤色処理のルールを選択します。
      3. 一致させるパターンとオーバーレイの色を選択します。
      4. 赤色処理を実行し、更新したファイルを保存します。
   
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
        // PPTX内のテキストを隠すためにオーバーレイを使用する

        // Redactorを初期化し、ファイルを指定します
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // 赤色処理がどのように動作するかを定義します
            // 隠す内容とオーバーレイの色を設定します
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 実行して変更を保存します
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ファイルを保護する方法"
  description: "GroupDocs.Redaction for .NETは、レイアウトを変更せずに異なる形式でデータを隠すツールを提供します。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "重要な機能"
  features:
    # feature loop
    - title: "必要に応じてテキストを置き換え"
      content: "重要な情報を無許可のユーザーから隠すためにテキストを置き換えます。"

    # feature loop
    - title: "画像エリアを隠す"
      content: "オーバーレイボックスを描くことで完全な画像や部分を隠します。"

    # feature loop
    - title: "隠れたデータを消去"
      content: "プライベートな詳細が明かされる可能性のあるメタデータを削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "正規表現による赤色処理"
      content: |
        この例では、正規表現を使ってテキストを検索し隠す方法を示します
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  赤色処理用のファイルを読み込みます
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // 赤色処理のルールを設定する：検索テキストとブロック色
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // 赤色処理のロジックを適用します
              redactor.Apply(redaction);

              // 赤色処理された結果を保存します
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
    title: ".NETツールを使用してPPTXのテキストを保護"
    exclude: "PPTX"
    description: ".NETを使用してPPTXファイル内のプライベートエリアを覆うか、隠れたデータを削除します。"
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