# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Questyno is a quest system mod for Project Zomboid that provides a comprehensive quest framework. The mod depends on SoulQuestSystem and Biciclettyna2.

## Architecture

The quest system follows a structured pattern with four main components for each quest:

1. **Quest Definition** (`media/lua/client/questyni_*.lua`) - Contains quest logic and requirements
2. **Dialogue System** (`media/lua/client/dialoghyni_*.lua`) - NPC dialogues for quest interactions
3. **Quest Pools** (`media/lua/client/questyno_pools.lua`) - Daily quest pools and character creation quests
4. **Translations** (`media/lua/shared/Translate/EN/IG_UI_EN.txt`) - Localized quest text

### Quest Patterns

The system uses 7 distinct patterns based on quest type:
- Pattern 1: Single-step NPC dialogue quests
- Pattern 2: Item collection without NPC/tile interaction
- Pattern 3: Multiple item types without NPC/tile interaction
- Pattern 4: Item collection with single NPC/tile interaction
- Pattern 5: Item collection with multiple NPC/tile interactions
- Pattern 6: Multiple item types with single NPC/tile interaction
- Pattern 7: Multiple item types with multiple NPC/tile interactions

### File Structure

```
media/
├── lua/
│   ├── client/           # Quest definitions, dialogues, pools
│   ├── server/           # Server-side logic
│   └── shared/           # Shared utilities and translations
├── scripts/              # Item definitions and models
├── textures/             # Quest icons and UI elements
└── sound/                # Quest completion sounds
```

## Key Conventions

- All Lua files must start with: `require 'SFQuest_Database'`
- Quest GUIDs follow pattern: `Questyno_[NomeCognomeNumero]`
- Translation keys follow pattern: `IGUI_SFQuest_Questyno_[NomeCognomeNumero]_[Type]`
- Maximum 200 variables per Lua file
- Quest chains unlock through `awardsworld` and `awardstask` properties

## Quest Components

Each quest requires:
- **guid**: Unique identifier
- **text**: Quest description (translation key)
- **title**: Quest title (translation key)
- **texture**: Icon reference (e.g., "Item_Money")
- **completesound**: Always "levelup"
- **lore**: Array of lore translation keys
- **unique**: Boolean for non-repeatable quests

Optional components for quest chains and rewards:
- **awardsworld**: Unlocks dialogues
- **awardsitem**: Item rewards (format: "Type;Quantity")
- **awardsrep**: Reputation rewards (format: "LaResistenza;Amount")
- **needsitem**: Required items
- **ondone**: Code executed on completion

## Reference Documentation

The comprehensive quest pattern guide is in `guida.lua`, which contains:
- Decision flowchart for pattern selection
- Complete examples for all 7 patterns
- Property descriptions and usage

The SoulQuestSystem API documentation is in `media/docs.lua`.

## External Resources

Quest tracking spreadsheet: https://docs.google.com/spreadsheets/d/1Q7fcf4-uQmY4-rYCtd4-YeTpEkc1YS4M/