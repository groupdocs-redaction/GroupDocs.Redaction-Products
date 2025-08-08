---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: ja
product: "Redaction"
product_tag: "redaction"
platform: "Net"
platform_tag: "net"

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
head_title: ".NETを使用して文書の機密データを赤外線処理する"
head_description: "GroupDocs.Redaction for .NETを使用してビジネス文書を保護します。PDF、Word、Excel、PowerPoint、および画像ファイルから機密コンテンツを簡単に赤外線処理、隠蔽、または削除します。"

############################# Header ############################
title: "GroupDocs.Redactionでコンテンツを安全に保つ"
description: ".NETソリューションを使用して、PDF、Word文書、スプレッドシート、プレゼンテーション、および画像から機密情報やメタデータを赤外線処理、隠蔽または完全に削除します。"
words:
  for: "のために"

actions:
  main: "Nuget ダウンロード"
  main_link: "https://www.nuget.org/packages/GroupDocs.Redaction"
  alt: "ライセンス"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/net/"
  title: "始める準備はできましたか？"
  description: "GroupDocs.Redactionの機能を無料で試すか、ライセンスをリクエストしてください。"

release:
  title: "バージョン {0} 発表"
  notes: "新機能を見る"
  downloads: "ダウンロード"

code:
  title: "ファイル内容を赤外線処理する方法"
  more: "さらなる例"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
  install: "dotnet add package GroupDocs.Redaction"
  content: |
    ```csharp {style=abap}   
    // 入力ファイルをRedactorインスタンスに渡します
    using (Redactor redactor = new Redactor("source.pdf"))
    {
        // 赤外線処理オプションを構成します
        var repl_opt = new ReplacementOptions("[redacted]");
        var red = new ExactPhraseRedaction("Data", repl_opt);

        // 赤外線処理プロセスを実行します
        RedactorChangeLog result = redactor.Apply(red);

        // 赤外線処理されたファイルを保存します
        if (result.Status != RedactionStatus.Failed)
        {
            redactor.Save();
        }
    }  
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction 概要"
  description: ".NETアプリケーションにプロフェッショナルな赤外線処理を追加します"
  features:
    # feature loop
    - title: "テキストコンテンツを赤外線処理"
      content: "GroupDocs.Redaction for .NETを使用して、機密のテキストを見つけて赤外線処理できます。テキストは、追加のセキュリティのために色付きの画像オーバーレイを使用して置き換えたり隠したりできます。PDFやOffice文書を含むさまざまな形式でサポートされており、この機能はプライベートデータを保護し、ビジネスのコンプライアンスを効率化します。"

    # feature loop
    - title: "画像を赤外線処理"
      content: "文書ページ上で画像を完全にまたは部分的に自動的に検出して赤外線処理します。検索条件と対象領域を指定して、機密の視覚コンテンツを効率的にマスクします。"

    # feature loop
    - title: "ファイルのメタデータを管理"
      content: "多くのファイルタイプには、Wordファイル内の著者名や画像のEXIFデータなどの隠れたメタデータが含まれています。GroupDocs.Redaction for .NETは、この情報を見つけて赤外線処理し、完全なデータプライバシーを確保することを簡単にします。"

    # feature loop
    - title: "文書オブジェクトを赤外線処理"
      content: "PDFなどの形式で、注釈、コメント、埋め込みオブジェクトのような文書特有の要素を赤外線処理することで、完全なコンテンツ保護を確保します。"

############################# Platforms ############################
platforms:
  enable: true
  title: "プラットフォーム独立性"
  description: "GroupDocs.Redaction for .NETは、広範なオペレーティングシステム、開発フレームワーク、パッケージマネージャーと互換性があります。"
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
    - title: "VS Code"
      image: "vs_code"
    # platform loop
    - title: "ReSharper"
      image: "resharper"
    # platform loop
    - title: "macOS"
      image: "finder"
    # platform loop
    - title: "Linux"
      image: "linux"
    # platform loop
    - title: "NuGet"
      image: "nuget"

############################# File formats ############################
formats:
  enable: true
  title: "サポートされているファイル形式"
  description: |
    GroupDocs.Redaction for .NETは、次の[ファイル形式](https://docs.groupdocs.com/redaction/net/supported-document-formats/)で操作をサポートしています。
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
  title: "GroupDocs.Redaction for .NETの機能"
  description: "PDF、Officeファイル、および画像からデータを高速度かつ高精度で抽出および赤外線処理します。"

  items:
    # feature loop
    - icon: "search"
      title: "柔軟な検索"
      content: "特定のフレーズや用語を赤外線処理するために、大文字と小文字を区別するか、区別しない検索を実行します。"

    # feature loop
    - icon: "text"
      title: "テキストを置き換えるまたは削除する"
      content: "文書全体で機密テキストを見つけて、簡単に置き換えたり削除したりします。"

    # feature loop
    - icon: "image"
      title: "画像でテキストを隠す"
      content: "赤外線処理されたコンテンツを視覚的にマスクするために、テキストを置き換えるのではなく、色付きの画像オーバーレイを使用します。"

    # feature loop
    - icon: "search"
      title: "高度な検索機能"
      content: "複雑なデータセット全体で正確かつ柔軟なコンテンツ赤外線処理のために、正規表現を使用します。"

    # feature loop
    - icon: "table"
      title: "スコープ付き赤外線処理"
      content: "赤外線処理を関連するセクションのみに制限するために、特定のページや定義されたページ領域をターゲットにします。"

    # feature loop
    - icon: "template"
      title: "メタデータ赤外線処理"
      content: "ドキュメントの所有権や作成詳細を保護するために、メタデータプロパティを見つけて赤外線処理します。"

    # feature loop
    - icon: "pdf"
      title: "柔軟な出力形式"
      content: "レイアウトの整合性を保ちながら、赤外線処理されたファイルをPDFまたは任意のサポート形式にエクスポートします。"

    # feature loop
    - icon: "template"
      title: "完全なメタデータ抹消"
      content: "一度のアクションでドキュメントからすべてのメタデータを消去し、完全なプライバシーを確保します。"

    # feature loop
    - icon: "hyperlink"
      title: "XMLベースの赤外線処理ルール"
      content: "複数のファイルにわたって繰り返し使用できる自動化された処理のための赤外線処理ポリシーをXML形式で定義します。"


############################# Code samples ############################
code_samples:
  enable: true
  title: "コードサンプル"
  description: "GroupDocs.Redaction for .NETの典型的な使用例"
  items:
    # code sample loop
    - title: "正規表現を使用した赤外線処理"
      content: |
        GroupDocs.Redaction for .NETは、C#開発者が、[正規表現](https://docs.groupdocs.com/redaction/net/text-redactions/#use-regular-expression)を使用してテキストを赤外線処理し、画像オーバーレイで隠すことを可能にします。
        {{< landing/code title="正規表現を使用したWord文書の赤外線処理">}}
        ```csharp {style=abap}
        // Redactorクラスのインスタンスを作成します
        using (Redactor redactor = new Redactor("source.docx"))
        {
            // 正規表現を使用して赤外線処理ルールを定義します
            var replacement = new ReplacementOptions(System.Drawing.Color.Blue);
            var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);
            
            // 一致するすべてのテキストに青い正方形のオーバーレイをマスクします
            redactor.Apply(redaction);

            // 赤外線処理されたWord文書を保存します
            redactor.Save();
        }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "メタデータのクリーンアップ"
      content: |
        APIを使用して、サポートされているファイル形式からすべてのメタデータを簡単に[削除](https://docs.groupdocs.com/redaction/net/metadata-redactions/#clean-metadata)します。
        {{< landing/code title="プレゼンテーションからすべてのメタデータを削除します">}}
        ```csharp {style=abap}   
        // Redactorにプレゼンテーションのパスを提供します
        using (Redactor redactor = new Redactor("source.pptx"))
        {
            // 赤外線処理オプションを設定します
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // プレゼンテーションからすべてのメタデータを削除します
            redactor.Apply(redaction);

            // 清掃されたプレゼンテーションファイルを保存します
            redactor.Save();
        }
        ```
        {{< /landing/code >}}

---
