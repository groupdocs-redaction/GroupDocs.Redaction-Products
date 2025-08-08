
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: pt
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Remova Texto Privado de XLSX Usando C#"
head_description: "Limpe rapidamente o conteúdo privado de seus arquivos XLSX usando GroupDocs.Redaction for .NET e C#."

############################# Header ############################
title: "Edite ou Oculte Texto Sensível em Documentos XLSX com .NET" 
description: "Com GroupDocs.Redaction for .NET e C#, você pode remover informações pessoais ou de negócios de seus arquivos XLSX e mantê-los seguros para compartilhar."
subtitle: "O Que Você Pode Fazer com GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "O que é GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET permite que desenvolvedores C# pesquisem e removam informações sensíveis de arquivos XLSX. Funciona com texto, imagens, notas e dados de arquivo.

############################# Steps ############################
steps:
    enable: true
    title: "Como Redigir Texto em Arquivos Xlsx"
    content: |
      Use GroupDocs.Redaction for .NET dentro do seu projeto .NET para ocultar ou excluir informações sensíveis em poucos passos.
      
      1. Crie um Redactor e carregue o arquivo Xlsx.
      2. Escolha as configurações de redacção que atendem suas necessidades.
      3. Digite o texto a encontrar e o que deseja usar como substituição.
      4. Execute o processo de redacção e salve seu arquivo atualizado.
   
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
        // Redigindo texto de um arquivo XLSX

        // Use Redactor para abrir o arquivo
        using (Redactor redactor  = new Redactor("input.xlsx"))
        {
            // Escolha suas opções de redacção
            // Defina o texto de pesquisa e substituição
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Aplique a redacção e salve o arquivo limpo
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Mais Ferramentas para Redigir"
  description: "GroupDocs.Redaction for .NET ajuda a limpar diferentes tipos de conteúdo — texto, imagens ou metadados — para que seus arquivos estejam prontos para compartilhar com segurança."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Opções de redacção mostradas"
  features:
    # feature loop
    - title: "Substituir texto sensível"
      content: "Pesquise no arquivo e substitua qualquer informação confidencial. Suporta texto simples e padrões."

    # feature loop
    - title: "Cobrir áreas de imagem"
      content: "Use sobreposições para ocultar dados visuais. Escolha a cor, o tamanho da área e o layout da página."

    # feature loop
    - title: "Remover dados extras"
      content: "Exclua metadados como nomes de autor, carimbos de data/hora ou notas internas para evitar vazamentos."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redija com Regras Regex"
      content: |
        Use regex para encontrar e limpar padrões como números de telefone, e-mails ou outros detalhes pessoais.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Abra o arquivo para começar
          using (Redactor redactor  = new Redactor("source.xlsx"))
          {
              // Escreva uma regra regex para EMAIL e escolha uma substituição
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Execute a redacção com base no seu padrão
              redactor.Apply(redaction);

              // Salve o arquivo redigido
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
    title: "Oculte Informações em XLSX com .NET"
    exclude: "XLSX"
    description: "Limpe seus documentos XLSX removendo texto pessoal ou sensível usando ferramentas .NET. Mantenha seus dados privados."
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