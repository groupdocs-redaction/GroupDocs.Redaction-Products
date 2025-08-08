
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: pt
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Remova Texto Privado de WORD Usando Java"
head_description: "Mantenha seus arquivos WORD seguros redigindo dados sensíveis com GroupDocs.Redaction for Java e Java. Limpeza rápida e simples."

############################# Header ############################
title: "Editar ou Remover Texto em Arquivos WORD com Java" 
description: "Proteja conteúdo importante em seus arquivos WORD usando GroupDocs.Redaction for Java e Java. Redija dados comerciais, legais ou pessoais com confiança."
subtitle: "O que Você Pode Fazer com GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "O que é GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java oferece aos desenvolvedores Java uma maneira confiável de redigir arquivos WORD. Limpe texto, imagens, comentários e detalhes ocultos com apenas algumas linhas de código.

############################# Steps ############################
steps:
    enable: true
    title: "Passos para Redigir Documentos Word"
    content: |
      Use GroupDocs.Redaction for Java em seus projetos Java para limpar arquivos antes de compartilhá-los.
      
      1. Crie um Redactor e carregue o documento Word.
      2. Defina suas opções de redação preferidas.
      3. Escolha o texto que deseja encontrar e substituir.
      4. Aplique a redação e salve seu arquivo.
   
    code:
      platform: "java"
      copy_title: "Copiar"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Redações de exemplo"
      install:
        command: |
          <dependencies>
            <dependency>
              <groupId>com.groupdocs</groupId>
              <artifactId>groupdocs-redaction</artifactId>
              <version>{0}</version>
            </dependency>
          </dependencies>

          <repositories>
            <repository>
              <id>repository.groupdocs.com</id>
              <name>GroupDocs Repository</name>
              <url>https://repository.groupdocs.com/repo/</url>
            </repository>
          </repositories>
        copy_tip: "clique para copiar"
        copy_done: "copiado"
      links:
        #  loop
        - title: "Mais exemplos"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "Documentação"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // Redigindo um documento WORD

        // Carregue o arquivo usando Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Escolha suas regras de redação
            // Digite o texto de pesquisa e a substituição
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Execute a redação e salve o novo arquivo
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Mais Recursos de Redação"
  description: "GroupDocs.Redaction for Java pode ajudá-lo a limpar informações sensíveis de diferentes tipos de arquivos. Remova texto, imagens e metadados rapidamente."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Redigir texto, imagens e metadados"
  features:
    # feature loop
    - title: "Pesquisar e substituir texto"
      content: "Encontre conteúdo específico e substitua ou exclua em todo o arquivo. Regex suportado."

    # feature loop
    - title: "Cobrir partes das páginas"
      content: "Use sobreposições para ocultar fotos ou seções do documento."

    # feature loop
    - title: "Limpar metadados"
      content: "Apague informações extras como autor, carimbos de data ou edições acompanhadas."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redação com Padrões Regex"
      content: |
        Pesquise texto usando expressões regulares para ocultar conteúdo como números de telefone, datas ou IDs.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carregue seu documento
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Defina um padrão de regex EMAIL e valor de substituição
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Aplique a redação
              redactor.apply(redaction);

              // Salve o documento atualizado
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "Copiar"
        install:
          command: |
            <dependencies>
              <dependency>
                <groupId>com.groupdocs</groupId>
                <artifactId>groupdocs-redaction</artifactId>
                <version>{0}</version>
              </dependency>
            </dependencies>
            <repositories>
              <repository>
                <id>repository.groupdocs.com</id>
                <name>GroupDocs Repository</name>
                <url>https://repository.groupdocs.com/repo/</url>
              </repository>
            </repositories>
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "Documentação"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "Pronto para começar?"
  description: "Experimente os recursos do GroupDocs.Redaction gratuitamente ou solicite uma licença"
  items:
    #  loop
    - title: "Download do Maven"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "Licenciamento"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Redigir Conteúdo em WORD com Java"
    exclude: "WORD"
    description: "Oculte ou remova conteúdo pessoal e privado de documentos WORD usando Java. Um modo simples de manter seus arquivos seguros."
    items: 
        # format loop 1
        - name: "Redigir PDF"
          format: "PDF"
          link: "/redaction/java/replace-sensitive-text//pdf/"
          description: "Formato de Documento Portátil da Adobe"

        # format loop 2
        - name: "Redigir Word"
          format: "WORD"
          link: "/redaction/java/replace-sensitive-text//word/"
          description: "Documentos do MS Word e Open Office"
          
        # format loop 3
        - name: "Redigir Excel"
          format: "EXCEL"
          link: "/redaction/java/replace-sensitive-text//excel/"
          description: "Planilhas do MS Excel e Open Office"

        # format loop 4
        - name: "Redigir PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/replace-sensitive-text//powerpoint/"
          description: "Apresentações do MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redigir DOCX"
          format: "DOCX"
          link: "/redaction/java/replace-sensitive-text//docx/"
          description: "Documento Microsoft Word Open XML"
          
        # format loop 6
        - name: "Redigir XLSX"
          format: "XLSX"
          link: "/redaction/java/replace-sensitive-text//xlsx/"
          description: "Planilha do Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Redigir PPTX"
          format: "PPTX"
          link: "/redaction/java/replace-sensitive-text//pptx/"
          description: "Apresentação PowerPoint Open XML"


---