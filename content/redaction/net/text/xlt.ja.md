---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "ja/redaction/net/text/xlt"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLTM XLTX  

############################# Head ############################
head_title: ".NETCoreを介してドキュメントから機密情報を編集する"
head_description: "さまざまな形式のドキュメントに正確なフレーズまたは正規表現を使用してテキスト編集を適用する"

############################# Header ############################
title: ".NET Core AppsのC#を介してXLT ファイルを編集します"
description: "OfficeとOpenOfficeのドキュメント、スプレッドシート、プレゼンテーションのテキストを検索して置換し、Windows、Linux、macOSでは XLT"

################### SubMenu/Download Button #####################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: ".NETAPIのドキュメント編集"
    content: |
        メタデータの変更やコメントの削除など、PDF、Word、Excel、PowerPointのドキュメントや画像から機密情報や分類された情報を編集するための、フォーマットに依存しない単一のインターフェイス。 GroupDocs.Redactionツールを使用すると、テキストを編集して編集したドキュメントをPDFに保存し、すべてのページをラスターイメージに変換したり、ドキュメントを元の形式のままにしてさらに編集したりできます。

############################# Steps ############################
steps:
    enable: true
    block:
    - title_left: "XLTからC#経由で正確なテキストを編集"
      content_left: |
        [GroupDocs.Redaction](/redaction/net/) を使用すると、.NET開発者はいくつかの簡単な手順でXLTファイル編集機能を簡単に追加できます。 

        * [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) クラスのインスタンスを作成し、XLTファイルをロードします 
        * [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/exactphraseredaction) クラスのインスタンスを作成して、テキストを検索して置換します
        * ExactPhraseRedactionのオブジェクトを使用して[Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) メソッドを呼び出します

      title_right: "RedactionAPIの使用を開始する"
      content_right: |
        コマンドラインから```nuget install GroupDocs.Redaction```としてインストールするか、VisualStudioのPackageManagerコンソールから```Install-PackageGroupDocs.Redaction```を使用してインストールします。
        または、[ダウンロード](https://downloads.groupdocs.com/redaction/net) からオフラインMSIインストーラーまたはDLLをZIPファイルで取得し、プロジェクトで手動で参照します。

      code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.xlt"))
        {
        	redactor.Apply(new ExactPhraseRedaction("John Doe", new ReplacementOptions("[personal]")));
        	redactor.Save();
        }
        ```
      
    - title_left: "システム要求"
      content_left: |
        GroupDocs.Redaction for .NET APIは、すべての主要なプラットフォームとオペレーティングシステムでサポートされています。 完全なシステム要件ガイドについては、[システム要件](https://docs.groupdocs.com/redaction/net/system-requirements/) にアクセスしてください。以下のコードを実行する前に、次の前提条件がインストールされていることを確認してください。 システム：
        * オペレーティングシステム：Microsoft Windows、Linux、MacOS
        * 開発環境：Visual Studio、Xamarin、MonoDevelopなど
        * フレームワーク：.NETフレームワーク、.NET標準、.NETコア、モノラル
        * [NuGet](https://www.nuget.org/packages/GroupDocs.Redaction/) から最新バージョンのGroupDocs.Redaction.NETAPIを入手します。
        
      title_right: "GroupDocs.Redactionを使用する理由"
      content_right: |
        * ユーザーがカスタムドキュメント形式と編集の種類を追加できるようにする
        * 機密情報を削除するために追加のソフトウェアは必要ありません
        * ページ範囲レンダリングドキュメントをPDFとして設定する機能
        * さまざまな種類のメタデータを編集する簡単な方法：作成者名、バージョン、タイトル、件名、説明など
        * ドキュメント情報の抽出-ファイルタイプ、ページ数など。
        * 複数のデータ形式の完全サポート

############################# Demos ############################
demos:
    enable: true
############################# More Formats ############################
more_formats:
    enable: true

############################# Back to top ###############################
back_to_top:
    enable: true
---