import QtQuick 2.0
import QtQuick.Particles 2.0

Item {

    property int w
    property int h

    ParticleSystem {
        anchors.fill: parent

        ImageParticle {
            anchors.fill: parent
            source: "qrc:/Image/Tree/leaf.png"
            autoRotation: true
        }

        Wander {
            xVariance: 25;
            pace: 25;
        }

        Emitter {
            width: w
            height: h - 100
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 3
            startTime: 15000

            emitRate: 8
            lifeSpan: 10000

            acceleration: PointDirection { y: 8; xVariation: 4; yVariation: 1 }

            size: 2
            sizeVariation: 8
        }
    }
}
