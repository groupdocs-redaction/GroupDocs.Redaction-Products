
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: pt
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Limpar Metadados em POWERPOINT Usando Python"
head_description: "Proteja seus documentos POWERPOINT com GroupDocs.Redaction for Python via .NET limpando metadados ocultos que podem conter informações privadas."

############################# Header ############################
title: "Limpar Metadados de POWERPOINT com Python" 
description: "Tenha melhor controle sobre seus arquivos usando ferramentas Python que removem rapidamente metadados ocultos."
subtitle: "Principais Recursos do GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Saiba Mais Sobre GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction é feito para desenvolvedores Python ajudarem na redacção de texto, imagens e metadados em arquivos POWERPOINT.

############################# Steps ############################
steps:
    enable: true
    title: "Passos para Apagar Metadados em Powerpoint"
    content: |
      GroupDocs.Redaction permite que seus aplicativos Python via .NET limpem os metadados de documentos em poucos cliques.
      
      1. Crie uma instância de Redactor e abra seu documento.
      2. Escolha quais campos de metadados apagar.
      3. Configure e aplique as configurações de redacção.
      4. Salve a versão final sem os dados ocultos.
   
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

        # Apague metadados de POWERPOINT

        # Escolha metadados para remover
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Carregue o arquivo no redactor
        with gr.Redactor("input.pptx") as redactor:

            # Limpe e salve o documento
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redacção Avançada para POWERPOINT"
  description: "GroupDocs.Redaction for Python via .NET ajuda a limpar arquivos excluindo conteúdo sensível. Funciona com vários formatos de arquivo e tipos de dados."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Principais Opções de Redacção"
  features:
    # feature loop
    - title: "Apagar Texto Privado"
      content: "Pesquise e remova palavras ou frases que não devem ser compartilhadas."

    # feature loop
    - title: "Cobrir Seções de Imagem"
      content: "Oculte partes de imagens que contêm visuais privados ou sensíveis."

    # feature loop
    - title: "Apagar Metadados"
      content: "Remova campos de metadados como Autor, Título e Comentários de seus arquivos."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Como Remover Metadados Ocultos"
      content: |
        Este exemplo mostra como apagar metadados embutidos, como Autor e Título, de seu documento POWERPOINT.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Limpe o campo do Autor
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Limpe o campo do Título
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Abra o arquivo no redactor
          with gr.Redactor("source.pptx") as redactor:

              # Execute a redacção
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Salve o arquivo atualizado
              save_options = gro.SaveOptions()
              save_options.add_suffix = True
              save_options.rasterize_to_pdf = False
              result_path = redactor.save(save_options)
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "Limpeza de Metadados para POWERPOINT Usando Python"
    exclude: "POWERPOINT"
    description: "Use Python para limpar dados privados de documentos POWERPOINT. Excelente para uso legal, empresarial e pessoal."
    items: 
        # format loop 1
        - name: "Redigir PDF"
          format: "PDF"
          link: "/redaction/python-net/remove-sensitive-metadata//pdf/"
          description: "Formato de Documento Portátil da Adobe"

        # format loop 2
        - name: "Redigir Word"
          format: "WORD"
          link: "/redaction/python-net/remove-sensitive-metadata//word/"
          description: "Documentos do MS Word e Open Office"
          
        # format loop 3
        - name: "Redigir Excel"
          format: "EXCEL"
          link: "/redaction/python-net/remove-sensitive-metadata//excel/"
          description: "Planilhas do MS Excel e Open Office"

        # format loop 4
        - name: "Redigir PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/remove-sensitive-metadata//powerpoint/"
          description: "Apresentações do MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redigir Imagem"
          format: "IMAGE"
          link: "/redaction/python-net/remove-sensitive-metadata//image/"
          description: "Formatos de imagem populares"

        # format loop 6
        - name: "Redigir Foto"
          format: "PHOTO"
          link: "/redaction/python-net/remove-sensitive-metadata//photo/"
          description: "Formatos de foto"

        # format loop 7
        - name: "Redigir DOCX"
          format: "DOCX"
          link: "/redaction/python-net/remove-sensitive-metadata//docx/"
          description: "Documento Microsoft Word Open XML"
          
        # format loop 8
        - name: "Redigir XLSX"
          format: "XLSX"
          link: "/redaction/python-net/remove-sensitive-metadata//xlsx/"
          description: "Planilha do Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Redigir PPTX"
          format: "PPTX"
          link: "/redaction/python-net/remove-sensitive-metadata//pptx/"
          description: "Apresentação PowerPoint Open XML"

        # format loop 10
        - name: "Redigir JPEG"
          format: "JPEG"
          link: "/redaction/python-net/remove-sensitive-metadata//jpeg/"
          description: "Imagem JPEG"


---