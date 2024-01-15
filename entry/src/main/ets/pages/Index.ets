import { Home } from './Home'
import { Me } from './Me'
import { Rank } from './Rank'

@Entry
@Component
struct Index {
  @State currentIndex: number = 0
  private tabController: TabsController = new TabsController()

  @Builder TabBuilder(title: string, index: number, selectImg: Resource, normaImg: Resource) {
    Column({
      space:4
    }) {
      Image(this.currentIndex == index ? selectImg : normaImg)
        .width(25)
        .height(25)
      Text(title)
        .fontColor(this.currentIndex == index ? "#007DFF" : "#505151")
    }
    .backgroundColor("#ff242323")
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
    .width("100%")
    .height("100%")
    .onClick(()=>{
      this.currentIndex = index;
      this.tabController.changeIndex(index)
    })
  }

  build() {
    Tabs({
      barPosition:BarPosition.End,
      controller:this.tabController
    }) {
      TabContent() {
        Home()
      }
      .tabBar(this.TabBuilder("首页",0,$r('app.media.home'),$r('app.media.home_unclick')))

      TabContent(){
        Rank()
      }
      .tabBar(this.TabBuilder("排行榜",1,$r('app.media.rank'),$r('app.media.rank_unclick')))

      TabContent() {
        Me()
      }
      .tabBar(this.TabBuilder("我的",2,$r("app.media.me"),$r('app.media.me_unclick')))
    }
    //关闭左右滑动
    .scrollable(false)
    .barWidth("100%")
    .barHeight(80)
    .barMode(BarMode.Fixed)
    .backgroundColor("#ff212020")
    .onChange((index)=>{
      this.currentIndex = index
    })
  }
}