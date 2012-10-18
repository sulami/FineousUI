local ZGV = ZygorGuidesViewer
if not ZGV then return end

tinsert(ZGV.startups,function(self)
	MoneyFrame_SetSize()
	getValue()
	MoneyFrame_Show()
end)

local eventFrame=CreateFrame("Frame")
local ZygorGuidesViewer_sellButton = CreateFrame("Button", "ZygorGuidesViewerSellButton", MerchantFrame, "OptionsButtonTemplate")
local zgname = ZygorGuidesViewer_L("Main")["zgname"]

--Selling grey items
local totalValue=0
function getValue()
	totalValue=0

	local item, price, quality, itemCount, bag, slot
	local itemList= {}

	for bag=0, NUM_BAG_SLOTS do
		for slot=1, GetContainerNumSlots(bag) do
			item=GetContainerItemID(bag,slot)
			if item  then
				quality=select(3,GetItemInfo(item))
				if quality==0 then
					price=select(11,GetItemInfo(item))
					itemCount=GetItemCount(item)

					if itemList[item]==nil then --checks to make sure that there are not multiple stacks of the same item.
						itemList[item]=1
						totalValue=totalValue+price*itemCount
					end
				end
			end
		end
	end
	SetStrings(totalValue)
end

local function sellGrey()

	local item, name, link, quality, bag, slot, price

	for bag=0, NUM_BAG_SLOTS do
		for slot=1, GetContainerNumSlots(bag) do
			item=GetContainerItemID(bag,slot)
			if item  then
				name, link, quality=GetItemInfo(item)
				price=select(11,GetItemInfo(item))
				if quality==0 and price > 0 then
					local count=select(2,GetContainerItemInfo(bag,slot))
					print(zgname.." sold " ..link.."x"..count..".")
					UseContainerItem(bag,slot) -- Will use an item and since vendor is open, will sell the item.
				end
			end
		end
	end
end

function MoneyFrame_CloseFrame()
	HideUIPanel(ZygorGuidesViewer_MoneyFrame)
	ZGV.db.profile.showmoneyframe=false
end

function MoneyFrame_SetVisible()
	if ZGV.db.profile.showmoneyframe then
		ShowUIPanel(ZygorGuidesViewer_MoneyFrame)
	else
		HideUIPanel(ZygorGuidesViewer_MoneyFrame)
	end
end

function MoneyFrame_SetSize()
	local width=ZygorGuidesViewer_MoneyFrame_MainText:GetStringWidth()+50
	ZygorGuidesViewer_MoneyFrame:SetWidth(width)
end

function SetStrings(totalValue)
	local gold=floor(totalValue/10000)
	totalValue=totalValue%10000
	ZygorGuidesViewer_MoneyFrame_GoldAmount:SetText(gold)

	local silver=floor(totalValue/100)
	totalValue=totalValue%100
	ZygorGuidesViewer_MoneyFrame_SilverAmount:SetText(silver)

	local copper=totalValue
	ZygorGuidesViewer_MoneyFrame_CopperAmount:SetText(copper)
end

function MoneyFrame_Show()
	MoneyFrame_UpdateSkin()

	MoneyFrame_SetVisible()
end

function MoneyFrame_UpdateSkin()
	local function SkinData(property)
		return ZGV.CurrentSkinStyle:SkinData(property)
	end
	
	ZygorGuidesViewer_MoneyFrame:SetBackdrop(SkinData("MoneyBackdrop"))
	ZygorGuidesViewer_MoneyFrame:SetBackdropColor(unpack(SkinData("MoneyBackdropColor")))
	ZygorGuidesViewer_MoneyFrame:SetBackdropBorderColor(unpack(SkinData("MoneyBackdropBorderColor")))
end

--Buying items from steps in guide

local ItemsNeeded

local function ShowBuyConfirm(ItemsNeed,totalCost)
	local zgname = ZygorGuidesViewer_L("Main")["zgname"]

	local cost=totalCost

	BuyConfirm.hideOnEscape=true -- tricking the game to think a static popup is displayed so that escape works correctly.
	StaticPopup_DisplayedFrames[6]=BuyConfirm

	BuyConfirm_Text:SetText(zgname.." would like to buy\n")

	local items=ItemsNeed
	local name, item
	local numItems=0

	for name,item in pairs(items) do
		BuyConfirm_Text:SetText(BuyConfirm_Text:GetText()..item.link.."x|cffff0000"..item.amount.."\n")
		numItems=numItems+1
	end

	BuyConfirm_Gold:SetText(floor(cost/10000)) cost=cost%10000
	BuyConfirm_Silver:SetText(floor(cost/100)) cost=cost%100
	BuyConfirm_Copper:SetText(cost)

	BuyConfirm_Text1:ClearAllPoints()
	local moveLeft = BuyConfirm:GetWidth() - 71 - BuyConfirm_Gold:GetStringWidth() - BuyConfirm_Silver:GetStringWidth()- BuyConfirm_Copper:GetStringWidth()
	BuyConfirm_Text1:SetPoint("TOPLEFT",BuyConfirm,"TOPLEFT",moveLeft/2,-14-BuyConfirm_Text:GetHeight())

	BuyConfirm:SetHeight(70+BuyConfirm_Text:GetHeight())
	BuyConfirm:Show()
