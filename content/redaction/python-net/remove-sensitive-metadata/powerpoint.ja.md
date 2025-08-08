
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: ja
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonを使用したPOWERPOINTのメタデータ削除"
head_description: "GroupDocs.Redaction for Python via .NETを使用して、隠れたメタデータをクリアし、プライベート情報が含まれている可能性のあるPOWERPOINTドキュメントを安全に保ちます。"

############################# Header ############################
title: "Pythonを使用したPOWERPOINTのメタデータのクリーンアップ" 
description: "Pythonツールを使用して、隠れたメタデータを迅速に削除できます。"
subtitle: "GroupDocs.Redaction for Python via .NETの主要機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETについて学ぶ"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redactionは、POWERPOINTファイル内のテキスト、画像、メタデータを修正するために、Python開発者向けです。

############################# Steps ############################
steps:
    enable: true
    title: "Powerpointのメタデータを削除するステップ"
    content: |
      GroupDocs.Redactionを使用すれば、数回のクリックで文書のメタデータをクリーンにできます。
      
      1. Redactorインスタンスを作成し、文書を開きます。
      2. 削除したいメタデータフィールドを選択します。
      3. 隠れたデータを削除するために修正を適用します。
      4. 隠れたデータなしの更新版を保存します。
   
    code:
      platform: "python-net"
      copy_title: "コピー"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "サンプルのマスキング"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "クリックしてコピー"
        copy_done: "コピーしました"
      links:
        #  loop
        - title: "さらに多くの例"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "ドキュメンテーション"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # POWERPOINTからメタデータを消去する

        # 削除するフィールドを選択する
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # リダクターでファイルを開く
        with gr.Redactor("input.pptx") as redactor:

            # クリーニングと保存を行う
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "POWERPOINTの高度な修正"
  description: "GroupDocs.Redaction for Python via .NETは、敏感なコンテンツを削除することでファイルをクリーンにします。複数のファイル形式およびデータタイプに対応しています。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "主要な修正オプション"
  features:
    # feature loop
    - title: "プライベートテキストを削除する"
      content: "共有すべきでない単語やフレーズを検索して削除します。"

    # feature loop
    - title: "画像のセクションを隠す"
      content: "プライベートまたはセンシティブなビジュアルを含む画像の部分を隠すためにマスキングします。"

    # feature loop
    - title: "メタデータをクリーンにする"
      content: "ファイルから著者、タイトル、コメントなどのメタデータフィールドを消去します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "隠れたメタデータを削除する方法"
      content: |
        このサンプルでは、POWERPOINTドキュメントから著者やタイトルなどの埋め込みメタデータを消去します。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 著者フィールドをクリアする
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # タイトルフィールドをクリアする
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # リダクターでファイルを開く
          with gr.Redactor("source.pptx") as redactor:

              # 修正を実行する
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # 更新されたファイルを保存する
              save_options = gro.SaveOptions()
              save_options.add_suffix = True
              save_options.rasterize_to_pdf = False
              result_path = redactor.save(save_options)
          ```
        platform: "python-net"
        copy_title: "コピー"
        install:
          command: "pip install groupdocs-redaction-net"
          copy_tip: "クリックしてコピー"
          copy_done: "コピーしました"
        top_links:
          #  loop
          - title: "結果をダウンロード"
            icon: "download"
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
        links:
          #  loop
          - title: "さらに多くの例"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "ドキュメンテーション"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "始める準備はできましたか？"
  description: "GroupDocs.Redactionの機能を無料で試すか、ライセンスをリクエストしてください"
  items:
    #  loop
    - title: "PyPiをダウンロード"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "ライセンス"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Pythonを使用したPOWERPOINTのメタデータクリーニング"
    exclude: "POWERPOINT"
    description: "Pythonを使用して、POWERPOINTドキュメントからプライベートデータをクリアします。法的、ビジネス、個人的な使用に最適です。"
    items: 
        # format loop 1
        - name: "PDFのマスキング"
          format: "PDF"
          link: "/redaction/python-net/remove-sensitive-metadata//pdf/"
          description: "Adobeポータブル文書形式"

        # format loop 2
        - name: "Wordのマスキング"
          format: "WORD"
          link: "/redaction/python-net/remove-sensitive-metadata//word/"
          description: "MS WordおよびOpen Officeの文書"
          
        # format loop 3
        - name: "Excelのマスキング"
          format: "EXCEL"
          link: "/redaction/python-net/remove-sensitive-metadata//excel/"
          description: "MS ExcelおよびOpen Officeのスプレッドシート"

        # format loop 4
        - name: "PowerPointのマスキング"
          format: "POWERPOINT"
          link: "/redaction/python-net/remove-sensitive-metadata//powerpoint/"
          description: "MS PowerPointおよびOpen Officeのプレゼンテーション"

        # format loop 5
        - name: "画像のマスキング"
          format: "IMAGE"
          link: "/redaction/python-net/remove-sensitive-metadata//image/"
          description: "一般的な画像フォーマット"

        # format loop 6
        - name: "写真のマスキング"
          format: "PHOTO"
          link: "/redaction/python-net/remove-sensitive-metadata//photo/"
          description: "写真フォーマット"

        # format loop 7
        - name: "DOCXのマスキング"
          format: "DOCX"
          link: "/redaction/python-net/remove-sensitive-metadata//docx/"
          description: "Microsoft WordオープンXMLドキュメント"
          
        # format loop 8
        - name: "XLSXのマスキング"
          format: "XLSX"
          link: "/redaction/python-net/remove-sensitive-metadata//xlsx/"
          description: "Microsoft ExcelオープンXMLスプレッドシート"
          
        # format loop 9
        - name: "PPTXのマスキング"
          format: "PPTX"
          link: "/redaction/python-net/remove-sensitive-metadata//pptx/"
          description: "PowerPointオープンXMLプレゼンテーション"

        # format loop 10
        - name: "JPEGのマスキング"
          format: "JPEG"
          link: "/redaction/python-net/remove-sensitive-metadata//jpeg/"
          description: "JPEG画像"


---