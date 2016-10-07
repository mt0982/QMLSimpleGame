import QtQuick 2.0
import QtQuick.Controls 2.0

Item {

    MyPlatform {
        w: 145
        h: 35
        x: 230
        y: 900
        imagePath: "qrc:/Image/PlatformA.png"
    }

    MyPlatform {
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
        w: 145
        h: 35
        x: 2275
        y: 585
        imagePath: "qrc:/Image/PlatformA.png"
    }

    MyPlatform {
        w: 145
        h: 35
        x: 2482
        y: 585
        imagePath: "qrc:/Image/PlatformA.png"
    }

    MyPlatform {
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
        w: 638
        h: 382
        x: 3215
        y: 1000
        imagePath: "qrc:/Image/PlatformD.png"

        Image {
            source: "qrc:/Image/Tree/Tree_3.png"
            anchors.bottom: parent.top
            x: 10
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
        w: 640
        h: 511
        x: 6050
        y: 600
        imagePath: "qrc:/Image/PlatformG1.png"

        Image {
            source: "qrc:/Image/Tree/Tree_2.png"
            anchors.bottom: parent.top
            x: 25
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
}















