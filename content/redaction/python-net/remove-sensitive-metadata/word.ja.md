
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: ja
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonを使用したWORDファイルのメタデータクリーンアップ"
head_description: "GroupDocs.Redaction for Python via .NETを使用して、WORDファイル内の隠れたメタデータを削除します。個人情報や内部情報を明らかにしないようにします。"

############################# Header ############################
title: "Pythonツールを使用したWORDにおけるメタデータの削除" 
description: "Pythonを使用して不要なメタデータを削除し、ファイルを安全に保ちます。企業や個々のユーザーに最適です。"
subtitle: "GroupDocs.Redaction for Python via .NETの機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETを紹介"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redactionは、Python開発者がWORDファイルをプライベートに保つためのツールです。テキストを削除し、画像の一部を隠し、メタデータをクリーンにすることができます。

############################# Steps ############################
steps:
    enable: true
    title: "Wordの隠れたメタデータを削除する"
    content: |
      GroupDocs.Redactionを使用すれば、あなたのPython via .NETアプリは文書のメタデータを迅速にクリーンにできます。
      
      1. Redactorオブジェクトを作成し、Wordファイルを開きます。
      2. メタデータフィールドの修正ルールを設定します。
      3. 選択されたデータを削除するために修正を実行します。
      4. クリーンなファイルのバージョンを保存します。
   
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

        # WORDのメタデータをクリーンにする

        # 削除するメタデータを選択する
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Redactorを使用してドキュメントを開く
        with gr.Redactor("input.docx") as redactor:

            # 修正を適用してファイルを保存する
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "メタデータだけではなく、もっと多くを保護する"
  description: "テキストを修正し、画像を覆い、メタデータを削除するGroupDocs.Redaction for Python via .NETを使用してください。文書をクリーンでプライベートに保ちましょう。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "文書保護オプション"
  features:
    # feature loop
    - title: "テキストを見つけて置き換える"
      content: "プライベートまたはセンシティブなデータを含む単語やフレーズを削除または置き換えます。"

    # feature loop
    - title: "画像カバーを追加する"
      content: "文書内の画像の部分にオーバーレイを配置して隠します。"

    # feature loop
    - title: "メタデータをクリアする"
      content: "著者名、タイトル、コメント、その他の隠れた情報をクリーンにします。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "WORDファイルからのメタデータ削除"
      content: |
        この例では、WORDドキュメントから著者やタイトルのようなフィールドを削除する方法を示します。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 著者メタデータをターゲットとする
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # タイトルメタデータをターゲットとする
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # ドキュメントをインポートする
          with gr.Redactor("source.docx") as redactor:

              # 修正ツールを実行する
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
    title: "Pythonを使用したWORDのメタデータ削除"
    exclude: "WORD"
    description: "Pythonを使用してWORDから隠れたメタデータをクリーンにします。共有またはアーカイブ前にファイルを安全に保ちます。"
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