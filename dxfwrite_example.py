from dxfwrite import DXFEngine as dxf

f = dxf.drawing('hello_world.dxf')
f.header['$INSUNITS'] = 4
f.add_style('estilo', font='Roboto Black')

f.add_layer('CUT', color = 7)
f.add(dxf.rectangle(insert=(0, 0), width=32, height=20, layer='CUT'))
f.add(dxf.circle(radius=1.0, center=(3,10)))

f.add_layer('SCAN', color = 5)
f.add(dxf.text('hello',
               insert=(5,11),
               height=8,
               style='estilo',
               layer='SCAN'))
f.add(dxf.text('world',
               insert=(5,1),
               height=8,
               style='estilo',
               layer='SCAN'))

f.save()