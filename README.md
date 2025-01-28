# Claims

Claims for multiplayer servers

Version: `1.21.2 - 1.21.3 - 1.21.4`

## Commands

### Player

Show Player ID:

```mcfunction
/trigger claim_show_id
```

Create claim:

```mcfunction
/trigger create_claim
```

Delete claim:

```mcfunction
/trigger delete_claim
```

Invite Player by ID:

```mcfunction
/trigger claim_invite set <player_id>
```

Kick Player by ID:

```mcfunction
/trigger claim_kick set <player_id>
```

### Admin

Settings:

```mcfunction
/function claims:settings
```

- Beacon Particles
- Radius Particles
- Kill TNT Inside Claims
- Sounds
- Show Player ID in List

Change claim's radius:

```mcfunction
/scoreboard players set radius claims.settings <value>
```

Change claim's particles radius:

```mcfunction
/scoreboard players set particles_radius claims.settings <value>
```

Change claim's radius particles speed:

```mcfunction
/scoreboard players set radius_particles_speed claims.settings <value>
```

Change beacom particles:

```mcfunction
/data modify storage claims:settings beacon_particles set value <particle_id>
```

Change radius particles:

```mcfunction
/data modify storage claims:settings radius_particles set value <particle_id>
```

Disable:

```mcfunction
/datapack disable "file/claims.zip"
```

Enable:

```mcfunction
/datapack enable "file/claims.zip"
```

## License

MIT

## ToDo

- Join Claim

Check:
- Cancel Invite invited player
- Toggle Nether's Claims Setting
- Toggle End's Claims Setting
- Disable Creepers
- Toggle Teleport Setting
- Teleport Claim