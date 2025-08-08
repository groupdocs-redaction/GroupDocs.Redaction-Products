
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: th
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ปกปิดภาพในไฟล์ XLSX โดยใช้ overlay ด้วย C#"
head_description: "ด้วย GroupDocs.Redaction for .NET คุณสามารถซ่อนเนื้อหาภาพที่มีความละเอียดอ่อนในไฟล์ XLSX โดยการใช้ overlay สีสัน ปกป้องข้อมูลสำคัญในขณะที่ยังคงโครงสร้างเอกสารไว้"

############################# Header ############################
title: "ปกปิดภาพที่มีความละเอียดอ่อนในเอกสาร XLSX โดยใช้ .NET" 
description: "มอบความเป็นส่วนตัวข้อมูลในไฟล์ XLSX ด้วย C# เครื่องมือของเราถูกออกแบบเพื่อทำให้การตัดข้อมูลภาพเร็วและมีประสิทธิภาพ"
subtitle: "ฟีเจอร์หลักของ GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET มอบเครื่องมือที่ง่ายต่อการใช้ให้กับนักพัฒนาที่ใช้ C# ในการซ่อนหรือทำลายเนื้อหาในไฟล์ XLSX ปกป้องเอกสารโดยการคลุมข้อความ, รูปภาพ, และ metadata ข้ามหลายรูปแบบ

############################# Steps ############################
steps:
    enable: true
    title: "ปกป้องข้อมูลส่วนตัวในเอกสาร Xlsx"
    content: |
      GroupDocs.Redaction for .NET: ช่วยแอปพลิเคชัน .NET ของคุณรักษาความปลอดภัยเอกสารอย่างมีประสิทธิภาพ
      
      1. สร้างอินสแตนซ์ Redactor และโหลดไฟล์ Xlsx
      2. ตั้งค่าพารามิเตอร์การตัดข้อมูลตามความต้องการของคุณ
      3. กำหนดพื้นที่ภาพและเลือกสี overlay
      4. ใช้การตัดข้อมูลและบันทึกไฟล์
   
    code:
      platform: "net"
      copy_title: "คัดลอก"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "การลบข้อมูลตัวอย่าง"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "คลิ๊กเพื่อคัดลอก"
        copy_done: "คัดลอกแล้ว"
      links:
        #  loop
        - title: "ตัวอย่างเพิ่มเติม"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "เอกสารประกอบ"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // ปกปิดเนื้อหาภาพที่มีความละเอียดอ่อนใน XLSX

        // เริ่มต้น Redactor ด้วยเส้นทางไฟล์
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // เลือกขนาดและสี overlay
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // กำหนดพื้นที่ที่จะดำเนินการตัด
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // ใช้และบันทึกการเปลี่ยนแปลง
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ฟีเจอร์การตัดข้อมูลในเอกสาร"
  description: "ด้วย GroupDocs.Redaction for .NET คุณสามารถลบหรือซ่อนเนื้อหาในหลายรูปแบบไฟล์ ทำให้ข้อมูลที่ละเอียดอ่อนเป็นส่วนตัวในขณะที่รักษาเค้าโครงที่เรียบร้อย"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ฟีเจอร์การแก้ไขที่แข็งแกร่ง"
  features:
    # feature loop
    - title: "ค้นหาและแก้ไขข้อความ"
      content: "ค้นหาและตัดข้อความที่เป็นความลับอย่างรวดเร็วเพื่อป้องกันข้อมูลที่ละเอียดอ่อน"

    # feature loop
    - title: "ปกปิดเนื้อหาภาพ"
      content: "ใช้ overlay กับภาพทั้งหมดหรือพื้นที่เฉพาะเพื่อซ่อนภาพที่เป็นส่วนตัว"

    # feature loop
    - title: "ทำความสะอาด Metadata"
      content: "ลบหรือปรับแก้ metadata ที่ซ่อนอยู่เพื่อหลีกเลี่ยงการรั่วไหลของข้อมูลโดยไม่ตั้งใจ"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ซ่อนเนื้อหาภาพด้วย overlay"
      content: |
        เรียนรู้วิธีการปกปิดพื้นที่ภาพที่มีความละเอียดอ่อนในเอกสารของคุณ
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  เปิดเอกสารสำหรับการตัดข้อมูล
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // ระบุคุณลักษณะ overlay: ขนาด, ตำแหน่ง, สี
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // มุ่งเป้าไปยังพื้นที่ภาพเฉพาะ
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Overlay พื้นที่ภาพ
              redactor.Apply(redaction);

              // บันทึกเอกสารที่ถูกแก้ไข
              var save_options = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_options);
          }
          ```
        platform: "net"
        copy_title: "คัดลอก"
        install:
          command: "dotnet add package GroupDocs.Redaction"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "เอกสารประกอบ"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "พร้อมเริ่มต้นหรือยัง?"
  description: "ลองฟีเจอร์ของ GroupDocs.Redaction ฟรี หรือขอใบอนุญาต"
  items:
    #  loop
    - title: "ดาวน์โหลด Nuget"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "การออกใบอนุญาต"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "ปกป้องไฟล์ XLSX ด้วยการตัดข้อมูล .NET"
    exclude: "XLSX"
    description: "ใช้ .NET เพื่อป้องกันหรือเอาข้อมูลที่มีความละเอียดอ่อนในไฟล์ XLSX แนวทางที่เหมาะสมสำหรับการรักษาความปลอดภัยของเอกสารที่มีความลับ"
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/net/hide-image-content//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/net/hide-image-content//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-image-content//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-image-content//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลในรูปภาพ"
          format: "IMAGE"
          link: "/redaction/net/hide-image-content//image/"
          description: "รูปแบบภาพที่นิยม"

        # format loop 6
        - name: "ลบข้อมูลในรูปถ่าย"
          format: "PHOTO"
          link: "/redaction/net/hide-image-content//photo/"
          description: "รูปถ่าย"

        # format loop 7
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-image-content//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 8
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-image-content//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 9
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-image-content//pptx/"
          description: "การเสนอ PowerPoint Open XML"

        # format loop 10
        - name: "ลบข้อมูลใน JPEG"
          format: "JPEG"
          link: "/redaction/net/hide-image-content//jpeg/"
          description: "ภาพ JPEG"


---