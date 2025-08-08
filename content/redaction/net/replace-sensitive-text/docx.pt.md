
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: pt
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Remova Texto Privado de DOCX Usando C#"
head_description: "Proteja rapidamente conteúdo privado em seus arquivos DOCX com GroupDocs.Redaction for .NET e C#."

############################# Header ############################
title: "Encontre e Oculte Texto Sensível em Documentos DOCX com .NET" 
description: "Seja para uso pessoal ou empresarial, GroupDocs.Redaction for .NET e C# ajudam a manter as informações privadas fora de vista."
subtitle: "Como o GroupDocs.Redaction for .NET Pode Ajudá-lo" 

############################# About ############################
about:
    enable: true
    title: "O que é GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET fornece aos desenvolvedores C# as ferramentas para encontrar e limpar conteúdo sensível em arquivos DOCX. Funciona com texto, imagens, notas e mais.

############################# Steps ############################
steps:
    enable: true
    title: "Como Redigir Conteúdo em Arquivos Docx"
    content: |
      Siga estas etapas rápidas em seu projeto .NET para limpar texto privado com GroupDocs.Redaction for .NET.
      
      1. Inicie um novo Redactor e carregue o arquivo Docx.
      2. Escolha as configurações de redacção que deseja.
      3. Digite o texto a encontrar e o que deseja usar como substituição.
      4. Execute a redacção e salve seu arquivo.
   
    code:
      platform: "net"
      copy_title: "Copiar"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Redações de exemplo"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "clique para copiar"
        copy_done: "copiado"
      links:
        #  loop
        - title: "Mais exemplos"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "Documentação"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // Redigindo texto em um arquivo DOCX

        // Carregue seu arquivo usando Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Escolha as opções de redacção que atendem suas necessidades
            // Defina o que pesquisar e o que trocar
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Execute a ferramenta e salve seu arquivo redigido
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Mais Recursos de Redacção"
  description: "Com GroupDocs.Redaction for .NET, é possível remover conteúdo oculto ou visível de diferentes tipos de arquivos. Ótimo para compartilhar com segurança."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Visão geral das ferramentas de redacção"
  features:
    # feature loop
    - title: "Substituir texto privado"
      content: "Pesquise texto específico em qualquer lugar do arquivo e substitua-o. Funciona com texto comum ou padrões."

    # feature loop
    - title: "Cobrir imagens sensíveis"
      content: "Mascar partes de uma imagem ou páginas inteiras com sobreposições. Você controla cores, tamanhos e posições."

    # feature loop
    - title: "Limpar dados ocultos"
      content: "Remova metadados como nomes, comentários ou carimbos de data/hora para garantir que nada seja deixado para trás."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Encontre e Redija Padrões com Regex"
      content: |
        Use regex para buscar tipos de dados específicos como endereços de e-mail ou números de identificação e limpá-los automaticamente.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Abra o arquivo que você precisa limpar
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Crie uma regra de regex para EMAIL e uma string de substituição
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Execute a redacção usando suas configurações
              redactor.Apply(redaction);

              // Salve o arquivo atualizado
              var save_opt = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_opt);
          }
          ```
        platform: "net"
        copy_title: "Copiar"
        install:
          command: "dotnet add package GroupDocs.Redaction"
          copy_tip: "clique para copiar"
          copy_done: "copiado"
        top_links:
          #  loop
          - title: "Baixar resultado"
            icon: "download"
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
        links:
          #  loop
          - title: "Mais exemplos"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "Documentação"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "Pronto para começar?"
  description: "Experimente os recursos do GroupDocs.Redaction gratuitamente ou solicite uma licença"
  items:
    #  loop
    - title: "Download do Nuget"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "Licenciamento"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Redigir Dados em DOCX Usando .NET"
    exclude: "DOCX"
    description: "Proteja informações pessoais ou oficiais ocultando-as em documentos DOCX usando .NET. É simples e eficaz."
    items: 
        # format loop 1
        - name: "Redigir PDF"
          format: "PDF"
          link: "/redaction/net/replace-sensitive-text//pdf/"
          description: "Formato de Documento Portátil da Adobe"

        # format loop 2
        - name: "Redigir Word"
          format: "WORD"
          link: "/redaction/net/replace-sensitive-text//word/"
          description: "Documentos do MS Word e Open Office"
          
        # format loop 3
        - name: "Redigir Excel"
          format: "EXCEL"
          link: "/redaction/net/replace-sensitive-text//excel/"
          description: "Planilhas do MS Excel e Open Office"

        # format loop 4
        - name: "Redigir PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/replace-sensitive-text//powerpoint/"
          description: "Apresentações do MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redigir DOCX"
          format: "DOCX"
          link: "/redaction/net/replace-sensitive-text//docx/"
          description: "Documento Microsoft Word Open XML"
          
        # format loop 6
        - name: "Redigir XLSX"
          format: "XLSX"
          link: "/redaction/net/replace-sensitive-text//xlsx/"
          description: "Planilha do Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Redigir PPTX"
          format: "PPTX"
          link: "/redaction/net/replace-sensitive-text//pptx/"
          description: "Apresentação PowerPoint Open XML"


---