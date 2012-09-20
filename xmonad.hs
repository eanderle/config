import XMonad
import XMonad.Layout
import XMonad.Layout.Grid
import XMonad.Util.EZConfig
import XMonad.Hooks.ManageHelpers
import XMonad.Config.Desktop
import XMonad.Layout.NoBorders
import XMonad.Layout.ThreeColumns
import XMonad.Hooks.ManageDocks
import qualified XMonad.StackSet as W
import qualified Data.Map        as M

myLayoutHook = smartBorders (tiled ||| Grid ||| Full ||| ThreeCol 1 (3/100) (1/2))
  where
	-- default tiling algorithm partitions the screen into two panes
	tiled   = Tall nmaster delta ratio
	-- The default number of windows in the master pane
	nmaster = 1
	-- Default proportion of screen occupied by master pane
	ratio   = 1/2
	-- Percent of screen to increment by when resizing panes
	delta   = 3/100

main = xmonad $ defaultConfig
	{
	terminal = "lxterminal"
	, modMask = mod4Mask
	, manageHook = manageDocks
	, layoutHook = avoidStruts $ myLayoutHook
	}
	`additionalKeys`
	[ ((mod3Mask, xK_space), spawn "exe=`dmenu_path | dmenu` && eval \"exec $exe\"") ]
