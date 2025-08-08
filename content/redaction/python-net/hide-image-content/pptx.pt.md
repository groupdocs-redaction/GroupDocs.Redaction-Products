
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: pt
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Mascarar Imagens em Arquivos PPTX com Sobreposições Usando Python"
head_description: "Use GroupDocs.Redaction for Python via .NET para mascarar imagens sensíveis em arquivos PPTX com sobreposições coloridas. Proteja dados importantes enquanto mantém o formato do documento inalterado."

############################# Header ############################
title: "Mascarar Imagens Privadas em Documentos PPTX com Python" 
description: "Proteja visuais sensíveis em arquivos PPTX usando Python. Nossas ferramentas tornam a redigação de imagens simples e rápida."
subtitle: "Recursos do GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET fornece aos desenvolvedores Python ferramentas simples para ocultar ou apagar conteúdo em arquivos PPTX. Redija texto, imagens e metadados em vários formatos.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger Dados Sensíveis em Arquivos Pptx"
    content: |
      GroupDocs.Redaction for Python via .NET ajuda aplicativos Python via .NET a proteger documentos cobrindo conteúdo sensível.
      
      1. Crie uma instância de Redactor e carregue o arquivo Pptx.
      2. Defina opções de redigação de acordo com sua tarefa.
      3. Selecione a área da imagem e atribua uma cor de sobreposição.
      4. Aplique a sobreposição e salve o arquivo.
   
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
        import groupdocs.pydrawing as grd

        # Mascarar regiões de imagem privadas em PPTX

        # Defina a cor e o tamanho da sobreposição
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Marque a área a ser redigida
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Abra o documento com Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Aplique a sobreposição e salve o arquivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Recursos para Redigação de Documentos"
  description: "GroupDocs.Redaction for Python via .NET permite que você oculte ou remova dados confidenciais em muitos tipos de documentos. Mantenha seus arquivos limpos e protegidos."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Conjunto Completo de Ferramentas de Redigação"
  features:
    # feature loop
    - title: "Pesquisar e Substituir Texto"
      content: "Encontre texto sensível e redija-o para proteger suas informações."

    # feature loop
    - title: "Mascarar Áreas de Imagem"
      content: "Cubra imagens ou seções específicas com sobreposições para ocultar visuais privados."

    # feature loop
    - title: "Limpar Metadados"
      content: "Exclua ou altere metadados ocultos para evitar expor dados privados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cobrir Conteúdo de Imagem com Sobreposições Coloridas"
      content: |
        Veja como mascarar partes sensíveis de imagens em documentos usando sobreposições.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Defina as propriedades da sobreposição: tamanho, localização, cor
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Escolha a área da imagem na primeira página
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Carregue o documento
          with gr.Redactor("source.pptx") as redactor:

              # Sobreponha a área selecionada
              result = redactor.apply(redaction)

              # Salvar o documento protegido
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Mascarar Conteúdo em Arquivos PPTX com Python"
    exclude: "PPTX"
    description: "Use Python para ocultar ou excluir conteúdo privado em arquivos PPTX. Uma ferramenta confiável para segurança de documentos."
    items: 
        # format loop 1
        - name: "Redigir PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-image-content//pdf/"
          description: "Formato de Documento Portátil da Adobe"

        # format loop 2
        - name: "Redigir Word"
          format: "WORD"
          link: "/redaction/python-net/hide-image-content//word/"
          description: "Documentos do MS Word e Open Office"
          
        # format loop 3
        - name: "Redigir Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-image-content//excel/"
          description: "Planilhas do MS Excel e Open Office"

        # format loop 4
        - name: "Redigir PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-image-content//powerpoint/"
          description: "Apresentações do MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redigir Imagem"
          format: "IMAGE"
          link: "/redaction/python-net/hide-image-content//image/"
          description: "Formatos de imagem populares"

        # format loop 6
        - name: "Redigir Foto"
          format: "PHOTO"
          link: "/redaction/python-net/hide-image-content//photo/"
          description: "Formatos de foto"

        # format loop 7
        - name: "Redigir DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-image-content//docx/"
          description: "Documento Microsoft Word Open XML"
          
        # format loop 8
        - name: "Redigir XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-image-content//xlsx/"
          description: "Planilha do Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Redigir PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-image-content//pptx/"
          description: "Apresentação PowerPoint Open XML"

        # format loop 10
        - name: "Redigir JPEG"
          format: "JPEG"
          link: "/redaction/python-net/hide-image-content//jpeg/"
          description: "Imagem JPEG"


---