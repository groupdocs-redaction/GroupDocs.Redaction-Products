
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: ja
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaを使用したIMAGEのオーバーレイによる画像隠蔽"
head_description: "GroupDocs.Redaction for Javaを使用して、IMAGEファイル内の機密画像エリアをカラフルなオーバーレイで隠します。文書のレイアウトを変えることなく重要なデータを安全に保ちます。"

############################# Header ############################
title: "Javaを使用したIMAGEファイル内のプライベート画像の保護" 
description: "Javaを使用して、IMAGEファイル内のビジネスおよび個人の画像を保護します。迅速で信頼性の高いデータ保護のための簡単なツールを提供します。"
subtitle: "GroupDocs.Redaction for Javaの主要機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaについて"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Javaは、Java開発者にIMAGEファイル内のコンテンツを隠したり削除したりするためのツールを提供します。テキスト、画像、メタデータを保護します。

############################# Steps ############################
steps:
    enable: true
    title: "Imageファイルでのオーバーレイを使用したコンテンツの隠蔽"
    content: |
      GroupDocs.Redaction for JavaでJavaアプリケーション内の敏感なエリアを迅速にカバーできます。
      
      1. Redactorオブジェクトを作成し、Imageファイルのパスを指定します。
      2. 必要に応じて赤外オプションを設定します。
      3. 画像セクションをマーキングし、オーバーレイの色を選択します。
      4. 赤外処理を実行し、赤外ファイルを保存します。
   
    code:
      platform: "java"
      copy_title: "コピー"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "サンプルのマスキング"
      install:
        command: |
          <dependencies>
            <dependency>
              <groupId>com.groupdocs</groupId>
              <artifactId>groupdocs-redaction</artifactId>
              <version>{0}</version>
            </dependency>
          </dependencies>

          <repositories>
            <repository>
              <id>repository.groupdocs.com</id>
              <name>GroupDocs Repository</name>
              <url>https://repository.groupdocs.com/repo/</url>
            </repository>
          </repositories>
        copy_tip: "クリックしてコピー"
        copy_done: "コピーしました"
      links:
        #  loop
        - title: "さらに多くの例"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "ドキュメンテーション"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // IMAGE内の画像コンテンツを隠します

        // Redactorを使用してファイルをロードします
        final Redactor redactor = new Redactor("input.png");
        try
        {
            // オーバーレイのサイズと色を設定します
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // 保護するエリアを選択します
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // オーバーレイを適用してファイルを保存します
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "文書内の機密コンテンツを隠す"
  description: "GroupDocs.Redaction for Javaを使用すれば、さまざまな文書形式のプライベートコンテンツを削除したり削除したりできます。文書がクリアで安全であることを確保します。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "削除機能をフルコントロール"
  features:
    # feature loop
    - title: "テキストを検索して置き換え"
      content: "文書内の機密テキストを見つけ、情報を保護するために置き換えます。"

    # feature loop
    - title: "画像をオーバーレイでカバーする"
      content: "フル画像または特定のセクションを隠すためにオーバーレイを使用します。"

    # feature loop
    - title: "メタデータをクリーンにする"
      content: "データ漏えいを防ぐために隠れたメタデータを消去または修正します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "オーバーレイを使って画像エリアをマスク"
      content: |
        このコード例では、オーバーレイを使用して敏感な画像の一部を隠す方法を示します。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  ファイルを編集のために開く
          final Redactor redactor = new Redactor("source.png");
          try
          {
              // オーバーレイのサイズ、カラー、および位置を定義する
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // ページ1の画像エリアを選択
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // コンテンツをマスクするためにオーバーレイを適用します
              redactor.apply(redaction);

              // 修正されたファイルを保存します
              SaveOptions save_options = new SaveOptions();
              save_options.setAddSuffix(true);
              save_options.setRasterizeToPDF(false);
              redactor.save(save_options);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "コピー"
        install:
          command: |
            <dependencies>
              <dependency>
                <groupId>com.groupdocs</groupId>
                <artifactId>groupdocs-redaction</artifactId>
                <version>{0}</version>
              </dependency>
            </dependencies>
            <repositories>
              <repository>
                <id>repository.groupdocs.com</id>
                <name>GroupDocs Repository</name>
                <url>https://repository.groupdocs.com/repo/</url>
              </repository>
            </repositories>
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "ドキュメンテーション"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "始める準備はできましたか？"
  description: "GroupDocs.Redactionの機能を無料で試すか、ライセンスをリクエストしてください"
  items:
    #  loop
    - title: "Mavenをダウンロード"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "ライセンス"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "JavaによるIMAGEファイルの保護"
    exclude: "IMAGE"
    description: "Javaを使用して、IMAGEファイルに含まれる機密データを隠したり削除したりします。公式文書を守る信頼性の高い方法です。"
    items: 
        # format loop 1
        - name: "PDFのマスキング"
          format: "PDF"
          link: "/redaction/java/hide-image-content//pdf/"
          description: "Adobeポータブル文書形式"

        # format loop 2
        - name: "Wordのマスキング"
          format: "WORD"
          link: "/redaction/java/hide-image-content//word/"
          description: "MS WordおよびOpen Officeの文書"
          
        # format loop 3
        - name: "Excelのマスキング"
          format: "EXCEL"
          link: "/redaction/java/hide-image-content//excel/"
          description: "MS ExcelおよびOpen Officeのスプレッドシート"

        # format loop 4
        - name: "PowerPointのマスキング"
          format: "POWERPOINT"
          link: "/redaction/java/hide-image-content//powerpoint/"
          description: "MS PowerPointおよびOpen Officeのプレゼンテーション"

        # format loop 5
        - name: "画像のマスキング"
          format: "IMAGE"
          link: "/redaction/java/hide-image-content//image/"
          description: "一般的な画像フォーマット"

        # format loop 6
        - name: "写真のマスキング"
          format: "PHOTO"
          link: "/redaction/java/hide-image-content//photo/"
          description: "写真フォーマット"

        # format loop 7
        - name: "DOCXのマスキング"
          format: "DOCX"
          link: "/redaction/java/hide-image-content//docx/"
          description: "Microsoft WordオープンXMLドキュメント"
          
        # format loop 8
        - name: "XLSXのマスキング"
          format: "XLSX"
          link: "/redaction/java/hide-image-content//xlsx/"
          description: "Microsoft ExcelオープンXMLスプレッドシート"
          
        # format loop 9
        - name: "PPTXのマスキング"
          format: "PPTX"
          link: "/redaction/java/hide-image-content//pptx/"
          description: "PowerPointオープンXMLプレゼンテーション"

        # format loop 10
        - name: "JPEGのマスキング"
          format: "JPEG"
          link: "/redaction/java/hide-image-content//jpeg/"
          description: "JPEG画像"


---