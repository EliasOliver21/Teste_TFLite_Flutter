import 'package:tflite_v2/tflite_v2.dart';

class TFLiteHelper {
  Future loadModel() async {
    try {
      await Tflite.loadModel(
          model: "assets/model_paula.tflite",
          //labels: "assets/labels.txt",
          numThreads: 1, // defaults to 1
          isAsset:
              true, // defaults to true, set to false to load resources outside assets
          useGpuDelegate:
              false // defaults to false, set to true to use GPU delegate
          );
    } catch (e) {
      print('Erro ao carregar modelo: $e');
    }
  }
}
