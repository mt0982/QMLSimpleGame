import QtQuick 2.0
import Box2D 2.0
import QtQuick.Particles 2.0
import QtMultimedia 5.6

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
            //gravity: Qt.point(0.0, 9.8);
        }

        ScreenBoundaries {}  

        MyLevel1 {
            id: level01

            Audio {
                id: themeSound
                source: "file:///home/asus/Programy/Qt/Projekty/QMLGame2/Sounds/ThemeSound.wav"
                autoPlay: true
            }

            Audio {
                id: waterSound
                source: "file:///home/asus/Programy/Qt/Projekty/QMLGame2/Sounds/Water.wav"
                autoPlay: true
                loops: Audio.Infinite
                volume: 0.1
            }
        }
    }
}






















