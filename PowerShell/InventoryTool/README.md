# InventoryTool

> *Your inventory. Under control. Finally.*

A terminal GUI inventory management tool for PowerShell 5.1. No Excel. No database. No plugins. Just drop it, run it, and start importing.

---

## What It Does

- Imports CSV and XLSX source files and merges them into a single inventory
- Deduplicates records on a configurable key field (IP, Hostname, AssetTag -- your call)
- Remembers column mappings per source file so you only map once
- Two independent filter strips with clickable pill counters -- click OS: Windows to instantly see only Windows machines
- Live search across all columns works alongside both filters
- Source file tracker shows what was imported and when
- Add, edit, delete records manually
- Export to CSV on demand
- Clean exit with confirmation

---

## Folder Structure

```
C:\InventoryTool\           <- root (configurable)
    sources\                <- drop CSV/XLSX files here
    config\                 <- settings.json and inventory.json live here
    exports\                <- exported reports land here
    InventoryTool.ps1       <- the script
```

All folders are created automatically on first run.

---

## Quick Start

1. Copy `InventoryTool.ps1` to `C:\InventoryTool\` (or anywhere -- update the path at the top)
2. Right-click and choose **Run with PowerShell**, or:

```powershell
.\InventoryTool.ps1
```

3. On first run, define your inventory columns (IP, Hostname, OS, Vendor, etc.)
4. Drop a CSV or XLSX into the `sources\` folder
5. Click **Import File**, map the columns, done

---

## Configuration

The only section you need to edit is at the very top of the script:

```powershell
# ==============================================================================
#  SECTION: USER CONFIGURATION
# ==============================================================================

$InventoryRoot  = "C:\InventoryTool"   # Change this to move everything
$SourceFolder   = "$InventoryRoot\sources"
$ConfigFolder   = "$InventoryRoot\config"
$ExportFolder   = "$InventoryRoot\exports"
$UniqueKeyField = "IP"                 # Column used to deduplicate records
```

Change `$UniqueKeyField` to `Hostname` or `AssetTag` if that is your unique identifier.

To restyle the entire tool, edit the `$Theme` block further down. Colors, fonts, pill sizes -- all in one place.

---

## Requirements

- Windows with PowerShell 5.1 (built into Windows 10/11 and Server 2016+)
- No additional modules
- No Excel install needed for XLSX support
- No admin rights required to run

---

## File Support

| Format | Notes |
|---|---|
| `.csv` | Standard CSV with header row. UTF-8 or default encoding. |
| `.xlsx` | Excel 2007+ format. Single sheet. No Excel install needed. |
| `.xls` | Not supported. Re-save as XLSX or CSV. |

---

## Notes

- Deduplication: if two source files contain the same key value, the newer file wins per field. Changes are logged and shown after import.
- The `_LastChanged` column is added automatically and tracks when each record was last updated.
- Column mappings are saved per source filename. Import the same file type again and it auto-maps.
- `settings.json` and `inventory.json` are human-readable if you ever need to inspect or edit them directly.
