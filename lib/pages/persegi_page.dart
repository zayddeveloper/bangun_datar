import 'package:bangun_datar_app/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class PersegiPage extends StatelessWidget {
  PersegiPage({super.key});

  final PersegiController _persegiController = Get.put(PersegiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Persegi Page"),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/persegi.jpeg",
            height: 150,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("Persegi"),
          ),
          Text(
              "Persegi atau bujur sangkar adalah bangun datar dua dimensi yang dibentuk oleh empat buah rusuk ( � ) {\displaystyle (a)} yang sama panjang dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku. Persegi merupakan turunan dari segi empat yang mempunyai ciri khusus keempat sisinya sama panjang dan keempat sudutnya siku-siku (90°)."),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: 100,
              child: TextFormField(
                onChanged: (value) {
                  _persegiController.sisi = int.parse(value);
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "Sisi",
                    hintText: "Masukkan Sisi",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    _persegiController.hitungLuas();
                  },
                  child: Text(
                    "Hitung Luas",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green.shade300)),
              SizedBox(width: 10),
              ElevatedButton(
                  onPressed: () {
                    _persegiController.hitungKeliling();
                  },
                  child: Text("Hitung Keliling"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.amber.shade300)),
            ],
          ),
          Obx(() => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  _persegiController.hasil.value,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: _persegiController.type.value == 0 ? Colors.green.shade300 : Colors.amber.shade300),
                ),
              ))
        ],
      ),
    );
  }
}
