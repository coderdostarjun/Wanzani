import 'package:flutter/material.dart';

import '../splash/widgets/custom_button.dart';
class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
              Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                           Expanded(
                            child: Text(
                              'Premium Plan',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              'ACTIVE',
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                      
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'Renewed on November 15, 2023',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    SizedBox(height: 10),
                      
                    Padding(
                      padding:  EdgeInsets.only(left: 28.0,right: 28),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Row(
                             children: [
                               const Icon(Icons.check, color: Colors.green),
                               const SizedBox(width: 8),
                               Expanded(child: Text("Unlimited access to all radio stations",style: TextStyle(fontSize: 18),)),
                             ],
                           ),
                           SizedBox(height: 10,),
                           Row(
                             children: [
                               const Icon(Icons.check, color: Colors.green),
                               const SizedBox(width: 8),
                               Expanded(child: Text("Ad-free listening experience",style: TextStyle(fontSize: 18),)),
                             ],
                           ),
                           SizedBox(height: 10,),
                           Row(
                             children: [
                               const Icon(Icons.check, color: Colors.green),
                               const SizedBox(width: 8),
                               Expanded(child: Text("Offline listening for selected staions",style: TextStyle(fontSize: 18),)),
                             ],
                           ),
                           SizedBox(height: 10,),
                           Row(
                             children: [
                               const Icon(Icons.check, color: Colors.green),
                               const SizedBox(width: 8),
                               Expanded(child: Text("Higher audio quality (320kbps)",style: TextStyle(fontSize: 18),)),
                             ],
                           ),
                         ],
                       ),
                    ),
                      
                    SizedBox(height: 30),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child: Container(
                              margin: EdgeInsets.only(bottom: 5),
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xff14A0DD)
                              ),
                              child: Text("Change Plan",style: TextStyle(fontSize: 16,color: Colors.white),),
                            ),
                          ),
                      
                          const SizedBox(width: 10),
                          InkWell(
                            child: Container(
                              margin: EdgeInsets.only(bottom: 5),
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xff404040)
                              ),
                              child: Text("Cancel Subscription",style: TextStyle(fontSize: 16,color: Colors.white),),
                            ),
                          ),
                      
                        ],
                      ),
                    ),
                      
                    const Divider(height: 30),
                      
                    // Payment Details
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        'Payment Details',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                    ),
                    SizedBox(height: 18,),
                    Row(
                      children: [
                        SizedBox(width: 12,),
                          Text("Payment Method",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                      ],
                    ),
                      
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
                      child: Row(
                        children: [
                          Icon(Icons.credit_card,size: 28,),
                          SizedBox(width: 8),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Visa ending in 4242',style: TextStyle(fontSize: 18,color: Colors.black),),
                                Text('Expires 09/25', style: TextStyle(color: Colors.black,fontSize: 16)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                      
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text('Next Billing',style: TextStyle(fontSize: 18,fontWeight:FontWeight.w400),),
                    ),
                   Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text('November 15, 2023\n\$9.99/month',style: TextStyle(fontSize: 18,fontWeight:FontWeight.w400),),
                    ),
                      
                     Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
                      child: Text('Billing Address',style: TextStyle(fontSize: 18,fontWeight:FontWeight.w400)),
                    ),
                     Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text('123 Main Street\nNew York, NY 10001',style: TextStyle(fontSize: 18,fontWeight:FontWeight.w400)),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              ),
                  CustomButton(onpressed: (){}, color:Color(0xff14A0DD), btnName: "Update Payment Details"),
                  SizedBox(height: 50,),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
