# 🚗Fivem vehicle tint meter script
### 🛡️STANDALONE
### 👀For check others players windows opacity in fivem
### ⚙️Requirements - ox_lib
### Thanks for downloading our script :heart:

# 📷Preview - https://www.youtube.com/watch?v=bjej3wEYGkk

# Instruction for install 
## insert into ox_inventory tintmeter.png for picture in inventory ox_inventory/web/images

### Add new item to ox_inventory/data/items.lua
    ['tintmeter'] = {
		label = 'Tint Meter',
		weight = 800,
		stack = false,
		description = 'Tint meter for checking opacity of windows',
		client = {
			export = 'drf-tintmeter.TintMeter'
		}
	},

