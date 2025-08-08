
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: ja
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#を使用してPDF内の機密テキストをオーバーレイで隠す"
head_description: "GroupDocs.Redaction for .NETを使用すれば、カラフルな四角形のオーバーレイを置くことで、PDFファイル内の機密テキストを隠すことができます。元のレイアウトを変更せずに、プライベートデータを安全に保つことができます。"

############################# Header ############################
title: ".NETを使用してPDF文書内の機密テキストをオーバーレイで隠す" 
description: "C#を使用してPDFファイルの内容を管理します。法的、財務、個人情報を保護するために赤色処理を使用してください。"
subtitle: "GroupDocs.Redaction for .NETの特徴" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NETについて"
    link: "/redaction/net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NETはC#開発者にPDFファイルからコンテンツを隠したり削除したりするためのツールを提供します。多くのファイルタイプでテキスト、画像、またはメタデータをカバーできます。

############################# Steps ############################
steps:
    enable: true
    title: "Pdf文書内のビジネスデータを保護する"
    content: |
      GroupDocs.Redaction for .NET: .NETアプリで文書を安全に保つために構築。プライベート情報を迅速に赤色処理します。
      
      1. Redactorインスタンスを作成し、赤色処理したいPdfファイルのパスを指定します。
      2. 必要な結果を得るために赤色処理の設定を行います。
      3. 検索するテキストパターンを設定し、オーバーレイの色を選択します。
      4. 文書を赤色処理し、変更を保存します.
   
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
        // PDF内の機密テキストをオーバーレイ画像で隠す

        // Redactorコンストラクタにファイルパスを渡します
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // 赤色処理オプションを設定します
            // テキストパターンとオーバーレイ色を定義します
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 赤色処理し、更新されたPDFファイルを保存します
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "文書内のコンテンツを赤色処理する"
  description: "GroupDocs.Redaction for .NETを使用すれば、さまざまなファイルタイプでコンテンツを削除または隠すことができます。文書を読みやすく共有しながら機密情報を保護します。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "高度な赤色処理オプション"
  features:
    # feature loop
    - title: "任意のテキストを編集"
      content: "文書内の一致するテキストを検索し、置き換えて機密データを保護します。"

    # feature loop
    - title: "画像を覆う"
      content: "全画像または選択した領域にオーバーレイを置いてプライベートビジュアルを隠します。"

    # feature loop
    - title: "メタデータを処理"
      content: "不要なデータ漏洩を防ぐために隠れたメタデータを消去または変更します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "正規表現を使用してテキストを隠す"
      content: |
        この例では、正規表現を使用してテキストを見つけて隠す方法を示します
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  赤色処理したい文書を読み込みます
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // 赤色処理の設定を定義します：テキストパターンと色
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // コンテンツに赤色処理を適用します
              redactor.Apply(redaction);

              // 赤色処理されたバージョンを保存します
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
    title: ".NET赤色処理を使用してPDFコンテンツを保護"
    exclude: "PDF"
    description: ".NETを使用してPDFファイル内のコンテンツを覆ったり消去したりします。機密または公式文書を安全に保つためのスマートな選択です。"
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