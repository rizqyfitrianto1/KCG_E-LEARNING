class SliderModel{
  String imagePath;
  String title1;
  String title2;
  String desc;

  SliderModel({this.imagePath, this.title1, this.title2, this.desc});

  void setImageAssetPath(String getImagepath){
    imagePath = getImagepath;
  }

  void setTitle1(String getTitle1){
    title1 = getTitle1;
  }

  void setTitle2(String getTitle2){
    title2 = getTitle2;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imagePath;
  }

  String getTilte1(){
    return title1;
  }

  String getTilte2(){
    return title2;
  }

  String getDesc(){
    return desc;
  }

}

List<SliderModel> getSlide(){
  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  sliderModel.setImageAssetPath("assets/image_3.png");
  sliderModel.setTitle1("SELAMAT DATANG");
  sliderModel.setTitle2("DI KCG Learning");
  sliderModel.setDesc("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  sliderModel.setImageAssetPath("assets/image_3.png");
  sliderModel.setTitle1("SELAMAT DATANG");
  sliderModel.setTitle2("DI KCG Learning");
  sliderModel.setDesc("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  sliderModel.setImageAssetPath("assets/image_3.png");
  sliderModel.setTitle1("SELAMAT DATANG");
  sliderModel.setTitle2("DI KCG Learning");
  sliderModel.setDesc("Sebuah aplikasi online learning yang digunakan oleh Tim Learning and Development KCG dalam melakukan pembelajaran");
  slides.add(sliderModel);

  sliderModel = new SliderModel();
  return slides;
}