end

local function BuyItems()
	local items=ItemsNeeded

	local name, item

	for name,item in pairs(items) do
		while item.amount > 0 do
			local buyAmount = item.amount

			if item.amount > item.maxStack then
				buyAmount = item.maxStack
			end
			if buyAmount<=0 then return end
			BuyMerchantItem(item.index,buyAmount)
			item.amount=item.amount-buyAmount
		end
	end
end

function CanGoInBag(item, bag)
   local itemFamily = GetItemFamily(item)
   local bagFamily = select(2, GetContainerNumFreeSlots(bag))
   if not itemFamily or not bagFamily then return false end
   return bagFamily == 0 or bit.band(itemFamily, bagFamily) > 0
end

local function findBuyItems()
	ItemsNeeded = {}
	local goals=ZGV.CurrentStep.goals
	local totalCost,neededSlots,costForOne= 0,0,0
	local name,number,id, index , maxStack, numAvail, notAvail

	for i=1, #goals do
		if goals[i].action=="buy" and goals[i].status~="complete" then
			name=goals[i].target
			id=goals[i].targetid
			if not id then print(zgname..": No item ID for item, please report issue.") return end
			number=tonumber(goals[i]:GetText():match("%s%d+"))

			for merchindex=1,GetMerchantNumItems() do
				local merchItemName,_,costForOne,_,numAvail = GetMerchantItemInfo(merchindex)

				if merchItemName == name then
					notAvail=false
					index=merchindex
					maxStack=GetMerchantItemMaxStack(merchindex)

					if not number then return end

					if number%maxStack == 0 then neededSlots = neededSlots + floor(number/maxStack)
					else neededSlots = neededSlots + floor(number/maxStack) + 1 end

					for k=1, floor((merchindex-1)/10) do
						MerchantNextPageButton:Click() -- send them to the correct page
					end

					if costForOne==0 then print(zgname..": "..name.." does not use gold to buy. Please purchase yourself.") return end
					if numAvail~=-1 and numAvail < number then print(zgname..": "..number.." "..name.." are not avaliable at this time.") return end

					totalCost = totalCost + number*costForOne

					ItemsNeeded[name]={["needed"]=goals[i].count, ["amount"]=number, ["id"]=id, ["index"]=index, ["maxStack"]=maxStack, ["link"]=(select(2,GetItemInfo(id)))}

					break -- item found so go to next item
				else
					notAvail=true
				end
			end
			if notAvail then
				local link=(select(2,GetItemInfo(id)))
				print(zgname..": ".. link.. "|cffffee66 not available at this vendor or is out of stock.")
			end
		--elseif goals[i].action=="talk" and goals[i].npc and goals[i].npc:match("Auctioneer") then return --don't try to buy items from a vendor that are suppose to be from a auctioneer
		end
	end

	local playerMoney = GetMoney()
	local totalSlots=0
	for bag=1,4 do --All items of one type can go in the same games. So just check the last item.
		if CanGoInBag(id,bag) then
			totalSlots=totalSlots+GetContainerNumFreeSlots(bag)
		end
	end

	if neededSlots > totalSlots and totalCost > 0 then print(zgname..": Not enough room for "..neededSlots.. " stacks.") return end

	if playerMoney >= totalCost and totalCost > 0 then
		if ZGV.db.profile.autobuyframe then
			ShowBuyConfirm(ItemsNeeded,totalCost)--BuyItems(ItemsNeeded)
		else
			BuyItems()
		end
	elseif playerMoney < totalCost and totalCost > 0 then
		print(zgname..": You do not have enough money to buy all items.")
	end
end

local function OnEvent(self,event)
	if event=="BAG_UPDATE" then
		getValue()
	elseif event=="MERCHANT_SHOW" then
		if ZGV.db.profile.autosell then sellGrey() end
		if ZGV.db.profile.autobuy then findBuyItems() end
	end
end

