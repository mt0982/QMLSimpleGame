import QtQuick 2.0
import Box2D 2.0

PhysicsItem {
    id: player
    width: 40
    height: 77
    bullet: true
    sleepingAllowed: false
    bodyType: Body.Dynamic
    fixedRotation: true
    gravityScale: 0.3
    focus: true                         //Key Event
    x: 260
    y: 200

    property int previousVelocity: player.linearVelocity.y

    function activePlayer() { player.focus = true }

    fixtures: Box {
        width: player.width
        height: player.height
        density: 1
        friction: 0.6
        groupIndex: 1
    }

    /* Keep Center Content */
    onYChanged: {
        checkCollision(player.x, player.y)
        flickView.contentY = Math.min(flickView.contentHeight - screen.height, Math.max(0, player.y - screen.height / 2))
    }

    onXChanged: {
        flickView.contentX = Math.min(flickView.contentWidth - screen.width, Math.max(0, player.x - screen.width / 2))
    }

    /* Player Texture */
    AnimatedImage {
        id: playerTexture
        source: "qrc:/Image/Player/Idle.gif"
        anchors.fill: parent
    }

    Keys.onPressed: {

        /* Jump */
        if (event.key === Qt.Key_W) {
            if(event.isAutoRepeat) return
            console.log("EVENT: Jump");
            var impulse = Qt.point(0, -20);
            body.applyLinearImpulse(impulse, body.getWorldCenter())
        }

        /* Move Right */
        else if(event.key === Qt.Key_D) {
            console.log("EVENT: Move Right");
            body.linearVelocity.x = 4;
            playerTexture.source = "qrc:/Image/Player/Run.gif"
            playerTexture.mirror = false
            player.width = 61
            player.height = 77
        }

        /* Move Left */
        else if(event.key === Qt.Key_A) {
            console.log("EVENT: Move Left");
            body.linearVelocity.x = -4;
            playerTexture.source = "qrc:/Image/Player/Run.gif"
            playerTexture.mirror = true
            player.width = 61
            player.height = 77
        }

        /* Stop Moving */
        if (event.key === Qt.Key_S) {
            console.log("EVENT: Stop");
            body.linearVelocity.x = 0;
        }
    }

    Keys.onReleased: {
        if (event.isAutoRepeat){
            return ;
        }

        /* Slide */
        if (event.key === Qt.Key_D) {
            playerTexture.source = "qrc:/Image/Player/Slide.gif"
            playerTexture.mirror = false
            player.width = 58
            player.height = 55
        }

        if (event.key === Qt.Key_A) {
            playerTexture.source = "qrc:/Image/Player/Slide.gif"
            playerTexture.mirror = true
            player.width = 58
            player.height = 55
        }
    }

    /* Check Speed */
    Timer {
        running: true
        interval: 100
        repeat: true
        onTriggered: {

            /* DEAD */
            if(player.y > gameBackground.height * 0.9) {
                playerTexture.source = "qrc:/Image/Player/Dead.gif"
                player.width = 74
                player.height = 77
                parent.focus = false    //END GAME
                if(playerTexture.currentFrame == 9) playerTexture.paused = true
            }

            /* IDLE */
            else if(player.linearVelocity.x == 0) {
                playerTexture.source = "qrc:/Image/Player/Idle.gif"
                player.width = 40
                player.height = 77
            }

            /* FALL - PARACHUTE */
            if(player.linearVelocity.y > previousVelocity && previousVelocity > 1) {
                //console.log(player.linearVelocity.y + " " + previousVelocity)
                playerTexture.source = "qrc:/Image/Player/Fall.gif"
                player.width = 75
                player.height = 77
            }

            previousVelocity = player.linearVelocity.y
        }
    }
}
















