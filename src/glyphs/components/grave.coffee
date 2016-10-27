exports.glyphs['grave'] =
	glyphName: "grave"
	characterName: "GRAVE ACCENT"
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
	tags: [
		'component',
		'diacritic'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 45 / 80 ) * thickness
						angle: 75 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x - 125
					y: contours[0].nodes[0].expandedTo[0].y + 130
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: 45 + 'deg'
						distr: 0.25
					})
