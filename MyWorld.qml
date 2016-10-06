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

        /* CLOUD SYSTEM */
        Repeater {
            id: repeater
            model: 100
            delegate: MyCloud {
                id: cloud
                x: Math.random() * (gameBackground.width - 250);
                y: Math.random() * (gameBackground.height / 2.5);
                z: Math.floor(Math.random() * (3 + 3 + 1)) - 3;     //Range <-3,3>

                onZChanged: {
                    if(z == -3 || z == 3) path = "qrc:/Image/CloudB.png"
                    else if(z == -2 || z == 2) path = "qrc:/Image/CloudC.png"
                    else if(z == 0) path = "qrc:/Image/CloudD.png"
                    else path = "qrc:/Image/CloudA.png"
                    console.log(z)
                }
            }
        }

        MyLevel1 {

        }

        MyPlayer {
            id: player
        }
    }
}






















