[![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/xLeDocteurx/vue-avataaars)](https://www.npmjs.com/package/vue-avataaars)
[![PRs welcome](https://img.shields.io/badge/PRs-welcome-ff69b4.svg)](https://github.com/xLeDocteurx/vue-avataaars/pulls)
[![Gitter](https://img.shields.io/gitter/room/cvue-avataaars/community)](https://gitter.im/vue-avataaars/community)
[![GitHub](https://img.shields.io/github/license/xLeDocteurx/vue-avataaars)](https://github.com/xLeDocteurx/vue-avataaars/pulls)

# Vue js component for Avataaars
Try it here : [https://xledocteurx.github.io/vue-avataaars/](https://xledocteurx.github.io/vue-avataaars/)

This is a port from  Sketch library [Avataaars](https://avataaars.com/) designed by [Pablo Stanley](https://twitter.com/pablostanley). 

<p align="center"><img src='avataaars-example.png?raw=true' /></p>

I am deeply sorry for the first 80 users who downloaded it.
I had some troubles with the distribution of this plugin as it is my first npm package.

If you have any trouble with it or want to suggest something come to [GitHub](https://github.com/xLeDocteurx/vue-avataaars/issues) or [Gitter](https://gitter.im/vue-avataaars/community)

## Features
 - SVG based
 - Light weight
 - Scalable
 - Easy to use
 - Easy to integrate with custom editor
 - Comes from [Avataaars](https://avataaars.com/)

#### Roadmap to 0.1.0
- Clothes graphics.
- Feed the Avataaars component with a string or an email hash to procedurally generate an avatar.
( Just like the way the gravatar robothash API works )

#### Roadmap to 0.2.0
- Fully customizable avatar editor component.
- Getting rid of Bootstrap Vue in the editor component.

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

( If the classic way of importing the component does not work. please use the src folder found in nodes_modules/vue-avataaars )
## Usage

- Using the Avataaars component with an avatarOptions input :
```html
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
```html
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
```html
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
    avatarOptions: {
      type: Object, required: false
    },
```

## Props of avatarOptions
A complète list of every options can be found here in the "./scr/avataaarsOptions.json" :
https://github.com/xLeDocteurx/vue-avataaars/blob/master/src/avataaarsOptions.json


## Contributors

[//]: contributor-faces

<a href="https://github.com/AllanCerveaux"><img src="https://avatars1.githubusercontent.com/u/16000854?s=460&v=4" title="Callan" width="80" height="80"></a><a href="https://github.com/xLeDocteurx"><img src="https://avatars0.githubusercontent.com/u/26012160?s=460&v=4" title="Lenoir Christopher" width="80" height="80"></a>

[//]: contributor-faces
