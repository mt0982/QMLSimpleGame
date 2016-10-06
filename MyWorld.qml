import QtQuick 2.0
import Box2D 2.0

Item {

    function jump() { player.x += 100 }

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
        model: 8
        delegate: MyPlatform {
            x: Math.random() * (screen.width - 100);
            y: Math.random() * (screen.height);
            //rotation: Math.random() * 90;
        }
    }

    MyPlayer {
        id: player
    }
}






















