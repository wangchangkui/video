import { NavLab } from '../component/home/NavLab';
import { NavData } from '../model/NavData';
@Component
export struct CommonVideoPage {
  @Prop type: string;
  @State topOne: number = 0;
  topOneData: Array<String> = ["最新", "最热", "好评"]
  @State topSecond:number = 0;
  secondData: Array<String> = NavData.navList(this.type)
  @State topThread:number = 0;
  threadData: Array<String> = NavData.country()
  @State topF:number = 0;
  forData: Array<String> = NavData.videoTime()

  build() {
    Column({
      space:15
    }){
      Column({
        space:15
      }){
        Row() {
          // 导航栏1 最新 最热 好评
          NavLab({
            topOne:this.topOne,
            topOneData:this.topOneData
          })
        }
        if(this.secondData != null){
          Row(){
            // 导航2 动态导航
            NavLab({
              topOne:this.topSecond,
              topOneData:this.secondData
            })
          }
        }

        Row(){
          // 导航3 国家
          NavLab({
            topOne:this.topThread,
            topOneData:this.threadData
          })
        }
        Row(){
          // 导航4 时间
          NavLab({
            topOne:this.topF,
            space:20,
            topOneData:this.forData
          })
        }
      }
      .width("100%")
      .height("30%")

      // todo 核心内容
      Column(){

      }.width("100%")
      .height("300%")
    }

  }
}