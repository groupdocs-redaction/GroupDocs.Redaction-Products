
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: ja
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "JavaオーバーレイでPPTXプレゼンテーションのテキストを隠す"
head_description: "GroupDocs.Redaction for Javaを使用して、色付きのオーバーレイでPPTXファイル内の機密内容をブロックします。重要な情報を隠しながらスライドをそのまま保ちます。"

############################# Header ############################
title: "Javaを使用してPPTXプレゼンテーションでテキストをマスクする" 
description: "JavaとGroupDocs.Redaction for Javaを使用して、PPTXスライドの機密コンテンツをマスキングし、セキュアに保ちます。"
subtitle: "GroupDocs.Redaction for Javaの機能を探る" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaの機能"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Javaは、Javaの開発者がPPTXプレゼンテーション内のテキスト、画像、またはメタデータを隠したり削除したりできるようにします。

############################# Steps ############################
steps:
    enable: true
    title: "Pptxスライド内のプライベートコンテンツを修正する"
    content: |
      GroupDocs.Redaction for Javaは、Javaの開発者にとってコンテンツ保護を簡単にします。
      
      1. Redactorをプレゼンテーションパスと共に設定します。
      2. 修正の振る舞いを選択します。
      3. テキストパターンとオーバーレイ色を追加します。
      4. スライドを修正して保存します。
   
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
        // PPTX内のテキストをブロックするためのオーバーレイを使用する

        // Redactorをあなたのプレゼンテーションで初期化する
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // 修正の好みを選択する
            // テキストとオーバーレイの色を設定する
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 修正を実行してスライドデッキを保存する
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "強力な修正ツール"
  description: "GroupDocs.Redaction for Javaを使用してレイアウトやフォーマットに手を加えることなく、プレゼンテーション内の機密コンテンツをブロックまたは削除します。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "スライド全体で機能する機能"
  features:
    # feature loop
    - title: "テキストを隠すまたは置き換える"
      content: "見られるべきでない名前、用語、またはメモを保護します。"

    # feature loop
    - title: "視覚的な領域を覆う"
      content: "写真やスライドのグラフィックセクションにオーバーレイを追加します。"

    # feature loop
    - title: "メタデータをクリアする"
      content: "著作権や編集履歴を明らかにする可能性のある裏側の情報を消去します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regexでテキストを修正する"
      content: |
        正規表現を利用して機密な単語を見つけて覆います
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  プレゼンテーションファイルを開く
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // 検索パターンとオーバーレイ色を設定する
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // 修正ルールを実行する
              redactor.apply(redaction);

              // 最終的なバージョンを保存する
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
    title: "Javaツールを使用してPPTXスライドを保護する"
    exclude: "PPTX"
    description: "Javaの修正機能を使用して、PPTXプレゼンテーションから機密コンテンツを完全に覆ったり削除したりします。"
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