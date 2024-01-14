import { NavLab } from '../component/home/NavLab';
import { VideoGrid } from '../entity/VideoGrid';
import { NavData } from '../model/NavData';
import { VideoGridModelAndView } from '../model/VideoGridModelAndView';

@Component
export struct CommonVideoPage {
  /**
   * 页面类型
   */
  @Prop type: string;


  @State pageNumber:number = 1;

  /**
   * 第一行导航栏编号以及数据
   */
  @State topOne: number = 0;
  topOneData: Array<String> = ["最新", "最热", "好评"]

  /**
   * 第二行编号以及导航栏
   */
  @State topSecond: number = 0;
  secondData: Array<String> = NavData.navList(this.type)

  /**
   * 第三行编号以及导航栏
   */
  @State topThread: number = 0;
  threadData: Array<String> = NavData.country()

  /**
   * 第四行编号以及导航栏
   */
  @State topF: number = 0;
  forData: Array<String> = NavData.videoTime()

  /**
   * 页面视频数据
   */
  @State videoData: Array<VideoGrid> = VideoGridModelAndView.videoFilmData()


  /**
   * 页面滚动
   */
  pageScroller: Scroller = new Scroller()


  build() {
    Scroll(this.pageScroller) {

      Column({
        space:15
      }) {
        // 筛选
        Column({
          space:10
        }){
          Row() {
            // 导航栏1 最新 最热 好评
            NavLab({
              topOne: this.topOne,
              topOneData: this.topOneData
            })
          }
          if (this.secondData != null) {
            Row() {
              // 导航2 动态导航
              NavLab({
                topOne: this.topSecond,
                topOneData: this.secondData
              })
            }
          }
          Row() {
            // 导航3 国家
            NavLab({
              topOne: this.topThread,
              topOneData: this.threadData
            })
          }
          Row() {
            // 导航4 时间
            NavLab({
              topOne: this.topF,
              space: 20,
              topOneData: this.forData
            })
          }
        }


        // 根据条件查询的内容
        Row() {
          GridRow({
            columns:3,
            gutter:{
              y: 15
            }
          }) {
            ForEach(this.videoData, (item: VideoGrid) => {
              GridCol() {
                Column({
                  space:8
                }){
                  Image(item.img)
                    .width(100)
                    .height(150)
                  Text(item.text)
                    .fontWeight(FontWeight.Bold)
                    .fontColor("#ffffffff")
                    .fontSize(12)
                }
              }
              // 注意 这里通一份数据会不显示 只显示唯一的1份
            },(item:VideoGrid) => JSON.stringify(item))
          }
        }
        // 防止遮挡底部最后1行的数据
        Column(){

        }
        .height(70)
      }
    }
    .height("100%")
    .edgeEffect(EdgeEffect.Fade)
    .scrollBar(BarState.Off)
    .scrollBarColor("#ffa7a7a7")
    .scrollable(ScrollDirection.Vertical)
    .width("100%")
    .onScrollEdge((side:Edge)=>{
      // 这里应该调用api 获取新的数据
      if (side == Edge.Bottom) {
         for (let i = 0; i < 10 ; i++) {
           // 测试的时候从这个数据里面随机取一个视频
           var rand = Math.random() * this.videoData.length | 0;
           var video = this.videoData[rand];
           this.videoData.push(new VideoGrid(video.img,video.text+this.pageNumber))
           this.pageNumber +=1;
        }
      }
    })
  }


}