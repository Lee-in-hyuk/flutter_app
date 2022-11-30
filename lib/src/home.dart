import 'package:flutter/material.dart';
import 'package:flutter_app/src/provider/count_provider.dart';
import 'package:flutter_app/src/ui/count_home_widget.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
 Home({Key? key}) : super(key: key);

 var _countProvider;

  @override
  Widget build(BuildContext context) {
    _countProvider = Provider.of<CountProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Sample'),
      ),
      body: CountHomeWidget(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
              onPressed: (){
                if (_countProvider != null) {
                  _countProvider.add();
                }
              },
              icon: Icon(Icons.add)
          ),
          IconButton(
              onPressed: (){
                if (_countProvider != null) {
                  _countProvider.remove();
                }
              },
              icon: Icon(Icons.remove)
          ),
        ],
      ),
    );
  }
}
