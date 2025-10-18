import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() => runApp(const EsteroApp());

class EsteroApp extends StatelessWidget {
  const EsteroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Estero Login',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF6C2CFF)),
        fontFamily: 'Poppins', // opsional
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    const purple = Color(0xFF6C2CFF);
    const borderBlue = Color(0xFF2296FF);

    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F8),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 420),
              child: Container(
                padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: borderBlue, width: 2),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x12000000),
                      blurRadius: 12,
                      offset: Offset(0, 6),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    Text(
                      'Welcome Back',
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'Welcome back to Estero. Have a good time',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.grey[600],
                          ),
                    ),
                    const SizedBox(height: 22),

                    // --- Email Field ---
                    _FilledField(
                      hintText: 'Your Email/Id',
                      keyboardType: TextInputType.emailAddress,
                      icon: Icons.person_outline,
                    ),
                    const SizedBox(height: 12),

                    // --- Password Field ---
                    _FilledField(
                      hintText: 'Your Password',
                      obscureText: true,
                      icon: Icons.lock_outline,
                    ),

                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        // ERROR merah kamu terjadi karena ini tidak ada:
                        onPressed: () {}, // <-- wajib ada
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: const Size(0, 0),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Text(
                          'Forget Password ?',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ),
                    ),

                    const SizedBox(height: 6),
                    // --- Login Button ---
                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: purple,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 0,
                        ),
                        onPressed: () {},
                        child: const Text('Login', style: TextStyle(fontWeight: FontWeight.w600)),
                      ),
                    ),

                    const SizedBox(height: 22),
                    // --- Divider with text ---
                    Row(
                      children: [
                        const Expanded(child: Divider(thickness: 1)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Text('Or continue with', style: TextStyle(color: Colors.grey[600])),
                        ),
                        const Expanded(child: Divider(thickness: 1)),
                      ],
                    ),

                    const SizedBox(height: 16),
                    // --- Social Buttons ---
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _SocialBox(label: 'G'),   // Google
                        _SocialBox(label: ''),  // Apple
                        _SocialBox(label: 't'),  // Twitter/X
                      ],
                    ),

                    const SizedBox(height: 28),
                    // --- Register link ---
                    Center(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.grey[700], fontSize: 14),
                          children: [
                            const TextSpan(text: "Don't have an account? "),
                            TextSpan(
                              text: 'Register',
                              style: const TextStyle(color: purple, fontWeight: FontWeight.w700),
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _FilledField extends StatefulWidget {
  final String hintText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final IconData icon;

  const _FilledField({
    super.key,
    required this.hintText,
    required this.icon,
    this.obscureText = false,
    this.keyboardType,
  });

  @override
  State<_FilledField> createState() => _FilledFieldState();
}

class _FilledFieldState extends State<_FilledField> {
  late bool _hide;

  @override
  void initState() {
    super.initState();
    _hide = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _hide,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        hintText: widget.hintText,
        prefixIcon: Icon(widget.icon, color: Colors.grey[600]),
        suffixIcon: widget.obscureText
            ? IconButton(
                onPressed: () => setState(() => _hide = !_hide),
                icon: Icon(_hide ? Icons.visibility_off_outlined : Icons.visibility_outlined),
              )
            : null,
        filled: true,
        fillColor: const Color(0xFFF2F2F5),
        contentPadding: const EdgeInsets.symmetric(vertical: 18, horizontal: 14),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }
}

class _SocialBox extends StatelessWidget {
  final String label;
  const _SocialBox({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 84,
      height: 48,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: const Color(0xFFF7F7F9),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFE6E6EA)),
        ),
        child: Center(
          child: Text(label, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
        ),
      ),
    );
  }
}
