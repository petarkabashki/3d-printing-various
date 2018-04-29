import bpy
import math 
import mathutils

cursor_loc = bpy.context.scene.cursor_location


# creates copies and rotates them around the cursor
obj = bpy.data.objects['Cylinder.001']

slots = [obj]

for i in range(1,23):    
    mat = (mathutils.Matrix.Translation(cursor_loc) *
           mathutils.Matrix.Rotation(math.radians(30.0 * i), 4, 'Z') *
           mathutils.Matrix.Translation(-cursor_loc))
    ob = obj.copy()
    slots.append(ob)
    ob.data = obj.data.copy()
    ob.matrix_world = mat * obj.matrix_world

    bpy.context.scene.objects.link(ob)

bpy.context['slots'] = slots

#
# carve 
#

import bpy
import math 
import mathutils

cursor_loc = bpy.context.scene.cursor_location

# creates copies and rotates them around the cursor
obj = bpy.data.objects['Cylinder.001']
base = bpy.data.objects['Cylinder.003']

for i in range(1,24):
	mat = (mathutils.Matrix.Translation(cursor_loc) *
		mathutils.Matrix.Rotation(math.radians(30.0), 4, 'Z') *
		mathutils.Matrix.Translation(-cursor_loc))
	obj.matrix_world = mat * obj.matrix_world
	modifier = base.modifiers.new(type="BOOLEAN", name="slot")
	modifier.object = obj
	modifier.operation = 'DIFFERENCE'
	# bpy.ops.object.modifier_apply(apply_as='DATA', modifier="slot")	

	# bpy.ops.object.modifier_add(type='BOOLEAN')
	# bpy.context.object.modifiers["Boolean"].operation = 'DIFFERENCE'
	# bpy.context.object.modifiers["Boolean"].solver = 'CARVE'
	# bpy.ops.object.modifier_apply(apply_as='DATA', modifier="Boolean")

