// ignore_for_file: constant_identifier_names

const String EMPTY_CARD_FRONT_PATH = 'assets/images/card/_empty_card_front.png';
const String EMPTY_CARD_BACK_PATH = 'assets/images/card/_empty_card_back.png';
const String TEMP_CARD_FRONT_PATH = 'TEMP_CARD_FRONT_PATH.png';
const String TEMP_CARD_BACK_PATH = 'TEMP_CARD_BACK_PATH.png';
const String CROP_CARD_FRONT_PATH = 'CROP_CARD_FRONT_PATH.png';
const String CROP_CARD_BACK_PATH = 'CROP_CARD_BACK_PATH.png';

class CardDefault {
  static List<CardInfo> get list => <CardInfo>[
        CardInfo(
          id: "12c6fc06c99a462375eeb3f43dfd832b08ca9e17",
          name: "Asia Miles",
          barcodeFormat: "CODE_128",
          website: "http://www.asiamiles.com",
          backgroundColor: "#5D91C0",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "eb4ac3033e8ab3591e0fcefa8c26ce3fd36d5a0f",
          name: "Decathlon",
          barcodeFormat: "EAN_13",
          website: "http://www.smarturl.it/sto_decathlon",
          backgroundColor: "#0098F1",
          regions: <String>[
            "CN",
          ],
        ),
        // CardInfo(id: "310b86e0b62b828562fc91c7be5380a992b2786a", name: "Esprit", barcodeFormat: "ITF", website: "http://www.smarturl.it/sto_esprit", backgroundColor: "#FFFFFF",regions: <String>["CN","TW",],),
        CardInfo(
          id: "2a7541babb57434e5631ffa2b5639e24f8ce84fc",
          name: "GNC",
          barcodeFormat: "UPC_A",
          website: "http://www.gnclivewell.com",
          backgroundColor: "#EF103F",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "be057d4ca44c10a0fc1dfcffd99cce1490291dc7",
          name: "IKEA Family",
          barcodeFormat: "CODE_128",
          website: "http://www.ikea.com.tw",
          backgroundColor: "#FF6600",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "81110df80ca4086e306c4c52ab485a35cf761acc",
          name: "The Body Shop",
          barcodeFormat: "CODE_128",
          website: "http://www.smarturl.it/sto_thebodyshop",
          backgroundColor: "#00772E",
          regions: <String>[
            "TW",
          ],
        ),
        // CardInfo(id: "867cd58f3fe352905cc5b21cb41c523ca92da469", name: "Subway", barcodeFormat: "DATA_MATRIX", website: "http://smarturl.it/sto_subway", backgroundColor: "#2E9941",regions: <String>["CN","TW",],),
        CardInfo(
          id: "dc51d239fbced2ce3562b4cf820eac1e2b2344c7",
          name: "GAP",
          barcodeFormat: "CODE_128",
          website: "http://www.gap.com",
          backgroundColor: "#08284E",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "5dca477752fc50226595c6a93528eaf3297dbcf8",
          name: "Hallmark",
          barcodeFormat: "CODE_128",
          website: "http://www.hallmark.com",
          backgroundColor: "#613996",
          regions: <String>[
            "CN",
            "TW",
          ],
        ),
        CardInfo(
          id: "02c8be94d9fa60afd0e8fab82a7f004105a90bee",
          name: "Reebok",
          barcodeFormat: "CODE_128",
          website: "http://www.reebok.com/ru-RU/",
          backgroundColor: "#292929",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "3f989fc069ba7bf9afc1fa53d31e8cb4210e246f",
          name: "L'Occitane",
          barcodeFormat: "EAN_13",
          website: "http://www.loccitane.com/",
          backgroundColor: "#FCD239",
          regions: <String>[
            "CN",
            "TW",
          ],
        ),
        CardInfo(
          id: "7dcd5ff96b80f1bb263084ecb01e7696484613fd",
          name: "Nike",
          barcodeFormat: "CODE_128",
          website: "http://www.nike.com",
          backgroundColor: "#000000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "dd68e246ab85c71494243afefd589d2abb6e6d62",
          name: "The Body Shop",
          barcodeFormat: "CODE_128",
          website: "http://www.smarturl.it/sto_thebodyshop",
          backgroundColor: "#00772E",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "9d3e25533e3322d6248f322cc879f8307421807f",
          name: "Autobacs",
          barcodeFormat: "EAN_13",
          website: "http://www.autobacs.fr/",
          backgroundColor: "#F26837",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "158a66682da61df5f2115c2fc8c8328e6c837b05",
          name: "Sam's Club",
          barcodeFormat: "CODE_39",
          website: "http://www.samsclub.cn",
          backgroundColor: "#588B41",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "cf9e834770ba6c82d76e63220ee31818c4752951",
          name: "L’Erbolario",
          barcodeFormat: "EAN_13",
          website: "http://www.erbolario.com/",
          backgroundColor: "#00581E",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "9d93f8113d6ac60e97d0769efd6f167a812f620b",
          name: "Sisley",
          barcodeFormat: "EAN_13",
          website: "http://www.sisley.com/",
          backgroundColor: "#000000",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "2105578f30afd2a04f4265ef60c31ced74807bd2",
          name: "Sasa",
          barcodeFormat: "CODE_128",
          website: "http://www.sasa.com",
          backgroundColor: "#F86EA2",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "4d4163643b19f6e4ae350328277ee35f26cdb1d5",
          name: "T Galleria",
          barcodeFormat: "CODE_128",
          website: "http://www.dfs.com",
          backgroundColor: "#000000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "143df602a55fa43b4454d778d1fe8555f9d162d0",
          name: "SABON",
          barcodeFormat: "EAN_13",
          website: "http://smarturl.it/sto_sabon",
          backgroundColor: "#452A0E",
          regions: <String>[
            "TW",
          ],
        ),
        // CardInfo(id: "6742ebb45229338ec88bed12ed0ef966979b6827", name: "Subway", barcodeFormat: "DATA_MATRIX", website: "http://smarturl.it/sto_subway", backgroundColor: "#2E9941",regions: <String>["CN","TW",],),
        CardInfo(
          id: "643fec50e79c69bc6bbb7616afd3904acf40867c",
          name: "Air China",
          barcodeFormat: "CODE_128",
          website: "https://www.airchina.com",
          backgroundColor: "#FFFFFF",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "e3d9d95962c452f35e4ce7166b8d584f7b43adf0",
          name: "永旺",
          barcodeFormat: "CODE_128",
          website: "http://www.aeonstores.com.hk/",
          backgroundColor: "#B42A83",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "271a77093bf07cdb81c0e82ce12c41dfa0a4d6ab",
          name: "Ponta",
          barcodeFormat: "CODE_128",
          website: "http://www.ponta.com.tw",
          backgroundColor: "#F08511",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "87e8db4f2338ba69baa1c7d4e60969caf4f06d9e",
          name: "北京华联",
          barcodeFormat: "CODE_128",
          website: "http://www.beijing-hualian.com",
          backgroundColor: "#026829",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "2cfe534aa66900e81f6f20b02826b6132d2df8de",
          name: "一茶一坐",
          barcodeFormat: "CODE_128",
          website: "http://www.chamate.cn",
          backgroundColor: "#8D6F4C",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "3c4a80dbdfac57d174d1cab8d11d03ad91888820",
          name: "新元素",
          barcodeFormat: "CODE_128",
          website: "http://www.elementfresh.com",
          backgroundColor: "#48BEF0",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "a4ac914c09d7c097fe1f4f96b897e625b6922069",
          name: "五星电器",
          barcodeFormat: "CODE_39",
          website: "http://www.5star.cn",
          backgroundColor: "#009134",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "2e8c0277e396fabf683e56c8b7fa7e6dad68c679",
          name: "久光",
          barcodeFormat: "CODE_128",
          website: "http://www.jiu-guang.com",
          backgroundColor: "#FFFFFF",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "ab165cb90d19598f610a669dfe4798f4cd049a6a",
          name: "金鹰",
          barcodeFormat: "CODE_128",
          website: "http://www.goodee.cn",
          backgroundColor: "#B88448",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "23a0538f53ccbf131a1f79874d3805ac4ed108fc",
          name: "国美",
          barcodeFormat: "CODE_128",
          website: "http://www.gome.com.cn",
          backgroundColor: "#D12027",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "1938b79762f018cf11cc7d1011b8157840d37e60",
          name: "佰草集",
          barcodeFormat: "CODE_128",
          website: "http://www.herborist.com.cn",
          backgroundColor: "#0F6719",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "aca6d6e0ac7c6af640177fbc27eae8fbf9188dda",
          name: "宏图三胞",
          barcodeFormat: "CODE_128",
          website: "http://www.huimai100.com",
          backgroundColor: "#FF0000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "527dc687fa586a676045bc4cf16cb04ba5ff58eb",
          name: "银泰",
          barcodeFormat: "CODE_128",
          website: "http://www.intime.com.cn",
          backgroundColor: "#E30B81",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "7263d678abae47b211a7de6693c9df3ca96d228c",
          name: "Lane Crawford",
          barcodeFormat: "CODE_128",
          website: "http://www.lanecrawford.com",
          backgroundColor: "#231F20",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "e22cd461c068aea5dff1c3462214880d76b3e39c",
          name: "乐活城",
          barcodeFormat: "CODE_128",
          website: "http://www.lohaocity.com",
          backgroundColor: "#58B100",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "32a70a32da27b30a10fe546ead126f0778c5f00f",
          name: "乐天玛特",
          barcodeFormat: "CODE_128",
          website: "http://www.lottemart.cn",
          backgroundColor: "#F01E27",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "39e21432a7dcba489697b4ef779f4b0c6f08b89f",
          name: "卜蜂莲花",
          barcodeFormat: "CODE_128",
          website: "http://www.cplotus.com",
          backgroundColor: "#FE0000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "0c422ba64421103f8f58fc3c8676caf9c7c73178",
          name: "新世界百货",
          barcodeFormat: "CODE_128",
          website: "http://www.xinbaigo.com",
          backgroundColor: "#A38F66",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "85568b20c3315286c4dfebb330b25146f92bed66",
          name: "Pacific Coffee",
          barcodeFormat: "CODE_128",
          website: "http://www.pacificcoffee.com",
          backgroundColor: "#B41929",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "e575dccc71140754dd85beda5965b6a358150309",
          name: "天虹",
          barcodeFormat: "QR_CODE",
          website: "http://www.tianhong.cn",
          backgroundColor: "#E8A171",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "445cd2fd3273962bdf09425109a2d09f7170e837",
          name: "大润发",
          barcodeFormat: "EAN_13",
          website: "http://www.rt-mart.com.cn",
          backgroundColor: "#EF3D23",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "7e79a3af2634de6635e59c9404d251b3955d39f9",
          name: "三福",
          barcodeFormat: "CODE_39",
          website: "http://www.sanfu.com",
          backgroundColor: "#666666",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "004be89dd9e070ecb080b9b759e5be29ec24881b",
          name: "苏宁",
          barcodeFormat: "CODE_128",
          website: "http://www.suning.cn/",
          backgroundColor: "#0076CA",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "aee655773d856fb038536adcfd6472fc7543463e",
          name: "王府井百货",
          barcodeFormat: "CODE_128",
          website: "http://www.wfj.com.cn",
          backgroundColor: "#AE2424",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "64e0cfdcb9cb9a94dabbe7806d529ae6b808d7d6",
          name: "华住会",
          barcodeFormat: "CODE_128",
          website: "http://www.huazhu.com",
          backgroundColor: "#005F92",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "431f6b7d5b29f0d72c8e0add95ac64e7aa6b01d3",
          name: "如家",
          barcodeFormat: "CODE_128",
          website: "http://www.homeinns.com",
          backgroundColor: "#D6000F",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "f3b3e04bcde780448e7b2161c8775c5741ed6a50",
          name: "尚客优",
          barcodeFormat: "CODE_128",
          website: "http://www.thankyou99.com",
          backgroundColor: "#E90A0B",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "f0ee73df9003ca43916e249abfbefc5a983b346f",
          name: "开元酒店",
          barcodeFormat: "CODE_128",
          website: "http://www.kaiyuanhotels.com",
          backgroundColor: "#BBAE9D",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "0d0c9e996263c5a31c80793e1718d66c9a924525",
          name: "布丁酒店",
          barcodeFormat: "CODE_128",
          website: "http://www.podinns.com",
          backgroundColor: "#F18200",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "c53c713e8cecf9c30d48b4fac7a94c7250681ac2",
          name: "7天会",
          barcodeFormat: "CODE_128",
          website: "http://www.plateno.com",
          backgroundColor: "#FCDB00",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "ffba58386f77f9616685b1558613aba9a9cfacce",
          name: "锦江",
          barcodeFormat: "CODE_128",
          website: "http://www.jinjiang.com",
          backgroundColor: "#DCB981",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "c7131fc23f2b361048d5e6f71af5e2d595f9d66d",
          name: "Innisfree",
          barcodeFormat: "CODE_128",
          website: "http://www.innisfree.co.kr/",
          backgroundColor: "#556816",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "c184301c5718c75abd6f97cadf4f51ef49c0ef90",
          name: "99 Ranch Market",
          barcodeFormat: "CODE_128",
          website: "https://www.99ranch.com/",
          backgroundColor: "#F11618",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "7dd1c7dd7cbfcdac7fd0d97913c22a75ea5c5d00",
          name: "Air China",
          barcodeFormat: "CODE_128",
          website: "https://www.airchina.com",
          backgroundColor: "#FFFFFF",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "87cbab2a1bae97ca7eb1dc3d1d072a3fe620def3",
          name: "台灣中油",
          barcodeFormat: "CODE_128",
          website: "http://new.cpc.com.tw",
          backgroundColor: "#205795",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "d7c1f0dd609c0024d00c7eb35743bcc476459876",
          name: "誠品書店",
          barcodeFormat: "CODE_128",
          website: "http://www.eslite.com",
          backgroundColor: "#000000",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "3c13e2bc1de787feabaee6de3b0bffcb9925a88d",
          name: "統一時代百貨",
          barcodeFormat: "CODE_128",
          website: "http://www.uni-ustyle.com.tw/",
          backgroundColor: "#A590C4",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "5a13ee7191bf51da49d7c2a74d6d32e03b19c3d5",
          name: "HAPPY GO快樂多",
          barcodeFormat: "EAN_13",
          website: "http://www.happygocard.com.tw",
          backgroundColor: "#000033",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "42c8a5c680165278f25380334dfbc856a831f196",
          name: "特力屋",
          barcodeFormat: "EAN_13",
          website: "http://www.i-house.com.tw",
          backgroundColor: "#F37020",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "4bcc6482e86281fc69806594a97a6e16c6b0cf6c",
          name: "好博家",
          barcodeFormat: "EAN_13",
          website: "http://www.homebox.com.tw",
          backgroundColor: "#FF3333",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "1a753df8cc84df7caed624437d6ab67dc76f4552",
          name: "POYA 寶雅",
          barcodeFormat: "EAN_13",
          website: "http://ec.poya.com.tw/POYA",
          backgroundColor: "#CC0066",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "5ef872a9fa7fcff0677696457dd869535d547e45",
          name: "京站時尚廣場",
          barcodeFormat: "CODE_128",
          website: "http://www.qsquare.com.tw",
          backgroundColor: "#CCCC00",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "9d985188444175d30c709f634f65967f67f1ae22",
          name: "松青超市",
          barcodeFormat: "CODE_128",
          website: "http://www.sungching.com.tw",
          backgroundColor: "#006666",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "3bd7c32b3c79dd85151c6588a929609c0b214c0b",
          name: "生活工場",
          barcodeFormat: "CODE_39",
          website: "http://www.workinghouse.com.tw",
          backgroundColor: "#006633",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "7c8b72146cc7eb1761d462eb86287a01d21b5e7a",
          name: "黃帽",
          barcodeFormat: "CODE_128",
          website: "http://smarturl.it/sto_yellowhat",
          backgroundColor: "#FFCC00",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "940ba86618c4d231993c846b98af0a49d9d6163a",
          name: "全家 FamilyMart",
          barcodeFormat: "EAN_13",
          website: "http://smarturl.it/sto_familymart",
          backgroundColor: "#FFFFFF",
          regions: <String>[
            "CN",
            "TW",
          ],
        ),
        CardInfo(
          id: "4a5b94151967c0bb1e6ca8c9a825dafc1dbeecd2",
          name: "华润万家",
          barcodeFormat: "CODE_128",
          website: "http://supermarket.crv.com.cn",
          backgroundColor: "#ED1B2F",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "efc617ea7ae446105d8e4a6c58aac2148947dba5",
          name: "携程",
          barcodeFormat: "CODE_128",
          website: "http://www.ctrip.com",
          backgroundColor: "#FFFFFF",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "6ec4d1b66f18a9da05ced5ce5a7eda849e304766",
          name: "以纯",
          barcodeFormat: "CODE_128",
          website: "http://www.yishion.com",
          backgroundColor: "#333333",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "7f07483d084ff6b27c515ebeea7bf187041d4c91",
          name: "konzen",
          barcodeFormat: "CODE_128",
          website: "http://chinakonzen.com",
          backgroundColor: "#000000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "de0e38ba1c7b06e1717e66e286defecd40969f39",
          name: "全聯福利中心",
          barcodeFormat: "CODE_128",
          website: "http://www.pxmart.com.tw",
          backgroundColor: "#333399",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "89db695bb2cc996e3f9672e109b79789906e6af4",
          name: "康是美",
          barcodeFormat: "EAN_13",
          website: "http://www.cosmed.com.tw",
          backgroundColor: "#ED6D00",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "0aa4bbc6beec37006c96175063f2858351468274",
          name: "阿瘦皮鞋",
          barcodeFormat: "EAN_13",
          website: "http://www.aso.com.tw/",
          backgroundColor: "#000000",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "eba45513a56ab4ec0f1c958995fa4a5cca29b8bc",
          name: "摩曼頓",
          barcodeFormat: "CODE_39",
          website: "http://www.momentum.com.tw",
          backgroundColor: "#000000",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "02dcd8a9de05665b1652b02268173a8ec9ff62c0",
          name: "杏一",
          barcodeFormat: "CODE_128",
          website: "http://www.medfirst.com.tw",
          backgroundColor: "#03A1A0",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "beab76da6766b1876a3c54e25e8df53142485962",
          name: "三商美食卡",
          barcodeFormat: "CODE_128",
          website: "http://www.3375.com.tw",
          backgroundColor: "#F78429",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "e80bfa472597bb3573a179c9cf98c7c7499d0b18",
          name: "茉莉二手書店",
          barcodeFormat: "CODE_39",
          website: "http://www.mollie.com.tw",
          backgroundColor: "#431A15",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "83e6d84bd1181d61c202289b2055bc6cfacd19a4",
          name: "日出茶太",
          barcodeFormat: "CODE_128",
          website: "http://www.ichatime.com",
          backgroundColor: "#600064",
          regions: <String>[
            "CN",
            "TW",
          ],
        ),
        CardInfo(
          id: "9f5b0793b0cbfcf25d48605c3e80c19203d2b414",
          name: "迪卡侬",
          barcodeFormat: "EAN_13",
          website: "http://www.decathlon.com.cn",
          backgroundColor: "#00B2F5",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "4197b6017f48f9aa145f3e47b88a33854c650187",
          name: "迪卡儂",
          barcodeFormat: "EAN_13",
          website: "http://www.decathlon.tw",
          backgroundColor: "#000000",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "ad03acdbc8424b19ed0d8ca4b9db2de80d300c01",
          name: "玩具反斗城",
          barcodeFormat: "CODE_128",
          website: "http://toysrus.com.tw",
          backgroundColor: "#2856A6",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "53127afa9428c4b39465d8faffea4891967fdd3d",
          name: "丝芙兰",
          barcodeFormat: "QR_CODE",
          website: "http://www.sephora.cn",
          backgroundColor: "#010101",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "bfe85e868bf388f462fde22765c8879f9e6bfc73",
          name: "赛百味",
          barcodeFormat: "CODE_128",
          website: "http://www.subway.com.cn",
          backgroundColor: "#2E9941",
          regions: <String>[
            "CN",
          ],
        ),
        // CardInfo(id: "a88e851588bccffa88e13a9447b5a5cd1cf1304f", name: "星巴克", barcodeFormat: "PDF_417", website: "http://www.smarturl.it/sto_starbucks", backgroundColor: "#08714B",regions: <String>["CN",],),
        // CardInfo(id: "df977a48f2a8bd3b1f399855135dc28faaaf09be", name: "統一星巴克", barcodeFormat: "PDF_417", website: "http://www.starbucks.com.tw", backgroundColor: "#08714B",regions: <String>["TW",],),
        CardInfo(
          id: "0a42d6a0116693dd7d630e68988002c9b0b98617",
          name: "家乐福",
          barcodeFormat: "CODE_128",
          website: "http://www.carrefour.com.cn",
          backgroundColor: "#005AA9",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "9c693d1979dc33cfa0e0d0070d0828a1a6e5c01b",
          name: "家樂福",
          barcodeFormat: "CODE_128",
          website: "http://www.carrefour.com.tw",
          backgroundColor: "#35559D",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "daba40f9fd3019a1f8eeb5dab88a784c59fbb794",
          name: "Sam's Club",
          barcodeFormat: "CODE_39",
          website: "http://www.samsclub.cn",
          backgroundColor: "#588B41",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "ce72425115616748fc95f0dc2cda0078a142c2c9",
          name: "屈臣氏",
          barcodeFormat: "EAN_13",
          website: "http://smarturl.it/sto_watsons",
          backgroundColor: "#C6D800",
          regions: <String>[
            "CN",
            "TW",
          ],
        ),
        CardInfo(
          id: "4899b53c2e1c29a9236040b0b95990c63148cb1e",
          name: "华歌尔",
          barcodeFormat: "CODE_128",
          website: "http://www.wacoal.com.cn/",
          backgroundColor: "#A52A58",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "b56e82a35f381ef82f384d196c36b6e889bc9982",
          name: "華歌爾",
          barcodeFormat: "CODE_128",
          website: "http://smarturl.it/sto_wacoal",
          backgroundColor: "#A52A58",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "53584939a79a641b754999cf0b76ad9123a4ac42",
          name: "万宁",
          barcodeFormat: "CODE_128",
          website: "http://www.mannings.com.cn",
          backgroundColor: "#F26622",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "e331c006856fe114a9ec83472d926981f48b72ec",
          name: "大潤發",
          barcodeFormat: "CODE_128",
          website: "http://www.rt-mart.com.tw",
          backgroundColor: "#EF3D23",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "b006c7772f1ca8460d0b22c645f7739b16c48294",
          name: "欧尚",
          barcodeFormat: "EAN_13",
          website: "http://www.auchan.com.cn",
          backgroundColor: "#E01E25",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "b7d5aea4f23de458666583ff2af23d539bbc515e",
          name: "来伊份",
          barcodeFormat: "CODE_128",
          website: "http://www.laiyifen.com",
          backgroundColor: "#FA6810",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "4d2b62d9c64119cb4313e92b233c7793c63e6302",
          name: "齐家",
          barcodeFormat: "CODE_128",
          website: "http://www.jia.com",
          backgroundColor: "#AA1F24",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "a35ff773f425e44df36c1cc68a415d92318b19ac",
          name: "大買家",
          barcodeFormat: "CODE_128",
          website: "http://www.savesafe.com.tw",
          backgroundColor: "#009D42",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "86c65f5ed93ed5233793c42988f84829ba32bab1",
          name: "达芙妮",
          barcodeFormat: "CODE_128",
          website: "http://www.buy.daphne.cn",
          backgroundColor: "#040000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "0a9598cdad8c65805b7886305c6cb7d3a4ca6d81",
          name: "達芙妮",
          barcodeFormat: "CODE_128",
          website: "http://www.daphneshoes.com",
          backgroundColor: "#040000",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "3820eccabc46f2c4f038c662d6542e8a9bd0de20",
          name: "美廉社",
          barcodeFormat: "CODE_128",
          website: "http://www.simplemart.com.tw",
          backgroundColor: "#E00059",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "85b7dda7149e6a1238baa48ba814b163ecbd5c5c",
          name: "美華泰",
          barcodeFormat: "EAN_8",
          website: "http://www.mhtefc.com.tw",
          backgroundColor: "#E41E84",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "620a913cf4d7ac817a545cbf7b999cf9812abf10",
          name: "乐购",
          barcodeFormat: "EAN_13",
          website: "http://www.cn.tesco.com",
          backgroundColor: "#E21407",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "5a420448bb37a950fe50ce58a904922912773086",
          name: "燦坤",
          barcodeFormat: "EAN_13",
          website: "undefined",
          backgroundColor: "#FFE30B",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "7e24c031744eb93c165be7daac9d575bfb04e13a",
          name: "购开心",
          barcodeFormat: "CODE_128",
          website: "http://www.goukaixincard.com",
          backgroundColor: "#000033",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "13589fdd9299e1aa7fea07d5ad4812ed91cd7ee3",
          name: "富驿",
          barcodeFormat: "CODE_128",
          website: "http://www.fxhotels.com",
          backgroundColor: "#231F20",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "d045236a0e03750520fa4d9cfa962fd38f11217d",
          name: "金陵酒店",
          barcodeFormat: "CODE_128",
          website: "http://www.jinlinghotels.com",
          backgroundColor: "#A48439",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "0a55b9a2a6115719d9e3fb9a4ef4a8be87167cde",
          name: "君澜",
          barcodeFormat: "CODE_128",
          website: "http://www.naradahotels.com",
          backgroundColor: "#AD9C71",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "12cfd460ec6773a91943ae1a11fd13045918e576",
          name: "维也纳酒店",
          barcodeFormat: "CODE_128",
          website: "http://www.wyn88.com",
          backgroundColor: "#F7821B",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "63cff56720d7927539651a6861d30e068332ffa0",
          name: "格林豪泰",
          barcodeFormat: "CODE_128",
          website: "http://www.998.com",
          backgroundColor: "#1A7161",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "5f0748eb7d328dd4f36ea6646d3582f78f397651",
          name: "神州租车",
          barcodeFormat: "CODE_128",
          website: "http://www.zuche.com",
          backgroundColor: "#FDB811",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "45b9f0e0d41f9e4b850512b0afeeb0e313315f43",
          name: "一嗨租车",
          barcodeFormat: "CODE_128",
          website: "http://www.1hai.cn",
          backgroundColor: "#007FCC",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "df7ab41ae5c3578117be2af9c21d36fd83c7e594",
          name: "同程旅游",
          barcodeFormat: "CODE_128",
          website: "http://www.ly.com",
          backgroundColor: "#F47D2F",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "3a5c91ed3507e0f6e8c1e0c40e9311269ae71f11",
          name: "去哪儿",
          barcodeFormat: "CODE_128",
          website: "http://www.qunar.com",
          backgroundColor: "#231815",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "cbda9f946aa6531135c22ec57f311100d1ae6702",
          name: "艺龙",
          barcodeFormat: "CODE_128",
          website: "http://www.elong.com",
          backgroundColor: "#172A88",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "412a33ae14746612317b013dc23213cd79b5f3f3",
          name: "龙腾出行",
          barcodeFormat: "CODE_128",
          website: "http://www.dragonpass.com.cn",
          backgroundColor: "#910000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "de35063a36ff0e4fbdb75c337589668ad4de8374",
          name: "A+1 精品百貨",
          barcodeFormat: "CODE_39",
          website: "http://www.acetop1.com.tw",
          backgroundColor: "#F35C91",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "8c95c16989af64ee8c0ab00db02bb408a4f58cdf",
          name: "TSUTAYA",
          barcodeFormat: "CODE_39",
          website: "http://tsutaya.tsite.jp",
          backgroundColor: "#142B62",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "5a879155f08a8a1463612521d6fc9a7906256574",
          name: "九乘九",
          barcodeFormat: "EAN_13",
          website: "http://www.9x9.com.tw",
          backgroundColor: "#FFE300",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "f0136ff6dfaf3d2b36507dbdb959b2ec4b55fb23",
          name: "新光三越",
          barcodeFormat: "CODE_128",
          website: "http://www.skm.com.tw",
          backgroundColor: "#DE0716",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "c0a99ef6b2fb576f926ba05b2baaa4f3b4e5cb99",
          name: "金石堂",
          barcodeFormat: "CODE_128",
          website: "http://www.kingstone.com.tw",
          backgroundColor: "#000000",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "d743138e5d9288710435b91e5b5e0dd710bdd1cc",
          name: "佳瑪",
          barcodeFormat: "EAN_13",
          website: "http://www.j-mart.com.tw",
          backgroundColor: "#F6C9DD",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "748619d6da8037a46952d1fed7c02872b83f2ddf",
          name: "日藥本舖",
          barcodeFormat: "EAN_13",
          website: "http://www.jpmed.com.tw",
          backgroundColor: "#E90216",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "8aa3613447ff1b33d52a3e058a65d020a4390cf0",
          name: "順發3C",
          barcodeFormat: "CODE_39",
          website: "http://www.sunfar.com.tw",
          backgroundColor: "#3352A5",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "807c96dd078cc58d390e6eae0488d04429877634",
          name: "威秀影城",
          barcodeFormat: "EAN_13",
          website: "http://www.vscinemas.com.tw",
          backgroundColor: "#000000",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "22531f5cfa99137a649fc1cf8ec78076341d75ae",
          name: "久大文具",
          barcodeFormat: "EAN_13",
          website: "http://www.9ta.com.tw",
          backgroundColor: "#058FD3",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "f6633a1f674a892e45e118602d2c4b97ea3fcb65",
          name: "IKEA Family",
          barcodeFormat: "CODE_128",
          website: "http://www.ikea.com.tw",
          backgroundColor: "#FF6600",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "99d826bfccb32991c544f02237752b08b4c85eea",
          name: "101文具天堂",
          barcodeFormat: "CODE_39",
          website: "http://www.101sp.com.tw",
          backgroundColor: "#006835",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "f1b0232e7a45e7f0208ceb960240cc12e75676ec",
          name: "永辉",
          barcodeFormat: "CODE_128",
          website: "http://www.yonghui.com.cn",
          backgroundColor: "#E50112",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "427196883bf369bcff8701008d5b26662e64d3fb",
          name: "麦德龙",
          barcodeFormat: "CODE_128",
          website: "http://www.metro.com.cn",
          backgroundColor: "#1A3C7B",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "73b2353baa5a8ea3871936cb40e2994f518ae05e",
          name: "物美",
          barcodeFormat: "CODE_128",
          website: "http://www.wumart.com",
          backgroundColor: "#005BAD",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "365a69834c43a4457fe1a2c11b459fa472b470db",
          name: "德克士",
          barcodeFormat: "CODE_128",
          website: "http://www.dicos.com.cn",
          backgroundColor: "#5B2D13",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "e28b45cced3c89ad3835fbdf261367ebea91b180",
          name: "禾绿",
          barcodeFormat: "CODE_128",
          website: "http://www.hlsushi.com.cn",
          backgroundColor: "#038F46",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "c06ab205f2dcaee5779760276f77e3d95939de82",
          name: "迪亚天天",
          barcodeFormat: "EAN_13",
          website: "http://www.diatiantian.com",
          backgroundColor: "#D52B1E",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "9b612fc1988467b9fef7ba7650b5bf52d166f5fb",
          name: "娇兰佳人",
          barcodeFormat: "CODE_128",
          website: "http://www.gialen.com",
          backgroundColor: "#D9E249",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "cf2d42439afa3488174fffa6a4d30c205a094150",
          name: "都市丽人",
          barcodeFormat: "CODE_128",
          website: "http://www.dslrpark.com",
          backgroundColor: "#ED1D71",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "a9009019ed3887cb9e7fe24aaa5e72cc20af81a4",
          name: "易买得",
          barcodeFormat: "EAN_13",
          website: "http://www.e-mart.com.cn",
          backgroundColor: "#F8C217",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "f53564a7030051c7c03d7f32164cad59ec5298b7",
          name: "人人乐",
          barcodeFormat: "EAN_13",
          website: "http://www.renrenle.cn",
          backgroundColor: "#16256F",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "e557b5f5dc8ecc0700da4fef6a27770acc5a997e",
          name: "海王星辰",
          barcodeFormat: "CODE_128",
          website: "http://www.nepstar.cn",
          backgroundColor: "#009494",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "d11bb22d7be8b315ef790a772d3deda859fab7e1",
          name: "真维斯",
          barcodeFormat: "CODE_128",
          website: "http://www.jeanswest.cn",
          backgroundColor: "#013476",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "381631d09634d0993e8ec6deecc820ad5707ce14",
          name: "哈根达斯",
          barcodeFormat: "CODE_128",
          website: "http://www.haagendazs.com.cn",
          backgroundColor: "#810F29",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "ef899d5268da6f195ca97b123df5f0e66082be4d",
          name: "统一银座",
          barcodeFormat: "CODE_128",
          website: "http://www.uni-mart.com.cn",
          backgroundColor: "#61BA46",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "beebf26ad24a25ca0995e760fc03baff642549de",
          name: "百盛",
          barcodeFormat: "CODE_128",
          website: "http://www.parkson.com.cn",
          backgroundColor: "#B6995A",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "54b121bc8275dda53553ee3c336ea2a782ac5393",
          name: "美特斯邦威",
          barcodeFormat: "CODE_128",
          website: "http://www.metersbonwe.com",
          backgroundColor: "#4C4C48",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "43e2c7a71c61bbadca1d46be8db5efc21cbadaff",
          name: "良品铺子",
          barcodeFormat: "CODE_128",
          website: "http://www.lppz.com",
          backgroundColor: "#E60012",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "f97a6d5194873ca0150ffca3003eba547eb978fb",
          name: "孩子王",
          barcodeFormat: "CODE_128",
          website: "http://www.haiziwang.com",
          backgroundColor: "#E40380",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "5069f8be7f8daa6310a09e278e86315edaaffcbc",
          name: "大悦城",
          barcodeFormat: "CODE_128",
          website: "http://www.shjoycity.com",
          backgroundColor: "#401418",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "8b32237f6906db4dafcf1f046dbce2cfe9ea3f21",
          name: "满记甜品",
          barcodeFormat: "CODE_128",
          website: "http://www.honeymoon-dessert.com",
          backgroundColor: "#864D00",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "616e1ddcd46dee355135a8e5c9bc013270351af4",
          name: "大参林",
          barcodeFormat: "CODE_128",
          website: "http://www.dslyy.com",
          backgroundColor: "#549338",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "20cc0e0cb44bfe6e24279db8a9bbdc823e5630b3",
          name: "雅漾",
          barcodeFormat: "CODE_128",
          website: "http://www.eau-thermale-avene.cn",
          backgroundColor: "#F0896F",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "d3ec16d1868edc7da81be9fc203f819281c0e4ba",
          name: "安踏",
          barcodeFormat: "CODE_128",
          website: "http://www.anta.cn",
          backgroundColor: "#000000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "6ae71ab65cfa51cf880b7e6ddfc53163c46e359d",
          name: "万达",
          barcodeFormat: "CODE_128",
          website: "http://www.chinawanda.com",
          backgroundColor: "#0268B3",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "3075694c6504ec429a2bc06d8b99de38ca5ab402",
          name: "佐丹奴",
          barcodeFormat: "CODE_128",
          website: "http://www.giordano.com",
          backgroundColor: "#000000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "5ccc46df48e0e29adb850efb4fc9bad910fefbe2",
          name: "苏果",
          barcodeFormat: "CODE_128",
          website: "http://www.suguo.com.cn",
          backgroundColor: "#FFFFFF",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "ddeff934ff9aac2de1041ce7df53f196645e47be",
          name: "杰克琼斯",
          barcodeFormat: "EAN_13",
          website: "http://www.jackjones.com.cn",
          backgroundColor: "#000000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "1e530fa21c1941b702b6efe8738fe37836a04796",
          name: "壹加壹",
          barcodeFormat: "CODE_128",
          website: "undefined",
          backgroundColor: "#281767",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "3a2722c81aa17a62d13afa60bd96639c7f2caa65",
          name: "速8",
          barcodeFormat: "CODE_128",
          website: "http://www.super8.com.cn",
          backgroundColor: "#FFF200",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "6cbc5f743253477feb0b4583230340adf99d15a7",
          name: "Selected",
          barcodeFormat: "CODE_128",
          website: "http://www.selected.com.cn",
          backgroundColor: "#000000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "5eb6f63039d452e50d36d6bbd07a3fd5aec0d58c",
          name: "百佳",
          barcodeFormat: "CODE_128",
          website: "http://www.parknshop.com.cn",
          backgroundColor: "#094FA4",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "af1335dbf4b385abbc89fa77b818700ccccaece9",
          name: "巴黎贝甜",
          barcodeFormat: "CODE_128",
          website: "http://www.parisbaguette.com.cn",
          backgroundColor: "#656669",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "5d17fd19490538517917e53daa91d76ca198a330",
          name: "新华都",
          barcodeFormat: "CODE_128",
          website: "http://www.nhd-mart.com",
          backgroundColor: "#FE0000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "3e2feb47655ed2eb9623395ebfa3b54bdc7d2b7d",
          name: "美丽家",
          barcodeFormat: "CODE_128",
          website: "http://meilijia888.taobao.com",
          backgroundColor: "#BB0504",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "a133e693a5e73c64a5c82f9a26f03d2deeb2965b",
          name: "世纪联华",
          barcodeFormat: "CODE_128",
          website: "http://www.lhmart.com",
          backgroundColor: "#280F71",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "6fc7fddca9fe859ab7cefd7fb6ec22a2b0973f01",
          name: "老百姓大药房",
          barcodeFormat: "CODE_128",
          website: "http://www.lbxdrugs.com",
          backgroundColor: "#1F3374",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "cbb5f43e3ee778cdce02a9803d623c31d7659c62",
          name: "豪客来",
          barcodeFormat: "EAN_13",
          website: "http://www.houcaller.com",
          backgroundColor: "#242930",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "f89765d0be7a41e138f950576e6d66220dddc40d",
          name: "特力和乐",
          barcodeFormat: "EAN_13",
          website: "http://www.hola.com.cn",
          backgroundColor: "#825214",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "50bda5d853560131e15ef9db3ec101d60ee3f26a",
          name: "GXG",
          barcodeFormat: "CODE_128",
          website: "http://gxg.tmall.com",
          backgroundColor: "#000000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "93aeee8c1ad46e038c3e3ff8461b9a914eb84cdb",
          name: "大洋",
          barcodeFormat: "CODE_128",
          website: "http://www.grandocean.com.cn",
          backgroundColor: "#CA101E",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "8fcc76bff33b4703d65084dcda10fab6d127b878",
          name: "丹尼斯",
          barcodeFormat: "CODE_128",
          website: "http://www.dennis.com.cn",
          backgroundColor: "#007CC2",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "7969dc00956d339734564618b8a71b3652ac0483",
          name: "农工商红利卡",
          barcodeFormat: "EAN_13",
          website: "http://www.chblt.com",
          backgroundColor: "#193C8E",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "723cbf5c6f107d56fa3dd6462f8f568f12a658dd",
          name: "红旗",
          barcodeFormat: "CODE_128",
          website: "http://www.hqls.com",
          backgroundColor: "#DA251C",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "686375a4a3a3810f09b740c79cf130390fe51e36",
          name: "美特好",
          barcodeFormat: "CODE_128",
          website: "http://www.meetallgroup.com.cn",
          backgroundColor: "#ED0008",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "abfee686ac890cd929a65776485e327276b36371",
          name: "步步高",
          barcodeFormat: "CODE_128",
          website: "http://weibo.com/bbg95",
          backgroundColor: "#DA251C",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "e9f8027c6d1ac0f16703285b89215342657016a9",
          name: "纪念日",
          barcodeFormat: "CODE_128",
          website: "http://www.jinianri.com",
          backgroundColor: "#C6010B",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "cd45b5b7049c852536ee19af1309a5aac70c61b3",
          name: "启路",
          barcodeFormat: "CODE_128",
          website: "http://www.keyroad.net",
          backgroundColor: "#C5241C",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "5137305f9eb91061561d052d1da02795172903e4",
          name: "益丰大药房",
          barcodeFormat: "CODE_128",
          website: "http://www.yfdyf.cn",
          backgroundColor: "#00A94E",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "c4b2c5764d4e8f0e15195a6e5f43d329c6756fcd",
          name: "三江",
          barcodeFormat: "CODE_128",
          website: "http://www.sanjiang.com",
          backgroundColor: "#DC1F26",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "e6af5948e25f549aa9a17ef844dbcbb85b4c77ec",
          name: "大地数字影院",
          barcodeFormat: "CODE_128",
          website: "undefined",
          backgroundColor: "#000000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "07edd2c6f5c1518a21de793785ebfbc34ea4f594",
          name: "老妈米线",
          barcodeFormat: "CODE_128",
          website: "http://www.laoma.com.cn",
          backgroundColor: "#000000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "a8edf27436789a61107ab64a9138ba23d0312912",
          name: "国大药房",
          barcodeFormat: "CODE_128",
          website: "http://www.guodadrugstores.com",
          backgroundColor: "#00A549",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "47077c7cdd6c7822a07096245e1a47034c683618",
          name: "悠仙美地",
          barcodeFormat: "CODE_128",
          website: "undefined",
          backgroundColor: "#007B44",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "d2a8a1bde5eba1942d457a555cf2c0dc034aacd8",
          name: "茂业百货",
          barcodeFormat: "CODE_128",
          website: "undefined",
          backgroundColor: "#6D6260",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "67468cb18559db0000a450d7dafd7c4f18e82e74",
          name: "太平鸟",
          barcodeFormat: "CODE_128",
          website: "http://www.peacebird.com.cn",
          backgroundColor: "#000000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "36b0ec252468c979762fac40fca821531a7c8e44",
          name: "同仁堂",
          barcodeFormat: "CODE_128",
          website: "http://www.tongrentang.com",
          backgroundColor: "#870A0A",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "5f53beb5579ddb5c9fe382cc21e9c7c9c2e0b47d",
          name: "大众书局",
          barcodeFormat: "CODE_128",
          website: "http://popular.com.my",
          backgroundColor: "#DA0313",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "5c46489bec06fb161c255fbb3f09e836b23b08dc",
          name: "新华书店",
          barcodeFormat: "CODE_128",
          website: "http://www.winxuan.com",
          backgroundColor: "#D62F2A",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "dc6bd6b7352e8752d46e43d5b9b989f3c7f7493d",
          name: "唐狮",
          barcodeFormat: "CODE_128",
          website: "http://www.tonlion.com",
          backgroundColor: "#C12623",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "1534f3d84cd1311630648981189b44fa9cf80785",
          name: "巴黎春天",
          barcodeFormat: "CODE_128",
          website: "http://departmentstoreparis.printemps.com",
          backgroundColor: "#9B7600",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "bcf06593eb08b05b503a29a24a12e3acfc7540c8",
          name: "欧莱雅",
          barcodeFormat: "CODE_128",
          website: "http://www.lorealparis.com.cn",
          backgroundColor: "#000000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "8b1e80abca15b33ca7bf105e31725bfaa007c5f3",
          name: "康师傅",
          barcodeFormat: "CODE_128",
          website: "http://www.masterkongchef.com",
          backgroundColor: "#000000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "326453330f2a97f38c09b04bfefac37bf49606b3",
          name: "爱婴岛",
          barcodeFormat: "CODE_128",
          website: "http://gz.baby.com.cn",
          backgroundColor: "#D41677",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "06166b3e8f5fb777b195dba42555e2aac7c435a8",
          name: "百联",
          barcodeFormat: "CODE_128",
          website: "http://blk.okcard.com",
          backgroundColor: "#E00024",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "0a764d277b8c297ef02791161cc279b4669e4028",
          name: "宝岛眼镜",
          barcodeFormat: "CODE_128",
          website: "http://www.baodao.com.cn",
          backgroundColor: "#FF0000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "4585c0b1f8c04d96f67a9bb9cc1d4956cac28a60",
          name: "万国奥特莱斯",
          barcodeFormat: "CODE_128",
          website: "http://www.wanguo-outlets.com",
          backgroundColor: "#434343",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "1fa79bd9f47d73a47762a6c13c7e147ca8223855",
          name: "德基广场",
          barcodeFormat: "CODE_128",
          website: "http://dejiplaza.com",
          backgroundColor: "#000000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "3e11fda4b1c58ea4bc6b608c03913c5b3d7fbde7",
          name: "寶島眼鏡",
          barcodeFormat: "CODE_128",
          website: "http://www.formosa-optical.com.tw",
          backgroundColor: "#FF0000",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "4a3669d650b1f3aa26bd356022e1546980151de3",
          name: "KAMA",
          barcodeFormat: "CODE_128",
          website: "http://kama.tmall.com",
          backgroundColor: "#000000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "6822cc28f97f30d8b3b85b3cf3a20719cbd597ec",
          name: "一心堂",
          barcodeFormat: "CODE_128",
          website: "http://www.hxyxt.com",
          backgroundColor: "#D23221",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "8cd64781c2534d80953532be0b0f6a02bc7ca9aa",
          name: "周黑鸭",
          barcodeFormat: "CODE_128",
          website: "http://zhouheiya.tmall.com",
          backgroundColor: "#FFDD00",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "804b1a3fb40cdad2188c037e95ef1a2415495221",
          name: "婴知岛",
          barcodeFormat: "CODE_128",
          website: "undefined",
          backgroundColor: "#FFF00F",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "bf73283b0465ac6255fba89e26ba27067a7e82ff",
          name: "中百",
          barcodeFormat: "CODE_128",
          website: "http://www.zon100.com",
          backgroundColor: "#FE0000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "c2b919de5b0233cfb72ddac091441955334356d9",
          name: "萬象城",
          barcodeFormat: "CODE_128",
          website: "http://www.themixc.com",
          backgroundColor: "#DED5B8",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "8eceef4ed8056e15bada60715b2cba3b2bbf724c",
          name: "顺丰速运",
          barcodeFormat: "CODE_128",
          website: "http://www.sf-express.com",
          backgroundColor: "#000000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "6cee08486d23bd9fef73560b5e8cc5aed1777fe2",
          name: "森马",
          barcodeFormat: "CODE_128",
          website: "http://www.semir.com",
          backgroundColor: "#12A84F",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "e72a32b81af08da32dc6250f14ff025ff99ee615",
          name: "ONLY",
          barcodeFormat: "CODE_128",
          website: "http://www.only.cn",
          backgroundColor: "#000000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "62928c5d98429dcdd38d5f9ef2227c74fadf11e7",
          name: "健之佳",
          barcodeFormat: "CODE_128",
          website: "http://home.jzj.cn",
          backgroundColor: "#00977E",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "d91afe852abb1bd6931c4e534b568e24eb7ff9a9",
          name: "京客隆",
          barcodeFormat: "CODE_128",
          website: "http://www.jkl.com.cn",
          backgroundColor: "#DE2918",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "7254c5c586965242421b63b36a7de500af435d18",
          name: "好利来",
          barcodeFormat: "CODE_128",
          website: "http://www.maidangao.com",
          backgroundColor: "#000000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "6676319c523479160a1952182ce1f8ce29b48b65",
          name: "南城百货",
          barcodeFormat: "CODE_128",
          website: "http://www.gxncbh.com",
          backgroundColor: "#D92928",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "23b180c0fc6e61f9364b6208e7018721b5ae113d",
          name: "凡人",
          barcodeFormat: "CODE_128",
          website: "http://www.fryp.cn",
          backgroundColor: "#108040",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "bcd707d9626e012278a090aa04e1e48935b81699",
          name: "G2000",
          barcodeFormat: "CODE_128",
          website: "http://g2000.tmall.com",
          backgroundColor: "#000000",
          regions: <String>[
            "CN",
            "TW",
          ],
        ),
        CardInfo(
          id: "8b6dde8d346ae0eafac5973ee539f039055b38cd",
          name: "许留山",
          barcodeFormat: "CODE_128",
          website: "http://www.hlschina.com",
          backgroundColor: "#E8320B",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "bf3d91a85a9fb744dee3094a7be132c76ee64047",
          name: "迪欧咖啡",
          barcodeFormat: "CODE_128",
          website: "http://www.diocoffee.com",
          backgroundColor: "#005C3F",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "cf06f97a886a3fb6dd08291ca8d0660d8b715b35",
          name: "大众点评",
          barcodeFormat: "CODE_128",
          website: "http://www.dianping.com",
          backgroundColor: "#FF9933",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "238ddd756b37747770bdcf39a30e9de47868ecc5",
          name: "中影国际影城",
          barcodeFormat: "CODE_128",
          website: "http://www.chinafilmhy.com",
          backgroundColor: "#000000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "ad9cc617b225fe9ab1fde05c0d513df81ef161f2",
          name: "皇冠蛋糕",
          barcodeFormat: "CODE_128",
          website: "http://www.hgsp.cn",
          backgroundColor: "#3E211A",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "3c6f432e391069cd8aedf254af50a3497489ec17",
          name: "百丽",
          barcodeFormat: "CODE_128",
          website: "http://belle.tmall.com",
          backgroundColor: "#AA1A4B",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "326ebca10f7d586cf0cc96fe960636824b717d45",
          name: "运动先锋",
          barcodeFormat: "CODE_128",
          website: "http://www.sportmaster.cn",
          backgroundColor: "#065CA5",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "45ba3e806f8749c9c8dd06e56d7382718b8145f8",
          name: "金润发",
          barcodeFormat: "CODE_128",
          website: "undefined",
          backgroundColor: "#E11313",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "ccfc65a407175f6ec15a762245cef5bdf28e3073",
          name: "堂会",
          barcodeFormat: "CODE_128",
          website: "undefined",
          backgroundColor: "#FFB629",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "01de3733f173aab206c5e0539750c573672f14fa",
          name: "伊势丹",
          barcodeFormat: "CODE_128",
          website: "http://www.isetan.cn",
          backgroundColor: "#FFFFFF",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "f17d5a057363c3e13f6d4fc68291c5d94c6cfa9d",
          name: "宜家",
          barcodeFormat: "QR_CODE",
          website: "http://www.ikea.com/cn/zh/",
          backgroundColor: "#FF6600",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "d5759c2495f730727f0b8ba13b00faaca7f7a2dc",
          name: "哎呀呀",
          barcodeFormat: "CODE_128",
          website: "http://www.aiyaya.com",
          backgroundColor: "#F15B89",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "189dfab3335a729ceec7f86495df5620235b5882",
          name: "金逸国际影城",
          barcodeFormat: "CODE_128",
          website: "http://www.jycinema.com",
          backgroundColor: "#000000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "6102ac29778c0e0242e8298650e38535b90d42ac",
          name: "利群",
          barcodeFormat: "CODE_128",
          website: "http://www.yanyue.cn",
          backgroundColor: "#000000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "d216c7eea3913f8924eda291162ec9f8ea9e1959",
          name: "新一佳",
          barcodeFormat: "CODE_128",
          website: "http://www.abest-xyj.com",
          backgroundColor: "#36A867",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "35e7cf0540f95620e0021660828f96c7ea51a5f9",
          name: "自然堂",
          barcodeFormat: "CODE_128",
          website: "http://www.chcedo.com",
          backgroundColor: "#98CBCC",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "6c49656cdda47ed32abb63b389cd47a50fd804e6",
          name: "巴拉巴拉",
          barcodeFormat: "CODE_128",
          website: "http://www.balabala.com.cn",
          backgroundColor: "#FDD31A",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "cb54af7f8989a50f7aa2671261d39db860e83ece",
          name: "礼阁仕",
          barcodeFormat: "CODE_128",
          website: "undefined",
          backgroundColor: "#7A1535",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "a97c4e0742620fef6c6303195a4d1c0d4e93a9d3",
          name: "座上客",
          barcodeFormat: "CODE_128",
          website: "http://www.zuoshangke.com",
          backgroundColor: "#01561F",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "0bd164fcde25240dcfd43c52da1bf7a990217b50",
          name: "OLAY",
          barcodeFormat: "CODE_128",
          website: "http://www.olay.com",
          backgroundColor: "#000000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "40768740413e9acb1f991c3c1f26111b63f0fe08",
          name: "新辣道",
          barcodeFormat: "CODE_128",
          website: "http://www.xinladao.net",
          backgroundColor: "#8B0406",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "13aa97a178fc365ca109ef8746f4b2cfd7f299c2",
          name: "网鱼网咖",
          barcodeFormat: "CODE_128",
          website: "undefined",
          backgroundColor: "#00B9F1",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "21a42ee2d81d86386819818525b2f72224788929",
          name: "漱玉平民大药房",
          barcodeFormat: "CODE_128",
          website: "http://www.sypm.cn",
          backgroundColor: "#41A861",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "d6385a5e54213bf645222ecd6b74244e0db3e995",
          name: "乐町",
          barcodeFormat: "CODE_128",
          website: "http://leting.tmall.com",
          backgroundColor: "#000000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "fc339cfad6bffa85d804db823d8f387cdea57cb3",
          name: "第一食品",
          barcodeFormat: "CODE_128",
          website: "http://www.firstfood-cn.com",
          backgroundColor: "#AA2A2F",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "27e8569fb20a459ab355c4b444fe016763252292",
          name: "马克华菲",
          barcodeFormat: "CODE_128",
          website: "http://fairwhale.tmall.com",
          backgroundColor: "#000000",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "591cb27f37ca779ba564350d59a0ca2138905a71",
          name: "百脑汇",
          barcodeFormat: "CODE_128",
          website: "http://www.buynow.com.cn",
          backgroundColor: "#0F89E8",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "f01f60493dcf4236d1f9a2ff283b5e3002fe92ec",
          name: "可莎蜜儿",
          barcodeFormat: "CODE_128",
          website: "http://www.4006860571.com",
          backgroundColor: "#F28100",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "262afba4cd06f167cfea39e5fb7b314f9de8694d",
          name: "西西弗书店",
          barcodeFormat: "CODE_128",
          website: "undefined",
          backgroundColor: "#346D4D",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "308e33425661b30890d31aec119640042044d107",
          name: "环球蓝联",
          barcodeFormat: "CODE_128",
          website: "http://www.globalblue.cn",
          backgroundColor: "#2A3688",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "04b222e8fa01245c24f26bd4e0f2c43e36018c75",
          name: "眉州东坡",
          barcodeFormat: "CODE_128",
          website: "http://meizhou.com.cn",
          backgroundColor: "#D2AA57",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "224b4abdea2bf26fdd64a13e71029cf0d37606ac",
          name: "远东百货",
          barcodeFormat: "CODE_128",
          website: "http://www.feds.com.cn",
          backgroundColor: "#0065B2",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "c244ae3ff72155b3680478ca980a898c737b7250",
          name: "七欣天",
          barcodeFormat: "CODE_128",
          website: "http://www.qixintian.com",
          backgroundColor: "#E5DFD0",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "f929e7b4404d3e48918cdc0ecd4efbc9fa91dab5",
          name: "玩具反斗城",
          barcodeFormat: "CODE_128",
          website: "http://toysrus.com.tw",
          backgroundColor: "#2856A6",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "aa1b96d9fdd1919ff51ed474c99202cdb9719d3d",
          name: "夢時代",
          barcodeFormat: "EAN_13",
          website: "http://www.dream-mall.com.tw",
          backgroundColor: "#000000",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "9cc8ab92fd0685c523f2c81a1b7af67931664e95",
          name: "Pizza Hut",
          barcodeFormat: "CODE_128",
          website: "https://pizzahut.pl/",
          backgroundColor: "#ED1C24",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "91a7bc9deaeeb18d77904dce1ed85ab89013e06f",
          name: "Tomod's",
          barcodeFormat: "CODE_128",
          website: "http://www.tomods.jp",
          backgroundColor: "#000000",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "8f66fb2c5891725f0f13699624db23a610c94764",
          name: "必勝客",
          barcodeFormat: "CODE_39",
          website: "http://www.pizzahut.com.tw",
          backgroundColor: "#ED1C24",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "9270ef04bcf46fd89b1a3fc6622dae8f87858e55",
          name: "仁愛眼鏡",
          barcodeFormat: "CODE_128",
          website: "http://www.howardeyewear.com.tw",
          backgroundColor: "#257874",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "5a7e7745847673577d8920192440042be8c9b385",
          name: "台隆手創館",
          barcodeFormat: "CODE_128",
          website: "undefined",
          backgroundColor: "#004614",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "798a64f7e4115b0af4cc5f226e0ec1cc17008d79",
          name: "魚中魚水族館",
          barcodeFormat: "CODE_39",
          website: "http://fishpet.com.tw",
          backgroundColor: "#EB1D24",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "827905cfdf507d19fd1622a61d56c8dccf0a95b5",
          name: "大苑子",
          barcodeFormat: "CODE_128",
          website: "http://www.dayungs.com.tw",
          backgroundColor: "#079742",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "9989190094e077edacfbde7d42a307ac8c0a62a1",
          name: "法雅客",
          barcodeFormat: "CODE_39",
          website: "http://www.fayaque.com.tw",
          backgroundColor: "#FF6600",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "35c4c9c9a4a095528bf4d3bcbfc2d78b83bb3ae1",
          name: "eTag",
          barcodeFormat: "CODE_128",
          website: "http://www.fetc.net.tw",
          backgroundColor: "#CCCCCC",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "54db0ba4ec66cffc649836e7fda6265d51ccde5a",
          name: "佑全保健藥妝",
          barcodeFormat: "CODE_128",
          website: "http://www.yourchance.com.tw",
          backgroundColor: "#10673D",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "03764d243c4cbd62413fcf184e4ecd9b546dd88d",
          name: "城市綠洲",
          barcodeFormat: "CODE_128",
          website: "http://www.metroasis.com.tw",
          backgroundColor: "#074613",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "5c1db421da9732ec803cb70434c6f7689b755cb7",
          name: "三井3C",
          barcodeFormat: "CODE_39",
          website: "http://www.sanjing3c.com.tw",
          backgroundColor: "#318DD9",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "1fb3ece3bcc286c2ce655a31bb956775375128e8",
          name: "金玉堂",
          barcodeFormat: "CODE_39",
          website: "http://www.jytnet.com.tw",
          backgroundColor: "#47131A",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "f76d9909d5e11245bd28024f0b4d8c01d224608b",
          name: "車麗屋",
          barcodeFormat: "CODE_128",
          website: "http://www.car1.com.tw",
          backgroundColor: "#E60315",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "d8fd4a140ee61a241d078da8d7a96f10c172a6bd",
          name: "良興",
          barcodeFormat: "CODE_128",
          website: "http://www.eclife.com.tw",
          backgroundColor: "#0082CD",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "2f5fccc7b5fc2d41bbc3e1e469655f24f540e383",
          name: "悠遊卡",
          barcodeFormat: "CODE_128",
          website: "http://www.easycard.com.tw",
          backgroundColor: "#000000",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "2d22ac1d42e6187f09ee6c578df187a760123ccf",
          name: "圓石",
          barcodeFormat: "CODE_39",
          website: "http://www.010tea.com.tw",
          backgroundColor: "#000000",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "f9a2d0319fbe0802c17a9909108d43c7e9c326ef",
          name: "台糖量販",
          barcodeFormat: "EAN_13",
          website: "http://www.tsctaisuco.com.tw",
          backgroundColor: "#FC0902",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "933f5957c21d5177549ba583a8fc31f5cac00e5d",
          name: "Roots",
          barcodeFormat: "CODE_128",
          website: "http://www.roots.com.tw",
          backgroundColor: "#014607",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "3ec8b3ecdfd2d67027ee1f257b8fa61dbc016e57",
          name: "環球購物中心",
          barcodeFormat: "EAN_13",
          website: "http://www.twglobalmall.com",
          backgroundColor: "#000000",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "e25636fe5026b4330e5b735850c5fcb5d964b369",
          name: "亞藝影音",
          barcodeFormat: "CODE_39",
          website: "http://www.asia1.com.tw",
          backgroundColor: "#FAE000",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "cde06ed09d69b48dac7fbecb51e1907083c0fba1",
          name: "小林眼鏡",
          barcodeFormat: "CODE_128",
          website: "http://www.kobayashi.com.tw",
          backgroundColor: "#005BAC",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "85c1632decc4f842f062b7481a8d10ce40c8fa50",
          name: "南紡夢時代",
          barcodeFormat: "CODE_128",
          website: "http://www.tsrd.com.tw",
          backgroundColor: "#000000",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "f5a62fde9f8598f5c0f4afa74d2585e37ead65e2",
          name: "楓康超市",
          barcodeFormat: "CODE_128",
          website: "http://www.supermarket.com.tw",
          backgroundColor: "#006328",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "db72974cafdf1ccad5357ba3a1d6e7943beefc3f",
          name: "義大世界",
          barcodeFormat: "CODE_39",
          website: "http://www.edamall.com.tw",
          backgroundColor: "#E51374",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "3b259369920a00accbe6cccaae8b6cb27c5bc6e4",
          name: "鞋全家福",
          barcodeFormat: "EAN_13",
          website: "http://www.familyshoes.com.tw",
          backgroundColor: "#E60418",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "faa414d679fc9185effcc6e5122a67066657c338",
          name: "天仁茗茶",
          barcodeFormat: "CODE_128",
          website: "http://mytenren.com",
          backgroundColor: "#018D4C",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "96598b53c417351edc1833139e77626d2117cf72",
          name: "彩遊館",
          barcodeFormat: "CODE_39",
          website: "http://www.saiyumall.com",
          backgroundColor: "#E5368E",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "ee2e6b7185203227367a1845cddefa6f3acdaa26",
          name: "棉花田",
          barcodeFormat: "CODE_128",
          website: "http://www.sun-organism.com.tw",
          backgroundColor: "#006E38",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "8eed6356d79d7ac5900809dd87327e1b37750051",
          name: "三民書局",
          barcodeFormat: "CODE_39",
          website: "http://www.m.sanmin.com.tw",
          backgroundColor: "#73324A",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "40f13eedbc864a4d654350d791cddb9332dc7626",
          name: "墊腳石",
          barcodeFormat: "CODE_128",
          website: "http://www.steppingstone.com.tw",
          backgroundColor: "#165529",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "dfb373962db08f76aa815a08c93a0a14fd33a9a4",
          name: "金弘笙",
          barcodeFormat: "CODE_128",
          website: "http://www.piaa.com.tw/",
          backgroundColor: "#0A439C",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "c4dd090f4bc0a75f882d951389e74278df543ce2",
          name: "Ponta",
          barcodeFormat: "CODE_128",
          website: "http://www.ponta.com.tw",
          backgroundColor: "#F08511",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "e8222aa035e9461b396b82abe71875dcc41403a3",
          name: "四季精品百貨",
          barcodeFormat: "CODE_128",
          website: "http://www.4-season.com.tw",
          backgroundColor: "#E00045",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "df4f707507607e86a1f1ca735618fc6d06709986",
          name: "微學館",
          barcodeFormat: "CODE_128",
          website: "http://www.facebook.com/we.share.bookstore",
          backgroundColor: "#034586",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "705d14908f1731e360bdc3f9fef6401c9b3d3a65",
          name: "聖德科斯",
          barcodeFormat: "CODE_128",
          website: "http://www.santacruz.com.tw",
          backgroundColor: "#009042",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "6590318a70806f5b81e1bab1d862f20e621bc1fd",
          name: "Much主幼商場",
          barcodeFormat: "CODE_128",
          website: "http://www.much-mall.com.tw",
          backgroundColor: "#FF0000",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "868d2acc958777666a16632fd681871581822797",
          name: "漢神百貨",
          barcodeFormat: "CODE_128",
          website: "http://www.hanshin.com.tw",
          backgroundColor: "#FD0063",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "da927b9b0aa93e489c21965e78286b6f922c070d",
          name: "大同3C",
          barcodeFormat: "CODE_128",
          website: "http://tcpc.tatung.com",
          backgroundColor: "#000000",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "b9b8f3404de24b6063cce6f8c927e8e4e56a0e4f",
          name: "今華電子",
          barcodeFormat: "CODE_128",
          website: "http://www.jin-hua.com.tw",
          backgroundColor: "#000D7C",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "ae7e8cfb342fb709384bfd8bb8217c0b1f2f6255",
          name: "中友百貨",
          barcodeFormat: "CODE_128",
          website: "https://www.chungyo.com.tw",
          backgroundColor: "#000000",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "8e338d1c36d173dba11c9a6928fe02a445b39b12",
          name: "義美食品",
          barcodeFormat: "EAN_13",
          website: "https://imec.imeifoods.com.tw",
          backgroundColor: "#D73E2A",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "62fe577db13fa2dfab66ac892614234f0889e433",
          name: "维康",
          barcodeFormat: "CODE_128",
          website: "http://www.wellcare.com.tw",
          backgroundColor: "#007330",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "c0ea0c8271da5dbac632cb95e22fe77c7af1a539",
          name: "諾貝爾圖書城",
          barcodeFormat: "CODE_128",
          website: "http://www.nobelbook.com.tw",
          backgroundColor: "#943A39",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "5e5429cd6fff96dcb31a35fa219a2dba75fd6d78",
          name: "日曜天地",
          barcodeFormat: "CODE_128",
          website: "http://www.s-outlet.com.tw",
          backgroundColor: "#004C3D",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "0fcc91c44ddf278b1ff01892596bca22f85c53b5",
          name: "舞东风",
          barcodeFormat: "CODE_128",
          website: "http://www.wdfcsls.com",
          backgroundColor: "#DA251C",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "34db7faa732a578f5efd47c9f114d9d964a73738",
          name: "卡哇伊",
          barcodeFormat: "CODE_128",
          website: "http://www.ninepart.com",
          backgroundColor: "#A9856B",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "f6719e2a86ed4aadf4866b46efb1465a4ed00ee8",
          name: "Cache Cache",
          barcodeFormat: "CODE_128",
          website: "http://www.cache-cache.cn",
          backgroundColor: "#838486",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "cf0b0babfc4701fb9b068f7c53c6640c48879a1b",
          name: "DFS",
          barcodeFormat: "CODE_128",
          website: "http://weibo.com/dfsworld?is_all=1",
          backgroundColor: "#C1300E",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "c8651cb17a0bc7af738d14e9ec49051340ea071d",
          name: "Pandora",
          barcodeFormat: "CODE_128",
          website: "http://www.pandora.net",
          backgroundColor: "#F4E6E2",
          regions: <String>[
            "CN",
            "TW",
          ],
        ),
        CardInfo(
          id: "a18271c052c703b93a7970cb0c1f46134f676e1e",
          name: "99 Ranch Market",
          barcodeFormat: "CODE_128",
          website: "https://www.99ranch.com/",
          backgroundColor: "#F11618",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "643fd520debff9520d6b712f7e0c516bf223b2b8",
          name: "Pizza Hut",
          barcodeFormat: "CODE_128",
          website: "https://pizzahut.pl/",
          backgroundColor: "#ED1C24",
          regions: <String>[
            "CN",
          ],
        ),
        CardInfo(
          id: "b3055c81f115f49a2abd9fe90ebb6bfbca01d5ef",
          name: "Etude House",
          barcodeFormat: "CODE_128",
          website: "http://www.etudehouse.com.tw/",
          backgroundColor: "#F5909E",
          regions: <String>[
            "TW",
          ],
        ),
        CardInfo(
          id: "8d87e825f300530dc4b74ce802d15841bf9a528c",
          name: "Uniqlo",
          barcodeFormat: "CODE_128",
          website: "https://www.uniqlo.com/",
          backgroundColor: "#EE1714",
          regions: <String>[
            "CN",
            "TW",
          ],
        ),
        CardInfo(
          id: "80d5c25f636c262d0944a8ec6334f631ecd45c73",
          name: "特力",
          barcodeFormat: "CODE_128",
          website: "https://www.trplus.com.tw/",
          backgroundColor: "#4A4A4A",
          regions: <String>[
            "TW",
          ],
        ),
      ];
}

class CardInfo {
  final String id;
  final String name;
  final String barcodeFormat;
  final List<String> regions;
  final String website;
  final String backgroundColor;

  String get logo => 'assets/images/card/$id.png';

  CardInfo({
    required this.id,
    required this.name,
    required this.barcodeFormat,
    required this.regions,
    required this.website,
    required this.backgroundColor,
  });
}
