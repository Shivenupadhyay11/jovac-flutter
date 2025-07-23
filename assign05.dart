import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlutterForm(),
    );
  }
}
class FlutterForm extends StatefulWidget {
  const FlutterForm({super.key});

  @override
  State<FlutterForm> createState() => _FlutterFormState();
}

class _FlutterFormState extends State<FlutterForm> {
  String? _selectedCategory;
  final _nameController= TextEditingController();
  final _rollNumberController= TextEditingController();
  final _feedbackController= TextEditingController();
  final List<String> _category = ['Category1','Category2','Category3','Category4'];
  bool _isChecked = false;
  double _rating = 5;

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title:Text('Flutter Feedback Form',
          style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 14),),
                SizedBox(height: 11,),
                TextFormField(
                  controller: _nameController,
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: 'Enter your name',
                    filled: true,
                    fillColor: Colors.grey[200],
                    contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 21),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Please enter your name';
                      }
                      return null;
                    }
                ),
                SizedBox(height: 20,),
                Text('Roll Number',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 14),),
                SizedBox(height: 11,),
                TextFormField(
                    controller: _rollNumberController,
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: 'Enter your roll number',
                      filled: true,
                      fillColor: Colors.grey[200],
                      contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 21),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Please enter your roll number';
                      }
                      return null;
                    }
                ),
                SizedBox(height: 20,),
                Text('Enter your feedback...',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 14),),
                SizedBox(height: 11,),
                TextFormField(
                    controller: _feedbackController,
                    maxLines: 5,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 21),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Please enter your feedback';
                      }
                      return null;
                    }
                ),
                SizedBox(height: 20,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Text('Rate your Experience',
                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)
                      ),
                      Text(_rating.round().toString(),style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),

                    ]
                ),
                SizedBox(height: 2,),
                Slider(
                    value: _rating,
                    min: 0,
                    max: 20,
                    divisions: 4,
                    activeColor: Colors.black,
                    inactiveColor: Colors.black12,
                    onChanged: (value){
                      setState(() {
                        _rating = value;
                      });
                    }
                ),
                SizedBox(height: 20,),
                Text('Select a category',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 14),),
                SizedBox(height: 14,),
                DropdownButtonFormField(
                  value: _selectedCategory,
                    hint: Text('Choose a category'),
                    items: _category.map((items){
                      return DropdownMenuItem(
                        value: items,
                          child: Text(items),
                      );
                    }).toList(),
                    onChanged: (value){
                      setState(() {
                        _selectedCategory = value!;

                      });
                    },
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 21),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        )
                    ),
                    validator: (value){
                      if(value==null){
                        return 'Please select a category';
                      }
                      return null;
                    }
                ),
                SizedBox(height: 20,),
                Text('What features did you like?',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                CheckboxListTile(
                  title: Text('Easy to Use',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
                    value: _isChecked,
                    onChanged:(value){
                    setState(() {
                      _isChecked = value!;
                    });
                    },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                CheckboxListTile(
                  title: Text('Design',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
                  value: _isChecked,
                  onChanged:(value){
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                CheckboxListTile(
                  title: Text('Speed',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
                  value: _isChecked,
                  onChanged:(value){
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                CheckboxListTile(
                  title: Text('Support',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
                  value: _isChecked,
                  onChanged:(value){
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                CheckboxListTile(
                  title: Text('I agree to the terms and conditions',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
                  value: _isChecked,
                  onChanged:(value){
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,

                ),
                SizedBox(height: 20,),
                ElevatedButton(
                    onPressed:(){
                      if(_formKey.currentState!.validate()){
                        _showSubmittedData(context);
                      }
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: Text('Submit',style: TextStyle(color: Colors.white),)
                ),

              ],
            ),
        ),
      ),

    );
  }
  void _showSubmittedData(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) =>
            AlertDialog(
                title: Text('Submitted data'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name: ${_nameController.text}'),
                    Text('Roll Number: ${_rollNumberController.text}'),
                    Text('Feedback: ${_feedbackController.text}'),
                    Text('Category: ${_selectedCategory}'),
                    Text('Rating: ${_rating.round()}'),
                  ],
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('OK'),)
                ]
            )
    );
  }
}