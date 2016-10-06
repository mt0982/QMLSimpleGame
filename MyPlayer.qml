import QtQuick 2.0
import Box2D 2.0

PhysicsItem {
    id: player
    width: 40
    height: 40
    bodyType: Body.Dynamic
    fixedRotation: true
    gravityScale: 0.3
    focus: true                         //Key Event
    x: 300
    y: 200

    fixtures: Box {
        width: player.width
        height: player.height
        density: 1
        friction: 0.3
        restitution: 0.5
    }

    Image {
        id: playerTexture
        source: "file:///home/asus/Obrazy/jeans.jpg"
        anchors.fill: parent
    }

    Keys.onPressed: {

        /* Jump */
        if (event.key == Qt.Key_W) {
            console.log("EVENT: Jump");
            event.accepted = true;
            var impulse = Qt.point(0, -10);
            body.applyLinearImpulse(impulse, body.getWorldCenter());
        }

        /* Move Right */
        else if(event.key == Qt.Key_D) {
            console.log("EVENT: Move Right");
            event.accepted = true;
            body.linearVelocity.x = 2;
        }

        /* Move Left */
        else if(event.key == Qt.Key_A) {
            console.log("EVENT: Move Left");
            event.accepted = true;
            body.linearVelocity.x = -2;
        }
    }
}
















