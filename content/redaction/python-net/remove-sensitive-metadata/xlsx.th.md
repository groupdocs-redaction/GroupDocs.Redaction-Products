
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: th
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ลบข้อมูลเมตาจาก XLSX โดยใช้ Python"
head_description: "กำจัดข้อมูลเมตาที่ซ่อนอยู่ในเอกสาร XLSX ของคุณโดยใช้ GroupDocs.Redaction for Python via .NET วิธีการทำความสะอาดเพื่อปกป้องความเป็นส่วนตัว."

############################# Header ############################
title: "ลบข้อมูลเมตาในไฟล์ XLSX ด้วย Python" 
description: "ด้วย Python คุณสามารถลบรายละเอียดส่วนตัวจากไฟล์ XLSX ของคุณได้อย่างปลอดภัย เหมาะสำหรับการใช้งานส่วนตัวและมืออาชีพ."
subtitle: "คุณสมบัติหลักของ GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "รู้จัก GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction มอบเครื่องมือให้กับนักพัฒนาที่ใช้ Python เพื่อทำความสะอาดหรือซ่อนเนื้อหาที่ละเอียดอ่อนในไฟล์ XLSX — ตั้งแต่ข้อความไปจนถึงภาพและข้อมูลเมตา.

############################# Steps ############################
steps:
    enable: true
    title: "ลบข้อมูลเมตาจากไฟล์ Xlsx"
    content: |
      GroupDocs.Redaction ช่วยให้โครงการ Python via .NET ของคุณลบข้อมูลที่ไม่ต้องการได้อย่างรวดเร็ว.
      
      1. สร้างอินสแตนซ์ Redactor และโหลดไฟล์ Xlsx ของคุณ.
      2. เลือกฟิลด์ข้อมูลเมตาที่คุณต้องการลบ.
      3. ดำเนินการลบข้อมูลเพื่อลบข้อมูลเหล่านั้น.
      4. บันทึกไฟล์เวอร์ชันที่ปรับปรุงแล้ว.
   
    code:
      platform: "python-net"
      copy_title: "คัดลอก"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "การลบข้อมูลตัวอย่าง"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "คลิ๊กเพื่อคัดลอก"
        copy_done: "คัดลอกแล้ว"
      links:
        #  loop
        - title: "ตัวอย่างเพิ่มเติม"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "เอกสารประกอบ"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # ลบข้อมูลเมตาที่ซ่อนอยู่ในเอกสาร XLSX

        # กำหนดว่าจะลบฟิลด์ข้อมูลเมตาใด
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # เปิดไฟล์โดยใช้ Redactor
        with gr.Redactor("input.xslx") as redactor:

            # ประมวลผลและบันทึกไฟล์
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ซ่อนเนื้อหาที่ละเอียดอ่อนในทุกส่วนของไฟล์"
  description: "GroupDocs.Redaction for Python via .NET ช่วยให้คุณทำความสะอาดข้อมูลส่วนตัวจากหลายรูปแบบไฟล์ รักษาเนื้อหาของคุณให้พร้อมแบ่งปัน."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "การลบข้อมูลและเนื้อหา"
  features:
    # feature loop
    - title: "ลบข้อความที่ละเอียดอ่อน"
      content: "ค้นหาและลบชื่อ, อีเมล, หรือรายละเอียดส่วนตัวอื่น ๆ จากเอกสาร."

    # feature loop
    - title: "ปกปิดพื้นที่ในภาพ"
      content: "ใส่ทับเพื่อปกปิดพื้นที่ในภาพที่ไม่ควรให้เห็น."

    # feature loop
    - title: "ทำความสะอาดข้อมูลเมตา"
      content: "ลบฟิลด์ที่ซ่อนอยู่ เช่น ผู้เขียน, ชื่อเรื่อง หรือวันที่สร้าง."
      
  code_samples_ext:
    # code sample ext loop
    - title: "ลบข้อมูลในเอกสาร"
      content: |
        นี่คือวิธีการลบข้อมูลเมตาจากไฟล์ XLSX ของคุณโดยใช้ไม่กี่บรรทัด.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # ทำเครื่องหมายฟิลด์ของผู้เขียนสำหรับการลบ
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # ทำเครื่องหมายฟิลด์ชื่อเรื่องสำหรับการลบ
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # เปิดเอกสาร
          with gr.Redactor("source.xslx") as redactor:

              # ดำเนินการกฎการลบข้อมูล
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # บันทึกไฟล์ที่สะอาด
              save_options = gro.SaveOptions()
              save_options.add_suffix = True
              save_options.rasterize_to_pdf = False
              result_path = redactor.save(save_options)
          ```
        platform: "python-net"
        copy_title: "คัดลอก"
        install:
          command: "pip install groupdocs-redaction-net"
          copy_tip: "คลิ๊กเพื่อคัดลอก"
          copy_done: "คัดลอกแล้ว"
        top_links:
          #  loop
          - title: "ดาวน์โหลดผลลัพธ์"
            icon: "download"
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
        links:
          #  loop
          - title: "ตัวอย่างเพิ่มเติม"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "เอกสารประกอบ"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "พร้อมเริ่มต้นหรือยัง?"
  description: "ลองฟีเจอร์ของ GroupDocs.Redaction ฟรี หรือขอใบอนุญาต"
  items:
    #  loop
    - title: "ดาวน์โหลด PyPi"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "การออกใบอนุญาต"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "ลบข้อมูลเมตาใน XLSX ด้วย Python"
    exclude: "XLSX"
    description: "ใช้ Python เพื่อลบข้อมูลเมตาที่ละเอียดอ่อนในไฟล์ XLSX ของคุณ วิธีที่ดีในการทำให้ไฟล์พร้อมสำหรับการแบ่งปันหรือเผยแพร่."
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/python-net/remove-sensitive-metadata//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/python-net/remove-sensitive-metadata//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/python-net/remove-sensitive-metadata//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/remove-sensitive-metadata//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลในรูปภาพ"
          format: "IMAGE"
          link: "/redaction/python-net/remove-sensitive-metadata//image/"
          description: "รูปแบบภาพที่นิยม"

        # format loop 6
        - name: "ลบข้อมูลในรูปถ่าย"
          format: "PHOTO"
          link: "/redaction/python-net/remove-sensitive-metadata//photo/"
          description: "รูปถ่าย"

        # format loop 7
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/python-net/remove-sensitive-metadata//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 8
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/python-net/remove-sensitive-metadata//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 9
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/python-net/remove-sensitive-metadata//pptx/"
          description: "การเสนอ PowerPoint Open XML"

        # format loop 10
        - name: "ลบข้อมูลใน JPEG"
          format: "JPEG"
          link: "/redaction/python-net/remove-sensitive-metadata//jpeg/"
          description: "ภาพ JPEG"


---