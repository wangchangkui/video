import { HomeVideoComponent } from '../component/home/HomeVideoComponent'
import { VideoGrid } from '../entity/VideoGrid'
import { VideoGridModelAndView } from '../model/VideoGridModelAndView'

@Component
export struct Recommend {
  private swiperController: SwiperController = new SwiperController()
  private scroller: Scroller = new Scroller()
  @State private fireTop: Array<VideoGrid> = VideoGridModelAndView.fireTop()
  @State private swiper: Array<VideoGrid> = VideoGridModelAndView.swiper()

  build() {
    Column() {
      Scroll(this.scroller) {
        Column({
          space: 15
        }) {
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
              ForEach(this.swiper, (item: VideoGrid) => {
                Image(item.img)
              }, item => JSON.stringify(item))
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

          HomeVideoComponent({
            scroller: this.scroller,
            data: this.fireTop,
            title: "大家都在看"
          })

          HomeVideoComponent({
            scroller: this.scroller,
            data: this.fireTop,
            title: "院线片"
          })

          HomeVideoComponent({
            scroller: this.scroller,
            data: this.fireTop,
            title: "日韩"
          })

          HomeVideoComponent({
            scroller: this.scroller,
            data: this.fireTop,
            title: "热播漫"
          })

          HomeVideoComponent({
            scroller: this.scroller,
            data: this.fireTop,
            title: "爽剧"
          })
          // 这里只是因为底部的tab切换导航会隐藏一部分内容
          // 所以这里加一个空白高度
          Column(){

          }
          .height(75)
        }

      }
      .edgeEffect(EdgeEffect.Fade)
      .scrollBar(BarState.Auto)
      .scrollBarColor("#ffa7a7a7")
      .scrollBarWidth(4)
      .scrollable(ScrollDirection.Vertical)
      .width("100%")
    }

  }
}