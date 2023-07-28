using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Pool.Cue.Skills.Lore.RNPoolCueSkillsLore
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNPoolCueSkillsLoreModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNPoolCueSkillsLoreModule"/>.
        /// </summary>
        internal RNPoolCueSkillsLoreModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNPoolCueSkillsLore";
            }
        }
    }
}
