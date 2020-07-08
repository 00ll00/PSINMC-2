import json
import os

fpath='data/ps/functions/menu'
lpath='F:\\Minecraft\\.minecraft\\resourcepacks\\PSINMC 2.0\\assets\\ps\\lang\\zh_cn.json'
Jm=json.load(open(fpath+'/menu.json','r'))
Jl=json.loads(open(lpath,'r',encoding='utf-8').read())

event_mmi={}
event_mmo={}
event_rmb={}
event_lmb={}
event_exit={}

def gen(node,path):
    npath=path.replace('/','.')
    if not os.path.exists(fpath+path):
        os.mkdir(fpath+path)

    if node['text']['translate'] not in Jl:
        Jl[node['text']['translate']]=''


    Tags=["PS.menu","PS.menu_","PS.menu.focusable","PS.players.owned","PS.menu"+npath]
    tag={"path":npath,"type":node['type'],"text":json.dumps(node['text'])}

    if 'event_mmi' in node:
        if 'action' in node['event_mmi']:
            Tags.append('PS.menu.event.mmi')
            event_mmi[path]=node['event_mmi']

    if 'event_mmo' in node:
        if 'action' in node['event_mmo']:
            Tags.append('PS.menu.event.mmo')
            event_mmo[path]=node['event_mmo']

    if 'event_lmb' in node:
        if 'action' in node['event_lmb']:
            Tags.append('PS.menu.event.lmb')
            event_lmb[path]=node['event_lmb']

    if 'event_rmb' in node:
        if 'action' in node['event_rmb']:
            Tags.append('PS.menu.event.rmb')
            event_rmb[path]=node['event_rmb']

    if 'event_exit' in node:
        if 'action' in node['event_exit']:
            Tags.append('PS.menu.event.exit')
            event_exit[path]=node['event_exit']

    if 'next' in node:
        f_sn=open(fpath+path+'/shownext.mcfunction','w')
        for n in node['next']:
            f_sn.write(
                'execute positioned ^'+str(n['offset'][0])+' ^'+str(n['offset'][1])+' ^ run function ps:menu'+path+'/'+n['id']+'/show'+'\n'
            )
            gen(n,path+'/'+n['id'])
        f_sn.close()
    else:
        Tags.append('PS.menu.end')

    f_show=open(fpath+path+'/show.mcfunction','w')
    if node['type']=='item': #type: item
        f_show.write(
            """summon armor_stand ~ ~ ~ {"CustomName":'"""+json.dumps(node['text'])+"""',"CustomNameVisible":true,Invisible:true,Marker:true,Tags:"""+json.dumps(Tags)+',ArmorItems:[{id:"minecraft:stone","Count":1b,"tag":'+json.dumps(tag)+'},{},{},{}]}'+'\n'
        )
    elif node['type']=='button': #type: button
        pass
    f_show.write(
        """scoreboard players operation @e[tag=PS.menu_] PS.players.owner = @s PS.players.owner"""+'\n'
        """scoreboard players operation @e[tag=PS.menu_] PS.menu.layer = @s PS.menu.layer"""+'\n'
        """scoreboard players add @e[tag=PS.menu_] PS.menu.layer 1"""+'\n'
        """tp @e[tag=PS.menu_] ~ ~ ~ ~ ~"""+'\n'
        """tag @e[tag=PS.menu_] remove PS.menu_"""+'\n'
    )
    f_show.close()

def gen_event():

#event: mouse move in
    lenlist=[]
    for e in event_mmi:
        action=event_mmi[e]['action']
        if 'value' in event_mmi[e]:
            value=event_mmi[e]['value']
        if action=='show_next':
            value='function ps:menu'+e+'/shownext'

        l=len(e)
        if l not in lenlist:
            lenlist.append(l)
            f_l=open(fpath+'/events/mmi/len/'+str(l)+'.mcfunction','w')
        else:
            f_l=open(fpath+'/events/mmi/len/'+str(l)+'.mcfunction','a')
        f_l.write(
            'execute if entity @s[tag=PS.menu'+e.replace('/','.')+'] at @s run '+value+'\n'
        )
        f_l.close()

    f_call=open(fpath+'/events/mmi/call.mcfunction','w')
    f_call.write(
        'execute store result score $menu.tag.len PS.mem run data get entity @s ArmorItems[0].tag.path'+'\n'
    )
    for l in lenlist:
        f_call.write(
            'execute if score $menu.tag.len PS.mem matches '+str(l)+' run function ps:menu/events/mmi/len/'+str(l)+'\n'
        )
    f_call.close()

#event: mouse move out

#event: left mouse button click
    lenlist=[]
    for e in event_lmb:
        action=event_lmb[e]['action']
        if 'value' in event_lmb[e]:
            value=event_lmb[e]['value']
        if action=='repl_tool':
            value='function ps:tools/'+e.split('/')[-1]+'/repl'

        l=len(e)
        if l not in lenlist:
            lenlist.append(l)
            f_l=open(fpath+'/events/lmb/len/'+str(l)+'.mcfunction','w')
        else:
            f_l=open(fpath+'/events/lmb/len/'+str(l)+'.mcfunction','a')
        f_l.write(
            'execute if entity @s[tag=PS.menu'+e.replace('/','.')+'] as @a[tag=PS.players.op] at @s run '+value+'\n'
        )
        f_l.close()

    f_call=open(fpath+'/events/lmb/call.mcfunction','w')
    f_call.write(
        'tag @s add PS.menu.clicked'+'\n'
        'execute store result score $menu.tag.len PS.mem run data get entity @s ArmorItems[0].tag.path'+'\n'
    )
    for l in lenlist:
        f_call.write(
            'execute if score $menu.tag.len PS.mem matches '+str(l)+' run function ps:menu/events/lmb/len/'+str(l)+'\n'
        )
    f_call.close()

#event: right mouse button click

#event: exit menu
    lenlist=[]
    for e in event_exit:
        action=event_exit[e]['action']
        if 'value' in event_exit[e]:
            value=event_exit[e]['value']
        if action=='repl_tool':
            value='function ps:tools/'+e.split('/')[-1]+'/repl'

        l=len(e)
        if l not in lenlist:
            lenlist.append(l)
            f_l=open(fpath+'/events/exit/len/'+str(l)+'.mcfunction','w')
        else:
            f_l=open(fpath+'/events/exit/len/'+str(l)+'.mcfunction','a')
        f_l.write(
            'execute if entity @s[tag=PS.menu'+e.replace('/','.')+'] as @a[tag=PS.players.op] at @s run '+value+'\n'
        )
        f_l.close()

    f_call=open(fpath+'/events/exit/call.mcfunction','w')
    f_call.write(
        'execute store result score $menu.tag.len PS.mem run data get entity @s ArmorItems[0].tag.path'+'\n'
    )
    for l in lenlist:
        f_call.write(
            'execute if score $menu.tag.len PS.mem matches '+str(l)+' run function ps:menu/events/exit/len/'+str(l)+'\n'
        )
    f_call.close()

if __name__ == "__main__":
    for n in Jm:
        gen(n,'/'+n['id'])
    gen_event()
    json.dump(Jl,open(lpath,'w'),indent=4,sort_keys=True)
