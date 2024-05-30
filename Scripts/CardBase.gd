extends MarginContainer

@onready var CardDatabase = preload("res://Scripts/CardDatabase.gd").new()
var Cardname = 'Clubs'

@onready var CardInfo = CardDatabase.DATA[CardDatabase.get(Cardname)]
@onready var CardImg = str("res://Assets/2-",Cardname,".png")
@onready var BackImg = str("res://Assets/Back.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	print(CardImg)
	var CardSize = size
	$Back.texture = load(BackImg)
	$Back.scale = $Front.scale
	$Back.position = $Front.position
	$Back.texture_filter = $Front.texture_filter


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
		
