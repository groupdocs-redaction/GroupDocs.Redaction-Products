---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: pt
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
head_title: "Remover dados confidenciais de documentos usando Java"
head_description: "Proteja suas informações sensíveis com GroupDocs.Redaction for Java. Oculte, redija ou exclua facilmente conteúdo privado em PDFs, arquivos do Office e imagens."

############################# Header ############################
title: "Proteja Dados Confidenciais com GroupDocs.Redaction"
description: "Remova facilmente dados privados, redija texto e limpe metadados de PDFs, Word, Excel, PowerPoint e formatos de imagem usando a confiável caixa de ferramentas Java."
words:
  for: "para"

actions:
  main: "Download do Maven"
  main_link: "https://releases.groupdocs.com/java/repo/com/groupdocs/groupdocs-redaction/"
  alt: "Licenciamento"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/java/"
  title: "Pronto para Começar?"
  description: "Experimente os recursos do GroupDocs.Redaction gratuitamente ou solicite uma licença."

release:
  title: "Versão {0} Lançada"
  notes: "Veja as novidades"
  downloads: "Downloads"

code:
  title: "Passos para Redigir o Conteúdo do Documento"
  more: "Mais exemplos"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
  install: |
    <dependency>
      <groupId>com.groupdocs</groupId>
      <artifactId>groupdocs-redaction</artifactId>
      <version>{0}</version>
    </dependency>
  content: |
    ```java {style=abap}  
    // Carregue seu arquivo fonte com uma instância de Redactor
    final Redactor redactor = new Redactor("sample.pdf");
    try
    {
        // Defina os critérios e configurações de redação
        ReplacementOptions ro = new ReplacementOptions("[redacted]");
        ExactPhraseRedaction red = new ExactPhraseRedaction("Data", ro);

        // Execute a operação de redação
        RedactorChangeLog result = redactor.apply(red);

        // Salve o arquivo com redigações aplicadas
        redactor.save();
    }
    finally { redactor.close(); }
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction em um Relance"
  description: "Melhore suas aplicações Java com ferramentas de redação profissionais"
  features:
    # feature loop
    - title: "Remover Texto Sensível"
      content: "Com GroupDocs.Redaction for Java, você pode procurar e ocultar texto privado usando sobreposições ou substituições personalizáveis. Compatível com PDFs, Word, Excel e mais, é ideal para conformidade regulatória e compartilhamento seguro de documentos."

    # feature loop
    - title: "Ocultar Imagens"
      content: "Identifique e oculte imagens totalmente ou parcialmente com base em seus requisitos. Defina regras de detecção e coordenadas de área para proteger dados visuais de forma eficiente."

    # feature loop
    - title: "Limpar Metadados Embutidos"
      content: "Os arquivos podem conter informações ocultas, como nomes de autores, ferramentas de criação ou detalhes do dispositivo. O GroupDocs.Redaction for Java permite detectar e sanitizar metadados em Word, Excel, imagens e outros formatos."

    # feature loop
    - title: "Redigir Objetos Embutidos"
      content: "Sanitizar documentos totalmente redigindo objetos como anotações PDF, comentários ou outros itens embutidos para eliminar qualquer vestígio de informações confidenciais."

############################# Platforms ############################
platforms:
  enable: true
  title: "Independência de Plataforma"
  description: "GroupDocs.Redaction for Java funciona em todos os principais sistemas operacionais, suporta frameworks populares e se integra com gerenciadores de pacotes comuns."
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
  title: "Formatos de Arquivo Suportados"
  description: |
    GroupDocs.Redaction for Java suporta trabalhar com os seguintes [formatos de arquivo](https://docs.groupdocs.com/redaction/java/supported-document-formats/).
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
  title: "O que Você Pode Fazer com GroupDocs.Redaction"
  description: "Localize e redija rapidamente conteúdo de PDFs, documentos do Office e imagens com precisão."

  items:
    # feature loop
    - icon: "search"
      title: "Buscar com Precisão"
      content: "Use modos de busca sensíveis a maiúsculas e insensíveis a maiúsculas para encontrar e redigir correspondências exatas."

    # feature loop
    - icon: "text"
      title: "Encontrar e Substituir Texto"
      content: "Detecte automaticamente e substitua ou exclua texto confidencial em todo o documento."

    # feature loop
    - icon: "image"
      title: "Sobrepor com Imagens Personalizadas"
      content: "Use blocos de imagem para obscurecer texto redigido, preservando o layout enquanto oculta detalhes."

    # feature loop
    - icon: "search"
      title: "Utilize Regex para Redação Avançada"
      content: "Utilize expressões regulares para detectar padrões complexos e redigir de forma inteligente."

    # feature loop
    - icon: "table"
      title: "Redigir Áreas Específicas"
      content: "Limite a redação a páginas selecionadas ou zonas definidas ao identificar áreas precisas para direcionar."

    # feature loop
    - icon: "template"
      title: "Limpar Campos de Metadados"
      content: "Identifique e limpe metadados do documento, incluindo autor, empresa ou dados de rastreamento."

    # feature loop
    - icon: "pdf"
      title: "Exportar no Formato Desejado"
      content: "Salve seus arquivos redigidos em PDF ou em outro formato suportado sem perder a integridade do layout."

    # feature loop
    - icon: "template"
      title: "Excluir Todos os Metadados"
      content: "Remova completamente metadados de arquivos suportados em um único comando."

    # feature loop
    - icon: "hyperlink"
      title: "Políticas de Redação Automatizadas"
      content: "Crie configurações de redação reutilizáveis armazenadas em XML para redação consistente e em lote."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Exemplos de Código"
  description: "Exemplos comuns de uso do GroupDocs.Redaction for Java"
  items:
    # code sample loop
    - title: "Redação Usando Regex"
      content: |
        GroupDocs.Redaction for Java capacita desenvolvedores Java a aplicar [redação baseada em regex](https://docs.groupdocs.com/redaction/java/text-redactions/#use-regular-expression) com mascaramento opcional de imagem:
        {{< landing/code title="Redigir Documentos do Word Usando Expressões Regulares">}}
        ```java {style=abap}
        // Crie uma instância da classe Redactor
        final Redactor redactor = new Redactor("source.docx");
        try
        {
            // Defina regras de redação usando uma expressão regular
            ReplacementOptions replacement = new ReplacementOptions(java.awt.Color.BLUE);
            RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);

            // Oculte todo texto correspondente com sobreposições de quadrados azuis
            redactor.apply(redaction);

            // Salve o documento do Word redigido
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Remover Todos os Metadados"
      content: |
        Com nossa API, você pode [excluir metadados](https://docs.groupdocs.com/redaction/java/metadata-redactions/#clean-metadata) em vários tipos de arquivos em um passo:
        {{< landing/code title="Remover Todos os Metadados de Apresentações">}}
        ```java {style=abap}   
        // Forneça o caminho da apresentação para Redactor
        final Redactor redactor  = new Redactor("source.pptx");
        try 
        {
            // Configure as opções de redação
            EraseMetadataRedaction red = new EraseMetadataRedaction(MetadataFilters.All);

            // Apague todos os metadados da apresentação
            redactor.apply(red);

            // Salve o arquivo da apresentação limpa
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}

---
