export class VideoGrid{

  img:Resource|string;

  text: string;

  desc: string;

  constructor(img:Resource|string,text:string,desc?:string) {
    this.img = img;
    this.text = text;
    this.desc = desc;
  }


}