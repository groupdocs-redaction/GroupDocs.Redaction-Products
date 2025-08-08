
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: ja
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonを使用したPPTXファイルのメタデータ削除"
head_description: "GroupDocs.Redaction for Python via .NETはPPTXファイル内の隠れたデータをクリーンにします。機密情報を明らかにする可能性のある詳細を削除しましょう。"

############################# Header ############################
title: "Pythonを使用したPPTXファイル内のメタデータ削除" 
description: "Pythonを使用してPPTXファイルに保存されたプライベートメタデータを消去します。情報の保護に賢い方法です。"
subtitle: "GroupDocs.Redaction for Python via .NETの主要なツール" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETについて"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redactionは、テキスト、画像、メタデータの修正で文書をクリーンに保ちたいPython開発者向けです。

############################# Steps ############################
steps:
    enable: true
    title: "Pptxファイルのメタデータをクリーンアップするステップ"
    content: |
      GroupDocs.Redactionを使用して、Python via .NETアプリからメタデータを迅速に削除します。
      
      1. Redactorを作成し、Pptxドキュメントを開きます。
      2. 削除したいメタデータを選択します。
      3. 隠れたデータを削除するために修正を適用します。
      4. 更新されたファイルを保存します。
   
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

        # PPTX内のメタデータを消去する

        # 修正するフィールドを選択する
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Redactorでファイルを開く
        with gr.Redactor("input.pptx") as redactor:

            # 実行して変更を保存する
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "機密情報を隠す他の方法"
  description: "GroupDocs.Redaction for Python via .NETは多くのフォーマットにわたる修正をサポートします。文書から個人コンテンツを迅速に削除するための方法です。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ファイル修正ツール"
  features:
    # feature loop
    - title: "テキストを検索して削除する"
      content: "個人情報や敏感データを含む単語やフレーズを迅速に削除します。"

    # feature loop
    - title: "画像オーバーレイを追加する"
      content: "共有するべきでない画像のセクションを隠すためにオーバーレイを追加します。"

    # feature loop
    - title: "隠れたメタデータを削除する"
      content: "著者の名前、タイトル、および他の隠れたタグを削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "例：メタデータフィールドの削除"
      content: |
        この例に従って、共有の前にPPTXファイルから一般的なメタデータフィールドを削除します。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 著者フィールドを修正対象としてマークする
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # タイトルフィールドを修正対象としてマークする
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # ファイルを読み込む
          with gr.Redactor("source.pptx") as redactor:

              # 修正を実行する
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # クリーンなファイルをエクスポートする
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
    title: "Pythonを使用してPPTXからメタデータをクリーンアップ"
    exclude: "PPTX"
    description: "Pythonを使用してPPTXからバックグラウンドデータを削除します。プライバシーとコンプライアンスのために優れている。"
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