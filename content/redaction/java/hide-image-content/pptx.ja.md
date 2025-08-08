
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: ja
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaを使用したPPTXのオーバーレイによる画像隠蔽"
head_description: "GroupDocs.Redaction for Javaを使用すると、PPTXファイル内の機密画像をオーバーレイで隠すことができます。文書のレイアウトを保持しながら機密情報を保護します。"

############################# Header ############################
title: "Javaを使用したPPTX文書内の機密画像の隠蔽" 
description: "Javaを使用して、PPTXファイル内の個人およびビジネスデータを保護します。当社のツールを使えば、画像の削除が迅速で簡単です。"
subtitle: "GroupDocs.Redaction for Javaの主な利点" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaについて"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Javaは、Java開発者にPPTXファイル内の機密コンテンツを隠したり削除したりするための実用的なツールを提供します。さまざまな文書形式でテキスト、画像、およびメタデータを保護します。

############################# Steps ############################
steps:
    enable: true
    title: "Pptx文書内のプライベートデータを保護する"
    content: |
      GroupDocs.Redaction for Javaは、Javaアプリが文書内の機密コンテンツを隠すのを容易にします。
      
      1. Redactorを初期化し、Pptxファイルを読み込みます。
      2. ニーズに応じて赤外オプションを設定します。
      3. 画像エリアを選択し、オーバーレイの色を定義します。
      4. 赤外処理を適用して更新されたファイルを保存します。
   
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
        // PPTX内の機密画像セクションを隠す

        // Redactorを使用して文書を開きます
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // オーバーレイの色とサイズを選択
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // 隠すエリアを強調表示
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // 変更を適用して文書を保存します
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "コンテンツ削除ツール"
  description: "GroupDocs.Redaction for Javaを使用すると、多くのファイル形式の機密情報を隠したり削除したりできます。安全でプロフェッショナルな外観を保持しながら文書を保護します。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "高度な削除機能"
  features:
    # feature loop
    - title: "テキストを見つけて置き換える"
      content: "プライベートテキストを迅速に検索して削除し、文書を保護します。"

    # feature loop
    - title: "オーバーレイで画像をカバーする"
      content: "全体の画像または選択されたエリアを削除するためにオーバーレイを適用します。"

    # feature loop
    - title: "メタデータをクリーンにする"
      content: "機密情報の共有を防ぐために隠れたメタデータを削除または編集します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "オーバーレイで画像データをカバーします"
      content: |
        この例では、文書内の機密画像を隠す方法を示します。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  文書をロードします
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // オーバーレイのサイズ、色、位置を定義します
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // 最初のページの画像エリアを選択します
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // それをカバーするためにオーバーレイを適用します
              redactor.apply(redaction);

              // 赤外文書を保存します
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
    title: "JavaによるPPTXコンテンツの削除"
    exclude: "PPTX"
    description: "Javaを使用してPPTXファイル内の敏感データを隠したり削除したりします。文書の保護に信頼性のあるソリューションです。"
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