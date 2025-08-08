
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: ja
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#を使用してPPTX内の画像を赤action"
head_description: "GroupDocs.Redaction for .NETを使用すると、PPTXファイル内の機密画像コンテンツをカラフルなオーバーレイで隠せます。文書の構造を変更することなく機密データを保護します。"

############################# Header ############################
title: ".NETを使用してPPTX文書内の機密画像を赤action" 
description: "C#を使ってPPTXファイル内の個人情報やビジネス情報を保護します。私たちのツールは画像赤actionを迅速かつ容易にします。"
subtitle: "GroupDocs.Redaction for .NETが提供するもの" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NETについて"
    link: "/redaction/net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NETは、C#開発者にPPTXファイル内のコンテンツを隠したり削除したりするためのシンプルなツールを提供します。文書を保護するためにテキスト、画像、メタデータを赤actionします。

############################# Steps ############################
steps:
    enable: true
    title: "Pptx文書でビジネスデータを保護"
    content: |
      GroupDocs.Redaction for .NET: 機密情報を隠すことで文書を保護する.NETアプリの手助けをします。
      
      1. Redactorインスタンスを設定し、Pptxファイルをロードします。
      2. ニーズに合わせて赤action設定を行います。
      3. 画像領域を選択し、オーバーレイの色を設定します。
      4. 赤actionを処理し、ファイルを保存します。
   
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
        // PPTX内の機密画像領域を赤action

        // Redactorを使用してファイルを開く
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // オーバーレイの色とサイズを定義
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // 赤action領域を選択
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // オーバーレイを適用して文書を保存
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "文書赤actionツール"
  description: "GroupDocs.Redaction for .NETを使うことで、さまざまなファイルタイプで機密コンテンツを隠したり削除できます。情報を保護しつつ文書をきれいで共有可能なままにします。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "強力な赤actionツール"
  features:
    # feature loop
    - title: "テキストの検索と置換"
      content: "プライベートテキストを見つけて赤actionすることで、文書のセキュリティを強化します。"

    # feature loop
    - title: "画像コンテンツを赤action"
      content: "全画像または選択した領域をオーバーレイで覆うことで、プライベートビジュアルを隠します。"

    # feature loop
    - title: "メタデータを削除"
      content: "データ漏洩を防ぐために隠れたメタデータを消去または修正します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "オーバーレイで画像データを隠す"
      content: |
        この例は、文書内の機密画像を赤actionする方法を示しています。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  文書をロード
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // オーバーレイのサイズ、位置、および色を設定
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // 1ページ目の赤actionする領域を指定
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // オーバーレイを適用
              redactor.Apply(redaction);

              // 赤action済みのファイルを保存
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
    title: ".NETを使ったPPTXコンテンツの赤action"
    exclude: "PPTX"
    description: ".NETを利用することで、PPTXファイル内の機密データを隠したり削除したりします。文書セキュリティのための信頼性のあるソリューションです。"
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