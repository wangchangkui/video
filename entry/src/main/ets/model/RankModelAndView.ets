import { VideoGrid } from '../entity/VideoGrid';
export class RankModelAndView{


  /**
   * 获取热播动漫
   * @returns 动漫集合
   */
  public static  getAnimationTop():Array<VideoGrid> {
    return [
      new VideoGrid("https://pic.huishij.com/upload/vod/20230604-4/425b7c377477a58535335d3d74cd3db0.jpg","完美世界","本作动画改编自起点白金作者辰东遮天三部曲的第二部——完美世界。他为修道而生，为应劫而至，他身化亿万血雨，洒落万古岁月，经历无数时空的熬炼，岁月长河的洗礼，他化万古，他化自在。看男主石昊如何一生极致辉煌，造就无尽传说。"),
      new VideoGrid("https://pic1.bdzyimg.com/upload/vod/20230604-1/962621a8c4db59ae50742cdd79f85fe4.jpg","斗破苍穹年番","萧炎横扫云岚宗成功复仇，谁知药老的灵魂却被魂殿掳走。为抓萧炎，魂殿暗借小医仙之手，命毒宗围剿萧炎的炎盟。刚晋级斗皇的萧炎虽成功化解危机，却也身中魔毒斑。为解此毒，更是为了解救药老，萧炎带着小医仙和紫研前往中州，殊不知，等待他们命运的竟然是……"),
      new VideoGrid("https://pic.huishij.com/upload/vod/20230604-1/a0e8966772be44bf61157057c8a4b05b.jpg","遮天","本作动画改编自起点白金作者辰东遮天三部曲的第一部——遮天。冰冷与黑暗并存的宇宙深处，九具庞大的龙尸拉着一口青铜古棺，亘古长存。这是太空探测器在枯寂的宇宙中捕捉到的一幅极其震撼的画面。九龙拉棺，究竟是回到了上古，还是来到了星空的彼岸？一个浩大的仙侠世界，光怪陆离，神秘无尽。热血似火山沸腾，激情若瀚海汹涌，欲望如深渊无止境……登天路，踏歌行。"),
      new VideoGrid("https://pic.monidai.com/img/202306161950295088353s.jpg","斗罗大陆2·绝世唐门","唐门外门弟子唐三，因偷学内门绝学为唐门所不容，跳崖明志时却发现没有死，反而以另外一个身份来到了另一个世界，一个属于武魂的世界，名叫斗罗大陆。这里没有魔法，没有斗气，没有武术，却有神奇的武魂。这里的每个人，在自己六岁的时候，都会在武魂殿中令武魂觉醒。武魂有动物，有植物，有器物，武魂可以辅助人们的日常生活。而其中一些特别出色的武魂却可以用来修炼并进行战斗，这个职业，是斗罗大陆上最为强大也是最荣耀的职业魂师。")
    ];
  }

  /**
   * 获取热播电视剧
   * @returns 电视剧集合
   */
  public static getVideoTop():Array<VideoGrid> {
    return [];
  }

  /**
   * 获取热播电影
   * @returns 电影名单
   */
  public static getFilmTop():Array<VideoGrid>{
    return [];
  }



}