
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: ja
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#を使ってPOWERPOINT内の画像をオーバーレイで隠す"
head_description: "GroupDocs.Redaction for .NETを使用して、POWERPOINTファイル内の画像にオーバーレイを配置し、プライベート情報を隠しつつレイアウトを維持できます。"

############################# Header ############################
title: ".NETを使用してPOWERPOINT文書内のプライベート画像を隠す" 
description: "C#を使用してPOWERPOINTファイル内の個人情報および法人データを保護します。文書のプライバシーを強化するための簡単なツールです。"
subtitle: "GroupDocs.Redaction for .NETの主な機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NETとは？"
    link: "/redaction/net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NETは、C#開発者にPOWERPOINTファイル内のコンテンツを隠したり削除したりするための簡単なツールを提供します。プライベートなテキスト、画像、メタデータを保護します。

############################# Steps ############################
steps:
    enable: true
    title: "Powerpoint文書内の機密情報を保護"
    content: |
      GroupDocs.Redaction for .NETは、あなたの.NETアプリが文書コンテンツを迅速に保護するために構築されています。
      
      1. Redactorオブジェクトを作成し、Powerpointファイルを指定します。
      2. ニーズに合わせて赤action設定を調整します。
      3. 画像の領域を選択し、オーバーレイの色を選びます。
      4. 赤actionを適用して文書を保存します。
   
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
        // POWERPOINT内の画像データを隠す

        // Redactorを使用してファイルをロード
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // オーバーレイの色とサイズを設定
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // 覆いたい領域を選択
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
  title: "文書内の機密データを赤action"
  description: "GroupDocs.Redaction for .NETを使用すると、さまざまな文書タイプでデータを隠したり削除したりできます。プライベートデータを保護しつつ、ファイルを使いやすく共有可能にします。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "機能豊富な赤actionツール"
  features:
    # feature loop
    - title: "テキストを検索・編集"
      content: "文書内で機密テキストを検索して赤actionでき、プライベートデータを保護します。"

    # feature loop
    - title: "画像コンテンツを覆う"
      content: "画像全体または選択した領域をオーバーレイで覆い、プライベートビジュアルを隠します。"

    # feature loop
    - title: "隠れたメタデータを削除"
      content: "データ漏洩を防ぐために隠れたメタデータを消去または変更します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "オーバーレイを使用して画像データを保護"
      content: |
        この例は、文書内の機密コンテンツを隠す方法を示しています。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  赤action用にファイルをロード
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // オーバーレイのサイズ、位置、および色を設定
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // ページ1での赤actionする領域をマーク
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // オーバーレイを適用して画像を隠す
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
    title: ".NET赤actionでPOWERPOINTコンテンツを保護"
    exclude: "POWERPOINT"
    description: ".NETを使用してPOWERPOINTファイル内の機密データを隠したり削除したりします。機密文書の保護に信頼できるソリューションです。"
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