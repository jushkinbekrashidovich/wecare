import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../const/abuse_forms.dart';
import '../controllers/support_types_controller.dart';

class SupportTypesView extends GetView<SupportTypesController> {
  const SupportTypesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("Support services",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
    centerTitle: true,
    ),
    body: Padding(
    padding: const EdgeInsets.all(12.0),
    child: ListView(
    children: const [
    AbuseFormsQA(
    title: "Who Can Help?",
    description:
    "There are many people with special knowledge and training on supporting people experiencing domestic violence. "

    "\nThey can help you whether you are currently in an abusive situation or if you have left. They can help whether your goal is to leave or if your goal is to stay. And they can help whether or not you may need to stay in an emergency shelter.  "

    "\nDomestic violence organizations are staffed by experts who are highly trained in safety planning, crisis intervention, lethality assessment, and providing emotional support, education, and resources. In addition, you may reach out to your healthcare provider, local community organizations, religious or cultural organizations, and more, who can offer help, hope, and connection to resources."

    ),
    SizedBox(
    height: 10,
    ),
    AbuseFormsQA(
    title: "How Can They Help?",
    description:
    "Some ways you can get help and support: "
    "\n➡Finding somewhere different to live."
    "\n➡Improving the safety and security of your home."
    "\n➡Finding child care."
    "\n➡Speaking to the police or pressing criminal charges against someone who has abused you."
    "\n➡Getting emotional or mental health support."
        "\n➡Helping you talk to other services such as doctors, social workers, and police."
        "\nMost domestic violence organizations have services that include support groups, counseling, programs or counseling for children, help filing for protection orders, accompaniment through the legal system, 24/7 hotlines, emergency shelters, and more. Interpretation services are often available if needed."
        "\n➡"
    ),
      SizedBox(height: 10,),
    AbuseFormsQA(
    title: "Police",
    description:
    "Domestic violence can include physical or sexual assault, strangulation, stalking, and other crimes. This means the police can support you. "
    "\nFor example, in an emergency, when you or someone you know is in immediate danger, the police are often the people who can get to you fastest. In this situation you can call 102"
    "\nIf the person abusing you is a police officer or has positive connections to the police, it may be helpful to call a domestic violence program (when you are safe) to talk through your options for receiving help.  "
    "\nThe police will often work with other professionals like domestic violence advocates or legal professionals."
    ),
      SizedBox(height: 10,),
    AbuseFormsQA(
    title: "Emergency Shelters",
    description:
    "An emergency shelter is a place where you may be able to stay if you need to escape an extremely dangerous situation. "
    "\nAt emergency shelters, there are professionals who can help you start to recover emotionally from what you have experienced and help you with practical issues like finding somewhere new to live. Many will also have advocates trained to support children, provide education, offer counseling and support groups, and provide other helpful services. "
    "\nIf you do not identify as a woman, know that many emergency shelters will still be able to help you. Calling the hotline is the best first step to take.   "
    "\nIf you feel like an emergency shelter might not be able to give you the support you need, it might be helpful to talk to someone who is a specialist in your type of situation or experience. You can find a list of organizations who work with specific types of domestic violence in the SUPPORT section."

    ),
      SizedBox(height: 10,),
    AbuseFormsQA(
    title: "Counseling and Therapy",
    description:
    "Domestic violence is not a mental health issue; however, living in an abusive situation can cause anxiety, depression, post-traumatic stress disorder, and more. Talking to a therapist or counselor can help you feel better. It can help you to understand what you’ve experienced and help you look at things differently and give you practical tips. What happens in your sessions will be decided based on what you need. Everything you tell them will be kept private. "
    "\nWhat you talk about with a counselor or therapist will often be detailed and personal. You might find it helpful to see someone who specializes in domestic violence. You might want to talk to someone from the same cultural or religious background, sexual orientation, or gender identity as you. Many people find this helps them feel more comfortable speaking about personal issues and means they have to explain less. "
    "\nCounseling should always be done by a trained social worker, counselor, psychologist, or psychotherapist. It may be available virtually or in person, one-on-one or in a support group. If your local domestic violence organization does not offer counseling, it can help you to identify other resources. Children can also get counseling. "

    ),
      SizedBox(height: 10,),
    AbuseFormsQA(
    title: "Support Groups",
    description:
    "We offer support group which helpful as you can learn from what other people say about their experiences and what has helped them."
    "\nMany people find it helpful meeting others who have been through domestic violence because it helps them feel less alone."
    "\nAll your informations will be anonymous, feel free to share your stories in the Share&Support page."

    ),
    ]
    ),
    ),
    );
  }
}
