
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: ja
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaを使用したDOCXの画像隠蔽オーバーレイ"
head_description: "GroupDocs.Redaction for Javaを使用すると、DOCXファイル内の機密画像をカラフルなオーバーレイで隠すことができます。文書のレイアウトを変更せずにプライベート情報を保護します。"

############################# Header ############################
title: "Javaを使用したDOCX文書内の機密画像の隠蔽" 
description: "Javaを使用して、DOCXファイル内のビジネスおよび個人データを保護します。当社のツールを使用すれば、機密情報を安全に保持し、文書をクリーンに保つことができます。"
subtitle: "GroupDocs.Redaction for Javaの主要機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaについて"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Javaは、Java開発者にDOCXファイル内のコンテンツを隠したり消去したりするためのツールを提供しています。さまざまな文書形式でテキスト、画像、およびメタデータを保護します。

############################# Steps ############################
steps:
    enable: true
    title: "Docx文書内のデータを保護"
    content: |
      GroupDocs.Redaction for Javaは、Javaアプリに文書を削除する力を与えます。プライベートコンテンツを迅速かつ効率的にカバーします。
      
      1. Redactorを作成し、Docx文書のファイルパスを設定します。
      2. ニーズに合った赤外設定を調整します。
      3. カバーする画像エリアを選択し、オーバーレイの色を選びます。
      4. 赤外プロセスを実行し、ファイルを保存します。
   
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
        // DOCX内で機密画像セクションを隠せる

        // Redactorを使用して文書をロードします
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // オーバーレイの色とサイズを設定します
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // 非表示にするエリアをマーキングします
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
  title: "ファイル内の機密コンテンツを隠す"
  description: "GroupDocs.Redaction for Javaを使用すると、複数のファイルタイプからコンテンツを削除または削除できます。文書を安全で読みやすく保ちます。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "文書用の削除機能"
  features:
    # feature loop
    - title: "テキストコンテンツを編集"
      content: "プライバシーを保持するために、文書内の機密テキストを見つけて置き換えることができます。"

    # feature loop
    - title: "オーバーレイ画像"
      content: "機密ビジュアル情報を隠すために、全体の画像または選択した部分をカバーします。"

    # feature loop
    - title: "メタデータを削除"
      content: "データの漏えいを防ぐために、文書から隠れたメタデータをクリーンにします。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "機密データをカバーするために画像にオーバーレイを適用する"
      content: |
        この例では、文書内の機密ビジュアルエリアにオーバーレイを適用する方法を示しています。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  文書を編集のために開きます
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // オーバーレイのサイズ、色、位置を設定します
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // ページ1のターゲットエリアを選択します
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // 画像をカバーするオーバーレイを適用します
              redactor.apply(redaction);

              // 削除された文書を保存します
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
    title: "JavaによるDOCXファイルの削除"
    exclude: "DOCX"
    description: "Javaを使用して、DOCXファイル内のプライベートデータを隠したり削除したりできます。ビジネスと機密文書を安全に保つための完璧な方法です。"
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