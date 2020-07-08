path='data/ps/functions/tools/com3d/'

#size
f=open(path+'size.mcfunction','w')
for i in range(1,11):
    f.write('execute if score $tools.size PS.mem matches '+str(i)+' run function ps:tools/com3d/size/'+str(i)+'\n')
    ff=open(path+'size/'+str(i)+'.mcfunction','w')
    i-=1
    c=i/2
    for x in range(0,2*i+1):
        for y in range(0,2*i+1):
            for z in range(0,2*i+1):
                r=((x-c)**2+(y-c)**2+(z-c)**2)**0.5
                if r < c+0.5:
                    ff.write(
                        'execute positioned ~'+str(x-c)+' ~'+str(y-c)+' ~'+str(z-c)+' run summon area_effect_cloud ~ ~ ~ {Radius:0,Tags:["PS.tools.stroke"]}'+'\n'
                    )
    ff.close()
f.close()

#sizeh
f=open(path+'sizeh.mcfunction','w')
for i in range(1,11):
    f.write('execute if score $tools.size PS.mem matches '+str(i)+' run function ps:tools/com3d/sizeh/'+str(i)+'\n')
    ff=open(path+'sizeh/'+str(i)+'.mcfunction','w')
    i-=1
    c=i/2
    for x in range(0,2*i+1):
        for y in range(0,2*i+1):
            for z in range(0,2*i+1):
                r=((x-c)**2+(y-c)**2+(z-c)**2)**0.5
                if c-0.8 <= r and r < c+0.5:
                    ff.write(
                        'execute positioned ~'+str(x-c)+' ~'+str(y-c)+' ~'+str(z-c)+' run summon area_effect_cloud ~ ~ ~ {Radius:0,Tags:["PS.tools.stroke"]}'+'\n'
                    )
    ff.close()
f.close()

#sizehp
f=open(path+'sizehp.mcfunction','w')
for i in range(1,11):
    f.write('execute if score $tools.size PS.mem matches '+str(i)+' run function ps:tools/com3d/sizehp/'+str(i)+'\n')
    ff=open(path+'sizehp/'+str(i)+'.mcfunction','w')
    i-=1
    c=i/2
    for x in range(0,2*i+1):
        for y in range(0,2*i+1):
            for z in range(0,2*i+1):
                r=((x-c)**2+(y-c)**2+(z-c)**2)**0.5
                if c-0.5 <= r and r < c+0.5:
                    ff.write(
                        'execute positioned ~'+str(x-c)+' ~'+str(y-c)+' ~'+str(z-c)+' run summon area_effect_cloud ~ ~ ~ {Radius:0,Tags:["PS.tools.stroke"]}'+'\n'
                    )
    ff.close()
f.close()