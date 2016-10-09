import QtQuick 2.0
import Box2D 2.0

PhysicsItem {

    property string imagePath: " "
    property int w
    property int h

    id: platform
    width: w
    height: h
    bodyType: Body.Static

    fixtures: Box {
        width: platform.width
        height: platform.height
        density: 1
        friction: 0.3
        restitution: 0.0                //Bouncy
    }

    Image {
        id: platformTexture
        source: imagePath
        anchors.fill: parent
    }
}
