@Component
export struct Recommend {
  private swiperController: SwiperController = new SwiperController()
  private scroller: Scroller = new Scroller()

  build() {
    Column() {
      Scroll(this.scroller) {
        Flex({
          direction:FlexDirection.Column,
          wrap:FlexWrap.Wrap,
          justifyContent:FlexAlign.Start,
          alignItems:ItemAlign.Center,
          alignContent:FlexAlign.Center
        }){
          Column({
            space:15
          }){
            // 本周推荐标题
            Row() {
              Text("本周推荐")
                .fontColor("#ffffff")
                .fontWeight(FontWeight.Bold)
                .fontSize(22)
                .fontFamily("宋体")

            }
            .width("100%")
            .height(50)

            // 轮播图
            Row() {
              Swiper(this.swiperController) {
                Image("https://yinghua.ee/upload/vod/20231229-1/38e8a7f5f00e36123e688a5a58e4e76d.jpg")
                Image("https://yinghua.ee/upload/vod/20231222-1/9f4c0f6d646e125c1b3576f49eabaaff.png")
                Image("https://puui.qpic.cn/tv/0/1249646742_1920800/0")
                Image("https://img.qula.top/YH/upload/vod/20231205-1/b6d7891019fcd7cf233f3fd8459133d7.jpg")
              }
              .autoPlay(true)
              .interval(5000)
              .width("100%")
              .height(200)
              .backgroundColor("#232323")
              .borderRadius(20)
            }
            .width("100%")
            .height(200)

            // 大家都在看标题
            Row() {
              Text("大家都在看")
                .fontColor("#ffffff")
                .fontWeight(FontWeight.Bold)
                .fontSize(18)
                .fontFamily("宋体")

            }
            .width("100%")

            //
          }

        }
        .height("400%")
      }
      .edgeEffect(EdgeEffect.Spring)
      .scrollBar(BarState.Auto)
      .scrollable(ScrollDirection.Vertical)
      .width("100%")

    }

  }
}