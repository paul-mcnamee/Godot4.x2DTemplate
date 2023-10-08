extends Node

@onready var uuid: UUID = UUID.new()

# https://flatuicolors.com/palette/defo
const TEAL_LIGHT: Color = Color(26, 188, 156, 255) ## #1abc9c
const TEAL_DARK: Color = Color(22, 160, 133, 255) ## #16a085

const YELLOW_LIGHT: Color = Color(241, 196, 15, 255) ## #f1c40f
const YELLOW_DARK: Color = Color(243, 156, 18, 255) ## #f39c12

const GREEN_LIGHT: Color = Color(46, 204, 113, 255) ## #2ecc71
const GREEN_DARK: Color = Color(39, 174, 96, 255) ## #27ae60

const ORANGE_LIGHT: Color = Color(230, 126, 34, 255) ## #e67e22
const ORANGE_DARK: Color = Color(211, 84, 0, 255) ## #d35400

const BLUE_LIGHT: Color = Color(52, 152, 219, 255) ## #3498db
const BLUE_DARK: Color = Color(41, 128, 185, 255) ## #2980b9

const RED_LIGHT: Color = Color(231, 76, 60, 255) ## #e74c3c
const RED_DARK: Color = Color(192, 57, 43, 255) ## #c0392b

const PURPLE_LIGHT: Color = Color(155, 89, 182, 255) ## #9b59b6
const PURPLE_DARK: Color = Color(142, 68, 173, 255) ## #8e44ad

const WHITE_LIGHT: Color = Color(236, 240, 241, 255) ## #ecf0f1
const WHITE_DARK: Color = Color(189, 195, 199, 255) ## #bdc3c7

const NAVY_LIGHT: Color = Color(52, 73, 94, 255) ## #34495e
const NAVY_DARK: Color = Color(44, 62, 80, 255) ## #2c3e50

const GRAY_LIGHT: Color = Color(149, 165, 166, 255) ## #95a5a6
const GRAY_DARK: Color = Color(127, 140, 141, 255) ## #7f8c8d

const WHITE: Color = Color(0, 0, 0, 0) ## #FFFFFF
const BLACK: Color = Color(0, 0, 0, 255) ## #000000

func _ready():
	print ("globals uuid = ", uuid.as_string())
