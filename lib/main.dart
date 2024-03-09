import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  final ListManager _listManager = ListManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List App'),
      ),
      body: ListView.builder(
        itemCount: _listManager.getItems().length,
        itemBuilder: (context, index) {
          final item = _listManager.getItems()[index];
          return ListTile(
            title: Text(item),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  _listManager.removeItem(item);
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                final newItem = 'Item ${_listManager.getItems().length + 1}';
                _listManager.addItem(newItem);
              });
            },
            tooltip: 'Add Item',
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _listManager.clearList();
              });
            },
            tooltip: 'Clear List',
            child: const Icon(Icons.clear),
          ),
        ],
      ),
    );
  }
}

class ListManager {
  List<String> items = [];

  List<String> getItems() {
    return List.from(items);
  }

  void addItem(String item) {
    items.add(item);
  }

  void removeItem(String item) {
    items.remove(item);
  }

  void clearList() {
    items.clear();
  }
}
