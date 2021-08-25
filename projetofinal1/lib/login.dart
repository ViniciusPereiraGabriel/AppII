import 'package:flutter/material.dart';
import 'package:projetofinal1/estoucomsorte.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
            'Login'
        ),
      ),
      body: Stepper(
        steps: _mySteps(),
            currentStep: this._currentStep,
            onStepContinue: (){
            setState(() {
              if(this._currentStep < this._mySteps().length - 1){
                this._currentStep = this._currentStep + 1;
              }else{
                //sla n entendi oq o gringo falou
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => estoucomsorte()));
              }
            }
            );
            },
        onStepCancel: (){
          setState(() {
            if(this._currentStep > 0){
              this._currentStep = this._currentStep - 1;
            }else{
              this._currentStep = 0;
            }
          });
        }
      ),
    );
  }
  List<Step> _mySteps(){
    List<Step> _steps = [
    Step(
      title: Text("Insira seu nome"),
      content: new TextFormField
        (
          keyboardType: TextInputType.name
      ),
      ),
      Step(
        title: Text("Insira seu email"),
        content: new TextFormField
          (
            keyboardType: TextInputType.emailAddress
        ),
        isActive: _currentStep >= 1,
      ),
      Step(
        title: Text("Insira sua senha"),
        content: new TextFormField
    (
    keyboardType: TextInputType.number,
    obscureText: true,
    ),
      ),
    ];
    return _steps;
  }
}
