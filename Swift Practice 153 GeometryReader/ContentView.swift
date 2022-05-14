//
//  ContentView.swift
//  Swift Practice 153 GeometryReader
//
//  Created by Dogpa's MBAir M1 on 2022/5/13.
//

import SwiftUI

//MARK: VStack內設定一個Text再設定GeometryReader，GeometryReader空間不再跟Safe Area一致。
struct ContentView: View {
    var body: some View {
        VStack{
            Text("佔用一個空間")
                .frame(width: 200, height: 100, alignment: .center)
                .background(Rectangle().fill(.blue))
            
            //MARK: 自動spacing: 8
            
            GeometryReader { geo in
                VStack(spacing:0){

                    Text("早安")
                        .frame(width: geo.size.width, height: geo.size.height/3, alignment: .center)
                        .background(
                            Rectangle()
                                .fill(.red)
                        )

                    Text("午安")
                        .frame(width: geo.size.width, height: geo.size.height/3, alignment: .center)
                        .background(
                            Capsule()
                                .fill(.yellow)
                        )

                    Text("晚安")
                        .frame(width: geo.size.width, height: geo.size.height/3, alignment: .center)
                        .background(
                            RoundedRectangle(
                                cornerRadius:geo.size.width/5)
                                .fill(.green)
                        )
                }
            }
        }
    }
}

//MARK: 透過.background內設定顏色
//struct ContentView: View {
//    var body: some View {
//        VStack{
//            GeometryReader { geo in
//                VStack(spacing:0){
//
//                    Text("早安")
//                        .frame(width: geo.size.width, height: geo.size.height/3, alignment: .center)
//                        .background(
//                            Rectangle()
//                                .fill(.red)
//                        )
//
//                    Text("午安")
//                        .frame(width: geo.size.width, height: geo.size.height/3, alignment: .center)
//                        .background(
//                            Capsule()
//                                .fill(.yellow)
//                        )
//
//                    Text("晚安")
//                        .frame(width: geo.size.width, height: geo.size.height/3, alignment: .center)
//                        .background(
//                            RoundedRectangle(
//                                cornerRadius:geo.size.width/5)
//                                .fill(.green)
//                        )
//                }
//            }
//        }
//    }
//}



//MARK: VStack設定3個Color,spacing設為0
//struct ContentView: View {
//    var body: some View {
//        ZStack{
//            GeometryReader { geo in
//                VStack(spacing:0){
//                    ZStack{
//                        Color.red
//                            .frame(width: geo.size.width, height: geo.size.height/3, alignment: .center)
//                        Text("早安")
//                            .frame(width: geo.size.width, height: geo.size.height/3, alignment: .center)
//                    }
//
//                    ZStack{
//                        Color.yellow
//                            .frame(width: geo.size.width, height: geo.size.height/3, alignment: .center)
//                        Text("午安")
//                        .frame(width: geo.size.width, height: geo.size.height/3, alignment: .center)
//                    }
//
//                    ZStack{
//                        Color.green
//                            .frame(width: geo.size.width, height: geo.size.height/3, alignment: .center)
//                        Text("晚安")
//                        .frame(width: geo.size.width, height: geo.size.height/3, alignment: .center)
//                    }
//
//                }
//            }
//        }
//    }
//}

//MARK: SafeArea被渲染成紅色與綠色
//struct ContentView: View {
//    var body: some View {
//        ZStack{
//            Color.white
//            GeometryReader { geo in
//                VStack(spacing: 0){
//                    Text("早安")
//                        .frame(width: geo.size.width, height: geo.size.height/3, alignment: .center)
//                        .background(.red)
//                    Button(action: {
//
//                    }, label: {
//                        Text("按鈕")
//                    })
//                        .frame(width: geo.size.width, height: geo.size.height/3, alignment: .center)
//                        .background(.yellow)
//                    Text("晚安")
//                        .frame(width: geo.size.width, height: geo.size.height/3, alignment: .center)
//                        .background(.green)
//                }
//            }
//        }
//    }
//}









//MARK: 設定VStack內的Spacing為0沒有白色間距
//struct ContentView: View {
//    var body: some View {
//        ZStack{
//            Color.white
//            GeometryReader { geo in
//                VStack(spacing: 0){
//                    Text("happy")
//                        .frame(width: geo.size.width, height: geo.size.height/3, alignment: .center)
//                        .background(.red)
//                    Button(action: {
//
//                    }, label: {
//                        Text("按鈕")
//                    })
//                        .frame(width: geo.size.width, height: geo.size.height/3, alignment: .center)
//                        .background(.yellow)
//                    Text("文字")
//                        .frame(width: geo.size.width, height: geo.size.height/3, alignment: .center)
//                        .background(.blue)
//                }
//            }
//        }
//    }
//}


//MARK: 未定義Spacing時自動設定出Spacing出現白色間距
//struct ContentView: View {
//    var body: some View {
//        ZStack{
//            Color.white
//            GeometryReader { geo in
//                VStack{
//                    Text("happy")
//                        .frame(width: geo.size.width, height: geo.size.height/3, alignment: .center)
//                        .background(.red)
//                    Button(action: {
//
//                    }, label: {
//                        Text("按鈕")
//                    })
//                        .frame(width: geo.size.width, height: geo.size.height/3, alignment: .center)
//                        .background(.yellow)
//                    Text("文字")
//                        .frame(width: geo.size.width, height: geo.size.height/3, alignment: .center)
//                        .background(.blue)
//                }
//            }
//        }
//    }
//}

//MARK: 確認GeometryReadery在預設狀態是類似ZStack的狀態。
//struct ContentView: View {
//    var body: some View {
//        GeometryReader {geo in
//            Text("你好")
//                .font(.system(size: 30))
//                .frame(width: geo.size.width, height: geo.size.height/3, alignment: .center)
//            Button(action: {
//
//            }, label: {
//                Text("touch Button")
//                    .font(.system(size: 40))
//            })
//                .frame(width: geo.size.width, height: geo.size.height/3, alignment: .center)
//            Text("happy")
//                .font(.system(size: 40))
//                .frame(width: geo.size.width, height: geo.size.height/3, alignment: .center)
//        }
//    }
//}


//MARK: VStack內確認SwiftUI的尺寸
////Button    height20.3
////Spacer    height722.3
////Text      height20.3
//struct ContentView: View {
//    var body: some View {
//        VStack{
//            Button(action: {
//
//            }, label: {
//                Text("happy")
//            })
//                .background(Color.red)
//            Spacer()
//            Text("happy")
//        }
//    }
//}

//MARK: 列印GeometryReader的Size，無背景色
//struct ContentView: View {
//    var body: some View {
//        GeometryReader() { geometry in
//            Button(action: {
//                print(geometry.size)
//            }, label: {
//                Text("列印 GeometryReader Size")
//            })
//                .frame(
//                    width: geometry.size.width,
//                    height: geometry.size.height
//                )
//        }
//    }
//}
//MARK:
//    var body: some View {
//        VStack(spacing:0){
//            Color.red
//            ZStack{
//                Color.red
//                Text("Hello, world!")
//            }
//
//            //.frame(width: 300, height: 300, alignment: .center)
//            GeometryReader { geo in
//                ZStack{
//                    Color.yellow
//                    Button(action: {
//                        print("目前GeometryReader大小\nwidth:\(geo.size.width)\nheight:\(geo.size.height)")
//                    }, label: {
//                        Text("touchme")
//                    })
//                        .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
//                }
//
//            }
//        }
//    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
