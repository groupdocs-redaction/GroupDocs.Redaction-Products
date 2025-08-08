
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: ja
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaオーバーレイを使用してPOWERPOINTのテキストを保護する"
head_description: "GroupDocs.Redaction for Javaを使用すれば、レイアウトを変更せずにPOWERPOINTスライド内のプライベートテキストを色付きのオーバーレイでブロックできます。"

############################# Header ############################
title: "Javaを使用してPOWERPOINT内のテキストを隠す" 
description: "JavaとGroupDocs.Redaction for Javaを使用して、POWERPOINTスライドをマスキングし、機密コンテンツを安全に保ちます。"
subtitle: "GroupDocs.Redaction for Javaの内部" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaについて"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Javaは、Javaの開発者がPOWERPOINTスライドを清掃し、テキスト、メタデータ、画像などの機密コンテンツをブロックまたは削除する手助けをします。

############################# Steps ############################
steps:
    enable: true
    title: "共有前にPowerpointプレゼンテーションを清掃する"
    content: |
      GroupDocs.Redaction for JavaをJavaアプリに使用して、スライド内の機密部分を隠したり削除したりします。
      
      1. あなたのスライドデッキパスで新しいRedactorを作成します。
      2. 修正の好みを定義します。
      3. テキストパターンとオーバーレイ色を設定します。
      4. 修正を実行してファイルを保存します。
   
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
        // POWERPOINTのテキストエリアをオーバーレイする

        // Redactorでファイルを開く
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // 修正設定を調整する
            // テキストを入力し、オーバーレイの色を選択する
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 修正を実行して更新されたファイルを保存します
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "機密スライド用のシンプルな修正"
  description: "GroupDocs.Redaction for Javaは、特定の使用例に関係なく、スライドからコンテンツをブロックまたは削除することを容易にします。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "適応する修正ツール"
  features:
    # feature loop
    - title: "テキストを見つけて置き換える"
      content: "任意のスライド上で機密なフレーズやラベルを保護します。"

    # feature loop
    - title: "ビジュアルの一部を覆う"
      content: "特定のスライド領域や画像にオーバーレイを追加します。"

    # feature loop
    - title: "隠れたコンテンツを削除する"
      content: "スライドのメタデータや修正ノートを共有する前に消去します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "テキスト修正のためのRegex"
      content: |
        パターンマッチングを使用してテキストを検出し修正する方法を学びます
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  スライドデッキを読み込む
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // あなたのregexルールを適用する
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // 修正を実行する
              redactor.apply(redaction);

              // 最終バージョンを保存します
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Javaを使用してPOWERPOINTスライドを保護する"
    exclude: "POWERPOINT"
    description: "Javaのオーバーレイ修正機能を使用して、POWERPOINTスライドを非公開に保ちます。"
    items: 
        # format loop 1
        - name: "PDFのマスキング"
          format: "PDF"
          link: "/redaction/java/hide-text-with-image-overlay//pdf/"
          description: "Adobeポータブル文書形式"

        # format loop 2
        - name: "Wordのマスキング"
          format: "WORD"
          link: "/redaction/java/hide-text-with-image-overlay//word/"
          description: "MS WordおよびOpen Officeの文書"
          
        # format loop 3
        - name: "Excelのマスキング"
          format: "EXCEL"
          link: "/redaction/java/hide-text-with-image-overlay//excel/"
          description: "MS ExcelおよびOpen Officeのスプレッドシート"

        # format loop 4
        - name: "PowerPointのマスキング"
          format: "POWERPOINT"
          link: "/redaction/java/hide-text-with-image-overlay//powerpoint/"
          description: "MS PowerPointおよびOpen Officeのプレゼンテーション"

        # format loop 5
        - name: "DOCXのマスキング"
          format: "DOCX"
          link: "/redaction/java/hide-text-with-image-overlay//docx/"
          description: "Microsoft WordオープンXMLドキュメント"
          
        # format loop 6
        - name: "XLSXのマスキング"
          format: "XLSX"
          link: "/redaction/java/hide-text-with-image-overlay//xlsx/"
          description: "Microsoft ExcelオープンXMLスプレッドシート"
          
        # format loop 7
        - name: "PPTXのマスキング"
          format: "PPTX"
          link: "/redaction/java/hide-text-with-image-overlay//pptx/"
          description: "PowerPointオープンXMLプレゼンテーション"


---