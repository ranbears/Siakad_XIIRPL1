import 'package:flutter_industri/app/data/models/mode_tahunajaran.dart';
import 'package:flutter_industri/app/data/repositories/repository_tahunajaran.dart';
import 'package:get/get.dart';

class TahunAjaranController extends GetxController {

  final count = 0.obs;
  Rx<bool> isLoaded = false.obs;
  Rx<ModelTahunAjaran> TahunAjaran = ModelTahunAjaran().obs;

  @override
  void onInit() {
    super.onInit();
    getTahunAjaran();
  }

  void getTahunAjaran() {
    isLoaded(false);
    RepositoryTahunAJaran().loadMapel().then((ModelTahunAjaran response) {
      TahunAjaran(response);
      isLoaded(true);
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}