
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: ja
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#を使用してXLSXファイル内の画像をマスク"
head_description: "GroupDocs.Redaction for .NETを使用して、XLSXファイル内の機密画像コンテンツをカラフルなオーバーレイでマスクします。文書の構造を保持しつつ重要なデータを保護します。"

############################# Header ############################
title: ".NETを使用してXLSX文書内の機密画像をマスク" 
description: "C#を使用して、XLSXファイルのデータプライバシーを確保します。当社のツールは、画像の赤actionを迅速かつ効果的に行うように設計されています。"
subtitle: "GroupDocs.Redaction for .NETの主要な機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NETについて"
    link: "/redaction/net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NETはC#開発者に、XLSXファイル内のコンテンツを隠したり削除したりするためのシンプルなツールを提供します。テキスト、画像、メタデータを赤actionして文書を保護します。

############################# Steps ############################
steps:
    enable: true
    title: "Xlsx文書内のプライベートデータを保護"
    content: |
      GroupDocs.Redaction for .NET: あなたの.NETアプリが文書を効率的に保護するのを助けます。
      
      1. Redactorインスタンスを作成し、Xlsxファイルをロードします。
      2. ニーズに合った赤actionパラメータを設定します。
      3. 画像領域を定義して、オーバーレイの色を選択します。
      4. 赤actionを適用して出力ファイルを保存します。
   
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
        // XLSX内の機密画像をマスク

        // Redactorを初期化し、ファイルパスを指定
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // オーバーレイのサイズと色を選択
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // 隠したい領域をマーク
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // 変更を適用して保存
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "文書の赤action機能"
  description: "GroupDocs.Redaction for .NETを使用すると、さまざまなファイル形式でコンテンツを隠したり削除したりできます。きれいなレイアウトを維持しつつ、機密データを保護します。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "堅牢な赤action機能"
  features:
    # feature loop
    - title: "テキストを検索して置き換え"
      content: "迅速に機密テキストを見つけて赤actionし、機密データを保護します。"

    # feature loop
    - title: "画像コンテンツをマスク"
      content: "全画像や特定の領域にオーバーレイを適用して、プライベートなビジュアルを隠します。"

    # feature loop
    - title: "メタデータをクリーンアップ"
      content: "事故によるデータ漏洩を防ぐために、隠れたメタデータを削除または調整します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "オーバーレイで画像コンテンツを隠す"
      content: |
        機密の画像領域を文書内でマスクする方法を学びます。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  赤action用に文書を開く
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // オーバーレイの属性を定義する：サイズ、位置、色
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // 特定の画像領域に焦点を合わせる
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // 画像領域にオーバーレイを適用する
              redactor.Apply(redaction);

              // 赤action済みの文書を保存
              var save_options = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_options);
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: ".NET赤actionを使用してXLSXコンテンツを保護"
    exclude: "XLSX"
    description: ".NETを使用して、XLSXファイル内の機密情報を隠したり削除したりします。文書セキュリティのための信頼できるソリューションです。"
    items: 
        # format loop 1
        - name: "PDFのマスキング"
          format: "PDF"
          link: "/redaction/net/hide-image-content//pdf/"
          description: "Adobeポータブル文書形式"

        # format loop 2
        - name: "Wordのマスキング"
          format: "WORD"
          link: "/redaction/net/hide-image-content//word/"
          description: "MS WordおよびOpen Officeの文書"
          
        # format loop 3
        - name: "Excelのマスキング"
          format: "EXCEL"
          link: "/redaction/net/hide-image-content//excel/"
          description: "MS ExcelおよびOpen Officeのスプレッドシート"

        # format loop 4
        - name: "PowerPointのマスキング"
          format: "POWERPOINT"
          link: "/redaction/net/hide-image-content//powerpoint/"
          description: "MS PowerPointおよびOpen Officeのプレゼンテーション"

        # format loop 5
        - name: "画像のマスキング"
          format: "IMAGE"
          link: "/redaction/net/hide-image-content//image/"
          description: "一般的な画像フォーマット"

        # format loop 6
        - name: "写真のマスキング"
          format: "PHOTO"
          link: "/redaction/net/hide-image-content//photo/"
          description: "写真フォーマット"

        # format loop 7
        - name: "DOCXのマスキング"
          format: "DOCX"
          link: "/redaction/net/hide-image-content//docx/"
          description: "Microsoft WordオープンXMLドキュメント"
          
        # format loop 8
        - name: "XLSXのマスキング"
          format: "XLSX"
          link: "/redaction/net/hide-image-content//xlsx/"
          description: "Microsoft ExcelオープンXMLスプレッドシート"
          
        # format loop 9
        - name: "PPTXのマスキング"
          format: "PPTX"
          link: "/redaction/net/hide-image-content//pptx/"
          description: "PowerPointオープンXMLプレゼンテーション"

        # format loop 10
        - name: "JPEGのマスキング"
          format: "JPEG"
          link: "/redaction/net/hide-image-content//jpeg/"
          description: "JPEG画像"


---