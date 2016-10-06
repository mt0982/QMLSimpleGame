import QtQuick 2.0
import Box2D 2.0

PhysicsItem {
    id: platform
    width: 145
    height: 35
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
        source: "qrc:/Image/PlatformA.png"
        anchors.fill: parent
    }
}
