@Component
export struct NavLab{
  @Prop topOne: number;
  topOneData: Array<String>;
  space:number=30
  private scroller: Scroller = new Scroller()

  build(){
    Scroll(this.scroller){
      Row({
        space: 1
      }) {
        ForEach(this.topOneData, (data: string, index: number) => {
          Row() {
            Text(data)
              .fontColor(this.topOne == index ? "#ff0d43cd" : "#ffffff")
              .onClick(() => {
                this.topOne = index
              })
          }
          .width(index === 0 ? 60: data.length*this.space)
          .alignItems(VerticalAlign.Center)
          .justifyContent(FlexAlign.Center)
          .borderRadius(20)
          .backgroundColor(this.topOne == index ? "#ff292929":"#202125")
          .height(30)
          .onClick(() => {
            this.topOne = index
          })
        }, data => JSON.stringify(data))
      }

    }
    .width("100%")
    .scrollBarWidth(0)
    .scrollable(ScrollDirection.Horizontal)
    .scrollBar(BarState.Auto)
    .edgeEffect(EdgeEffect.Fade)
    .scrollBarColor("#232323")
    .align(Alignment.Start)

  }
}