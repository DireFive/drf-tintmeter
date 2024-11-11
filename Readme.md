# Thanks for downloading our script :heart:
# Add new item to ox_inventory/data/items.lua
# insert into ox_inventory tintmeter.png for picture in inventory ox_inventory/web/images
    
    ['tintmeter'] = {
		label = 'Tint Meter',
		weight = 800,
		stack = false,
		description = 'Tint meter for checking opacity of windows',
		client = {
			export = 'dr-tintmeter.TintMeter'
		}
	},

