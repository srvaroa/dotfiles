-- https://lorinstechblog.wordpress.com/2020/03/19/automating-slack-status-changes-on-macos/
tell script "Slack"
	focus workspace "New Relic"
	set status "at lunch" with icon ":lunch:"
end tell
