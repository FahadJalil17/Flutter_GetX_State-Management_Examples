import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController{
// when we will capture image from camera or gallery then we will store in this variable
RxString imagePath = ''.obs;

Future getImage() async{
  final ImagePicker _picker = ImagePicker();
  final image = await _picker.pickImage(source: ImageSource.camera);

  if(image != null){ // then you have to add the path
    imagePath.value = image.path.toString();

  }
}

}