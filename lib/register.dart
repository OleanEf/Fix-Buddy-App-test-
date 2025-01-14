import 'package:flutter/material.dart';
import 'ProfileScreen.dart';

void main() {
  runApp(FixBuddyApp());
}

class FixBuddyApp extends StatelessWidget {
  const FixBuddyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        title: Row(
          children: [
            Image.asset(
              'assets/images/fix_buddy_logo.png',
              height: 40,
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              child: const Icon(Icons.person, color: Colors.black),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.orange,
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: const Center(
                child: Text(
                  'สมัครสมาชิก',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.67,
                  child: Column(
                    children: [
                      _buildTextField(label: 'ชื่อผู้ใช้ :'),
                      _buildTextField(label: 'E-mail :'),
                      _buildTextField(label: 'เบอร์โทรศัพท์ :'),
                      _buildTextField(label: 'รหัสผ่าน :', obscureText: true),
                      _buildTextField(label: 'ยืนยันรหัสผ่าน :', obscureText: true),
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: (value) {}),
                          const Expanded(
                            child: Text(
                              'รับข้อตกลงของทาง Fix Buddy',
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SuccessScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 50,
                            vertical: 20,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'สมัครสมาชิก',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({required String label, bool obscureText = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('สมัครสมาชิกสำเร็จ'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle, color: Colors.green, size: 100),
            const SizedBox(height: 20),
            const Text(
              'การสมัครสมาชิกสำเร็จ!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 15,
                ),
              ),
              child: const Text('กลับไปหน้าหลัก'),
            ),
          ],
        ),
      ),
    );
  }
}
