import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double valor = 0;
  String label = '0'; //'Valor selecionado';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SLIDER'),
        backgroundColor: Colors.purple[200],
      ),
      body: Container(
        padding: EdgeInsets.all(60),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Slider(
              value: valor,
              min: 0,
              max: 10,
              label: label, //label para aparecer o valor que foi selecionado
              divisions: 10, // marcadores entre o min e o max
              activeColor: Colors.red,
              inactiveColor: Colors.purple[500],
              onChanged: (double novoValor) {
                setState(() {
                  valor = novoValor;
                  label = novoValor
                      .toString(); //"Valor selecionado: ${novoValor.toString()}";
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                print("Valor selecionado: ${valor.toStringAsFixed(1)}");
              },
              // ignore: prefer_const_constructors
              child: Text(
                'Salvar',
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
