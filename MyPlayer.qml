import QtQuick 2.0
import Box2D 2.0

PhysicsItem {
    id: player
    width: 40
    height: 40
    bullet: true
    sleepingAllowed: false
    bodyType: Body.Dynamic
    fixedRotation: true
    gravityScale: 0.3
    focus: true                         //Key Event
    x: 260
    y: 200

    fixtures: Box {
        width: player.width
        height: player.height
        density: 1
        friction: 0.3
        restitution: 0.2
        groupIndex: 1
    }

    /* Keep Center Content */
    onYChanged: {
        flickView.contentY = Math.min(flickView.contentHeight - screen.height, Math.max(0, player.y - screen.height / 2))
    }

    onXChanged: {
        flickView.contentX = Math.min(flickView.contentWidth - screen.width, Math.max(0, player.x - screen.width / 2))
    }

    /* Player Texture */
    Image {
        id: playerTexture
        source: "file:///home/asus/Obrazy/jeans.jpg"
        anchors.fill: parent
    }

    Keys.onPressed: {

        /* Jump */
        if (event.key === Qt.Key_W) {
            console.log("EVENT: Jump");
            var impulse = Qt.point(0, -10);
            body.applyLinearImpulse(impulse, body.getWorldCenter());
        }

        /* Move Right */
        else if(event.key === Qt.Key_D) {
            console.log("EVENT: Move Right");
            body.linearVelocity.x = 2;
        }

        /* Move Left */
        else if(event.key === Qt.Key_A) {
            console.log("EVENT: Move Left");
            body.linearVelocity.x = -2;
        }
    }

    Keys.onReleased: {
        if (event.isAutoRepeat){
            return ;
        }

        /* Stop Moving */
        if (event.key === Qt.Key_Left || event.key === Qt.Key_Right) {
            body.linearVelocity.x = 0;
        }
    }
}
















