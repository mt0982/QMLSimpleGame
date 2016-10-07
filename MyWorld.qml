import QtQuick 2.0
import Box2D 2.0
import QtQuick.Particles 2.0

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

        MyLevel1 {

        }
    }
}






















