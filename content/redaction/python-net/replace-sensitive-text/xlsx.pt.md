
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: pt
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Remover Texto Privado de XLSX Usando Python"
head_description: "Proteja seus arquivos XLSX ocultando ou removendo dados sensíveis com GroupDocs.Redaction for Python via .NET e Python."

############################# Header ############################
title: "Ocultar ou Excluir Texto Privado em Arquivos XLSX Usando Python" 
description: "Com GroupDocs.Redaction for Python via .NET e Python, você pode remover texto privado de documentos XLSX — rápido e confiável."
subtitle: "O que Você Pode Fazer com GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Conheça GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET fornece aos desenvolvedores Python tudo o que precisam para remover ou ocultar dados privados em arquivos XLSX — texto, imagens, notas e mais.

############################# Steps ############################
steps:
    enable: true
    title: "Como Remover Conteúdo em Arquivos Xlsx"
    content: |
      Use GroupDocs.Redaction for Python via .NET em seu aplicativo Python via .NET para limpar ou ocultar conteúdo sensível rapidamente.
      
      1. Inicie um Redactor e carregue o arquivo Xlsx.
      2. Escolha as configurações de redatação necessárias.
      3. Defina o texto de pesquisa e o que deve substituí-lo.
      4. Aplique a redatação e salve seu arquivo.
   
    code:
      platform: "python-net"
      copy_title: "Copiar"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Redações de exemplo"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "clique para copiar"
        copy_done: "copiado"
      links:
        #  loop
        - title: "Mais exemplos"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "Documentação"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # Como redigir texto em um arquivo XLSX

        # Escolha suas preferências de redatação.
        # Defina os valores de pesquisa e substituição.
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Use o construtor Redactor para carregar seu arquivo.
        with gr.Redactor("input.xslx") as redactor:

            # Aplique as alterações e salve o XLSX atualizado.
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Recursos Extras de Redação"
  description: "GroupDocs.Redaction for Python via .NET facilita ocultar ou excluir informações privadas em diferentes formatos de arquivo. Compartilhe apenas o que deve ser visto."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Recursos para redatar texto, imagens e metadados"
  features:
    # feature loop
    - title: "Substituir Texto Privado"
      content: "Encontre e troque palavras ou padrões correspondentes. Suporta regex e pesquisa por palavras-chave."

    # feature loop
    - title: "Ocultar Imagens Sensíveis"
      content: "Cubra partes do seu arquivo com sobreposições. Personalize a aparência e o que ele oculta."

    # feature loop
    - title: "Apagar Metadados"
      content: "Remova informações ocultas, como histórico de documentos, nomes de autores ou tags internas."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redigir Usando Padrões Regex"
      content: |
        Encontre padrões de texto, como números de telefone, IDs ou e-mails com regex e remova-os rapidamente.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Defina seu padrão EMAIL regex e texto de substituição.
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Abra o documento que deseja limpar.
          with gr.Redactor("source.xslx") as redactor:

              # Aplique regras de redatação.
              result = redactor.apply(redaction)

              # Salve seu arquivo redatado.
              so = gro.SaveOptions()
              so.add_suffix = True
              so.rasterize_to_pdf = False
              result_path = redactor.save(so)
          ```
        platform: "python-net"
        copy_title: "Copiar"
        install:
          command: "pip install groupdocs-redaction-net"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "Documentação"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "Pronto para começar?"
  description: "Experimente os recursos do GroupDocs.Redaction gratuitamente ou solicite uma licença"
  items:
    #  loop
    - title: "Download do PyPi"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "Licenciamento"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Redigir Conteúdo em XLSX Usando Python"
    exclude: "XLSX"
    description: "Mantenha dados sensíveis privados ao removê-los de arquivos XLSX usando as ferramentas Python."
    items: 
        # format loop 1
        - name: "Redigir PDF"
          format: "PDF"
          link: "/redaction/python-net/replace-sensitive-text//pdf/"
          description: "Formato de Documento Portátil da Adobe"

        # format loop 2
        - name: "Redigir Word"
          format: "WORD"
          link: "/redaction/python-net/replace-sensitive-text//word/"
          description: "Documentos do MS Word e Open Office"
          
        # format loop 3
        - name: "Redigir Excel"
          format: "EXCEL"
          link: "/redaction/python-net/replace-sensitive-text//excel/"
          description: "Planilhas do MS Excel e Open Office"

        # format loop 4
        - name: "Redigir PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/replace-sensitive-text//powerpoint/"
          description: "Apresentações do MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redigir DOCX"
          format: "DOCX"
          link: "/redaction/python-net/replace-sensitive-text//docx/"
          description: "Documento Microsoft Word Open XML"
          
        # format loop 6
        - name: "Redigir XLSX"
          format: "XLSX"
          link: "/redaction/python-net/replace-sensitive-text//xlsx/"
          description: "Planilha do Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Redigir PPTX"
          format: "PPTX"
          link: "/redaction/python-net/replace-sensitive-text//pptx/"
          description: "Apresentação PowerPoint Open XML"


---