
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: pt
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Ocultar Conteúdo de Imagem em DOCX com Sobreposições Usando Python"
head_description: "Proteja imagens sensíveis em arquivos DOCX adicionando sobreposições com GroupDocs.Redaction for Python via .NET. Mantenha a formatação do documento intacta enquanto assegura visuais privados."

############################# Header ############################
title: "Proteger Imagens em Documentos DOCX Usando Sobreposições com Python" 
description: "Mantenha visuais pessoais e empresariais seguros em arquivos DOCX usando Python. Nossas ferramentas de redigação tornam a segurança do documento confiável."
subtitle: "Destaques do GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET fornecer aos desenvolvedores Python a capacidade de ocultar ou excluir conteúdo em arquivos DOCX. Proteger texto, imagens e metadados em vários formatos de documento.

############################# Steps ############################
steps:
    enable: true
    title: "Manter Dados Seguros em Arquivos Docx"
    content: |
      GroupDocs.Redaction for Python via .NET facilita para os aplicativos Python via .NET proteger documentos. Redija dados sensíveis em apenas alguns passos.
      
      1. Crie uma instância de Redactor e especifique o caminho para o arquivo Docx.
      2. Configure as preferências de redigação para se adequar à sua tarefa.
      3. Escolha a parte da imagem que deseja cobrir e defina a cor da sobreposição.
      4. Execute o processo e salve o arquivo redigido.
   
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

        # Ocultar partes sensíveis de imagens em DOCX

        # Definir tamanho e cor da sobreposição
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Especificar a área para redigação
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Carregar arquivo usando Redactor
        with gr.Redactor("input.docx") as redactor:

            # Aplicar sobreposição e salvar o seu documento
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ocultar Conteúdo em Documentos"
  description: "Com GroupDocs.Redaction for Python via .NET, você pode facilmente ocultar ou remover informações sensíveis de vários tipos de documento. Mantenha os arquivos seguros e compartilháveis."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Recursos Eficazes de Redigação"
  features:
    # feature loop
    - title: "Pesquisar e Editar Texto"
      content: "Localize palavras sensíveis e substitua-as para proteger seus dados."

    # feature loop
    - title: "Cobrir Imagens"
      content: "Aplicar sobreposições a imagens cheias ou partes selecionadas para proteger dados visuais."

    # feature loop
    - title: "Limpar Metadados Ocultos"
      content: "Remova ou atualize metadados para evitar compartilhamento acidental de dados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ocultar Dados de Imagem Usando Sobreposições"
      content: |
        Este exemplo mostra como proteger áreas sensíveis de imagem em documentos com sobreposições.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Configurar configurações da sobreposição: cor, tamanho, posição
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Selecionar uma área para redigir na página um
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Carregar o arquivo que você deseja redigir
          with gr.Redactor("source.docx") as redactor:

              # Aplicar sobreposição para cobrir a imagem
              result = redactor.apply(redaction)

              # Salvar o arquivo redigido
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
    title: "Ocultar Dados Sensíveis em Arquivos DOCX com Python"
    exclude: "DOCX"
    description: "Utilize Python para cobrir ou apagar dados privados em arquivos DOCX. A ferramenta certa para manter documentos confidenciais seguros."
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