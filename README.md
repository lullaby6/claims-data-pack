# Claims

[![Latest](https://img.shields.io/github/v/release/lullaby6/claims-data-pack?color=blueviolet&logo=github)](https://github.com/lullaby6/claims-data-pack/releases) 
[![Discord](https://img.shields.io/discord/1327308441324097681?label=discord&color=blue&logo=discord)](https://discord.gg/5UdcDa5xNC) 
[![Modrinth](https://img.shields.io/modrinth/dt/claims?label=modrinth&logo=modrinth)](https://modrinth.com/datapack/claims) 
[![License](https://img.shields.io/badge/license-mit-green)](https://github.com/lullaby6/claims-data-pack/blob/main/LICENSE) 
[![Issues](https://img.shields.io/github/issues/lullaby6/claims-data-pack?color=orange&logo=github)](https://github.com/lullaby6/claims-data-pack/issues)
[![Code Size](https://img.shields.io/github/languages/code-size/lullaby6/claims-data-pack?color=purple&logoColor=white)](https://github.com/lullaby6/claims-data-pack)
[![Repo Size](https://img.shields.io/github/repo-size/lullaby6/claims-data-pack?logo=dropbox&color=red)](https://github.com/lullaby6/claims-data-pack)
[![Stars](https://img.shields.io/github/stars/lullaby6/claims-data-pack?logo=github&color=yellow)](https://github.com/lullaby6/claims-data-pack/stargazers)

![bg](https://raw.githubusercontent.com/lullaby6/claims-data-pack/refs/heads/main/images/bg.png)

## 📖 Description

Protection for player's home!

Version: `1.21.2 - 1.21.3 - 1.21.4`

## 📂 Installation

Move the downloaded file in the path `.minecraft/saves/[world]/datapacks`

## 👾 Bugs/Issues

Please report any bug/issues to the [Discord Server](https://discord.gg/5UdcDa5xNC) in the `bugs` channel, or create a issue in the [Github Repostiroy](https://github.com/lullaby6/claims-data-pack/issues), or a comment in [Planet Minecraft](https://www.planetminecraft.com/data-pack/claims).

## ⌨️ Commands

### Player

Show Player ID:

```mcfunction
/trigger claims.show_id
```

Create claim:

```mcfunction
/trigger claims.create
```

You can alternate claim creation in `the nether` and in `the end` in the config (`/function claims:config`)

Delete claim:

```mcfunction
/trigger claims.delete
```

Invite Player by ID:

```mcfunction
/trigger claims.invite set <player_id>
```

Kick Player by ID:

```mcfunction
/trigger claims.kick set <player_id>
```

Teleport to claim:

```mcfunction
/trigger claims.teleport
```

You need to enable `Teleport` in config (`/function claims:config`)

### Admin

Config:

```mcfunction
/function claims:config
```

Change claim's radius:

```mcfunction
/scoreboard players set radius claims.config <value>
```

Change claim's particles radius difference:

```mcfunction
/scoreboard players set radius_particles_diff claims.config <value>
```

Change claim's radius particles speed:

```mcfunction
/scoreboard players set radius_particles_speed claims.config <value>
```

Change particles:

```mcfunction
/data modify storage claims:main <particle_name> set value "<particle_id>"
```

Particles names:
- beacon_particles
- radius_particles

Delete player claim:

```mcfunction
/execute as <player> run function claims:player/trigger/use/delete
```

Reset player:

```mcfunction
/execute as <player> run function claims:player/load
```

Disable:

```mcfunction
/datapack disable "file/claims.zip"
```

Enable:

```mcfunction
/datapack enable "file/claims.zip"
```

## 🪪 License

[MIT](https://github.com/lullaby6/claims-data-pack/blob/main/LICENSE)