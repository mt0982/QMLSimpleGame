import QtQuick 2.0
import Box2D 2.0

Item {

    Flickable {
        anchors.fill: parent
        contentWidth: gameBackground.width
        contentHeight: gameBackground.height

        Image {
            id: gameBackground
            source: "qrc:/Image/background.jpg"
            //anchors.fill: parent
        }

        World {
            id: myWorld
        }

        ScreenBoundaries {}

        Repeater {
            model: 8
            delegate: MyPlatform {
                x: Math.random() * (gameBackground.width - 100);
                y: Math.random() * (gameBackground.height);
                //rotation: Math.random() * 90;
            }
        }

        MyPlayer {
            id: player
        }
    }
}






















