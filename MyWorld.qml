import QtQuick 2.0
import Box2D 2.0

Item {

    Flickable {
        id: flickView
        anchors.fill: parent
        contentWidth: gameBackground.width
        contentHeight: gameBackground.height
        clip: true
        boundsBehavior: Flickable.StopAtBounds
        //interactive: false

        Image {
            id: gameBackground
            source: "qrc:/Image/background.jpg"
        }

        World {
            id: myWorld
        }

        ScreenBoundaries {}

//        Repeater {
//            model: 8
//            delegate: MyPlatform {
//                x: Math.random() * (gameBackground.width - 100);
//                y: Math.random() * (gameBackground.height);
//                //rotation: Math.random() * 90;
//            }
//        }

        MyPlatform {
            w: 145
            h: 35
            x: 230
            y: 900
            imagePath: "qrc:/Image/PlatformA.png"
        }

        MyPlatform {
            w: 384
            h: 256
            x: 479
            y: 900
            imagePath: "qrc:/Image/PlatformB.png"
        }

        MyPlatform {
            w: 638
            h: 382
            x: 1030
            y: 796
            imagePath: "qrc:/Image/PlatformC1.png"
        }

        MyPlatform {
            w: 383
            h: 128
            x: 1660
            y: 1049
            imagePath: "qrc:/Image/PlatformC2.png"
        }

        MyPlayer {
            id: player
        }
    }
}






















