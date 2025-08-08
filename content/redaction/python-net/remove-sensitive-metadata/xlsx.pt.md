
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: pt
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Apagar Metadados de XLSX Usando Python"
head_description: "Remova metadados ocultos em seus documentos XLSX usando GroupDocs.Redaction for Python via .NET. Uma maneira limpa de proteger sua privacidade."

############################# Header ############################
title: "Remover Metadados em Arquivos XLSX com Python" 
description: "Com Python, você pode excluir detalhes privados de seus arquivos XLSX com segurança. Perfeito para uso pessoal e profissional."
subtitle: "Principais Recursos do GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "O que é GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction oferece aos desenvolvedores Python ferramentas para apagar ou ocultar qualquer conteúdo sensível em arquivos XLSX — de texto a imagens a metadados.

############################# Steps ############################
steps:
    enable: true
    title: "Limpar Metadados de Arquivos Xlsx"
    content: |
      GroupDocs.Redaction permite que seus projetos Python via .NET removam dados indesejados rapidamente.
      
      1. Crie uma instância de Redactor e carregue seu arquivo Xlsx.
      2. Escolha as entradas de metadados que deseja apagar.
      3. Execute a redacção para limpar essas entradas.
      4. Salve o arquivo atualizado.
   
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

        # Excluir metadados ocultos no seu documento XLSX

        # Defina quais campos de metadados devem ser removidos
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Abra o arquivo usando Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Aplique as alterações e salve o arquivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Oculte Conteúdo Sensível em Qualquer Lugar do Arquivo"
  description: "GroupDocs.Redaction for Python via .NET permite limpar informações privadas de vários formatos de arquivo. Mantenha seu conteúdo pronto para compartilhar."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Redacção de Metadados e Conteúdo"
  features:
    # feature loop
    - title: "Remover Texto Sensível"
      content: "Encontre e remova nomes, e-mails ou outros detalhes privados de documentos."

    # feature loop
    - title: "Cobrir Áreas da Imagem"
      content: "Coloque sobreposições para esconder áreas em imagens que não devem ser vistas."

    # feature loop
    - title: "Limpador de Metadados"
      content: "Remova campos ocultos como Autor, Título ou data de criação."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Remover Metadados do Documento"
      content: |
        Veja como remover metadados de seu arquivo XLSX usando algumas linhas de código.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Marque o campo do Autor para exclusão
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Marque o campo do Título para exclusão
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Abra o documento
          with gr.Redactor("source.xslx") as redactor:

              # Execute as regras de redacção
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Salve o arquivo limpo
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
    title: "Limpar Metadados em XLSX com Python"
    exclude: "XLSX"
    description: "Use Python para limpar metadados privados em seus arquivos XLSX. Uma boa maneira de preparar arquivos para compartilhamento ou publicação."
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