---
############################# Static ############################
layout: "landing"
date: 2025-08-11T19:33:04
draft: false

lang: ja
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

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
head_title: "Pythonを使用して文書から機密情報を消去する"
head_description: "GroupDocs.Redaction for Python via .NETを使用してファイルを安全に保ちます。PDF、Word、Excel、PowerPoint、および画像ファイル内の機密コンテンツを迅速に赤外線処理、隠蔽、または削除します。"

############################# Header ############################
title: "GroupDocs.Redactionで文書を安全に保つ"
description: "Pythonツールキットを使用して、PDF、Officeファイル、画像からプライベートデータを簡単に削除し、テキストを赤外線処理し、隠れたメタデータをクリーンアップします。"
words:
  for: "のために"

actions:
  main: "PyPi ダウンロード"
  main_link: "https://pypi.org/project/groupdocs-redaction-net/"
  alt: "ライセンス"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
  title: "始める準備はできましたか？"
  description: "GroupDocs.Redactionの機能を無料で試すか、ライセンスをリクエストしてください。"

release:
  title: "バージョン {0} 発表"
  notes: "新機能を見る"
  downloads: "ダウンロード"

code:
  title: "文書コンテンツを赤外線処理する"
  more: "さらなる例"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
  install: "pip install groupdocs-redaction-net"
  content: |
    ```python {style=abap}
    import groupdocs.redaction as gr
    import groupdocs.redaction.redactions as grr

    def run():

        # 赤外線処理パラメータを調整します
        repl_opt = grr.ReplacementOptions("[redacted]")
        red = grr.ExactPhraseRedaction("Data", repl_opt)

        # Redactorインスタンスにファイルをロードします
        with gr.Redactor("sample.pdf") as redactor:

            # 赤外線処理プロセスを開始します
            result = redactor.apply(red)
        
            # 清掃されたファイルをエクスポートします
            result_path = redactor.save()
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction 概要"
  description: "Pythonプロジェクトに強力な赤外線処理機能を統合します。"
  features:
    # feature loop
    - title: "機密テキストを赤外線処理"
      content: "GroupDocs.Redaction for Python via .NETを使用すると、機密の単語やフレーズを自動的に検出してカバーすることができます。色付きのボックスで文字を置き換えたりマスクしたりして、PDF、Word文書、その他の形式全体で強化された保護を実現します。"

    # feature loop
    - title: "画像をマスク"
      content: "当社の技術を使用して、指定した基準に基づいて画像を検出し、ぼかしたり、隠したり、ブロックしたりします。具体的な領域を定義するか、完全な制御のために自動検出を許可します。"

    # feature loop
    - title: "隠れたメタデータを削除"
      content: "著者名や追跡データなど、メタデータに隠された個人情報を排除します。GroupDocs.Redaction for Python via .NETは、あなたの文書が完全にクリーンで、安心して共有できるようにします。"

    # feature loop
    - title: "特殊要素を赤外線処理"
      content: "テキストを超えて、コメント、注釈、およびその他のファイル特有の要素を赤外線処理することで、完全な機密性を確保します。"

############################# Platforms ############################
platforms:
  enable: true
  title: "プラットフォーム独立性"
  description: "GroupDocs.Redaction for Python via .NETはすべての主要なオペレーティングシステムで動作し、一般的なフレームワークをサポートし、一般的なパッケージマネージャーと統合します。"
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
    GroupDocs.Redaction for Python via .NETは、次の[ファイル形式](https://docs.groupdocs.com/redaction/python-net/supported-document-formats/)をサポートしています。
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
  title: "GroupDocs.Redaction for Python via .NETの主な機能"
  description: "PDF、画像、およびOfficeファイル内の機密コンテンツを簡単にスキャン、特定、赤外線処理します。"

  items:
    # feature loop
    - icon: "search"
      title: "カスタマイズ可能な検索"
      content: "柔軟な検索モードを使用して、取り除くための正確な一致またはキーワードを見つけます。"

    # feature loop
    - icon: "text"
      title: "テキストを見つけて置き換えまたは削除"
      content: "機密データを見つけて、安全なテキストに置き換えるか、完全に消去します。"

    # feature loop
    - icon: "image"
      title: "視覚的マスキング"
      content: "赤外線処理されたセクションを視覚的に覆うために、色付きの形やパターンを重ねます。"

    # feature loop
    - icon: "search"
      title: "正規表現を活用した精密な検出"
      content: "高度なテキスト検索に正規表現を活用し、ピンポイント精度を実現します。"

    # feature loop
    - icon: "table"
      title: "ターゲットを絞った赤外線処理"
      content: "特定のページや定義された領域に赤外線処理を適用して、時間を節約し、重要なエリアに焦点を合わせます。"

    # feature loop
    - icon: "template"
      title: "メタデータのサニタイズ"
      content: "創作者、会社、またはタイムスタンプなどのメタデータフィールドを簡単にクリーンアップします。"

    # feature loop
    - icon: "pdf"
      title: "エクスポートオプション"
      content: "処理された文書をPDFまたは他の互換性のある形式で保存し、レイアウトの忠実度を損なうことなく行います。"

    # feature loop
    - icon: "template"
      title: "完全なメタデータ消去"
      content: "最大のデータ保護のために、一度のクリックですべての埋め込みメタデータを消去します。"

    # feature loop
    - icon: "hyperlink"
      title: "再利用可能なXMLポリシー"
      content: "カスタム赤外線処理設定をXMLテンプレートとして保存し、将来のタスクを自動化します。"


############################# Code samples ############################
code_samples:
  enable: true
  title: "コードサンプル"
  description: "GroupDocs.Redaction for Python via .NETがどのように赤外線処理タスクを簡素化するかを探ります。"
  items:
    # code sample loop
    - title: "正規表現に基づくテキスト赤外線処理"
      content: |
        GroupDocs.Redaction for Python via .NETは、Python開発者が[正規表現に基づくルール](https://docs.groupdocs.com/redaction/python-net/text-redactions/#use-regular-expression)を適用して、画像マスクで機密テキストを見つけて隠すことができるようにします。
        {{< landing/code title="正規表現を使用したWord文書の赤外線処理">}}
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr
        import groupdocs.pydrawing as grd

        def run():

            # 正規表現を使用して赤外線処理ルールを定義します
            color = grd.Color.from_argb(255, 220, 20, 60)
            repl_opt = grr.ReplacementOptions(color)
            reg_red = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

            # Redactorクラスのインスタンスを作成します
            with gr.Redactor("source.docx") as redactor:

                # 一致するすべてのテキストに青い正方形のオーバーレイをマスクします
                result = redactor.apply(reg_red)
        
                # 赤外線処理されたWord文書を保存します
                redactor.save()
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "メタデータを削除"
      content: |
        APIを使用して、[メタデータを消去](https://docs.groupdocs.com/redaction/python-net/metadata-redactions/#clean-metadata)し、複数のファイルタイプにわたって操作を行います。
        {{< landing/code title="プレゼンテーションからすべてのメタデータを削除します">}}
        ```python {style=abap}   
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # 赤外線処理オプションを設定します
        red = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Redactorにプレゼンテーションのパスを提供します
        with gr.Redactor("source.pptx") as redactor:

            # プレゼンテーションからすべてのメタデータを削除します
            result = redactor.apply(red)
        
            # 清掃されたプレゼンテーションファイルを保存します
            redactor.save()
        ```
        {{< /landing/code >}}

---
