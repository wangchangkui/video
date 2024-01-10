import { VideoGrid } from '../entity/VideoGrid';
export class VideoGridModelAndView{

  /**
   * 获取本周推荐
   * @returns  本周推荐
   */
  public static fireTop():Array<VideoGrid>{
    return [
      new VideoGrid("https://ts1.cn.mm.bing.net/th/id/R-C.e11cab3d41c096bb70d3cf2466ad57f6?rik=BeQgIQJCn1GFpQ&riu=http%3a%2f%2fk.sinaimg.cn%2fn%2fsinakd20230519ac%2f125%2fw690h1035%2f20230519%2f9e99-92e87108e7a26f2af6b92dde992d1e9f.jpg%2fw700d1q75cms.jpg&ehk=oAgMPRVNC8pKnEoyNIM0oU5J1Pv%2bAN5WKoKDU7zYd%2f0%3d&risl=&pid=ImgRaw&r=0","安宁如梦"),
      new VideoGrid("https://c-ssl.duitang.com/uploads/blog/202209/30/20220930194808_969cd.jpeg","一年关山"),
      new VideoGrid("https://ts1.cn.mm.bing.net/th/id/R-C.6a08a7b10da89d523a1ab6fa0a611b3e?rik=uLMtVJdSwXaExA&riu=http%3a%2f%2fk.sinaimg.cn%2fn%2fsinakd20230517ac%2f379%2fw2000h3179%2f20230517%2fe8d0-64045c4e6371dd05f1d9debaa8d75e6e.jpg%2fw700d1q75cms.jpg%3fby%3dcms_fixed_width&ehk=hQY%2fKt8VwrD5BuY8asnrVdpz9E%2ffejqon9ot1KN5Vr0%3d&risl=&pid=ImgRaw&r=0","以爱为营"),
      new VideoGrid("https://tse3-mm.cn.bing.net/th/id/OIP-C.xs0LubMN_A6511cYTRsoZwHaNK?rs=1&pid=ImgDetMain","三大队"),
      new VideoGrid("https://n.sinaimg.cn/sinakd20230320ac/300/w1080h1620/20230320/6fe1-f6a15e9eeaf96530fb8044c827634f78.jpg","军心藏不住"),
      new VideoGrid("https://puui.qpic.cn/vcover_vt_pic/0/mzc002005apkyut1656210035199/450?max_age=7776000","斗破苍穹")
    ];
  }

  /**
   * 轮播图的数据
   * @returns  轮播图
   */
  public static swiper():Array<VideoGrid>{
    return [
      new VideoGrid("https://yinghua.ee/upload/vod/20231222-1/9f4c0f6d646e125c1b3576f49eabaaff.png",null),
      new VideoGrid("https://puui.qpic.cn/tv/0/1249646742_1920800/0",null),
      new VideoGrid("https://img.qula.top/YH/upload/vod/20231205-1/b6d7891019fcd7cf233f3fd8459133d7.jpg",null)
    ]
  }

}