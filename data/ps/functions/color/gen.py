import numpy as np
import cv2 as cv
import json
import os

path='data/ps/functions/color/'
zg=0.8
zs=0.5



bm=[]
for f in os.listdir(path+'_data/blockstates'):
    Jbs=json.load(open(path+'_data/blockstates/'+f,'r'))
    if "variants" in Jbs:
        if "" in Jbs["variants"]:
            if type(Jbs["variants"][""])==list:
                for m in Jbs["variants"][""]:
                    bm.append(m["model"])
            else:
                bm.append(Jbs["variants"][""]["model"])
        for axis in ['x','y','z']:
            if "axis="+axis in Jbs["variants"]:
                bm.append(Jbs["variants"]["axis="+axis]["model"])

bt={}
for m in bm:
    Jbm=json.load(open(path+'_data/models/'+m.replace('minecraft:','')+'.json','r'))
    if "parent" in Jbm:
        if Jbm["parent"]=="minecraft:block/cube_all":
            bt[m.split('/')[-1]]=Jbm["textures"]["all"]
        elif Jbm["parent"]=="minecraft:block/cube_column":
            if Jbm["textures"]["end"]==Jbm["textures"]["side"]:
                bt[m.split('/')[-1]]=Jbm["textures"]["side"]

bc=[]
for bl in bt:
    i=cv.imread(path+'_data/textures/'+bt[bl].replace('minecraft:','')+'.png',-1)
    m=np.array(i)
    if i.shape[2] == 4:
        ma=m[:,:,3]
        if list(np.argwhere(ma<255))!=[]:
            continue
    
    r,sr=cv.meanStdDev(m[:,:,2])
    g,sg=cv.meanStdDev(m[:,:,1])
    b,sb=cv.meanStdDev(m[:,:,0])
    s=sr+sg+sb

    gradr=cv.Laplacian(np.tile(m[:,:,0],(3,3)),-1)
    gradg=cv.Laplacian(np.tile(m[:,:,1],(3,3)),-1)
    gradb=cv.Laplacian(np.tile(m[:,:,2],(3,3)),-1)
    grad=np.mean(gradr+gradg+gradb)/3
    print([bl,r,g,b,grad,s])
    bc.append([bl,r,g,b,grad,s])
    
c2b={}
b2c={}
for r in range(0,8):
    for g in range(0,8):
        for b in range(0,8):
            rr=r*32+r/7*32
            gg=g*32+r/7*32
            bb=b*32+r/7*32
            rec=255
            bo=''
            for bl in bc:
                dist=((bl[1]-rr)**2+(bl[2]-gg)**2+(bl[3]-bb)**2+(bl[4]*zg)**2+(bl[5]*zs)**2)**0.5
                if rec > dist:
                    rec=dist
                    bo=bl[0]
            c2b[r,g,b]=bo
            if bo not in b2c:
                b2c[bo]=[r,g,b,rec]
            elif b2c[bo][3] > rec:
                b2c[bo]=[r,g,b,rec]

fr=open(path+'getblock/call.mcfunction','w')
for r in range(0,8):
    fr.write('execute if score @s PS.color.r matches '+str(r)+' run function ps:color/getblock/r'+str(r)+'\n')
    fg=open(path+'getblock/r'+str(r)+'.mcfunction','w')
    for g in range(0,8):
        fg.write('execute if score @s PS.color.g matches '+str(g)+' run function ps:color/getblock/r'+str(r)+'g'+str(g)+'\n')
        fb=open(path+'getblock/r'+str(r)+'g'+str(g)+'.mcfunction','w')
        for b in range(0,8):
            fb.write('execute if score @s PS.color.b matches '+str(b)+' run setblock ~ ~ ~ minecraft:'+c2b[(r,g,b)]+'\n')
        fb.close()
    fg.close()
fr.write('function ps:color/writeraw'+'\n')
fr.close()

fr=open(path+'getitem/call.mcfunction','w')
for r in range(0,8):
    fr.write('execute if score @s PS.color.r matches '+str(r)+' run function ps:color/getitem/r'+str(r)+'\n')
    fg=open(path+'getitem/r'+str(r)+'.mcfunction','w')
    for g in range(0,8):
        fg.write('execute if score @s PS.color.g matches '+str(g)+' run function ps:color/getitem/r'+str(r)+'g'+str(g)+'\n')
        fb=open(path+'getitem/r'+str(r)+'g'+str(g)+'.mcfunction','w')
        for b in range(0,8):
            fb.write('execute if score @s PS.color.b matches '+str(b)+' run data modify entity @s HandItems[0] set value {id:"minecraft:'+c2b[(r,g,b)]+'",Count:1b}'+'\n')
        fb.close()
    fg.close()
fr.close()


Jc=[]
f=open(path+'getcolor/call_.mcfunction','w')
for bl in b2c:
    Jc.append('minecraft:'+bl)
    f.write('execute if score #color.got PS.mem matches 0 if block ~ ~ ~ minecraft:'+bl+' run function ps:color/getcolor/blocks/'+bl+'\n')
    ff=open(path+'getcolor/blocks/'+bl+'.mcfunction','w')
    ff.write(
        'scoreboard players set @s PS.color.r '+str(b2c[bl][0])+'\n'
        'scoreboard players set @s PS.color.g '+str(b2c[bl][1])+'\n'
        'scoreboard players set @s PS.color.b '+str(b2c[bl][2])+'\n'
        'scoreboard players set #color.got PS.mem 1'+'\n'
    )
    ff.close()
f.close()
json.dump({"values":Jc},open('data/ps/tags/blocks/colored.json','w'),indent=4)

f=open('data/ps/functions/control/components/clrmap/new_all.mcfunction','w')
for r in range(0,8):
    for g in range(0,8):
        for b in range(0,8):
            f.write('summon armor_stand ~'+str(r)+' ~'+str(g)+' ~'+str(b)+' {Tags:["PS.ctrl.new","PS.ctrl","PS.players.owned","PS.players.belonging","PS.ctrl.clrmp"],Pose:{RightArm:[-15f,225f,0f]},Marker:1b,Invisible:1b,Small:1b,HandItems:[{id:"'+c2b[(r,g,b)]+'",Count:1b},{}]}'+'\n')
f.close()