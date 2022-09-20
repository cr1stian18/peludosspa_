import 'package:flutter/material.dart';

class CitasMedicas extends StatelessWidget {
  const CitasMedicas({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Colaboradores(),
    );
  }
}

class Colaboradores extends StatefulWidget {
  const Colaboradores({super.key});

  @override
  State<Colaboradores> createState() => _ColaboradoresState();
}

class _ColaboradoresState extends State<Colaboradores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          //colaboradores
          SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 80,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue[200]),
                      width: 200,
                      height: 150,
                      // color: Colors.blue[200],
                      child: doctorMethod(),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[200],
                      ),
                      width: 200,
                      height: 150,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[200],
                      ),
                      width: 200,
                      height: 150,
                    )
                  ],
                ),
              ),
              //formulario
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8.0, bottom: 8.0, top: 40),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Agende su cita aqui',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.keyboard_double_arrow_down_outlined)
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          //nombre usuario
                          dameUsuario(),
                          //tipo mascota
                          const SizedBox(
                            height: 10,
                          ),
                          tipoMascota(),
                          const SizedBox(
                            height: 10,
                          ),
                          profesional()
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row doctorMethod() {
    return Row(
      children: const [
        CircleAvatar(backgroundImage: AssetImage('assets/user.png')),
        Text('data')
      ],
    );
  }
}

Widget dameUsuario() {
  return Container(
    height: 50,
    padding: EdgeInsets.only(left: 8),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue[100],
        border: Border.all(color: Colors.blue)),
    child: TextFormField(
      decoration: const InputDecoration(
          //labelText: 'Dueño mascota'
          hintText: 'Su nombre?'),
    ),
  );
}

Widget tipoMascota() {
  return Container(
    height: 50,
    padding: EdgeInsets.only(left: 8),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue[100],
        border: Border.all(color: Colors.blue)),
    child: TextFormField(
      decoration: const InputDecoration(
          //labelText: 'Dueño mascota'
          hintText: 'que tipo de mascota?'),
    ),
  );
}

Widget profesional() {
  return Container(
    height: 50,
    padding: EdgeInsets.only(left: 8),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue[100],
        border: Border.all(color: Colors.blue)),
    child: TextFormField(
      decoration: const InputDecoration(
          //labelText: 'Dueño mascota'
          hintText: 'con que doctor?'),
    ),
  );
}
