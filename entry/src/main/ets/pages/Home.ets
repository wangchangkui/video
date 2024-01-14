import { SearchComponent } from '../component/home/SearchComponent'
import { CommonVideoPage } from './CommonVideoPage'
import { Recommend } from './Recommend'
@Component
export struct Home{
  @State currentIndex: number = 0
  private controller: TabsController = new TabsController()

  @Builder TabBuilder(index: number, name: string) {
    Row() {
      Column(){
        Text(name)
          .fontColor(this.currentIndex === index ? "#007DFF" : "#FFFFFF")
          .fontSize(this.currentIndex === index?20:16)
          .fontWeight(this.currentIndex === index ?FontWeight.Bold:FontWeight.Normal)
          .lineHeight(22)
      }

    }
    .onClick(()=>{
      this.currentIndex = index;
      this.controller.changeIndex(index)
    })
    .width(70)
    .alignItems(VerticalAlign.Center)
    .justifyContent(FlexAlign.Center)

  }

  build(){
    Column(){
      // 搜索框
      Row(){
        SearchComponent()
      }
      .justifyContent(FlexAlign.Center)
      .alignItems(VerticalAlign.Top)

      // 选项栏
      Row(){
        Tabs({
          barPosition:BarPosition.Start,
          controller:this.controller
        }){
          TabContent(){
            Recommend()
              .width("100%")
              .height("100%")
          }
          .tabBar(this.TabBuilder(0, '推荐'))
          TabContent(){
            CommonVideoPage({
              type:"电影"
            })
          }.tabBar(this.TabBuilder(1, '电影'))
          TabContent(){
            CommonVideoPage({
              type:"电视剧"
            })
          }.tabBar(this.TabBuilder(2, '电视剧'))
          TabContent(){
            CommonVideoPage({
              type:"综艺"
            })
          }.tabBar(this.TabBuilder(3, '综艺'))
          TabContent(){
            CommonVideoPage({
              type:"动漫"
            })
          }.tabBar(this.TabBuilder(4, '动漫'))
          TabContent(){
            CommonVideoPage({
              type:"记录"
            })
          }.tabBar(this.TabBuilder(5, '记录'))
          TabContent(){
            CommonVideoPage({
              type:"短剧"
            })
          }.tabBar(this.TabBuilder(6, '短剧'))
          TabContent(){
            CommonVideoPage({
              type:"少儿"
            })
          }.tabBar(this.TabBuilder(7, '少儿'))

        }
        .vertical(false)
        .barMode(BarMode.Scrollable)
        .onChange((index)=>{
          this.currentIndex = index
        })

      }
      .alignItems(VerticalAlign.Center)
      .justifyContent(FlexAlign.Center)
      .width("90%")
    }
    .width("100%")
    .height("100%")
    .linearGradient({
      angle:0,
      colors:[ [0x202125, 0.85],[0x1b3251, 1.0]]
    })
  }
}