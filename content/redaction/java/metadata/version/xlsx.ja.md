---
layout: "auto-gen-gist"
draft: false
path: "redaction/java/metadata/version/xlsx"
otherformats: PDF DOC DOT DOCX DOCM RTF XLSX XLSM XLTX XLTM XLS XLT PPTX PPT PPSX POT PPS PPTM 
ad_headline: "メタデータの編集|Java"
ad_description: "JavaのXLSXメタデータからの編集バージョン"

head_title: "JavaでXLSXドキュメントからバージョンメタデータを編集する"
head_description: "GroupDocs.Redactionは、30を超えるドキュメントタイプから機密情報を削除または編集できる強力なサニタイズAPIです。"

title: "JavaでXLSXドキュメントからバージョンメタデータを編集する"
description: "GroupDocs.Redactionは、30を超えるドキュメントタイプから機密情報を削除または編集できる強力なサニタイズAPIです。"

button:
    enable: true

about:
    enable: true
    title: "メタデータ編集とは何ですか？"
    content: |
        ドキュメントを元の形式で保存するには、メタデータを削除または編集して、すべての機密データを削除する必要があります。これらの目的のために、GroupDocs.Redactionはメタデータ編集APIを提供します。 GroupDocs.Redaction APIを使用すると、編集済みドキュメントをPDFで保存するか、すべてのページをラスターイメージに変換するか、編集済みドキュメントを元の形式で保存してさらに編集することができます。 PDF、DOC、DOCX、PPT、PPTX、XLS、XLSXなどを含むすべてのファイル形式には、いくつかのメタデータプロパティがあります。これらのプロパティには、作成者名、カテゴリ、会社名、コメント、作成時間、最終更新日などが含まれます。また、さまざまなツールや手法を使用して表示できるファイルに関連付けられた非表示のデータもあります。 GroupDocs.Redaction APIを使用すると、これらのメタデータプロパティのいずれかにメタデータ編集を適用できます。必要なメタデータをフィルタリングすることで、それらを変更または削除できます。このガイドでは、JavaでXLSXドキュメントからバージョンメタデータを編集する方法について説明します。

steps:
    enable: true
    block:
    - title_left: "JavaでXLSXメタデータを編集する"
      content_left: |
        次のコードを使用すると、XLSXドキュメントから機密データを検索して編集できます。フィルタを設定することで、編集の範囲を設定できます。 MetadataFilter.Versionに。 「Version」プロパティを除くすべてのメタデータアイテムで、正規表現の一致が取り消されたままになります。
        
      title_right: "XLSXメタデータを編集する方法"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor)クラスのインスタンスを作成し、XLSXファイルをアップロードします
        * [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction)クラスのインスタンスを作成して、ドキュメントのメタデータから機密データを検索して置換します
        * フィルターを設定して編集の範囲を設定します。以下のコードでMetadataFilters.Versionを使用します 
        * [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction)のオブジェクトを使用してsaveメソッドを呼び出します
        
      gisthash: "aef660cb45245aebaae5c5eaa8054769"
      gistfile: "RedactVersionMetadata.java"

    - title_left: "JavaでXLSXメタデータを削除する"
      content_left: |
        EraseMetadataRedactionクラスを使用して、ドキュメント内のすべてまたは特定のメタデータを空の（空白または最小の）値に置き換えることができます。次のコードは、XLSXドキュメントからメタデータプロパティをフィルタリングして削除する方法を示しています。次の例では、ドキュメントのすべてのプロパティが空白になっています。
        
      title_right: "バージョンメタデータを消去する方法"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor)クラスのインスタンスを作成し、XLSXファイルをアップロードします
        * [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction)クラスのインスタンスを作成して、ドキュメントのメタデータを削除します
        * フィルターを設定して編集の範囲を設定します。以下のコードでMetadataFilter.AllをMetadataFilter.Versionに置き換えます
        * [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction)のオブジェクトを使用してsaveメソッドを呼び出します
        
      gisthash: "84586804ee996134fd12f2061f989fd5"
      gistfile: "CleanMetadata.java"

    - title_left: "システム要求"
      content_left: |
        GroupDocs.Redaction for Java APIは、すべての主要なプラットフォームとオペレーティングシステムでサポートされています。完全なシステム要件ガイドについては、[システム要件](https://docs.groupdocs.com/redaction/java/system-requirements)にアクセスしてください。以下のコードを実行する前に、システムに次の前提条件がインストールされていることを確認してください。 ：
        * オペレーティングシステム：Microsoft Windows、Linux、MacOS
        * 開発環境：NetBeans、Intellij IDEA、Eclipseなど
        * Javaランタイム環境：J2SE6.0以降
        * [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction)から最新バージョンのGroupDocs.Redaction for Javaを入手してください。
        
      title_right: "GroupDocs.Redactionを使用する理由"
      content_right: |
        * ユーザーがカスタムドキュメント形式と編集の種類を追加できるようにする
        * 機密情報を削除するために追加のソフトウェアは必要ありません
        * ページ範囲レンダリングドキュメントをPDFとして設定する機能
        * さまざまな種類のメタデータを編集する簡単な方法：作成者名、バージョン、タイトル、件名、説明など
        * ドキュメント情報の抽出-ファイルタイプ、ページ数など。

demos:
    enable: true
        

about_formats:
    enable: true


more_formats:
    enable: true


back_to_top:
    enable: true
---
