[![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/xLeDocteurx/vue-avataaars)](https://www.npmjs.com/package/vue-avataaars)
[![PRs welcome](https://img.shields.io/badge/PRs-welcome-ff69b4.svg)](https://github.com/xLeDocteurx/vue-avataaars/pulls)
[![Gitter](https://img.shields.io/gitter/room/cvue-avataaars/community)](https://gitter.im/vue-avataaars/community)
[![GitHub](https://img.shields.io/github/license/xLeDocteurx/vue-avataaars)](https://github.com/xLeDocteurx/vue-avataaars/pulls)

# Vue js component for Avataaars
Try it here : [https://xledocteurx.github.io/vue-avataaars/](https://xledocteurx.github.io/vue-avataaars/)

This is a port from  Sketch library [Avataaars](https://avataaars.com/) designed by [Pablo Stanley](https://twitter.com/pablostanley). 

<p align="center"><img src='avataaars-example.png?raw=true' /></p>

## Features
 - SVG based
 - Light weight
 - Scalable
 - Easy to use
 - Easy to integrate with custom editor
 - Comes from [Avataaars](https://avataaars.com/)

#### Roadmap to 0.0.x
- Clothes graphics.

#### Roadmap to 0.1.0
- Feed the Avataaars component with a string or an email hash to procedurally generate an avatar.
( Just like the way the gravatar API works )

#### Roadmap to 0.2.0
- Fully customizable Avataaars editor.
- Getting rid of Bootstrap Vue in the editor.

#### Roadmap to 1.0.0
- PNG export/generation

#### Roadmap to success
- Providing an open Web API like lorempicsum or gravatar.

#### How it works

Import the Avataaars component. Pass it an object called "avatarOptions" with some parameters. Let the magic happen.

## Installation
```
npm install vue-avataaars --save
```

## Usage

- Using the Avataaars component with an avatarOptions input :
```vue
  <template>
    <Avataaars 
    // You can any size as it does not exceed the maxWidth and maxHeight properties
    :width=200
    :height=200
    // Your avatar options
    :avatarOptions="{
      backgroundType: selectedBackgroundType,
      backgroundColor: selectedBackgroundColor,
      skinColor: selectedSkinColor,
      clothesType: selectedClothesType,
      clothesColor: selectedClothesColor,
      clothesGraphicsType: selectedClothesGraphicType,
      eyesType: selectedEyesType,
      eyebrowType: selectedEyebrowType,
      mouthType: selectedMouthType,
      facialHairType: selectedFacialHairType,
      facialHairColor: selectedFacialHairColor,
      accessoriesType: selectedAccessoriesType,
      topType: selectedTopType,
      topColor: selectedTopColor,
    }" />
  </template>

  <script>
  import Avataaars from 'vue-avataaars'

  export default {
    name: 'Your component',
    components: {
      Avataaars,
    },
  </script>
```

- Using the Avataaars for random avatar generation :
```vue
  <template>
    // No props, no problems
    <Avataaars />
  </template>
  
  <script>
  import Avataaars from 'vue-avataaars'

  export default {
    name: 'Your component',
    components: {
      Avataaars,
    },
  </script>
```

## Props for the Avataaars component
```vue
    iconName: {
      type: String,
      default: 'avatar',
      required: false,
    },
    width: {
      type: Number,
      default: 264,
      required: false,
    },
    height: {
      type: Number,
      default: 280,
      required: false,
    },
    maxWidth: {
      type: Number,
      default: 264,
      required: false,
    },
    maxHeight: {
      type: Number,
      default: 280,
      required: false,
    },
    avatarOptions: {
      type: Object, required: false
    },
```

## Props of avatarOptions
```
{
    "backgroundType": ["circle", "transparent"],
    "backgroundColor": ["black", "blue01", "blue02", "blue03", "gray01", "gray02", "heather", "pastelBlue", "pastelGreen", "pastelOrange", "pastelRed", "pastelYellow", "pink", "red", "white"],

    "skinColor": ["tanned", "yellow", "pale", "light", "brown", "darkBrown", "dark"],

    "clothesType": ["blazerShirt", "blazerSweater", "collarSweater", "graphicShirt", "hoodie", "overall", "shirtCrewNeck", "shirtScoopNeck", "shirtVNeck"],
    "clothesColor": ["black", "blue01", "blue02", "blue03", "gray01", "gray02", "heather", "pastelBlue", "pastelGreen", "pastelOrange", "pastelRed", "pastelYellow", "pink", "red", "white"],
    "clothesGraphicsType": ["none", "bat", "cumbia", "diamond", "pizza", "resist", "selena", "bear", "skullOutline", "skull"],
    
    "eyebrowType": ["angry", "angryNatural", "default", "defaultNatural", "flatNatural", "frownNatural", "raisedExcited", "raisedExcitedNatural", "sadConcerned", "sadConcernedNatural", "unibrowNatural", "updown", "updownNatural"],
    "eyesType": ["close", "cry", "default", "dizzy", "eyeroll", "happy", "hearts", "side", "squint", "surprised", "wink", "winkWacky"],
    "mouthType": ["concerned", "default", "disbelief", "eating", "grimace", "sad", "screamOpen", "serious", "smile", "tongue", "twinkle", "vomit"],
    
    "facialHairType": ["none", "beardMedium", "beardLight", "beardMajestic", "moustacheFancy", "moustacheMagnum"],
    "facialHairColor": ["auburn", "black", "blonde", "blondeGolden", "brown", "brownDark", "platinum", "red"],

    "accessoriesType": ["none", "eyepatch", "kurt", "prescription01", "prescription02", "round"],
    "topType": ["none", "hat", "hijab", "turban", "winterHat1", "winterHat2", "winterHat3", "winterHat4", "longHairBigHair", "longHairBob", "longHairBun", "longHairCurly", "longHairCurvy", "longHairDreads", "longHairFro", "longHairFroBand", "longHairNotTooLong", "longHairShavedSides", "longHairMiaWallace", "longHairStraight", "longHairStraight2", "longHairStraightStrand", "shortHairDreads01", "shortHairDreads02", "shortHairFrizzle", "shortHairShaggyMullet", "shortHairShortCurly", "shortHairShortFlat", "shortHairShortRound", "shortHairShortWaved", "shortHairSides", "shortHairTheCaesar", "shortHairTheCaesarSidePart"],
    "topColor": [
        "auburn", "black", "blonde", "blondeGolden", "brown", "brownDark", "platinum", "red",
        "blue01", "blue02", "blue03", "gray01", "gray02", "heather", "pastelBlue", "pastelGreen", "pastelOrange", "pastelRed", "pastelYellow", "pink", "red", "white"
    ]
}
```
