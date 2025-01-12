import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../const/abuse_forms.dart';
import '../controllers/abuse_forms_controller.dart';

class AbuseFormsView extends GetView<AbuseFormsController> {
  const AbuseFormsView({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Short Definitions",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
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
                "\n➡Making it difficult or impossible to see your friends and family."+
               "\n➡Depriving you of your basic needs, such as food, sleep, or medical help."+
            "\n➡Controlling how you are seen by others (for example, choosing your clothes or telling you what you can and cannot say)."+
           "\n➡Making your money (see also FINANCIAL ABUSE)."+
        "\n➡Stopping you from using a car (such as by taking the keys) or public transport (taking money or bus passes away)."+
    "\n➡Not allowing you to have a job or acting in ways that are aimed at getting you fired, or not allowing you to get an education or pursue your interests."+
    "\n➡Monitoring your phone or computer use or calling or texting non-stop.",
            ),
            SizedBox(
              height: 10,
            ),
            AbuseFormsQA(title: "Physical Abuse", description:
            "If someone is violent or physically harms you in any way, this is physical abuse. "
                "\n➡ This doesn’t just mean hitting. They may shove you, hold you down in some way, stop you from leaving a room, or throw things at you. They could use weapons or objects. They could slap, kick, burn, or stab you."
                "\n➡ Physical abuse may start with something like a shove or a grab, punching a wall, or hurting a pet. Physical abuse can get worse over time or it can stay at the same level of severity. It can also become less severe as other forms of abuse become more pronounced. Physical abuse may start or escalate during pregnancy."+

                "\n➡ The person being abusive may blame it on drugs or alcohol. They may try to blame it on your actions, saying you made them angry or upset so they lost control. They may be or seem very upset about their behavior and promise never to do it again "
                "\n➡ This means that, in addition to the physical pain, you may feel confused about the abuse and whether it is something serious. You may feel very scared about them hurting you again. You may feel cheated, used, or betrayed that someone you care about could treat you this way."
                "\n➡ There are some types of physical abuse that can be associated with specific cultures (for example, female genital mutilation or “honor” killings)"
                "\n➡Physical abuse often happens at the same time as other types of abuse, or it can happen on its own. It may turn into sexual violence or happen at the same time. Typically, physical violence does not start early in a relationship, though it may. Coercion and controlling behavior often happen before physical abuse starts."

            ),
            SizedBox(height: 10,),
            AbuseFormsQA(title: "Coercive Behavior",
                description:
                "Like controlling behavior, the result of coercive behavior is that you feel you have no choice but to act the way the person doing the coercion wants."
              "\n➡However, this is not because you are being directly forced to do as they want. Coercion is when you feel you 'had to' or 'couldn't' do something, out of fear of what they say or do to you or around you."
                  "\n➡This fear tends to increase over time. One comment or action on its own may seem okay (for instance, an insensitive comment, a criticism, or a one-off moment of anger during an argument). But if it happens again and again over time, this behavior becomes coercive abuse. This could take place over weeks, months, or years"
                  "\n➡This gradual build-up can make it hard to recognize abuse. It can also make it seem to others (including family, friends, or even professionals like police, healthcare workers, or social workers) that you are choosing how to act of your own free will. You may even believe this yourself."
                  "\n➡If you have not heard of coercion before you might think of it as being manipulated, bullied, or blackmailed."

            ),
            SizedBox(height: 10,),
            AbuseFormsQA(
                title: "Financial Abuse",
                description:
                "Financial abuse is when someone uses their relationship with you to take or control your money or other high value belongings."
              "\nSome common types of financial abuse"
              "\n➡Spending or taking money without you knowing."
                    "\n➡Spending or taking your money even though you tell them not to."
                    "\n➡Using other abusive behavior, like threats or violence, to put pressure on you to hand over money."
                    "\n➡Manipulating you into giving them money (see COERCIVE BEHAVIOR)."
                    "\n➡Taking control of debit cards, credit cards, online accounts, or other ways you access your money."
                    "\n➡Taking out loans, credit cards, rental contracts, phone contracts, or similar items or other bills under your name."
                    "\n➡Giving you a small amount of money to live on or an unfair 'allowance' that does not allow you to get what you need."
                    "\n➡They may also take control of other things that are yours which are of high value (for example, your house or car)."
                    "\n➡People who carry out financial abuse often target vulnerable people."
                    "\n \nEven if you don't have your own income (for example, if you stay home to care for children, parents, or other members of your family), you should still be able to make financial decisions that affect you. It can be financial abuse if someone does not allow you this."
                    "\nIf you are experiencing financial abuse, you may feel confused, trapped, betrayed, and alone."
                    "\nFinancial abuse can happen on its own, or alongside other types of abuse. Controlling and coercive behavior are often closely linked."

            ),
            SizedBox(
              height: 10,
            ),
            AbuseFormsQA(
                title: "Image-Based Abuse",
                description:
                "Image-based sexual abuse is when someone shares or threatens to share photos or videos of you without your consent. It is what people might call “revenge porn” or 'sextortion.'"
                    "\nThese may be: "
                    "\n➡Images or videos you have shared with them in the past with the understanding they would be kept private."
                    "\n➡Images or videos that have been taken or recorded without you knowing, or images or videos that you have not agreed can be shared."
                    "\n\nSome forms of image-based abuse "
                    "\n➡Sharing private, intimate images or videos without your consent online or in person, often after a break-up or disagreement, with the explicit purpose of disrupting your life or causing you shame."
                    "\n➡Taking photos or videos of you without your consent for their own pleasure."
                    "\n➡Threatening to share intimate images or videos of you to pressure you to do as they say, also called blackmail."
                    "\n\nIf you agreed to let someone take a photo or record a video of you or you sent the photo or video to the person yourself, you still have the right to control how it is shared."
                    "\nIt may be a crime to share sexual photos or videos without the consent of the person or people who are in it."
                    "\nMany people who are experiencing image-based abuse may feel shame and that they have lost control of their lives. They may feel very angry. Some people may be worried about the consequences of their image being shared, such as the impact on family members, the reactions of friends and family, or getting in trouble at work."
                    "\nImage-based abuse is often used as part of coercive behavior within a family or romantic relationships. It can also be closely linked to breaches of privacy as part of tech-based abuse."


            ),
            SizedBox(
              height: 10,
            ),
    AbuseFormsQA(
    title: "Stalking",
    description:
    "Stalking is any repeated unwanted contact. Stalking can be carried out by someone you know, such as a romantic partner, ex-partner, friend, or acquaintance. On some occasions, stalking is carried out by strangers."
    "\nIf you have left a relationship or family environment where domestic violence was happening, you may be at higher risk of that abuse continuing in the form of stalking."
    "\n\nSome common types of stalking "
    "\n➡Cyberstalking"
    "\n➡Repeated unwanted “gifts” and flowers."
    "\n➡Ordering things to your home or work or signing you up for services you haven't asked for."
    "\n➡Frequent comments on social media, emails, text messages, or other online contact."
    "\n➡Writing letters, phone calls, text messages, or other offline contact."
    "\n➡Tracking someone's location or following someone."
        "\n➡Repeated contact with your friends, family, and work."
        "\n➡Damaging property."
        "\n➡Harming pets."
        "\nThe type of contact the person chooses may be based on their personal understanding of what is important to you or what you are most scared of. For example, they may damage something that you cherish or leave “gifts” that relate to your fears."
        "\nThe person carrying out this abuse may feel they are just trying to show affection, or they may be intentionally trying to intimidate you, scare you, or disrupt your life. They may be using stalking as part of controlling or coercive control within a romantic or family relationship."
        "\nTheir intention does not matter. This behavior, if it is repeated and it is unwanted, is stalking."
        "\nMany people who are experiencing stalking feel powerless, violated, scared, and hopeless. You may feel confused or disoriented about what is happening."
        "\n\nStalking and other types of domestic violence"
        "\nStalking may happen within a relationship where domestic violence is happening, even if you are currently living with them. Stalking may happen on its own, with no other instances of domestic violence."
        "\n"
        "\n"
    ),
            SizedBox(
              height: 10,
            ),
    AbuseFormsQA(
    title: "Cyberstalking",
    description:
    "Cyberstalking is when someone uses apps such as “Spyware” or “Stalkerware” to follow, track, or monitor you. These apps can be installed on your phone or computer without you knowing. It is becoming more and more common for people experiencing abuse to find they are being cyberstalked."
    "\nCyberstalking may be done using apps specifically designed for this purpose, which are usually hidden. Or it may be done using other apps, such as parental control/ child safety apps or those designed to find lost phones."
    "\nYou may know you are being monitored. Location tracking in particular is often suggested out of concern for you safety, for example if you are going somewhere late or on your own. "
    "\nIf you are having trouble telling the difference between genuine worry and stalking behavior, it is helpful to think about whether the information is being used to scare or control you. If yes, then this is abusive.   "
        "\nSpyware apps let your partner or family member see what you are doing online. This might be conversations you are having through messaging apps like Facebook and Whatsapp or websites you are looking at. They may be able to track your location. "
        "\nThey may use this information to control your behavior, find out private information they can use against you, or intimidate you. "
        "\nIf someone seems to know information about you which you haven't told them, this can be disorienting and frightening. It can make you feel extremely vulnerable.  "
        "\nIf you often publish information online about where you are or what you are doing, they may also use this."
        "\nIf you have discovered you are being cyberstalked you may feel you need to change your behavior to prevent further abuse. You may feel scared, violated and confused. "



    ),
            SizedBox(
              height: 10,
            ),
    AbuseFormsQA(
    title: "Cyberstalking",
    description:
        "Forced Marriage"
            "\nForced marriage is when one or both people are being married against their will. It is usually carried out by family members, but it can be the result of pressure from outside the family too."
            "\nForced marriage can be between adults but also happens between children, or children and adults."
            "\nPeople give many reasons for forced marriage, such as cultural, financial, or religious reasons. You may be told it is done to protect you or improve your life. You may be told it will benefit your wider family. But it is never ok."
            "\nMarriage may be done formally, through a legally recognized ceremony. It may be done informally or through a religious ceremony only."
            "\nThe way the marriage is forced is usually through: "
            "\n➡Emotional and psychological abuse, such as controlling and coercive behavior. For example, the person(s) abusing you may take away the things you need to leave the marriage, or you may be told you will lose your family. (See COERCIVE BEHAVIOR and CONTROLLING BEHAVIOR earlier on in this section.)"
            "\n➡Threats of or actual physical or sexual violence. (See PHYSICAL VIOLENCE and SEXUAL VIOLENCE earlier on in this section.)"
            "\n\nJust because you have not felt able to physically or verbally resist, this does not mean you have consented."
            "\nIf you have been or are being forced into a marriage, you may feel trapped, scared, betrayed, and confused. You may feel ashamed that you don't want the same things as your family."
            "\n\nChild Marriage"
            "\nChildren are not able to consent to marriage so any formal or informal marriage that takes place where one or both are under the age of consent (15 to 18 years old – depending on the state) is a forced marriage."
            "\nIt may be done by taking the children to a country where the laws are different. This marriage would still not be recognized as legal in Uzbekistan"
            "\nForced marriage and other types of domestic violence"
            "\nAbusive behaviors are often used to force marriage and continue after the marriage takes place."
            "\nIf someone has not consented to the marriage, they are also unlikely to want sex within the marriage, yet it is often expected. This means sexual violence is often experienced within forced marriages."
            "\nGirls who are forced into marriage may also be forced to have children. This is physically dangerous, especially for girls who are made pregnant before their bodies are ready for safe childbirth."



    ),
            SizedBox(
              height: 10,
            ),
    AbuseFormsQA(
    title: "Cyberstalking",
    description:
        "Gaslighting"
        "\nGaslighting is when someone makes you doubt your view of reality or question your memories."
            "\nIt is a way of controlling people and is a form of emotional abuse."
            "\n\nSome common examples of gaslighting are if the person carrying out abuse:"
            "\n➡Tells you they didn’t say something you have a clear memory of them saying."
            "\n➡Denies behavior that harms you, such as drug/alcohol abuse, being unfaithful, or physical violence."
            "\n➡Suggests or tells you directly that you are losing your memory or are experiencing mental health issues that make you unreliable. Common language used is telling someone they are going crazy."
            "\nIf you are experiencing gaslighting, you may feel confused, frustrated, or that you can no longer trust your own perceptions or instincts."

    ),
            SizedBox(
              height: 10,
            ),
    AbuseFormsQA(
    title: "Online Bullying and Harassment",
    description:
    "Many of the ways we use the internet are to communicate with other people. For example, email, social media, or messaging."
        "\nSomeone who is abusing you may use these in the same way that in-person situations can be used to abuse, intimidate, harass, manipulate, or bully you."
        "\nOnline communication can also open different opportunities for abuse (for example, communicating with a lot of people at once or communicating anonymously)."
        "\n\nTypes of Online Abuse "
        "\n➡Sharing private information about you, including sexual photos, videos, or information, through social media, email, or messages (See IMAGE-BASED ABUSE)."
        "\n➡Publicly accusing you of things you haven’t done to humiliate you or damage your relationships."
        "\n➡Impersonating you online."
        "\n➡Trolling – frequently responding to your posts online with offensive or provoking comments."
        "\n➡Encouraging or tricking others into being abusive to you."
        "\nYou may be experiencing other types of online abuse not listed here. If you are not sure if it is abuse, it can be helpful to think about whether something someone says or does online would be considered acceptable in person. Just because the abuse is happening through your phone or computer does not mean it is any less harmful."
        "\nIf you are experiencing online abuse, you may feel embarrassed and humiliated. You may feel powerless, like you can no longer control your life or how people see you."

    )
          ]
        ),
      ),
    );

  }
}
