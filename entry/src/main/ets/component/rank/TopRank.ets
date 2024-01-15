import { VideoGrid } from '../../entity/VideoGrid'
@Component
export struct TopRank{
  topVideo:Array<VideoGrid>
  private scroller: Scroller = new Scroller()
  build(){
    Flex({
      direction:FlexDirection.Column
    }){
      Scroll(this.scroller){
        Column(){
          ForEach(this.topVideo,(item:VideoGrid)=>{
            Row(){
              Row({
                space:10
              }){
                Image(item.img)
                  .width(100)
                  .height(120)
                Column({
                  space:8
                }){
                  Row(){
                    Text(item.text)
                      .fontSize(16)
                      .fontWeight(FontWeight.Bold)
                      .fontColor("#ffffff")
                      .width("100%")
                      .textAlign(TextAlign.Start)
                  }
                  .width("60%")

                  Row(){
                    Text(item.desc)
                      .fontSize(14)
                      .fontColor("#ff999595")
                      .maxLines(5)
                      .lineHeight(15)
                      .textOverflow({
                        overflow:TextOverflow.Ellipsis
                      })
                  }
                  .width("60%")
                }
              }
              .width("100%")
              .height(150)
              .justifyContent(FlexAlign.Center)
            }
            .height(200)
            .borderRadius(10)
            .alignItems(VerticalAlign.Center)
            .justifyContent(FlexAlign.Center)
            .backgroundColor("#ff303030")
            .width("100%")

            Row(){

            }
            .width("100%")
            .height(20)

          },item=>JSON.stringify(item))
        }
        .width("90%")
        // 所以这里加一个空白高度
        Column(){

        }
        .height(50)
      }
      .edgeEffect(EdgeEffect.Fade)
      .scrollBar(BarState.Auto)
      .scrollBarWidth(1)
      .scrollable(ScrollDirection.Vertical)
      .width("100%")
    }
  }
}