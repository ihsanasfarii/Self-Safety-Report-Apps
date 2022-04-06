import 'package:flutter/material.dart';

class registrasi extends StatelessWidget {
  String dropdownvalue = '1';

  var items = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30',
    '31'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/bgDaftarAkun.png'),
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(24),
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Daftar \n Akun",
                style: TextStyle(
                    color: Color.fromARGB(235, 27, 27, 27),
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nama Pengguna'),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Nama Lengkap',
                    focusColor: Colors.green,
                    filled: true,
                    fillColor: Color.fromARGB(255, 206, 204, 204),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Email'),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'example@gmail.com',
                    focusColor: Colors.green,
                    filled: true,
                    fillColor: Color.fromARGB(255, 206, 204, 204),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Kata Sandi'),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  decoration: InputDecoration(
                    focusColor: Colors.green,
                    hintText: 'password',
                    filled: true,
                    fillColor: Color.fromARGB(255, 206, 204, 204),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('No Telepon'),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: '08xxxxxxxxxxxx',
                    focusColor: Colors.green,
                    filled: true,
                    fillColor: Color.fromARGB(255, 206, 204, 204),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Tanggal Lahir'),
                SizedBox(
                  height: 8,
                ),
                Column(
                  children: [
                    DropdownButtonFormField(
                      decoration: InputDecoration(
                        focusColor: Colors.green,
                        filled: true,
                        fillColor: Color.fromARGB(255, 206, 204, 204),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 0, 0, 0))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 0, 0, 0))),
                      ),
                      value: dropdownvalue,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Lokasi'),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Lokasi Tinggal',
                    focusColor: Colors.green,
                    filled: true,
                    fillColor: Color.fromARGB(255, 206, 204, 204),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Daftar',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void setState(Null Function() param0) {}
