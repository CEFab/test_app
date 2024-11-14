import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/common/color_extension.dart';

class AddprojectScreen extends StatefulWidget {
  const AddprojectScreen({super.key});

  @override
  State<AddprojectScreen> createState() => _AddprojectScreenState();
}

class _AddprojectScreenState extends State<AddprojectScreen> {
  _AddprojectScreenState() {
    _selectedValue = _placesList[0];
  }

  final _placesList = ['Work', 'Home', 'School', 'Other'];
  String? _selectedValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 255, 201, 210),
              Colors.white,
              Color.fromARGB(255, 201, 249, 255)
            ],
            begin: Alignment(-2, 0),
            end: Alignment(2, 0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              AppBar(
                leading: Icon(CupertinoIcons.arrowtriangle_left_fill,
                    color: TColor.primaryText, size: 24.0),
                title: Center(
                  child: Text("Add Project",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                        color: TColor.primaryText,
                      )),
                ),
                actions: [
                  IconButton(
                    icon: Icon(CupertinoIcons.bell_solid,
                        color: TColor.primaryText, size: 24.0),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: DropdownButtonFormField(
                      value: _selectedValue,
                      items: _placesList
                          .map(
                              (e) => DropdownMenuItem(value: e, child: Text(e)))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          _selectedValue = val;
                        });
                      },
                      icon: Padding(
                        padding: const EdgeInsets.only(right: 10, bottom: 10),
                        child: Icon(CupertinoIcons.arrowtriangle_down_fill,
                            color: TColor.primaryText),
                      ),
                      decoration: InputDecoration(
                        labelText: "Task group",
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffFFE4F2), // Fondo azul
                              borderRadius: BorderRadius.circular(
                                  10), // Border radius de 10
                            ), // Espaciado interno reducido
                            child: const Icon(
                              CupertinoIcons.briefcase_fill,
                              color: Color(0xffF478B8),
                              size: 15,
                            ),
                          ),
                        ),
                      )),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Project name",
                      border: InputBorder.none,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
