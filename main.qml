import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import Box2D 2.0

ApplicationWindow {
    id: screen
    visible: true
    width: 640
    height: 480
    title: qsTr("Game")

    MyWorld {
        id: myWorld
        anchors.fill: parent
    }
}













