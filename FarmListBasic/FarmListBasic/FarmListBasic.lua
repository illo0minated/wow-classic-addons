-- Author      : illoOminated
-- Create Date : 9/28/2020 9:02:59 PM

SLASH_FARMLIST1 = "/farmlist";
SLASH_FARMLIST2 = "/fl";

SlashCmdList["FARMLIST"] = function(msg)
	print("Test");
	FarmListClassic_MainFrame:Show();
end

function Button_Close_OnClick ()
	FarmListClassic_MainFrame:Hide();
end