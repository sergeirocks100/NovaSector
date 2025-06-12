<!-- This should be copy-pasted into the root of your module folder as readme.md -->

https://github.com/NovaSector/NovaSector/pull/<!--PR Number-->

## Emergency Locker Rations

Module ID: LOCKER_RATIONS

### Description:

This module adds in emergency ration packs to the game, and the contents of packs.

### TG Proc/File Changes:

- `code/modules/mob/living.dm`: To add an emergency ration pack to the emergency locker contents.
<!-- If you edited any core procs, you should list them here. You should specify the files and procs you changed.
E.g: 
- `code/modules/mob/living.dm`: `proc/overriden_proc`, `var/overriden_var`
-->

### Modular Overrides:

- `modular_nova/modules/cargo/code/packs.dm`: To add the SolGov ration crate to cargo.
<!-- If you added a new modular override (file or code-wise) for your module, you should list it here. Code files should specify what procs they changed, in case of multiple modules using the same file.
E.g: 
- `modular_nova/master_files/sound/my_cool_sound.ogg`
- `modular_nova/master_files/code/my_modular_override.dm`: `proc/overriden_proc`, `var/overriden_var`
-->

### Defines:

- N/A
<!-- If you needed to add any defines, mention the files you added those defines in, along with the name of the defines. -->

### Included files that are not contained in this module:

- `modular_nova/modules/imported_vendors/code/vendor_containers.dm`: The ration foodpack is a subtype of the vendor foodpack.
- `modular_nova/modules/imported_vendors/code/vendor_food.dm`: The vendor mains/sides are subtypes of the vendor ones.

### Credits:

sergeirocks100: Programming, partial sprite work
Paxilmaniac: Original foodpack/packaging sprites
