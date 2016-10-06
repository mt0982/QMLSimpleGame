import Box2D 2.0

/*
  This body places 32-pixel wide invisible static bodies around the screen,
  to avoid stuff getting out.
*/

Body {
    world: myWorld

    Box {
        y: gameBackground.height
        width: gameBackground.width
        height: 32
    }

    Box {
        y: -32
        height: 32
        width: gameBackground.width
    }

    Box {
        x: -32
        width: 32
        height: gameBackground.height
    }

    Box {
        x: gameBackground.width
        width: 32
        height: gameBackground.height
    }
}
