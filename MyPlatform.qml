import QtQuick 2.0
import Box2D 2.0

PhysicsItem {
    id: platform
    width: 100
    height: 20
    bodyType: Body.Static

    fixtures: Box {
        width: platform.width
        height: platform.height
        density: 1
        friction: 0.3
        restitution: 0.5
    }

    Image {
        id: platformTexture
        source: "file:///home/asus/Obrazy/floor.jpg"
        anchors.fill: parent
    }
}
