
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: th
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ปกป้องภาพในไฟล์ WORD ด้วย Overlay โดยใช้ Python"
head_description: "ปกปิดภาพที่เป็นความลับในไฟล์ WORD ด้วย GroupDocs.Redaction for Python via .NET ใช้ Overlay เพื่อปกป้องข้อมูลส่วนตัวในขณะที่ยังคงเลย์เอาต์ของเอกสารให้ตรงตามสภาพ."

############################# Header ############################
title: "ปกคลุมภาพส่วนตัวในไฟล์ WORD โดยใช้ Python" 
description: "รักษาภาพส่วนตัวและธุรกิจให้ปลอดภัยในไฟล์ WORD ด้วย Python เครื่องมือการปิดบังที่ง่ายและรวดเร็วที่คุณสามารถไว้วางใจ."
subtitle: "คุณสมบัติหลักของ GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET มอบเครื่องมือให้กับนักพัฒนา Python ในการปิดบังหรือลบเนื้อหาในไฟล์ WORD ปกป้องข้อมูลที่เป็นความลับโดยการปิดบังข้อความ, รูปภาพ, และ Metadata ในรูปแบบต่างๆ.

############################# Steps ############################
steps:
    enable: true
    title: "ปกป้องข้อมูลที่เป็นความลับในไฟล์ Word"
    content: |
      GroupDocs.Redaction for Python via .NET ช่วยให้แอปพลิเคชัน Python via .NET ของคุณปกป้องเอกสารโดยการปิดบังเนื้อหาส่วนตัวด้วย Overlay.
      
      1. สร้างวัตถุ Redactor และโหลดไฟล์ Word.
      2. ปรับตั้งค่าการปิดบังตามต้องการ.
      3. เลือกพื้นที่ของภาพและกำหนดสี Overlay.
      4. นำ Overlay ไปใช้และบันทึกไฟล์ที่ผ่านการปิดบัง.
   
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
        import groupdocs.pydrawing as grd

        # ปกคลุมภาพที่เป็นความลับใน WORD

        # ระบุสีและขนาดของ Overlay
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # เลือกพื้นที่ภาพที่ต้องปกปิด
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # โหลดไฟล์โดยใช้ Redactor
        with gr.Redactor("input.docx") as redactor:

            # นำและบันทึกเอกสารที่มีการปิดบัง
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "คุณสมบัติการปิดบังขั้นสูง"
  description: "GroupDocs.Redaction for Python via .NET ช่วยให้คุณซ่อนหรือลบข้อมูลที่เป็นความลับในหลายรูปแบบเอกสาร รักษาเอกสารให้สะอาดและปลอดภัยสำหรับการแชร์."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ชุดเครื่องมือการปิดบังครบวงจร"
  features:
    # feature loop
    - title: "ค้นหาและแทนที่ข้อความ"
      content: "ค้นหาข้อความที่เป็นความลับในเอกสารและแทนที่หรือซ่อนเพื่อป้องกันข้อมูล."

    # feature loop
    - title: "Overlay รูปภาพ"
      content: "ปกคลุมพื้นที่ของภาพที่เลือกหรือลบล้างข้อมูลส่วนตัว."

    # feature loop
    - title: "ลบ Metadata"
      content: "ลบ Metadata ที่ซ่อนอยู่ในเอกสารเพื่อป้องกันการแชร์ข้อมูลไม่ต้องการ."
      
  code_samples_ext:
    # code sample ext loop
    - title: "ปกปิดข้อมูลภาพด้วย Overlay"
      content: |
        ตัวอย่างนี้แสดงวิธีปกปิดภาพที่มีความลับในเอกสารโดยใช้ Overlay.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # ตั้งค่าส่วนประกอบ Overlay: ขนาด, สี, ตำแหน่ง
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # เลือกพื้นที่ในหน้าหนึ่งที่จะปิดบัง
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # เปิดเอกสาร
          with gr.Redactor("source.docx") as redactor:

              # นำ Overlay ไปใช้ในการปกปิด
              result = redactor.apply(redaction)

              # บันทึกเอกสารที่มีการเปลี่ยนแปลง
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "ปกปิดเนื้อหาในไฟล์ WORD โดยใช้ Python"
    exclude: "WORD"
    description: "Python ช่วยให้คุณซ่อนหรือทำให้ข้อมูลที่เป็นความลับในไฟล์ WORD เป็นอย่างง่ายดาย โซลูชันที่เชื่อถือได้สำหรับการรักษาความปลอดภัยเอกสาร."
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-image-content//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/python-net/hide-image-content//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-image-content//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-image-content//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลในรูปภาพ"
          format: "IMAGE"
          link: "/redaction/python-net/hide-image-content//image/"
          description: "รูปแบบภาพที่นิยม"

        # format loop 6
        - name: "ลบข้อมูลในรูปถ่าย"
          format: "PHOTO"
          link: "/redaction/python-net/hide-image-content//photo/"
          description: "รูปถ่าย"

        # format loop 7
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-image-content//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 8
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-image-content//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 9
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-image-content//pptx/"
          description: "การเสนอ PowerPoint Open XML"

        # format loop 10
        - name: "ลบข้อมูลใน JPEG"
          format: "JPEG"
          link: "/redaction/python-net/hide-image-content//jpeg/"
          description: "ภาพ JPEG"


---