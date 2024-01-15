import { TopRank } from '../component/rank/TopRank'
import { VideoGrid } from '../entity/VideoGrid'
import { RankModelAndView } from '../model/RankModelAndView'
import { CommonVideoPage } from './CommonVideoPage'
@Component
export struct Rank{
  private tabController: TabsController = new TabsController()
  @State currentIndex: number = 0

  @State topAnimationRank:Array<VideoGrid> = RankModelAndView.getAnimationTop()

  @Builder TabBuilder(index: number, name: string) {
    Row() {
      Column({
        space:3
      }){
        Text(name)
          .fontColor("#FFFFFF")
          .fontSize(this.currentIndex === index ? 20:16)
          .fontWeight(this.currentIndex === index ? FontWeight.Bold:FontWeight.Normal)
          .animation({
            duration:100,
            curve:Curve.Linear
          })
          .lineHeight(22)
        // 底部切换条
        Row(){
        }
        .width(this.currentIndex === index ? "30": "0")
        .height(5)
        .borderRadius(50)
        .animation({
          duration:100,
          curve:Curve.EaseOut
        })
        .linearGradient({
          angle:90,
          direction:GradientDirection.Right,
          colors:[["#ffe95353",0.0],["#ffe7c7c7",0.3],["#ff11a9ee",0.5],["#ffeac820",0.8]]
        })
      }

    }
    .onClick(()=>{
      this.currentIndex = index;
      this.tabController.changeIndex(index)
    })
    .width(70)
    .alignItems(VerticalAlign.Center)
    .justifyContent(FlexAlign.Center)

  }

  build(){
    Column({
      space:15
    }){
       Row(){
         Tabs({
           barPosition:BarPosition.Start,
           controller:this.tabController
         }){
           TabContent(){
             TopRank({
               topVideo:this.topAnimationRank
             })
           }.tabBar(this.TabBuilder(0, '热播漫'))
           TabContent(){
             Column(){
               Text("热播剧")
             }
           }.tabBar(this.TabBuilder(1, '热播剧'))
           TabContent(){
             Column(){
               Text("热播影")
             }
           }.tabBar(this.TabBuilder(2, '热播影'))
         }
         .barWidth("100%")
         .barHeight(80)
         .barMode(BarMode.Fixed)
         .onChange((index)=>{
           this.currentIndex = index
         })
       }
    }
    .width("100%")
    .height("100%")
    .linearGradient({
      angle:0,
      colors:[ [0x202125, 0.85],[0x1b3251, 1.0]]
    })

  }
}