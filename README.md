
# react-native-pool-cue-skills-lore

## Getting started

`$ npm install react-native-pool-cue-skills-lore --save`

### Mostly automatic installation

`$ react-native link react-native-pool-cue-skills-lore`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-pool-cue-skills-lore` and add `RNPoolCueSkillsLore.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNPoolCueSkillsLore.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNPoolCueSkillsLorePackage;` to the imports at the top of the file
  - Add `new RNPoolCueSkillsLorePackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-pool-cue-skills-lore'
  	project(':react-native-pool-cue-skills-lore').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-pool-cue-skills-lore/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-pool-cue-skills-lore')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNPoolCueSkillsLore.sln` in `node_modules/react-native-pool-cue-skills-lore/windows/RNPoolCueSkillsLore.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Pool.Cue.Skills.Lore.RNPoolCueSkillsLore;` to the usings at the top of the file
  - Add `new RNPoolCueSkillsLorePackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNPoolCueSkillsLore from 'react-native-pool-cue-skills-lore';

// TODO: What to do with the module?
RNPoolCueSkillsLore;
```
  