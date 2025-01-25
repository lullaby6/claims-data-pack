# Claims

Claims for multiplayer servers

Version: `1.21.2 - 1.21.3 - 1.21.4`

## Commands

### Player

Get player ID:

```mcfunction
/trigger get_player_id
```

Create claim:

```mcfunction
/trigger create_claim
```

Delete claim:

```mcfunction
/trigger delete_claim
```

Invite player by ID:

```mcfunction
/trigger invite_player_by_id set <player_id>
```

Remove player by ID:

```mcfunction
/trigger remove_player_by_id set <player_id>
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

Change claim's radius:

```mcfunction
/scoreboard players set radius claims.settings <value>
```

Change claim's radius particles speed:

```mcfunction
/scoreboard players set radius_particles_speed claims.settings <value>
```

Disable:

```mcfunction
/datapack disable "claims"
```

Enable:

```mcfunction
/datapack enable "claims"
```

## License

MIT