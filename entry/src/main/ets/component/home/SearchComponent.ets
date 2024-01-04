@Component
export struct SearchComponent{
  @State value:string =""
  build(){
    Row({
      space:15
    }){
      Search({
          value:this.value,
          placeholder:"搜索视频"
      })
        .textFont({
          size:20,
          family:'宋体',
          weight:FontWeight.Bold,
        })
        .placeholderColor("#ffa79d9d")
        .backgroundColor("#1b3251")
        .width("70%")
      Column(){
        Image($r("app.media.history"))
          .width(30)
          .height(30)
      }
      .width("15%")
      Column(){
        Image($r("app.media.download"))
          .width(30)
          .height(30)
      }.width("%15")

    }.width("90%")

  }
}