local function CreateBuyConfirm()
	local buyConfirm=CreateFrame("Frame","BuyConfirm",UIParent)
		buyConfirm:SetBackdrop({bgFile="Interface\\DialogFrame\\UI-DialogBox-Background",edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", tile = true, edgeSize=32, tileSize = 1, insets = { left = 11, right = 12, top = 10, bottom = 11 }})
		buyConfirm:SetBackdropColor(1,0,0,1)
		buyConfirm:SetWidth(400)
		buyConfirm:ClearAllPoints()
		buyConfirm:SetPoint("TOP",0,-100)
		buyConfirm:SetFrameStrata("DIALOG")
		buyConfirm:Hide()

	local text=buyConfirm:CreateFontString("BuyConfirm_Text","ARTWORK","SystemFont_Med2")
		text:ClearAllPoints()
		text:SetPoint("TOP",0,-20)

	local text1=buyConfirm:CreateFontString("BuyConfirm_Text1","ARTWORK","SystemFont_Med2")
		text1:SetText("for ")

	local gold=buyConfirm:CreateFontString("BuyConfirm_Gold","ARTWORK","SystemFont_Med2")
		gold:ClearAllPoints()
		gold:SetPoint("TOPLEFT",text1,"TOPRIGHT",0,0)
		gold:SetText("0")

	local goldicon=buyConfirm:CreateTexture("BuyConfirm_GoldIcon", "OVERLAY")
		goldicon:ClearAllPoints()
		goldicon:SetTexture("Interface\\MoneyFrame\\UI-GoldIcon")
		goldicon:SetPoint("TOPLEFT", gold, "TOPRIGHT",2,0)
		goldicon:SetSize(12,12)

	local silver=buyConfirm:CreateFontString("BuyConfirm_Silver","ARTWORK","SystemFont_Med2")
		silver:ClearAllPoints()
		silver:SetPoint("TOPLEFT",goldicon,"TOPRIGHT",2,0)
		silver:SetText("0")

	local silvericon=buyConfirm:CreateTexture("BuyConfirm_SilverIcon", "OVERLAY")
		silvericon:ClearAllPoints()
		silvericon:SetTexture("Interface\\MoneyFrame\\UI-SilverIcon")
		silvericon:SetPoint("TOPLEFT", silver, "TOPRIGHT",2,0)
		silvericon:SetSize(12,12)

	local copper=buyConfirm:CreateFontString("BuyConfirm_Copper","ARTWORK","SystemFont_Med2")
		copper:ClearAllPoints()
		copper:SetPoint("TOPLEFT",silvericon,"TOPRIGHT",2,0)
		copper:SetText("0")

	local coppericon=buyConfirm:CreateTexture("BuyConfirm_CopperIcon", "OVERLAY")
		coppericon:ClearAllPoints()
		coppericon:SetTexture("Interface\\MoneyFrame\\UI-CopperIcon")
		coppericon:SetPoint("TOPLEFT", copper, "TOPRIGHT",2,0)
		coppericon:SetSize(12,12)

	local checkbutton=CreateFrame("CheckButton", "BuyConfirm_CheckButton",buyConfirm,"UICheckButtonTemplate")
		checkbutton:SetSize(20,20)
		checkbutton:ClearAllPoints()
		checkbutton:SetPoint("BOTTOM",buyConfirm,"BOTTOMLEFT",25,10)
		_G[checkbutton:GetName() .. "Text"]:SetText("Don't show again")

	local acceptbutton=CreateFrame("Button", "BuyConfirm_AcceptButton",buyConfirm,"UIPanelButtonTemplate")
		acceptbutton:SetSize(100,15)
		acceptbutton:ClearAllPoints()
		acceptbutton:SetPoint("LEFT",checkbutton,"RIGHT",135,0)
		acceptbutton:SetText("Accept")

	local declinebutton=CreateFrame("Button", "BuyConfirm_DeclineButton",buyConfirm,"UIPanelButtonTemplate")
		declinebutton:SetSize(100,15)
		declinebutton:ClearAllPoints()
		declinebutton:SetPoint("LEFT",acceptbutton,"RIGHT",10,0)
		declinebutton:SetText("Decline")

	local function escaped()
		buyConfirm:Hide()
		StaticPopup_DisplayedFrames[6]=nil
	end

	local function declined(self,key)
		local checked=checkbutton:GetChecked()
		if key=="LeftButton" then
			if checked then
				ZGV.db.profile.autobuy=false
				checkbutton:SetChecked(false)
			end
			buyConfirm:Hide()
			StaticPopup_DisplayedFrames[6]=nil
		end
	end

	local function accepted()
		local checked=checkbutton:GetChecked()
		if checked then
			ZGV.db.profile.autobuy=true
			ZGV.db.profile.autobuyframe=false
			checkbutton:SetChecked(false)
		end
		buyConfirm:Hide()
		StaticPopup_DisplayedFrames[6]=nil
		BuyItems()
	end

	acceptbutton:SetScript("OnClick",accepted)
	declinebutton:SetScript("OnClick",declined)

	hooksecurefunc("StaticPopup_EscapePressed",escaped)
end

CreateBuyConfirm()

ZygorGuidesViewer_sellButton:SetPoint("TOPLEFT", 60, -30)
ZygorGuidesViewer_sellButton:SetText("Sell Greys")
ZygorGuidesViewer_sellButton:SetScript("OnClick",sellGrey)

eventFrame:RegisterEvent("BAG_UPDATE")
eventFrame:RegisterEvent("MERCHANT_SHOW")
eventFrame:SetScript("OnEvent", OnEvent)