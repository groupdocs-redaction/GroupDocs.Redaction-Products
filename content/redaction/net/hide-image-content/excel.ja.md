
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: ja
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#を使用してEXCEL内の画像をマスク"
head_description: "GroupDocs.Redaction for .NETを使用して、EXCELファイル内のプライベート画像を隠します。カラフルなオーバーレイを配置して、データの安全を保ちながら文書のレイアウトを保持します。"

############################# Header ############################
title: ".NETを使用してEXCELファイル内の機密画像を覆う" 
description: "C#を使用してEXCELファイル内の個人情報やビジネスデータを保護します。迅速で信頼できるデータ保護を実現するツールです。"
subtitle: "GroupDocs.Redaction for .NETの機能を探る" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NETについて"
    link: "/redaction/net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NETは、C#開発者にEXCELファイル内の機密内容を隠したり削除したりするためのツールを提供します。テキスト、画像、メタデータを覆うことで文書を守ります。

############################# Steps ############################
steps:
    enable: true
    title: "Excelファイル内のデータを安全に保つ"
    content: |
      GroupDocs.Redaction for .NETは、機密コンテンツを隠すことで文書を保護するのを助けます。
      
      1. Redactorインスタンスを作成し、Excelファイルへのパスを提供します。
      2. 所望の結果に向けて赤actionオプションを構成します。
      3. 画像エリアを選択し、オーバーレイの色を設定します。
      4. 赤actionを適用してファイルを保存します。
   
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
        // EXCEL内の画像コンテンツをマスク

        // Redactorを使用して文書をロード
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // オーバーレイのサイズと色を設定
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // 隠すエリアを選択
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
  title: "さまざまな文書内の任意のコンテンツを赤action"
  description: "GroupDocs.Redaction for .NETを使用すると、さまざまな文書形式で機密コンテンツを隠したり削除したりできます。容易に使える文書を保護します。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "強力な赤actionオプション"
  features:
    # feature loop
    - title: "テキストを検索して編集"
      content: "文書内で機密テキストを見つけて置き換え、プライベートデータを保護します。"

    # feature loop
    - title: "画像エリアをオーバーレイ"
      content: "全画像または選択した部分をオーバーレイで覆い、映像をプライベートに保ちます。"

    # feature loop
    - title: "メタデータを削除"
      content: "事故による情報漏洩を防ぐために、隠されたメタデータフィールドを消去します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "オーバーレイで画像データをマスク"
      content: |
        この例は、文書内の機密情報を隠す方法を示しています。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  編集用にファイルを開く
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // オーバーレイのサイズ、色、および配置を定義
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // ページ1の特定の画像セクションを対象とする
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // 画像にオーバーレイを適用してマスクする
              redactor.Apply(redaction);

              // 最終文書を保存
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
    title: ".NET赤actionツールでEXCELファイルを保護"
    exclude: "EXCEL"
    description: ".NETを使用して、EXCELファイル内の機密情報を隠したり削除したりします。文書セキュリティのための信頼できるソリューションです。"
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