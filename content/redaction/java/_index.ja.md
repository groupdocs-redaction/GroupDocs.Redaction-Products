---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: ja
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Drop-down ############################
supported_platforms:
  items:
    # supported_platforms loop
    - title: ".NET"
      tag: "net"
    # supported_platforms loop
    - title: "Java"
      tag: "java"
    # supported_platforms loop
    - title: "Python"
      tag: "python-net"

############################# Head ############################
head_title: "Javaを使用して文書から機密データを削除する"
head_description: "GroupDocs.Redaction for Javaを使用して機密情報を保護します。PDF、Officeファイル、および画像内のプライベートコンテンツを手間なく隠蔽、赤外線処理、または削除します。"

############################# Header ############################
title: "GroupDocs.Redactionで機密データを保護する"
description: "信頼性の高いJavaツールキットを使用して、PDF、Word、Excel、PowerPoint、および画像形式からプライベートデータを削除し、テキストを赤外線処理し、メタデータをクリーンアップします。"
words:
  for: "のために"

actions:
  main: "Maven ダウンロード"
  main_link: "https://releases.groupdocs.com/java/repo/com/groupdocs/groupdocs-redaction/"
  alt: "ライセンス"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/java/"
  title: "始める準備はできましたか？"
  description: "GroupDocs.Redactionの機能を無料で試すか、ライセンスをリクエストしてください。"

release:
  title: "バージョン {0} 発表"
  notes: "新機能を見る"
  downloads: "ダウンロード"

