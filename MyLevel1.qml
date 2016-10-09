import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Particles 2.0
import QtGraphicalEffects 1.0
import QtMultimedia 5.6

Item {

    MyPlatform {
        id: firstPlatform
        w: 145
        h: 35
        x: 230
        y: 900
        imagePath: "qrc:/Image/PlatformA.png"
    }

    MyPlatform {
        id: secondPlatform
        w: 384
        h: 256
        x: 479
        y: 900
        imagePath: "qrc:/Image/PlatformB.png"

        Image {
            source: "qrc:/Image/Tree/Sign_2.png"
            anchors.bottom: parent.top
            x: parent.width * 0.1
        }
    }

    MyPlatform {
        id: thirdPlatform
        w: 638
        h: 382
        x: 1030
        y: 796
        imagePath: "qrc:/Image/PlatformC1.png"

        Image {
            source: "qrc:/Image/Tree/Bush (2).png"
            anchors.bottom: parent.top
            x: parent.width * 0.20
        }

        Image {
            source: "qrc:/Image/Tree/Bush (4).png"
            anchors.bottom: parent.top
            x: parent.width * 0.15
        }

        Image {
            source: "qrc:/Image/Tree/Tree_3.png"
            anchors.bottom: parent.top
            x: parent.width * 0.5

            MyLeafSystem {
                anchors.fill: parent
                w: parent.width
                h: parent.height
            }
        }
    }

    MyPlatform {
        w: 383
        h: 128
        x: 1660
        y: 1049
        imagePath: "qrc:/Image/PlatformC2.png"
    }

    /* Movable Platform */
    MyPlatform {
        id: movablePlatform01
        w: 145
        h: 35
        x: 2108
        y: 1049
        imagePath: "qrc:/Image/PlatformA.png"

        SequentialAnimation {
            running: true
            loops: Animation.Infinite
            NumberAnimation { target: movablePlatform01; property: "y"; to: 585; duration: 6500 }
            PauseAnimation { duration: 2000 }
            NumberAnimation { target: movablePlatform01; property: "y"; to: 1049; duration: 6500 }
            PauseAnimation { duration: 2000 }
        }
    }

    MyPlatform {
        id: seventhPlatform
        w: 145
        h: 35
        x: 2275
        y: 585
        imagePath: "qrc:/Image/PlatformA.png"
    }

    MyPlatform {
        id: eightPlatform
        w: 145
        h: 35
        x: 2482
        y: 585
        imagePath: "qrc:/Image/PlatformA.png"
    }

    MyPlatform {
        id: ninethPlatform
        w: 145
        h: 35
        x: 2678
        y: 585
        imagePath: "qrc:/Image/PlatformA.png"
    }

    MyPlatform {
        w: 145
        h: 35
        x: 2950
        y: 700
        imagePath: "qrc:/Image/PlatformA.png"
    }

    MyPlatform {
        id: fourthPlatform
        w: 638
        h: 382
        x: 3215
        y: 1000
        imagePath: "qrc:/Image/PlatformD.png"

        Image {
            source: "qrc:/Image/Tree/Tree_3.png"
            anchors.bottom: parent.top
            x: 10

            MyLeafSystem {
                anchors.fill: parent
                w: parent.width
                h: parent.height
            }
        }

        Image {
            source: "qrc:/Image/Tree/Bush (1).png"
            anchors.bottom: parent.top
            x: parent.width * 0.55
        }

        Image {
            source: "qrc:/Image/Tree/Bush (3).png"
            anchors.bottom: parent.top
            x: parent.width * 0.7
        }
    }

    MyPlatform {
        id: fifthPlatform
        w: 384
        h: 256
        x: 3980
        y: 900
        imagePath: "qrc:/Image/PlatformB.png"

        Image {
            id: stoneImage
            source: "qrc:/Image/Tree/Stone.png"
            anchors.bottom: parent.top
            x: 25
            width: 45
            height: 27
        }

        Image {
            source: "qrc:/Image/Tree/Sign_1.png"
            anchors.bottom: parent.top
            x: parent.width * 0.82

            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "!!!"
                font.pixelSize: 18
                opacity: 0.8
                y: parent.height * 0.2
            }
        }
    }

    MyPlatform {
        id: movablePlatform02
        w: 506
        h: 74
        x: 4430
        y: 900
        imagePath: "qrc:/Image/PlatformE.png"

        SequentialAnimation {
            running: true
            loops: Animation.Infinite
            NumberAnimation { target: movablePlatform02; property: "x"; to: 5000; duration: 6500 }
            PauseAnimation { duration: 2000 }
            NumberAnimation { target: movablePlatform02; property: "x"; to: 4430; duration: 6500 }
            PauseAnimation { duration: 2000 }
        }
    }

    MyPlatform {
        w: 100
        h: 100
        x: 5170
        y: 770
        imagePath: "qrc:/Image/PlatformF.png"
    }

    MyPlatform {
        id: sixthPlatform
        w: 640
        h: 511
        x: 6050
        y: 600
        imagePath: "qrc:/Image/PlatformG1.png"

        Image {
            source: "qrc:/Image/Tree/Tree_2.png"
            anchors.bottom: parent.top
            x: 25

            MyLeafSystem {
                anchors.fill: parent
                w: parent.width
                h: parent.height
            }
        }

        Image {
            source: "qrc:/Image/Tree/Sign_1.png"
            anchors.bottom: parent.top
            x: parent.width * 0.7
        }
    }

    MyPlatform {
        w: 383
        h: 128
        x: 5668
        y: 981
        imagePath: "qrc:/Image/PlatformG2.png"

        Image {
            source: "qrc:/Image/Tree/Mushroom_2.png"
            anchors.bottom: parent.top
            x: parent.width * 0.8
        }
    }

    /* PARTICLE SYSTEM */
    Image {
        id: sourceImage
        x: 0
        y: gameBackground.height * 0.9
        z: 2
        width: gameBackground.width
        height: 300

        ParticleSystem {
            id: particles
            anchors.fill: parent

            ImageParticle {
                id: bubble
                anchors.fill: parent
                source: "qrc:/Image/Water/catch.png"
                opacity: 0.25
            }

            Wander {
                xVariance: 25;
                pace: 25;
            }

            Emitter {
                width: parent.width
                height: 750
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 3
                startTime: 15000

                emitRate: 16
                lifeSpan: 15000

                acceleration: PointDirection { y: -2; xVariation: 4; yVariation: 4 }

                size: 8
                sizeVariation: 16
            }
        }
    }

    /* WATER */
    Row {
        height: gameBackground.height
        width: gameBackground.width
        z: 1

        Image {
            id: wave
            y: gameBackground.height * 0.9
            source: "qrc:/Image/Water/wave.png"
            width: gameBackground.width
        }

        Image {
            y: gameBackground.height * 0.9
            source: "qrc:/Image/Water/wave.png"
            width: gameBackground.width
        }

        NumberAnimation on x {
            from: 0
            to: -(wave.width)
            duration: 32000
            loops: Animation.Infinite
        }

        SequentialAnimation on y {
            loops: Animation.Infinite
            NumberAnimation { from: y - 2; to: y + 2; duration: 3200; easing.type: Easing.InOutQuad }
            NumberAnimation { from: y + 2; to: y - 2; duration: 3200; easing.type: Easing.InOutQuad }
        }
    }

    /* CLOUDS */
    ParticleSystem {
        anchors.fill: parent
        z: -2

        ImageParticle {
            source: "qrc:/Image/CloudD.png"
            opacity: 0.5
            alphaVariation: 0.25
        }

        Wander {
            xVariance: 300;
            pace: 1;
        }

        Emitter {
            width: gameBackground.width
            height: gameBackground.height / 2.5
            //anchors.right: parent.left
            emitRate: 0.8
            lifeSpan: 72000

            velocity: PointDirection {
                x: 16
                xVariation: 2
                yVariation: 2
            }

            size: 64
            sizeVariation: 128
        }
    }

    ParticleSystem {
        anchors.fill: parent
        z: 2

        ImageParticle {
            source: "qrc:/Image/CloudD.png"
            opacity: 0.5
            alphaVariation: 0.25
        }

        Wander {
            xVariance: 300;
            pace: 1;
        }

        Emitter {
            width: gameBackground.width
            height: gameBackground.height / 2.5
            //anchors.right: parent.left
            emitRate: 0.8
            lifeSpan: 72000

            velocity: PointDirection {
                x: 16
                xVariation: 2
                yVariation: 2
            }

            size: 64
            sizeVariation: 128
        }
    }

    /* PLAYER */

    function activePlayer() { player.activePlayer() }

    MyPlayer {
        id: player
    }

    /* ITEMS */
    property variant arrItem: [firstPlatform, secondPlatform, thirdPlatform, fourthPlatform, fifthPlatform, sixthPlatform,
                               seventhPlatform, eightPlatform, ninethPlatform]

    property int counter: 0
    function checkCollision(x,y) {

        for(var i = 0; i < repeater.count; i++) {
            var a = x - repeater.itemAt(i).x
            var b = y - repeater.itemAt(i).y

            if(Math.sqrt(a*a + b*b) < 80) {
                if(repeater.itemAt(i).visible === true) {
                    repeater.itemAt(i).visible = false
                    counter++
                    console.log(i + ": " + counter)
                    pickSound.play()
                }
            }
        }
    }

    Audio {
        id: pickSound
        source: "file:///home/asus/Programy/Qt/Projekty/QMLGame2/Sounds/Pick.wav"
    }

    /* RESULT */
    Text {
        id: result
        x: flickView.contentX + flickView.width - 90
        y: flickView.contentY + 10
        text: counter.toString()
        font.family: "Nyctophobia"
        font.pointSize: 40
    }

    Image {
        width: 8
        height: 40
        x: flickView.contentX + flickView.width - 110
        anchors.verticalCenter: result.verticalCenter
        source: "qrc:/Image/Player/Kunai.png"

        layer.enabled: true
        layer.effect: Glow {
            samples: 15
            color: "white"
            transparentBorder: true
        }

        transform: Rotation {
            id: rotY
            origin.x: 4             //Mid Object
            origin.y: 20
            angle: 0
            axis { x: 0; y: 1; z: 0 }
        }

        NumberAnimation {
            target: rotY
            running: true
            property: "angle"
            easing.type: Easing.InOutBack
            from: 0
            to: 360
            duration: 2000 + Math.random() * 4000
            loops: Animation.Infinite
        }
    }

    /* RANDOM ELEMENTS */
    Repeater {
        id: repeater
        model: 16
        delegate: Image {
            id: kunai
            width: 8
            height: 40
            property int index: Math.floor(Math.random() * arrItem.length)
            x: arrItem[index].x + Math.random() * arrItem[index].width
            y: arrItem[index].y - 50
            source: "qrc:/Image/Player/Kunai.png"

            layer.enabled: true
            layer.effect: Glow {
                samples: 15
                color: "white"
                transparentBorder: true
            }

            transform: Rotation {
                id: rotY
                origin.x: 4             //Mid Object
                origin.y: 20
                angle: 0
                axis { x: 0; y: 1; z: 0 }
            }

            NumberAnimation {
                target: rotY
                running: true
                property: "angle"
                easing.type: Easing.InOutBack
                from: 0
                to: 360
                duration: 2000 + Math.random() * 4000
                loops: Animation.Infinite
            }
        }
    }
}















