
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: th
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ลบข้อมูลเมตาใน DOCX โดยใช้ Python"
head_description: "ใช้ GroupDocs.Redaction for Python via .NET เพื่อลบรายละเอียดที่ซ่อนอยู่ในไฟล์ DOCX ปกป้องข้อมูลของคุณโดยการลบรายการข้อมูลเมตาที่ละเอียดอ่อน."

############################# Header ############################
title: "ลบข้อมูลเมตาที่ซ่อนอยู่จากไฟล์ DOCX ด้วย Python" 
description: "ด้วย Python คุณสามารถลบข้อมูลเมตาที่ซ่อนอยู่จากไฟล์ DOCX โดยใช้ GroupDocs.Redaction for Python via .NET รักษาไฟล์ของคุณให้สะอาดและเป็นส่วนตัว."
subtitle: "คุณสมบัติหลักใน GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NET คืออะไร?"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction มอบความสามารถให้กับนักพัฒนาที่ใช้ Python ในการลบข้อมูลที่ซ่อนอยู่ในไฟล์ DOCX ทำความสะอาดข้อความ, ภาพ และข้อมูลเมตาจากเอกสารได้อย่างมีประสิทธิภาพ.

############################# Steps ############################
steps:
    enable: true
    title: "ลบข้อมูลเมตาจากไฟล์ Docx"
    content: |
      GroupDocs.Redaction มอบเครื่องมือให้กับแอป Python via .NET ของคุณเพื่อให้ลบข้อมูลเมตาได้อย่างรวดเร็ว.
      
      1. เริ่มต้น Redactor และโหลดเอกสาร Docx ของคุณ.
      2. ตั้งค่าฟิลด์ข้อมูลเมตาสำหรับการลบ.
      3. ใช้การลบข้อมูลเพื่อลบเนื้อหาที่ซ่อนอยู่.
      4. บันทึกเวอร์ชันสุดท้ายของไฟล์.
   
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

        # ทำความสะอาดข้อมูลเมตาในไฟล์ DOCX

        # เลือกรายการข้อมูลเมตาที่จะลบ
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # ใช้ Redactor เพื่อเปิดเอกสาร
        with gr.Redactor("input.docx") as redactor:

            # ใช้การลบข้อมูลและบันทึกไฟล์
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ปกป้องทุกส่วนในเอกสาร"
  description: "ด้วย GroupDocs.Redaction for Python via .NET คุณสามารถทำความสะอาดข้อความ, รูปภาพ, และข้อมูลเมตาในรูปแบบไฟล์หลายรูปแบบ เหมาะสำหรับความเป็นส่วนตัวและความปลอดภัย."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "เครื่องมือการลบข้อความในเอกสาร"
  features:
    # feature loop
    - title: "เครื่องทำความสะอาดข้อความ"
      content: "ค้นหาและลบชื่อ, คำศัพท์, หรือคำที่ละเอียดอ่อน."

    # feature loop
    - title: "ปกปิดรูปภาพ"
      content: "ซ่อนส่วนของภาพโดยการใช้สีทับ."

    # feature loop
    - title: "การลบข้อมูลเมตา"
      content: "กำจัดข้อมูลที่ซ่อนอยู่ในเอกสาร เช่น ชื่อผู้เขียน หรือรายละเอียดซอฟต์แวร์."
      
  code_samples_ext:
    # code sample ext loop
    - title: "ตัวอย่าง: ลบข้อมูลเมตาที่ซ่อนอยู่"
      content: |
        นี่คือวิธีการลบฟิลด์ข้อมูลของผู้เขียนและชื่อเรื่องจากเอกสาร DOCX โดยใช้การลบข้อมูล.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # เลือกที่จะลบฟิลด์ของผู้เขียน
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # เลือกที่จะลบฟิลด์ของชื่อเรื่อง
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # เปิดไฟล์ DOCX
          with gr.Redactor("source.docx") as redactor:

              # ดำเนินการลบข้อมูล
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
    title: "ลบข้อมูลเมตาใน DOCX ด้วย Python"
    exclude: "DOCX"
    description: "ลบข้อมูลเมตาที่ซ่อนอยู่ในไฟล์ DOCX โดยใช้งาน Python เป็นวิธีที่ยอดเยี่ยมในการรักษาความปลอดภัยในไฟล์ ก่อนการแบ่งปันหรือการเก็บถาวร."
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