---
layout: "autogen"
draft: false
path: "redaction/net/text/rtf"
otherformats: RTF XLT PPTM POTM DOT PPSX PPSM XLSX DOC CSV PPTX DOCX  

head_title: ".NETCoreを介してドキュメントから機密情報を編集する"
head_description: "さまざまな形式のドキュメントに正確なフレーズまたは正規表現を使用してテキスト編集を適用する"

title: ".NET Core AppsのC＃を介してRTFファイルを編集する"
description: "Windows、Linux、macOSのRTFだけでなく、OfficeとOpenOfficeのドキュメント、スプレッドシート、プレゼンテーションのテキストを検索して置換する"

submenu:
    enable: true

about:
    enable: true
    title: ".NETAPIのドキュメント編集"
    content: |
        メタデータの変更やコメントの削除など、PDF、Word、Excel、PowerPointのドキュメントや画像から機密情報や機密情報を編集するための単一の形式に依存しないインターフェイス。 GroupDocs.Redactionツールを使用すると、テキストを編集して編集したドキュメントをPDFに保存し、すべてのページをラスターイメージに変換したり、ドキュメントを元の形式のままにしてさらに編集したりできます。

steps:
    enable: true
    title_left: "C＃を介してRTFから正確なテキストを編集する"
    content_left: |
        [GroupDocs.Redaction](/redaction/net/)を使用すると、.NET開発者はいくつかの簡単な手順でRTFファイルの編集機能を簡単に追加できます。

        * [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor)クラスのインスタンスを作成し、RTFファイルをロードします
        * [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/exactphraseredaction)クラスのインスタンスを作成して、テキストを検索して置換します
        * ExactPhraseRedactionのオブジェクトで[Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index)メソッドを呼び出します
        
    title_right: "RedactionAPIを使い始める"
    content_right: |
        コマンドラインから```nuget install GroupDocs.Redaction```としてインストールするか、VisualStudioのパッケージマネージャーコンソールから```Install-PackageGroupDocs.Redaction```を使用してインストールします。 
        または、[ダウンロード](https://downloads.groupdocs.com/redaction/net)からオフラインMSIインストーラーまたはDLLをZIPファイルで取得し、プロジェクトで手動で参照します。  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.rtf"))
        {
        	redactor.Apply(new ExactPhraseRedaction("John Doe", new ReplacementOptions("[personal]")));
        	redactor.Save();
        }
        ```
        

demos:
    enable: true
        

about_formats:
    enable: true


more_formats:
    enable: true


back_to_top:
    enable: true
---
