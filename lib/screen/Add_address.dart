import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Add_address extends StatefulWidget {
  const Add_address({super.key});

  @override
  State<Add_address> createState() => _Add_addressState();
}

class _Add_addressState extends State<Add_address> {
  final modulefirstnameController = TextEditingController();
  final modulelastnameController = TextEditingController();
  final modulemobileController = TextEditingController();
  final modulenicknameController = TextEditingController();
  final modulelandmarkController = TextEditingController();
  bool isChecked = false;
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'IN';
  PhoneNumber number = PhoneNumber(isoCode: 'IN');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Icon(Icons.arrow_back_rounded),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Add new address",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Form(
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [





                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: TextFormField(
                  controller: modulefirstnameController,
                  decoration: const InputDecoration(
                    labelText: 'First name*',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: TextFormField(
                  controller: modulelastnameController,
                  decoration: const InputDecoration(
                    labelText: 'Last name*',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: InternationalPhoneNumberInput(
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
                  selectorTextStyle: const TextStyle(color: Colors.black),
                  initialValue: number,
                  textFieldController: controller,
                  formatInput: false,
                  keyboardType: const TextInputType.numberWithOptions(
                      signed: true, decimal: true),
                  onSaved: (PhoneNumber number) {
                    print('On Saved: $number');
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: TextFormField(
                  controller: modulenicknameController,
                  decoration: const InputDecoration(
                    labelText: 'Nick name*',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: TextFormField(
                  // controller: modulenicknameController,
                  decoration: const InputDecoration(
                    labelText: 'Pincode*',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'State*',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Town/ City*',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: TextFormField(
                  controller: modulenicknameController,
                  decoration: const InputDecoration(
                    labelText: 'Flat/ House number/ Building name*',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: TextFormField(
                  controller: modulenicknameController,
                  decoration: const InputDecoration(
                    labelText: 'Colony/ Street/ Locality*',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: TextFormField(
                  controller: modulelandmarkController,
                  decoration: const InputDecoration(
                    labelText: 'Landmark if any*',
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 20),
                    child: Checkbox(
                      checkColor: Colors.white,
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 1, top: 35),
                    child: Text(
                      "Set as default address",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 35, top: 25),
                  child: AnimatedButton(
                    height: 40,
                    width: 300,
                    text: 'SUBMIT',
                    isReverse: true,
                    selectedTextColor: const Color.fromARGB(255, 53, 1, 241),
                    transitionType: TransitionType.LEFT_TO_RIGHT,
                    //  textStyle: submitTextStyle,
                    backgroundColor: const Color.fromARGB(255, 53, 1, 241),
                    borderColor: const Color.fromARGB(255, 53, 1, 241),
                    borderRadius: 10,
                    borderWidth: 2, onPress: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
        await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'IN');

    setState(() {
      this.number = number;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
