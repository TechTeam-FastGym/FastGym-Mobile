// lib/ui/screens/profile/profile_screen.dart
import 'package:flutter/material.dart';
import '../../../features/user.dart';
import '../../../persistence/preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {

  final Usuario usuario;

  const ProfileScreen({Key? key, required this.usuario}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController emailController = TextEditingController();
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  String currentPlan = '';

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController(text: widget.usuario.email);
    _loadPlan();
  }

  void _loadPlan() async {
    String? plan = await SharedPreferencesHelper.getUserPlan();
    setState(() {
      currentPlan = plan ?? widget.usuario.plan.toString();
    });
  }

  void _savePlan(String plan) async {
    await SharedPreferencesHelper.saveUserPlan(plan);
    setState(() {
      currentPlan = plan;
      widget.usuario.plan = currentPlan;
    });
  }

  void _showPlanDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Selecciona tu plan'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text('Delgado'),
                onTap: () {
                  _savePlan('Delgado');
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text('Medio'),
                onTap: () {
                  _savePlan('Medio');
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text('Grueso'),
                onTap: () {
                  _savePlan('Grueso');
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  bool _validatePassword(String password) {
    final regex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');
    return regex.hasMatch(password);
  }

  void _changePassword() {
    if (newPasswordController.text != confirmPasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Las contraseñas no coinciden')));
      return;
    }

    if (!_validatePassword(newPasswordController.text)) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('La nueva contraseña no cumple con los requisitos')));
      return;
    }

    // Lógica para cambiar la contraseña, por ejemplo, llamando a una API

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Contraseña cambiada exitosamente')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(),
            Expanded(child: _buildProfileInfo(context)),
            _buildFooter(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      color: Color(0xFF0086BF),
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            'Perfil',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(
            color: Colors.white,
            thickness: 1.2,
          ),
        ],
      ),
    );
  }

  Widget _buildProfileInfo(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/image/profile-edit.png'),
              radius: 50,
            ),
            SizedBox(height: 16),
            Text(
              '${widget.usuario.nombre}',
              style: TextStyle(
                color: Color(0xFF0086BF),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Plan actual:',
              style: TextStyle(
                color: Color(0xFF0086BF),
                fontSize: 17,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xFF0086BF),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  currentPlan,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            TextButton(
              onPressed: _showPlanDialog,
              child: Text(
                'Editar plan',
                style: TextStyle(
                  color: Color(0xFF0086BF),
                  fontSize: 17,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Correo electrónico',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: oldPasswordController,
              decoration: InputDecoration(
                labelText: 'Contraseña actual',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 16),
            TextField(
              controller: newPasswordController,
              decoration: InputDecoration(
                labelText: 'Nueva contraseña',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 16),
            TextField(
              controller: confirmPasswordController,
              decoration: InputDecoration(
                labelText: 'Confirmar nueva contraseña',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _changePassword,
              child: Text('Cambiar contraseña'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0086BF),
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xFF0086BF),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_circle_left_outlined,
              size: 50,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