code:
  title: "文書コンテンツを赤外線処理する手順"
  more: "さらなる例"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
  install: |
    <dependency>
      <groupId>com.groupdocs</groupId>
      <artifactId>groupdocs-redaction</artifactId>
      <version>{0}</version>
    </dependency>
  content: |
    ```java {style=abap}  
    // Redactorインスタンスでソースファイルをロードします
    final Redactor redactor = new Redactor("sample.pdf");
    try
    {
        // 赤外線処理の基準と設定を定義します
        ReplacementOptions ro = new ReplacementOptions("[redacted]");
        ExactPhraseRedaction red = new ExactPhraseRedaction("Data", ro);

        // 赤外線処理操作を実行します
        RedactorChangeLog result = redactor.apply(red);

        // 赤外線処理を適用したファイルを保存します
        redactor.save();
    }
    finally { redactor.close(); }
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction 概要"
  description: "Javaアプリケーションにプロフェッショナルな赤外線処理ツールを追加します。"
  features:
    # feature loop
    - title: "機密テキストを削除"
      content: "GroupDocs.Redaction for Javaを使用して、プライベートテキストを検索し、カスタマイズ可能なオーバーレイや置き換えを使用して隠すことができます。PDF、Word、Excelなどに対応しており、規制遵守や安全な文書の共有に最適です。"

    # feature loop
    - title: "画像を隠す"
      content: "要件に基づいて画像を完全または部分的に特定し、マスクします。検出ルールと領域座標を定義して、視覚データを効率的に保護します。"

    # feature loop
    - title: "埋め込みメタデータをクリーンアップ"
      content: "ファイルには、著者名、作成ツール、デバイスの詳細などの隠れた情報が含まれていることがあります。GroupDocs.Redaction for Javaを使用すると、Word、Excel、画像および他の形式のメタデータを検出し、クリーンアップすることができます。"

    # feature loop
    - title: "埋め込みオブジェクトを赤外線処理"
      content: "PDF注釈、コメント、または他の埋め込み項目のような要素を赤外線処理し、機密情報の痕跡を排除して文書を完全にクリーンアップします。"

############################# Platforms ############################
platforms:
  enable: true
  title: "プラットフォーム独立性"
  description: "GroupDocs.Redaction for Javaは、主要なオペレーティングシステム、フレームワーク、開発プラットフォームで動作します。"
  items:
    # platform loop
    - title: "Amazon"
      image: "amazon"
    # platform loop
    - title: "Docker"
      image: "docker"
    # platform loop
    - title: "Azure"
      image: "azure"
    # platform loop
    - title: "Eclipse"
      image: "eclipse"
    # platform loop
    - title: "IntelliJ"
      image: "intellij"
    # platform loop
    - title: "Windows"
      image: "windows"
    # platform loop
    - title: "Linux"
      image: "linux"
    # platform loop
    - title: "Maven"
      image: "maven"

############################# File formats ############################
formats:
  enable: true
  title: "サポートされているファイル形式"
  description: |
    GroupDocs.Redaction for Javaは次の[ファイル形式](https://docs.groupdocs.com/redaction/java/supported-document-formats/)での操作をサポートしています。
  groups:
    # group loop
    - color: "green"
      content: |
        ### MS Office形式
        * **Word:** DOCX, DOC, DOCM, DOT, DOTX, DOTM,
        * **Excel:** XLSX, XLS, XLSM, XLSB, 
        * **PowerPoint:** PPT, PPTX
    # group loop
    - color: "blue"
      content: |
        ### その他のOffice形式
        * **ポータブル:** PDF 
        * **OpenDocument:** ODT, ODS, OTS, ODP, OTT
        * **テキスト形式:** RTF, CSV, TXT, TSV
      # group loop
    - color: "red"
      content: |
        ### その他の形式
        * **ウェブ:** HTM, HTML, MD
        * **画像:** BMP, GIF, JPEG, PNG, TIFF, WEBP
        * **電子書籍:** DJVU 
        
        

############################# Features ############################
features:
  enable: true
  title: "GroupDocs.Redactionでは何ができるか"
  description: "PDF、Office文書、および画像からコンテンツを迅速に特定して赤外線処理します。"

  items:
    # feature loop
    - icon: "search"
      title: "正確な検索"
      content: "大文字と小文字を区別した検索モードを使用して、正確な一致を見つけて赤外線処理します。"

    # feature loop
    - icon: "text"
      title: "テキストを見つけて置き換える"
      content: "文書全体で機密テキストを自動的に検出し、置き換えたり削除したりします。"

    # feature loop
    - icon: "image"
      title: "カスタム画像でオーバーレイ"
      content: "カスタム画像ブロックを使用して赤外線処理されたテキストを隠し、レイアウトを保持します。"

    # feature loop
    - icon: "search"
      title: "高度な赤外線処理に正規表現を使用"
      content: "正規表現を活用して、複雑なパターンを検出し、インテリジェントに赤外線処理します。"

    # feature loop
    - icon: "table"
      title: "特定の領域を赤外線処理"
      content: "選択したページまたはゾーンに赤外線処理を制限して、関連するセクションのみをターゲットにします。"

    # feature loop
    - icon: "template"
      title: "メタデータフィールドのクリーンアップ"
      content: "著者、会社、またはトラッキングデータなどの文書メタデータを特定し、クリーンアップします。"

    # feature loop
    - icon: "pdf"
      title: "希望の形式でエクスポート"
      content: "赤外線処理されたファイルをレイアウトの整合性を保ちながら、PDFまたは他のサポートされた形式で保存します。"

    # feature loop
    - icon: "template"
      title: "すべてのメタデータを消去"
      content: "一つのコマンドでサポートされているファイルからメタデータを完全に削除します。"

    # feature loop
    - icon: "hyperlink"
      title: "自動化された赤外線処理ポリシー"
      content: "再利用可能な赤外線処理設定をXML形式で作成し、一貫したバッチ赤外線処理を実現します。"


############################# Code samples ############################
code_samples:
  enable: true
  title: "コードサンプル"
  description: "GroupDocs.Redaction for Javaの一般的な使用例"
  items:
    # code sample loop
    - title: "正規表現を用いた赤外線処理"
      content: |
        GroupDocs.Redaction for Javaは、Java開発者が[正規表現に基づく赤外線処理](https://docs.groupdocs.com/redaction/java/text-redactions/#use-regular-expression)を適用できるようにします。
        {{< landing/code title="正規表現を使用したWord文書の赤外線処理">}}
        ```java {style=abap}
        // Redactorクラスのインスタンスを作成します
        final Redactor redactor = new Redactor("source.docx");
        try
        {
            // 正規表現を使用して赤外線処理ルールを定義します
            ReplacementOptions replacement = new ReplacementOptions(java.awt.Color.BLUE);
            RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);

            // 一致するすべてのテキストに青い正方形のオーバーレイをマスクします
            redactor.apply(redaction);

            // 赤外線処理されたWord文書を保存します
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "すべてのメタデータを削除"
      content: |
        APIを使用して、[メタデータを削除](https://docs.groupdocs.com/redaction/java/metadata-redactions/#clean-metadata)することができます。
        {{< landing/code title="プレゼンテーションからすべてのメタデータを削除します">}}
        ```java {style=abap}   
        // Redactorにプレゼンテーションのパスを提供します
        final Redactor redactor  = new Redactor("source.pptx");
        try 
        {
            // 赤外線処理オプションを設定します
            EraseMetadataRedaction red = new EraseMetadataRedaction(MetadataFilters.All);

            // プレゼンテーションからすべてのメタデータを削除します
            redactor.apply(red);

            // 清掃されたプレゼンテーションファイルを保存します
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}

---
