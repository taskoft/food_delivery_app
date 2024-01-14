import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 248, 10),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Checkout"),
        centerTitle: true,
      ),
      body:const Center(
        child:  Padding(
          padding: EdgeInsets.all(40.0),
          child: Text(
              "By accepting this Integrity Policy, you consent to us collecting, using and storing your personal data in the manner described in this document.Here, we describe which data we collect, for what purposes, the manner in which we control your personal data and how you can get in touch with us. This Integrity Policy applies when you use our website, which is administered by String Furniture AB.From 25 May 2018, the General Data Protection Regulation (GDPR) applies within the EU/EEA. All processing of personal data within String Furniture AB takes place in accordance with this Regulation. Collecting personal data If you register with us or submit your personal data in connection with a purchase or return, you agree to share your personal data and consent to having said data stored on our server. We use your personal data to provide you with a good service, for example with regard to information, marketing, invoicing and monitoring things such as orders and returns.The following data is covered:Any information you submit when you create an account in our Build-Your-Own (BYO) tool, your email address. Your password is not stored by String Furniture AB. This information is saved so that you can easily find your drawing again.Information that you submit to us on registering as a “member” on our reseller portal. This information includes your place of work, first and last name, email address and telephone number.This is aimed at our resellers and business partners. Delivery information, invoicing information, payment information and any other information you provide when making a purchase and for delivering and returning goods. The contact information you provide us with via social media or at trade fairs, events or via our own email address info@stringfurniture.com Information you submit in connection with competitions.Information you submit when applying for employment with us."),
        ),
      ),
    );
  }
}
