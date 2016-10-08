import QtQuick 2.0
import QtQuick.Particles 2.0

Item {

    ParticleSystem {
        id: particleSystem

        ImageParticle {
            id: img
            source: "qrc:/Image/Menu/particle.png"
            system: particleSystem
            opacity: 0.5
            alphaVariation: 0.5
            colorVariation: 0.9
        }
    }

    Emitter {
        id: emitter
        anchors.fill: parent
        system: particleSystem
        emitRate: 40
        lifeSpan: 8000
        lifeSpanVariation: 500
        size: 8
        sizeVariation: 16

        acceleration: PointDirection {
            y: 0
            x: 0
            xVariation: 8
            yVariation: 8
        }
    }
}


























