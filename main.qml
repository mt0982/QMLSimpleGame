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

    Image {
        id: name
        source: "file:///home/asus/Obrazy/dandelion_seeds___make_a_wish-wallpaper-2880x1800.jpg"
        anchors.fill: parent
    }

    World {
        id: myWorld
    }

    ScreenBoundaries {}

    Repeater {
        model: 3    // Platform count
        delegate: MyPlatform {
            x: Math.random() * (screen.width - 100);
            y: Math.random() * (screen.height / 3);
            rotation: Math.random() * 90;
        }
    }
}













