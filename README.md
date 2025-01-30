# Claims

Protection for player's home!

Version: `1.21.2 - 1.21.3 - 1.21.4`

## Commands

### Player

Show Player ID:

```mcfunction
/trigger claim_show_id
```

Create claim:

```mcfunction
/trigger claim_create
```

You can alternate claim creation in `the nether` and in `the end` in the settings (`/function claims:settings`)

Delete claim:

```mcfunction
/trigger claim_delete
```

Invite Player by ID:

```mcfunction
/trigger claim_invite set <player_id>
```

Kick Player by ID:

```mcfunction
/trigger claim_kick set <player_id>
```

Teleport to claim:

```mcfunction
/trigger claim_teleport
```

You need to enable `Teleport` in settings (`/function claims:settings`)

### Admin

Settings:

```mcfunction
/function claims:settings
```

- Beacon Particles
- Radius Particles
- Teleport to Claim
- Nether Claims
- End Claims
- Kill TNT Inside Claims
- Disable Creepers Inside Claims
- Auto Join on Invite (not ready)
- Show Player ID in List
- Sounds
- Nether Claims
- End Claims
- Auto Join (in progress)
- Claim Shape (in progress)
- Teleport Cooldown (in progress)
- Cancel Teleport on Move (in progress)

Change claim's radius and particles radius (recommended):

```mcfunction
/function claims:settings/set/radius {"value":<value>}
```

Change only claim's radius:

```mcfunction
/scoreboard players set radius claims.settings <value>
```

Change only claim's particles radius:

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