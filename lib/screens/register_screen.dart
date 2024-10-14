import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20),
                // Placeholder for logo
                Center(
                  child: Image.network(
                    'https://via.placeholder.com/100', // Ganti dengan logo yang sesuai
                    height: 50,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  'Try it free without commitment now!',
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                    hintText: 'Enter your name',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Name cannot be empty';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    hintText: 'Enter your email',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email cannot be empty';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    hintText: 'Enter your password',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password cannot be empty';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Implementasi logika registrasi
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text('Create new account'),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildSocialButton(
                      icon: Icons.g_translate, // Ganti dengan icon Google
                      label: 'Google',
                      onTap: () {
                        // Aksi login Google
                      },
                    ),
                    SizedBox(width: 10),
                    _buildSocialButton(
                      icon: Icons.facebook,
                      label: 'Facebook',
                      onTap: () {
                        // Aksi login Facebook
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                    child: Text('Already have an account? Log in'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSocialButton({required IconData icon, required String label, required VoidCallback onTap}) {
    return ElevatedButton.icon(
      onPressed: onTap,
      icon: Icon(icon, size: 20),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        onPrimary: Colors.black,
        elevation: 0,
        side: BorderSide(color: Colors.grey),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      ),
    );
  }
}
