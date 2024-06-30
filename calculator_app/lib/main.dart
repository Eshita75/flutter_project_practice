import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData.dark().copyWith(
          colorScheme:
              ThemeData.dark().colorScheme.copyWith(surface: Colors.grey[900]),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.grey[900],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)))),
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                  foregroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24))))),
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  // var _num1;
  // var _num2;
  // String _operand = '';
  // String _output = '';

  String _input = ""; // Stores user input
  String _operator = ""; // Stores the operator
  double? _firstOperand; // First number
  double? _secondOperand; // Second number
  String _output = ""; // Final output

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        _firstOperand.toString() == "null"  ?  '0': _firstOperand.toString(),
                        style: const TextStyle(fontSize: 32, color: Colors.white70),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    _output,
                    style: const TextStyle(fontSize: 48, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),

          Divider(height: 1,),

          Column(
            children: [
              _buildButtonRow(['7', '8', '9', '/']),
              _buildButtonRow(['4', '5', '6', '*']),
              _buildButtonRow(['1', '2', '3', '-']),
              _buildButtonRow(['C', '0', '=', '+', 'delete'])
            ],
          )
        ],
      ),
    );
  }

  Widget _buildButtonRow(List<String> allButtons){
    return Row(
        children: allButtons.map((buttonsText) => _completeButton(
          buttonsText,
          buttonsText == 'C' ? Colors.grey[700]! : Colors.grey[900]!,
          buttonsText == '=' || buttonsText == '/' || buttonsText == '*' ||
              buttonsText == '-' || buttonsText == '+' || buttonsText == 'delete'
              ? Colors.white
              : Colors.amber,
        )).toList()
    );
  }

  Widget _completeButton(
    String buttonText,
    Color buttonColor,
    Color textColor,
  ) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(8),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: textColor,
              backgroundColor: buttonColor
            ),
            onPressed: (){_buttonPressed(buttonText);}, child: Text(buttonText)),
      ),
    );
  }

  void _buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        // Clear all
        _input = "";
        _output = "";
        _firstOperand = null;
        _secondOperand = null;
        _operator = "";
      } else if (buttonText == "delete") {
        // Delete last character
        if (_input.isNotEmpty) {
          _input = _input.substring(0, _input.length - 1);
        }
      } else if (buttonText == "+" ||
          buttonText == "-" ||
          buttonText == "*" ||
          buttonText == "/") {
        // Set the operator
        if (_input.isEmpty && _firstOperand != null) {
          //_firstOperand = double.tryParse(_input);
          //Text(_firstOperand.toString());
          _operator = buttonText;
          _input = ""; // Clear input for the second operand
        }
      } else if (buttonText == "=") {
        // Calculate result
        if (_firstOperand != null &&
            _input.isNotEmpty &&
            _operator.isNotEmpty) {
          _secondOperand = double.tryParse(_input);
          _input = "";

          if (_operator == "+") {
            _output = (_firstOperand! + _secondOperand!).toString();
          } else if (_operator == "-") {
            _output = (_firstOperand! - _secondOperand!).toString();
          } else if (_operator == "*") {
            _output = (_firstOperand! * _secondOperand!).toString();
          } else if (_operator == "/") {
            if (_secondOperand == 0) {
              _output = "Error (Div by 0)";
            } else {
              _output = (_firstOperand! / _secondOperand!).toString();
            }
          }

          // Reset for next operation
          _firstOperand = 0;
          _secondOperand = 0;
          _operator = "";
          _input = _output;
        }
      } else {
        // Append number to input
        _input += buttonText;
        if (_input.isNotEmpty && _firstOperand == null) {
          _firstOperand = double.tryParse(_input);
          // Clear input for the second operand
        }
      }
    });
  }


  // void _buttonPressed(String buttonText) {
  //   setState(() {
  //     if (buttonText == "C") {
  //       // Clear all
  //       _input = "";
  //       _output = "";
  //       _firstOperand = null;
  //       _secondOperand = null;
  //       _operator = "";
  //     } else if (buttonText == "delete") {
  //       // Delete last character
  //       if (_input.isNotEmpty) {
  //         _input = _input.substring(0, _input.length - 1);
  //       }
  //     } else if (buttonText == "+" ||
  //         buttonText == "-" ||
  //         buttonText == "*" ||
  //         buttonText == "/") {
  //       // Set the operator
  //       if (_input.isNotEmpty && _firstOperand == null) {
  //         _firstOperand = double.tryParse(_input);
  //         _operator = buttonText;
  //         _input = ""; // Clear input for the second operand
  //       }
  //     } else if (buttonText == "=") {
  //       // Calculate result
  //       if (_firstOperand != null &&
  //           _input.isNotEmpty &&
  //           _operator.isNotEmpty) {
  //         _secondOperand = double.tryParse(_input);
  //
  //         if (_operator == "+") {
  //           _output = (_firstOperand! + _secondOperand!).toString();
  //         } else if (_operator == "-") {
  //           _output = (_firstOperand! - _secondOperand!).toString();
  //         } else if (_operator == "*") {
  //           _output = (_firstOperand! * _secondOperand!).toString();
  //         } else if (_operator == "/") {
  //           if (_secondOperand == 0) {
  //             _output = "Error (Div by 0)";
  //           } else {
  //             _output = (_firstOperand! / _secondOperand!).toString();
  //           }
  //         }
  //
  //         // Reset for next operation
  //         _firstOperand = null;
  //         _secondOperand = null;
  //         _operator = "";
  //         _input = _output;
  //       }
  //     } else {
  //       // Append number to input
  //       _input += buttonText;
  //     }
  //   });
  // }

  // _buttonPressed(String buttonText){
  //   setState(() {
  //     if(buttonText == 'C'){
  //        _num1 = 0;
  //        _num2 = 0;
  //        _operand = '';
  //        _output = '';
  //
  //     }else if(buttonText == '+' || buttonText == '-' || buttonText == '*' ||
  //         buttonText =='/'){
  //       _num1;
  //       _num2 = int.parse(_num1);
  //       _operand = buttonText;
  //       _num3 = '';
  //       //_output = "";
  //     }else if(buttonText == '='){
  //       if(_operand == '+'){
  //         _output = (_num1 + _num2).toString();
  //       }
  //       if(_operand == '-'){
  //         _output = (_num1 - _num2).toString();
  //       }if(_operand == '*'){
  //         _output = (_num1 * _num2).toString();
  //       } if(_operand == '/'){
  //         _output = (_num1 / _num2).toString();
  //       }
  //
  //       _num1= 0;
  //       _num2 = 0;
  //       _operand = '';
  //     }else{
  //       if(_num1 == 0){
  //         _num1 = buttonText;
  //         _num3 = _num1;
  //       }else{
  //         _num1 = _num1+buttonText;
  //         _num3 = _num1;
  //       }
  //     }
  //   });
  // }
}
