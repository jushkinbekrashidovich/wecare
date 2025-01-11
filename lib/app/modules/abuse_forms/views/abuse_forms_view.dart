import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../const/abuse_forms.dart';
import '../controllers/abuse_forms_controller.dart';

class AbuseFormsView extends GetView<AbuseFormsController> {
  const AbuseFormsView({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Short Definitions"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: const [
            AbuseFormsQA(
              title: "Domestic Violence",
              description:
              "Domestic violence is defined by the use of power and control in a close family or intimate relationship and can look like any or many different types of abuse. It can happen to anyone of any age, gender, ethnicity, sexuality, religion, and regardless of how much money you have."+

               "\nDomestic violence can happen anywhere. It might happen inside someone’s home or somewhere else. It can happen online."

           "\nYou might have heard domestic violence used most often to describe abuse within marriages or romantic relationships, but it can also happen in other close relationships such as by parents, adult children-to-parents, siblings, and in-laws."

            ),
            SizedBox(
              height: 10,
            ),
            AbuseFormsQA(
              title: "Controlling Behavior",
              description:
              "Controlling behavior is when someone forces you to do what they want against your will. As part of domestic violence, controlling behavior is usually made up of many individual acts which stop you from following your own wants and needs."+
                  "\nIt can affect specific parts of your life, like how you spend money, when you see friends and family, or how you behave, or it may affect many areas."+
                "\nExamples of controlling behavior: "+
                "\n->Making it difficult or impossible to see your friends and family."+
               "\n->Depriving you of your basic needs, such as food, sleep, or medical help."+
            "\n->Controlling how you are seen by others (for example, choosing your clothes or telling you what you can and cannot say)."+
           "\n->Making your money (see also FINANCIAL ABUSE)."+
        "\n->Stopping you from using a car (such as by taking the keys) or public transport (taking money or bus passes away)."+
    "\n->Not allowing you to have a job or acting in ways that are aimed at getting you fired, or not allowing you to get an education or pursue your interests."+
    "\n->Monitoring your phone or computer use or calling or texting non-stop.",
            ),
            SizedBox(
              height: 10,
            ),
            AbuseFormsQA(title: "Physical Abuse", description:
            "If someone is violent or physically harms you in any way, this is physical abuse. "+
                "\nThis doesn’t just mean hitting. They may shove you, hold you down in some way, stop you from leaving a room, or throw things at you. They could use weapons or objects. They could slap, kick, burn, or stab you."
                "\nPhysical abuse may start with something like a shove or a grab, punching a wall, or hurting a pet. Physical abuse can get worse over time or it can stay at the same level of severity. It can also become less severe as other forms of abuse become more pronounced. Physical abuse may start or escalate during pregnancy."+

                "\n➡ The person being abusive may blame it on drugs or alcohol. They may try to blame it on your actions, saying you made them angry or upset so they lost control. They may be or seem very upset about their behavior and promise never to do it again "
                "\n➡ Va ilovadan chiqmasdan o'quv markaz joylashgan manzilini aniqlashingiz mumkin"
                "\n➡ o'quv markazda mavjud bo'lgan o'quv kurslari",
              ),
            SizedBox(height: 10,),
            AbuseFormsQA(title: "Yaqindagi kurslar bu qanday ishlaydi?", description: "Uyingizdan chiqmasdan siz o'zingizga yaqin bo'lgan kurslarni ilova orqali topishingiz mumkin!. Yaqindagi kurslar bu sizga sizga yaqin bo'lgan barcha o'quv markazlar joylashuvini xaritada ko'rsatadi. Ularni ustiga bosib ular haqida ma'lumot olishingiz mumkin"),
            SizedBox(height: 10,),
            AbuseFormsQA(
                title: "E'lonni saqlab qo'yish imkoni mavjudmi?",
                description:
                "Har bir e'lonni 'saqlash' belgisini bosgan holda saqlanganlar ro'yxatiga qo'shishingiz mumkin va uni tezda topishingiz mumkin."),
            SizedBox(
              height: 10,
            ),
            AbuseFormsQA(
                title: "Maqolalar bo'limi nima?",
                description:
                "Maqolalar sahifasida ta'limga oid mavzularda maqola va yangiliklar joylab boriladi."),

          ],
        ),
      ),
    );

  }
}
