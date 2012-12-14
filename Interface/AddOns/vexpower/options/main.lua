function vexpower.panel_main()
	return {
		type = "group",
		args = {
			title={name="|CFFFF7D0AVersion: |r"..GetAddOnMetadata("vexpower", "Version").."\n", type="description", order=1, fontSize="large"},
			author={name="|CFFFF7D0AAuthor: |rVexar Aegwynn-EU\n", type="description", order=2, fontSize="large"},
			slashcmds={name="\n\nSlash Cmds:\n/vexpower\n/vexp", type="description", order=3, fontSize="large"},
			space={name="\n\n", type="description", order=4, fontSize="large"},
			
			activate = {
				name = "Enable Addon",
				order=5, type = "toggle", width="double",
				set = function(self,key) vexpower_parameters["frame"]["show"]=key vexpower_initialize(true) end,
				get = function() return vexpower_parameters["frame"]["show"] end,
				},
			defaults = {
				name = "Reset to defaults",
				order=6, type = "execute",
				func = function(info,val) vexpower_loadData(true) end,
				},
			
			support_space ={name="\n", type="description", order=100},
			support_info =	{type="description", order=101, fontSize="medium", name="The ComboPoints currently support the following classes and specs:"},
			supportpala =	{type="description", order=110, fontSize="medium", name="  |CFF"..vexpower_ClassColorHex("PALADIN").."Paladin|r: Holy Power"},
			supportdruid =	{type="description", order=120, fontSize="medium", name="  |CFF"..vexpower_ClassColorHex("DRUID").."Druid|r: ComboPoints"},
			supportrogue =	{type="description", order=130, fontSize="medium", name="  |CFF"..vexpower_ClassColorHex("ROGUE").."Rogue|r: ComboPoints"},
			supportmonk =	{type="description", order=140, fontSize="medium", name="  |CFF"..vexpower_ClassColorHex("MONK").."Monk|r: Chi"},
			supporthunter =	{type="description", order=150, fontSize="medium", name="  |CFF"..vexpower_ClassColorHex("HUNTER").."Hunter|r (Marksman): 'Ready, Set, Aim...'-Stacks and 'Fire!'-Buff"},
			supporthunter2 ={type="description", order=151, fontSize="medium", name="  |CFF"..vexpower_ClassColorHex("HUNTER").."Hunter|r (Beast Master): 'Frenzy'-Stacks"},
			supportdk =		{type="description", order=160, fontSize="medium", name="  |CFF"..vexpower_ClassColorHex("DEATHKNIGHT").."Death Knight|r: Outsourced to 'Vex Runes'"},
			supportwarrior1={type="description", order=170, fontSize="medium", name="  |CFF"..vexpower_ClassColorHex("WARRIOR").."Warrior|r (Arms): 'Taste for Blood'-Stacks"},
			supportwarrior2={type="description", order=171, fontSize="medium", name="  |CFF"..vexpower_ClassColorHex("WARRIOR").."Warrior|r (Fury): 'Raging Blow'-Stacks"},
			supportshaman1 ={type="description", order=180, fontSize="medium", name="  |CFF"..vexpower_ClassColorHex("SHAMAN").."Shaman|r (Enhancer): 'Maelstrom Weapon'-Stacks"},
			supportpriest1 ={type="description", order=190, fontSize="medium", name="  |CFF"..vexpower_ClassColorHex("PRIEST").."Priest|r (Shadow): Shadow Orbs"},
			supportpriest2 ={type="description", order=191, fontSize="medium", name="  |CFF"..vexpower_ClassColorHex("PRIEST").."Priest|r (Discipline): 'Evangelism'-Stacks"},
			supportlock1 =	{type="description", order=200, fontSize="medium", name="  |CFF"..vexpower_ClassColorHex("WARLOCK").."Warlock|r (Affliction): Soul Shards"},
			supportlock2 =	{type="description", order=201, fontSize="medium", name="  |CFF"..vexpower_ClassColorHex("WARLOCK").."Warlock|r (Demonology): Demonic Fury and text support with 'PowerAltCurrent'/etc"},
			supportlock3 =	{type="description", order=202, fontSize="medium", name="  |CFF"..vexpower_ClassColorHex("WARLOCK").."Warlock|r (Destruction): Burning Embers and text support with 'PowerAltCurrent'/etc"},
			supportmage1 =	{type="description", order=210, fontSize="medium", name="  |CFF"..vexpower_ClassColorHex("MAGE").."Mage|r (Arcane): 'Arcane Charge'-Stacks"},
			}
		}
end