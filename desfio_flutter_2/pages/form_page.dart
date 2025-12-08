import 'package:flutter/material.dart';
import 'package:form_flutter/widgets/my_alert.dart';
import 'package:form_flutter/widgets/my_checkbox.dart';
import 'package:form_flutter/widgets/my_radio.dart';
import 'package:form_flutter/widgets/my_slider.dart';
import 'package:form_flutter/widgets/my_switch.dart';
import 'package:form_flutter/widgets/my_title.dart';
import 'package:form_flutter/widgets/my_textfiled.dart';
import 'package:form_flutter/widgets/my_buttom.dart';
import 'package:google_fonts/google_fonts.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerDate = TextEditingController();
  double _sliderValue = 0;
  bool _notify = false;
  List<String> _listPrefs = [];
  String _gender = "Masculino";

  @override
  void dispose() {
    _controllerName.dispose();
    _controllerDate.dispose();
    super.dispose();
  }

  void _changeList(pref) {
    (!_listPrefs.contains(pref))
        ? _listPrefs.add(pref)
        : _listPrefs.remove(pref);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jack Land Inscrição", style: GoogleFonts.uchen()),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MyTitle(title: "Dados pessoais"),

              Image.network(
  "https://limbo-nova-morada.weebly.com/uploads/1/2/3/8/123830809/edited/c-pia-de-sem-nome-story-500-x-700-px-2.png",
  height: 400,
  fit: BoxFit.cover,
),


              SizedBox(
                width: double.infinity,
                child: MyTextField(
                  title: "Nome",
                  isDate: false,
                  controller: _controllerName,
                ),
              ),

              SizedBox(height: 15),

              SizedBox(
                width: double.infinity,
                child: MyTextField(
                  title: "Sobre Nome",
                  isDate: false,
                  controller: _controllerDate,
                ),
              ),

              SizedBox(height: 15),

              MyTitle(title: "Gênero"),

              SizedBox(height: 15),

              MyRadio(
                value: (v) {
                  _gender = v!;
                },
              ),

              SizedBox(height: 15),

              MyTitle(title: "Classes"),

              SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MyCheckbox(title: "Mago", value: _changeList),
                  MyCheckbox(title: "Clerigo", value: _changeList),
                  MyCheckbox(title: "Feiticeiro", value: _changeList),
                  MyCheckbox(title: "Monge", value: _changeList),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MyCheckbox(title: "Ladino", value: _changeList),
                  MyCheckbox(title: "Guerreiro", value: _changeList),
                  MyCheckbox(title: "Bruxo", value: _changeList),
                  MyCheckbox(title: "Druida", value: _changeList),
                ],
              ),

              SizedBox(height: 15),

              MyTitle(title: "Nivel Do Jogador"),

              SizedBox(height: 15),

              MySlider(
                value: (v) {
                  _sliderValue = v!;
                },
              ),

              SizedBox(height: 15),

              MySwitch(
                title: "Deseja Receber Missões Da Guilda?",
                value: (v) {
                  _notify = v!;
                },
              ),

              SizedBox(height: 15),

              MyButton(
                title: "Fechar Contrato",
                icon: Icons.save,
                onClick: () {
                  print(_controllerName.text);
                  print(_controllerDate.text);
                  print(_gender);
                  print(_listPrefs);
                  print(_sliderValue);
                  print(_notify);

                  MyAlert.showSimpleDialog(
                    context,
                    "Dados cadastrais",
                    "${_controllerName.text}\n"
                    "${_controllerDate.text}\n"
                    "$_gender\n"
                    "$_listPrefs\n"
                    "$_sliderValue\n"
                    "$_notify\n"
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
