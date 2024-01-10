import { VideoGrid } from '../../entity/VideoGrid'
@Component
export struct HomeVideoComponent {

  scroller: Scroller = new Scroller()
  data:Array<VideoGrid>;
  title:string;

  build() {
    Column(){
      // 标题
      Row() {
        Column(){
          Text(this.title)
            .fontColor("#ffffff")
            .fontWeight(FontWeight.Bold)
            .fontSize(23)
            .fontFamily("宋体")
          Blank()
            .height(18)
        }

      }
      .width("100%")
      // 数据
      Row() {
        Grid(this.scroller) {
          ForEach(this.data, (item: VideoGrid) => {
            GridItem() {
              Column({
                space: 10
              }) {
                Image(item.img)
                  .width(100)
                  .height(150)
                Text(item.text)
                  .fontWeight(FontWeight.Bold)
                  .fontColor("#ffffffff")
                  .fontSize(15)
              }
            }
          }, item => JSON.stringify(item))
        }
        .borderRadius(14)
        .cellLength(120)
        .rowsGap(20)
        .columnsGap(10)
        .width("100%")
        .height(390)
        .columnsTemplate("1fr 1fr 1fr")
        .rowsTemplate("1fr 1fr")
      }
      .width("100%")
      .alignItems(VerticalAlign.Center)
      .justifyContent(FlexAlign.Center)
    }

  }
}