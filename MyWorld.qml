import QtQuick 2.0
import Box2D 2.0
import QtQuick.Particles 2.0

Item {

    function activePlayer() { level01.activePlayer() }

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
            id: level01
        }
    }
}






















