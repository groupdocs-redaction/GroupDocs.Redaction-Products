
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: th
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ลบข้อมูลเมตาดาต้าใน WORD ด้วย Java"
head_description: "ด้วย GroupDocs.Redaction for Java, คุณสามารถลบข้อมูลเมตาดาต้าที่ซ่อนอยู่จากไฟล์ WORD ได้อย่างรวดเร็ว ช่วยทำให้เอกสารของคุณปลอดภัยและเป็นส่วนตัว"

############################# Header ############################
title: "ทำความสะอาดข้อมูลเมตาดาต้าที่ซ่อนอยู่ในไฟล์ WORD ด้วย Java" 
description: "ปกป้องไฟล์ WORD ของคุณโดยการลบข้อมูลส่วนตัวโดยใช้เครื่องมือ Java เหมาะสำหรับการใช้งานธุรกิจและส่วนตัว"
subtitle: "วิธีที่ GroupDocs.Redaction for Java ช่วยคุณ" 

############################# About ############################
about:
    enable: true
    title: "เรียนรู้เกี่ยวกับ GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction มอบเครื่องมือที่นักพัฒนา Java ต้องการในการลบข้อมูลจากไฟล์ WORD ทำความสะอาดข้อมูลเมตาดาต้า ข้อความ และภาพตามที่ต้องการ

############################# Steps ############################
steps:
    enable: true
    title: "เคลียร์ข้อมูลเมตาดาต้าในไฟล์ Word"
    content: |
      ใช้ GroupDocs.Redaction เพื่อทำความสะอาดข้อมูลเมตาดาต้าในเอกสารแอป Java ของคุณ
      
      1. เริ่มต้นวัตถุ Redactor และโหลดไฟล์ Word ของคุณ
      2. กำหนดกฎเพื่อลบฟิลด์ข้อมูลเมตาดาต้าที่ซ่อนอยู่
      3. ลบข้อมูลเพื่อเคลียร์ข้อมูลเมตาดาต้า
      4. บันทึกไฟล์ที่อัพเดต
   
    code:
      platform: "java"
      copy_title: "คัดลอก"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "การลบข้อมูลตัวอย่าง"
      install:
        command: |
          <dependencies>
            <dependency>
              <groupId>com.groupdocs</groupId>
              <artifactId>groupdocs-redaction</artifactId>
              <version>{0}</version>
            </dependency>
          </dependencies>

          <repositories>
            <repository>
              <id>repository.groupdocs.com</id>
              <name>GroupDocs Repository</name>
              <url>https://repository.groupdocs.com/repo/</url>
            </repository>
          </repositories>
        copy_tip: "คลิ๊กเพื่อคัดลอก"
        copy_done: "คัดลอกแล้ว"
      links:
        #  loop
        - title: "ตัวอย่างเพิ่มเติม"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "เอกสารประกอบ"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // ลบข้อมูลเมตาดาต้าที่ซ่อนอยู่จาก WORD

        // โหลดไฟล์ด้วย Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // กำหนดการตั้งค่าการลบข้อมูลเมตาดาต้า
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // ทำการลบแล้วบันทึก
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "อีกเครื่องมือที่จะลบข้อมูลส่วนตัว"
  description: "ใช้ GroupDocs.Redaction for Java เพื่อทำความสะอาดข้อความ, ภาพ, และข้อมูลเมตาดาต้าจากรูปแบบเอกสารหลายแห่ง แชร์เอกสารของคุณโดยไม่เปิดเผยข้อมูลที่ละเอียดอ่อน"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ฟีเจอร์ในการลบข้อมูลเมตาดาต้าและเนื้อหา"
  features:
    # feature loop
    - title: "ลบข้อความส่วนตัว"
      content: "ค้นหาข้อมูลที่ละเอียดอ่อนในไฟล์และทำการลบหรือเปลี่ยนแปลงตามความจำเป็น"

    # feature loop
    - title: "ปิดบังพื้นที่ของภาพ"
      content: "ปกปิดส่วนเฉพาะของภาพที่อาจมีเนื้อหาที่ละเอียดอ่อน"

    # feature loop
    - title: "ลบฟิลด์ข้อมูลเมตาดาต้า"
      content: "ลบแท็กซ่อนที่อาจเปิดเผยข้อมูลส่วนตัว"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ทำความสะอาดฟิลด์ข้อมูลเมตาดาต้าในเอกสาร"
      content: |
        ตัวอย่างนี้อธิบายวิธีการลบข้อมูลเมตาดาต้าเช่น Author และ Title ในไฟล์ WORD
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  โหลดไฟล์เพื่อทำการประมวลผล
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // ลบฟิลด์ Author
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // ลบฟิลด์ Title
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // ดำเนินการลบ
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // บันทึกไฟล์ที่ทำความสะอาด
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "คัดลอก"
        install:
          command: |
            <dependencies>
              <dependency>
                <groupId>com.groupdocs</groupId>
                <artifactId>groupdocs-redaction</artifactId>
                <version>{0}</version>
              </dependency>
            </dependencies>
            <repositories>
              <repository>
                <id>repository.groupdocs.com</id>
                <name>GroupDocs Repository</name>
                <url>https://repository.groupdocs.com/repo/</url>
              </repository>
            </repositories>
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "เอกสารประกอบ"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "พร้อมเริ่มต้นหรือยัง?"
  description: "ลองฟีเจอร์ของ GroupDocs.Redaction ฟรี หรือขอใบอนุญาต"
  items:
    #  loop
    - title: "ดาวน์โหลด Maven"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "การออกใบอนุญาต"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "ลบข้อมูลเมตาดาต้าใน WORD ด้วย Java"
    exclude: "WORD"
    description: "Java ให้คุณทำความสะอาดข้อมูลเมตาดาต้าที่ซ่อนอยู่ในไฟล์ WORD เป็นวิธีง่ายๆ ในการปกป้องเอกสารของคุณ"
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/java/remove-sensitive-metadata//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/java/remove-sensitive-metadata//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/java/remove-sensitive-metadata//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/remove-sensitive-metadata//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลในรูปภาพ"
          format: "IMAGE"
          link: "/redaction/java/remove-sensitive-metadata//image/"
          description: "รูปแบบภาพที่นิยม"

        # format loop 6
        - name: "ลบข้อมูลในรูปถ่าย"
          format: "PHOTO"
          link: "/redaction/java/remove-sensitive-metadata//photo/"
          description: "รูปถ่าย"

        # format loop 7
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/java/remove-sensitive-metadata//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 8
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/java/remove-sensitive-metadata//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 9
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/java/remove-sensitive-metadata//pptx/"
          description: "การเสนอ PowerPoint Open XML"

        # format loop 10
        - name: "ลบข้อมูลใน JPEG"
          format: "JPEG"
          link: "/redaction/java/remove-sensitive-metadata//jpeg/"
          description: "ภาพ JPEG"


---