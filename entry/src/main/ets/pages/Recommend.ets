@Component
export struct Recommend{

  private swiperController:SwiperController = new SwiperController()

  build(){
    Column(){
      Row(){
        Text("推荐")
          .fontColor("#ffffff")

      }.backgroundColor("#ff85bc37")
      Swiper()
    }

  }
}