
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: ja
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaを使用したEXCELファイルのオーバーレイによる画像隠蔽"
head_description: "GroupDocs.Redaction for Javaを使用して、EXCELファイル内の機密画像をカラフルなオーバーレイで隠すことができます。文書のデザインを保持しながらプライベートデータを保護します。"

############################# Header ############################
title: "Javaを使用したEXCELファイル内の機密画像の隠蔽" 
description: "Javaを使用して、EXCELファイル内の個人およびビジネスのビジュアルを保護します。迅速で使いやすいツールで信頼性のあるデータ保護を実現します。"
subtitle: "GroupDocs.Redaction for Javaの機能を発見する" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaについて"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Javaは、Java開発者にEXCELファイルのコンテンツを隠したり削除したりするためのツールを提供します。テキスト、画像、メタデータを保護します。

############################# Steps ############################
steps:
    enable: true
    title: "Excelファイル内のデータを確保する"
    content: |
      GroupDocs.Redaction for Javaは、Javaアプリが文書内の機密コンテンツを隠すのを簡単にします。
      
      1. Redactorオブジェクトを作成し、Excelファイルを読み込みます。
      2. ニーズに合わせて赤外オプションを設定します。
      3. カバーする画像エリアを選択し、オーバーレイの色を選択します。
      4. 赤外処理を適用してファイルを保存します。
   
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
        // EXCEL内の画像コンテンツを隠す

        // Redactorを使用してファイルを開く
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // オーバーレイのサイズと色を設定します
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // 隠すエリアをマーキングします
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // 変更を適用してファイルを保存します
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "文書のコンテンツを隠したり削除したりする"
  description: "GroupDocs.Redaction for Javaを使用すると、複数のファイル形式で機密データを隠したり削除したりできます。文書をクリアでセキュアに保ちます。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "高度な削除機能"
  features:
    # feature loop
    - title: "テキストを検索して置き換え"
      content: "プライベートテキストを見つけて、安全を保つために置き換えます。"

    # feature loop
    - title: "画像エリアをカバーする"
      content: "全体の画像またはその部分にオーバーレイを適用して隠します。"

    # feature loop
    - title: "メタデータをクリーニングする"
      content: "隠れたメタデータを削除して、余分な情報を共有しないようにします。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "オーバーレイを使用して画像データをカバーする"
      content: |
        この例は、文書の機密画像エリアをオーバーレイで保護する方法を示します。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  文書を編集のために開く
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // オーバーレイのサイズ、色、位置を設定します
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // 最初のページの特定の画像エリアを選択します
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // オーバーレイを適用して画像を隠します
              redactor.apply(redaction);

              // 更新されたファイルを保存します
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
    title: "JavaによるEXCELファイルの保護"
    exclude: "EXCEL"
    description: "Javaを使用してEXCELファイル内にあるプライベート情報を隠したり削除したりすることができます。文書のプライバシーを守る簡単な方法です。"
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