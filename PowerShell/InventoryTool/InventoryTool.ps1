# ==============================================================================
#  InventoryTool.ps1
#  Terminal GUI inventory management tool for PowerShell 5.1
#  No plugins. No additional libraries. No add-ons. Pure Windows/.NET.
# ==============================================================================

# ==============================================================================
#  SECTION: USER CONFIGURATION
#  *** THIS IS THE ONLY SECTION YOU SHOULD NEED TO EDIT ***
#
#  Change $InventoryRoot to move the entire tool to a different location.
#  All other paths derive from it automatically.
#
#  Change $UniqueKeyField to match whatever column uniquely identifies a device.
#  Common choices: "IP", "Hostname", "AssetTag"
# ==============================================================================

$InventoryRoot  = "C:\InventoryTool"          # Root folder -- change this to relocate everything
$SourceFolder   = "$InventoryRoot\sources"     # Drop your CSV/XLSX source files here
$ConfigFolder   = "$InventoryRoot\config"      # Stores settings.json and inventory.json
$ExportFolder   = "$InventoryRoot\exports"     # Exported reports are saved here
$UniqueKeyField = "IP"                         # Column used to identify and deduplicate records

# See full script in repository for complete source.
# This file is managed via the IT-Scripts repo by Hackerobi.
