
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: th
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ลบข้อมูลเมตาดาต้าในไฟล์ PPTX โดยใช้ C#"
head_description: "GroupDocs.Redaction for .NET ช่วยให้คุณลบหรือแก้ไขข้อมูลเมตาดาต้าในไฟล์ PPTX ปกป้องเอกสารของคุณโดยการลบข้อมูลที่ซ่อนอยู่"

############################# Header ############################
title: "ลบข้อมูลเมตาดาต้าใน PPTX โดยใช้เครื่องมือ .NET" 
description: "ซ่อนข้อมูลเมตาดาต้าที่ละเอียดอ่อนในไฟล์ PPTX โดยใช้ C# เหมาะสำหรับความเป็นส่วนตัวทางธุรกิจและส่วนตัว"
subtitle: "ฟังก์ชันหลักของ GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "รู้จัก GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction เป็นชุดเครื่องมือการลบข้อมูลสำหรับนักพัฒนา C# ที่ต้องการทำความสะอาดข้อมูลในไฟล์ PPTX ลบข้อความ ภาพ และข้อมูลเมตาดาต้าอย่างรวดเร็ว

############################# Steps ############################
steps:
    enable: true
    title: "ลบข้อมูลเมตาดาต้าที่ซ่อนอยู่ในไฟล์ Pptx"
    content: |
      GroupDocs.Redaction ช่วยให้โซลูชัน .NET ของคุณทำความสะอาดข้อมูลที่ซ่อนอยู่ได้ง่าย
      
      1. สร้างอินสแตนซ์ Redactor และโหลดไฟล์ Pptx
      2. กำหนดกฎการลบสำหรับฟิลด์ข้อมูลเมตาดาต้า
      3. ให้ดำเนินการลบข้อมูล
      4. บันทึกไฟล์ที่ถูกลบ
   
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
        // ลบข้อมูลเมตาดาต้าใน PPTX

        // เปิดไฟล์โดยใช้ Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // ตั้งค่าการลบสำหรับการทำความสะอาดข้อมูลเมตาดาต้า
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // ดำเนินการและบันทึกไฟล์
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "เครื่องมือการลบข้อมูลเพิ่มเติมสำหรับไฟล์ใดๆ"
  description: "GroupDocs.Redaction for .NET รองรับการลบเนื้อหาข้ามหลายประเภท ทำให้แน่ใจว่าข้อมูลของคุณเป็นส่วนตัวและไฟล์ของคุณสะอาด"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "เครื่องมือความเป็นส่วนตัวในตัว"
  features:
    # feature loop
    - title: "ค้นหาและลบข้อความ"
      content: "ลบข้อความส่วนตัวออกอย่างรวดเร็วจากไฟล์ของคุณ"

    # feature loop
    - title: "ปกปิดภาพด้วยเลเยอร์"
      content: "ซ่อนส่วนภาพที่ไม่ควรมองเห็น"

    # feature loop
    - title: "ลบข้อมูลเมตาดาต้า"
      content: "ล้างฟิลด์ข้อมูลที่อาจมีข้อมูลซ่อนเร้น"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ทำความสะอาดฟิลด์ข้อมูลเมตาดาต้า"
      content: |
        ตัวอย่างนี้แสดงวิธีการลบข้อมูลเมตาดาต้าจากไฟล์ PPTX ให้อย่างปลอดภัย
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  นำเข้าข้อมูลไฟล์ PPTX
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // ลบฟิลด์ผู้เขียน
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // ลบฟิลด์ชื่อเรื่อง
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // ดำเนินการลบ
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // ส่งออกไฟล์ที่ถูกลบ
              var saveOptions = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(saveOptions);
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "ทำความสะอาดข้อมูลเมตาดาต้าในไฟล์ PPTX โดยใช้ .NET"
    exclude: "PPTX"
    description: "ลบข้อมูลที่ซ่อนอยู่ในไฟล์ PPTX ได้ง่ายๆ ด้วย .NET วิธีที่เหมาะสมสำหรับความปลอดภัยของเอกสาร"
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/net/remove-sensitive-metadata//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/net/remove-sensitive-metadata//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/net/remove-sensitive-metadata//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/remove-sensitive-metadata//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลในรูปภาพ"
          format: "IMAGE"
          link: "/redaction/net/remove-sensitive-metadata//image/"
          description: "รูปแบบภาพที่นิยม"

        # format loop 6
        - name: "ลบข้อมูลในรูปถ่าย"
          format: "PHOTO"
          link: "/redaction/net/remove-sensitive-metadata//photo/"
          description: "รูปถ่าย"

        # format loop 7
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/net/remove-sensitive-metadata//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 8
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/net/remove-sensitive-metadata//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 9
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/net/remove-sensitive-metadata//pptx/"
          description: "การเสนอ PowerPoint Open XML"

        # format loop 10
        - name: "ลบข้อมูลใน JPEG"
          format: "JPEG"
          link: "/redaction/net/remove-sensitive-metadata//jpeg/"
          description: "ภาพ JPEG"


---