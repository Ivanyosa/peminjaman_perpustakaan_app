import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('RegisterView'),
          centerTitle: true,
        ),
        body: Form(
          key: controller.formkey,
          child: Column(
            children: [
              TextFormField(
                  controller: controller.namaController,
                  decoration: InputDecoration(hintText: "Masukan nama"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "nama tidak boleh kosong";
                    }
                    return null;
                  }),
              TextFormField(
                  controller: controller.usernameController,
                  decoration: InputDecoration(hintText: "Masukan Username"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Username tidak boleh kosong";
                    }
                    return null;
                  }),
              TextFormField(
                  controller: controller.telpController,
                  decoration: InputDecoration(hintText: "Masukan No Telepom"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "No telepon tidak boleh kosong";
                    }
                    return null;
                  }),
              TextFormField(
                  controller: controller.alamatController,
                  decoration: InputDecoration(hintText: "Masukan Alamat"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Alamat tidak boleh kosong";
                    }
                    return null;
                  }),
              TextFormField(
                  controller: controller.passwordController,
                  decoration: InputDecoration(hintText: "Masukan Password"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Pasword tidak boleh kosong";
                    }
                    return null;
                  }),
              Obx(() => controller.loadingRegister.value
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                  onPressed: () {
                    controller.addRegister();
                  },
                  child: Text("tambah")))
            ],
          ),
        ));
  }
}
