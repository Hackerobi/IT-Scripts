# IT-Scripts

> *Because spreadsheets are for people who enjoy suffering.*

![PowerShell](https://img.shields.io/badge/PowerShell-5.1-blue?style=flat-square&logo=powershell&logoColor=white)
![Platform](https://img.shields.io/badge/Platform-Windows-lightgrey?style=flat-square&logo=windows&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=flat-square)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=flat-square)

A collection of IT operations scripts built for real work. No bloat. No dependencies. No nonsense. If it requires a plugin it does not belong here.

Everything here runs on what Windows already gives you. PowerShell 5.1. Built-in .NET assemblies. That is it.

---

## Scripts

| Script | Category | Description |
|---|---|---|
| [InventoryTool](PowerShell/InventoryTool/) | PowerShell | Terminal GUI inventory manager. Import CSV/XLSX, deduplicate on a key field, filter with clickable pills, search, export. No Excel. No database. No plugins. |

---

## Philosophy

- **Zero dependencies** -- if it needs a module, it does not ship here
- **PowerShell 5.1** -- runs on any domain-joined Windows box out of the box
- **User config at the top** -- every script has a clearly marked config block. One section. Easy to find. Easy to change.
- **Self-contained** -- one script per tool where possible. Drop it, run it, done.
- **Dark by default** -- because light mode is a threat vector

---

## Structure

```
IT-Scripts/
    README.md
    PowerShell/
        InventoryTool/
            InventoryTool.ps1   -- the tool
            README.md           -- usage and config reference
```

---

## Usage

All scripts are standalone. Clone the repo or just download the file you need.

```powershell
# Run any script directly
.\PowerShell\InventoryTool\InventoryTool.ps1
```

If you see a red squiggle about execution policy:

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

---

## Backlog

- Multi-value paste lookup -- paste 40 IPs, get back what they all are
- Scheduled auto-import watcher for source folders
- HTML/PDF report generator from inventory snapshot
- Network scanner CSV feeder
- AD computer object importer

---

## Contributing

Keep it clean. Keep it dependency-free. Keep the user config at the top.

---

*Built by an operator, for operators.*
