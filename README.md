# android_device_xiaomi_sm6225-common

Shared SM6225 device tree for the Xiaomi Redmi Pad SE (`xun`), maintained for
the personal LineageOS 22.2 port at <https://github.com/robsonsilv4/lineageos-xun>.

The repository is standalone. It started as a fork of
[Xiaomi-Redmi-Pad-SE-Resources/android_device_xiaomi_sm6225-common](https://github.com/Xiaomi-Redmi-Pad-SE-Resources/android_device_xiaomi_sm6225-common),
which is archived, and `lineage-22.2` continues from that tree at
`60936f9792e7b662899abd7999b05d3a2b11dc13`.

The branch carries one change: the Soong migration that removes the legacy
make rules for the mount points and symlinks that Soong now owns. The change
keeps one owner for those paths and lets `repo sync` return to it through the
manifest pin.

The manifest pins the build commit, the parent of the commit that added this
README. The rationale is `patches/0001-sm6225-common-soong-migration.md` in the
port repository.
