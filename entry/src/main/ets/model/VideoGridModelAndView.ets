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

  public static videoFilmData():Array<VideoGrid>{
    return [
      new VideoGrid("https://pic.lzzypic.com/upload/vod/20230629-1/5edf0cc836bf23b634a7bee46f916d85.jpg","人生路熟"),
      new VideoGrid("https://image.maimn.com/cover/696ea2c7271f939ccafc511902e85604.jpg","熊出没·重返地球"),
      new VideoGrid("https://pic.lzzypic.com/upload/vod/20220320-1/c631a3472d98149a35bede151c706e07.jpg","我不是药神"),
      new VideoGrid("https://img.maimn.com/upload/vod/2021-12-08/202112081638958013.jpg","猪猪侠之英雄猪少年"),
      new VideoGrid("https://pic.lzzypic.com/upload/vod/20220404-1/84a296eaa362d518c54199841689da22.jpg","一眉道人"),
      new VideoGrid("https://pic.lzzypic.com/upload/vod/20221112-1/e7b8105c71a777634d9f1c14dbb33fe6.jpg","西红柿首富"),
      new VideoGrid("https://pic.lzzypic.com/upload/vod/20230601-1/b08ad9a7f6a7b9aa6a141477cd95c520.jpg","龙马精神"),
      new VideoGrid("https://pic.lzzypic.com/upload/vod/20220427-1/1cfc3edeb6a7353ca5321ef742f39134.jpg","唐人街探案"),
      new VideoGrid("https://pic.lzzypic.com/upload/vod/20220507-1/d01b8eb8314f0827b95a660f23578e30.jpg","喜剧之王"),
      new VideoGrid("https://pic.lzzypic.com/upload/vod/20230725-1/d8a6fa70d79c5659d36fd6f24dec1cc6.jpg","二手搭档"),
      new VideoGrid("https://pic.lzzypic.com/upload/vod/20230707-1/340a5499be8f29852c4d7fe6502584c5.jpg","枪神再起"),
      new VideoGrid("https://p.ssl.qhimg.com/d/dy_fc61008fcffa096a2d9ff9650ab0bc27.jpg","老少爷打鬼子"),
      new VideoGrid("https://pic.lzzypic.com/upload/vod/20230125-1/d483055d1f3dfc2cf1f758ab1bbee54e.jpg","满江红"),
      new VideoGrid("https://pic.lzzypic.com/upload/vod/20230620-1/49a62117dc8db6d49c22db4e8dec1503.jpg","了不起夜晚"),
      new VideoGrid("https://pic.wujinpp.com/upload/vod/20210728-1/5fa00121c407f68d52c88eb89f44f94e.jpg","大闹西游"),
      new VideoGrid("https://pic.lzzypic.com/upload/vod/20230219-1/713819cde46301493a1c2da9302842e8.jpg","僵尸先生"),
      new VideoGrid("https://pic.lzzypic.com/upload/vod/20230511-1/996d8964b0d66bba1f4ca01559f55fca.jpg","保你平安"),
      new VideoGrid("https://pic.lzzypic.com/upload/vod/20220328-1/dfe0f1e786c8b43db621d34461fd33c7.webp","功夫之王"),
      new VideoGrid("https://pic.lzzypic.com/upload/vod/20221104-1/1fc866cc004707bcf6657efd84e431ff.jpg","阖家辣"),
      new VideoGrid("https://image.maimn.com/cover/3ecf70058911d495069ec09c0c8c9190.jpg","熊出没·伴我“熊芯”")

    ]
  }



}