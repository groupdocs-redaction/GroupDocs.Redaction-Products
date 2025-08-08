---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: pt
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
head_title: "Redija dados sensíveis em seus documentos usando .NET"
head_description: "Proteja seus documentos empresariais com GroupDocs.Redaction for .NET. Redija, oculte ou remova conteúdo confidencial de PDFs, Word, Excel, PowerPoint e arquivos de imagem."

############################# Header ############################
title: "Proteja Seu Conteúdo com GroupDocs.Redaction"
description: "Redija, oculte ou remova permanentemente informações sensíveis e metadados de PDFs, documentos do Word, planilhas, apresentações e imagens usando nossa poderosa solução .NET."
words:
  for: "para"

actions:
  main: "Download do Nuget"
  main_link: "https://www.nuget.org/packages/GroupDocs.Redaction"
  alt: "Licenciamento"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/net/"
  title: "Pronto para Começar?"
  description: "Experimente os recursos do GroupDocs.Redaction gratuitamente ou solicite uma licença."

release:
  title: "Versão {0} Lançada"
  notes: "Veja as novidades"
  downloads: "Downloads"

code:
  title: "Como Redigir Conteúdo de Arquivo"
  more: "Mais exemplos"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
  install: "dotnet add package GroupDocs.Redaction"
  content: |
    ```csharp {style=abap}   
    // Passe o arquivo de entrada para uma instância de Redactor
    using (Redactor redactor = new Redactor("source.pdf"))
    {
        // Configure as opções de redação
        var repl_opt = new ReplacementOptions("[redacted]");
        var red = new ExactPhraseRedaction("Data", repl_opt);

        // Execute o processo de redação
        RedactorChangeLog result = redactor.Apply(red);

        // Salve o arquivo redigido
        if (result.Status != RedactionStatus.Failed)
        {
            redactor.Save();
        }
    }  
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction em um Relance"
  description: "Adicione redação de conteúdo de qualidade profissional às suas aplicações .NET"
  features:
    # feature loop
    - title: "Redigir Conteúdo Textual"
      content: "GroupDocs.Redaction for .NET permite localizar e redigir texto sensível. O texto pode ser substituído ou ocultado usando sobreposições de imagem coloridas para maior segurança. Suportado em uma ampla variedade de formatos, incluindo PDFs e documentos do Office, este recurso ajuda a proteger dados privados e simplifica a conformidade empresarial."

    # feature loop
    - title: "Redigir Imagens"
      content: "Detecte e redija automaticamente imagens — total ou parcialmente — em páginas de documentos. Especifique critérios de busca e regiões-alvo para mascarar eficientemente conteúdo visual sensível."

    # feature loop
    - title: "Gerenciar Metadados de Arquivo"
      content: "Muitos tipos de arquivo contêm metadados ocultos, como nomes de autores em arquivos do Word ou dados EXIF em imagens. O GroupDocs.Redaction for .NET facilita encontrar e redigir essas informações para garantir total privacidade de dados."

    # feature loop
    - title: "Redigir Objetos de Documentos"
      content: "Garanta proteção completa do conteúdo redigindo elementos específicos do documento, como anotações, comentários e objetos incorporados em formatos como PDFs."

############################# Platforms ############################
platforms:
  enable: true
  title: "Independência de Plataforma"
  description: "GroupDocs.Redaction for .NET é compatível com uma ampla gama de sistemas operacionais, frameworks de desenvolvimento e gerenciadores de pacotes."
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
  title: "Formatos de Arquivo Suportados"
  description: |
    GroupDocs.Redaction for .NET suporta operações com os seguintes [formatos de arquivo](https://docs.groupdocs.com/redaction/net/supported-document-formats/).
  groups:
    # group loop
    - color: "green"
      content: |
        ### Formatos MS Office
        * **Word:** DOCX, DOC, DOCM, DOT, DOTX, DOTM,
        * **Excel:** XLSX, XLS, XLSM, XLSB, 
        * **PowerPoint:** PPT, PPTX
    # group loop
    - color: "blue"
      content: |
        ### Outros Formatos do Office
        * **Portátil:** PDF 
        * **OpenDocument:** ODT, ODS, OTS, ODP, OTT
        * **Formatos de Texto:** RTF, CSV, TXT, TSV
      # group loop
    - color: "red"
      content: |
        ### Outros Formatos
        * **Web:** HTM, HTML, MD
        * **Imagens:** BMP, GIF, JPEG, PNG, TIFF, WEBP
        * **eBooks:** DJVU 
        
        

############################# Features ############################
features:
  enable: true
  title: "Recursos do GroupDocs.Redaction for .NET"
  description: "Extraia e redija dados de PDFs, arquivos do Office e imagens com alta velocidade e precisão."

  items:
    # feature loop
    - icon: "search"
      title: "Busca Flexível"
      content: "Realize buscas sensíveis ou insensíveis a maiúsculas para redigir frases ou termos específicos."

    # feature loop
    - icon: "text"
      title: "Substituir ou Remover Texto"
      content: "Encontre e substitua ou exclua texto sensível em seus documentos."

    # feature loop
    - icon: "image"
      title: "Ocultar Texto com Imagens"
      content: "Use sobreposições de imagem coloridas para mascarar visualmente o conteúdo redigido em vez de substituir texto."

    # feature loop
    - icon: "search"
      title: "Capacidades de Busca Avançadas"
      content: "Use expressões regulares para redação precisa e flexível de conteúdo em conjuntos de dados complexos."

    # feature loop
    - icon: "table"
      title: "Redação Limitada"
      content: "Direcione páginas específicas ou áreas definidas para limitar a redação apenas a seções relevantes."

    # feature loop
    - icon: "template"
      title: "Redação de Metadados"
      content: "Encontre e redija propriedades de metadados para proteger a propriedade e os detalhes de criação do documento."

    # feature loop
    - icon: "pdf"
      title: "Formatos de Saída Flexíveis"
      content: "Exporte arquivos redigidos em PDF ou qualquer formato suportado, preservando a integridade do layout."

    # feature loop
    - icon: "template"
      title: "Apagar Todos os Metadados"
      content: "Apague todos os metadados de um documento em uma única ação para garantir total privacidade."

    # feature loop
    - icon: "hyperlink"
      title: "Regras de Redação Baseadas em XML"
      content: "Defina políticas de redação em formato XML para processamento automatizado e repetível em vários arquivos."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Exemplos de Código"
  description: "Exemplos típicos de uso do GroupDocs.Redaction for .NET em ação"
  items:
    # code sample loop
    - title: "Redação com Expressões Regulares"
      content: |
        GroupDocs.Redaction for .NET permite que desenvolvedores C# redijam texto usando [expressões regulares](https://docs.groupdocs.com/redaction/net/text-redactions/#use-regular-expression) e ocultem com sobreposições de imagem:
        {{< landing/code title="Redigir Documentos do Word Usando Expressões Regulares">}}
        ```csharp {style=abap}
        // Crie uma instância da classe Redactor
        using (Redactor redactor = new Redactor("source.docx"))
        {
            // Defina regras de redação usando uma expressão regular
            var replacement = new ReplacementOptions(System.Drawing.Color.Blue);
            var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);
            
            // Oculte todo texto correspondente com sobreposições de quadrados azuis
            redactor.Apply(redaction);

            // Salve o documento do Word redigido
            redactor.Save();
        }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Limpeza de Metadados"
      content: |
        Use nossa API para [remover](https://docs.groupdocs.com/redaction/net/metadata-redactions/#clean-metadata) facilmente todos os metadados de formatos de arquivo suportados:
        {{< landing/code title="Remover Todos os Metadados de Apresentações">}}
        ```csharp {style=abap}   
        // Forneça o caminho da apresentação para Redactor
        using (Redactor redactor = new Redactor("source.pptx"))
        {
            // Configure as opções de redação
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Apague todos os metadados da apresentação
            redactor.Apply(redaction);

            // Salve o arquivo da apresentação limpa
            redactor.Save();
        }
        ```
        {{< /landing/code >}}

---
