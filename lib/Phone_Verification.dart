import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';



class Verify_Number_Page extends StatefulWidget {
  const Verify_Number_Page({super.key});

  @override
  State<Verify_Number_Page> createState() => _Verify_Number_PageState();
}

class _Verify_Number_PageState extends State<Verify_Number_Page> {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'IN';
  PhoneNumber number = PhoneNumber(isoCode: 'IN');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SafeArea(
        child: Center(
          child: Column(
          children: [
            const Text("Please Enter Your Phone Number",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            const SizedBox(
              height: 10,
            ),
            const Text("You'll receive a 4 digit code to verify next.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.grey),),

            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(
                  width: 300,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2,color: Colors.indigo)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InternationalPhoneNumberInput(
                        inputDecoration:const InputDecoration(
                          filled: true,
                          border: InputBorder.none,
                          fillColor: Colors.white
                        ) ,


                      onInputChanged: (PhoneNumber number) {
                              print(number.phoneNumber);
                              },
                                onInputValidated: (bool value) {
                                  print(value);
                                },
                                selectorConfig: const SelectorConfig(
                                  selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                                ),
                                ignoreBlank: false,
                                autoValidateMode: AutovalidateMode.disabled,
                                selectorTextStyle: TextStyle(color: Colors.black),
                                initialValue: number,
                                textFieldController: controller,
                                formatInput: true,
                                keyboardType:
                                const TextInputType.numberWithOptions(signed: true, decimal: true),

                                onSaved: (PhoneNumber number) {
                                  print('On Saved: $number');
                                },
                              ),
                    ),
                  ),
                ),
      ],
            ),
            const SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: const BoxDecoration(color: Colors.indigo),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "Continue",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),

                      ),

                    ),

                  ),
                  onTap: (){
                    Navigator.pushNamed(context, '/Conform_verifitation_page');
                  },
                )

              ],
            )

          ],
                ),
        ),

      ),

    );
  }
}
