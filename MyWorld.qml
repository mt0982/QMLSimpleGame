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

        MyLevel1 {

        }

        MyPlayer {
            id: player
        }
    }
}






















