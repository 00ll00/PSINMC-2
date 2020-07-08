import json
import os

fpath='data/ps/functions/tools'
Jt=json.load(open(fpath+'/tools.json','r'))

def genitem(t,i):
    Ji={"PS_tool":True,"PS_tool_id":i}
    if 'modevect' in t:
        Ji['PS_tool_modevect']=t['modevect']
    if 'modefixed' in t:
        Ji['PS_tool_modefixed']=t['modefixed']
    Ji['display']={
        'Name':json.dumps(t['name'])
    }
    if 'event_q' in t:
        Ji['PS_tool_event_q']=t['event_q']
    if 'event_q' in t:
        Ji['PS_tool_event_f']=t['event_f']
    if 'event_qws' in t:
        Ji['PS_tool_event_qws']=t['event_qws']
    if 'event_fws' in t:
        Ji['PS_tool_event_fws']=t['event_fws']

    if 'actionbar' in t:
        Ji['PS_actionbar']=t['actionbar']

    return 'minecraft:carrot_on_a_stick'+json.dumps(Ji)

t_nid=0

#events 
f_dn=open(fpath+'/events/rmb_dn/call.mcfunction','w')
f_hd=open(fpath+'/events/rmb_hd/call.mcfunction','w')
f_up=open(fpath+'/events/rmb_up/call.mcfunction','w')
f_hdws=open(fpath+'/events/rmb_hd_with_sft/call.mcfunction','w')
f_upws=open(fpath+'/events/rmb_up_with_sft/call.mcfunction','w')

f_slc=open(fpath+'/events/change/selected.mcfunction','w')
f_dsl=open(fpath+'/events/change/deselect.mcfunction','w')

f_attr=open(fpath+'/../menu/attr/call.mcfunction','w')

for t in Jt:

    t_nid+=1
    t_id=t["id"]

    if 'dn' in t['mouse_events']:
        f_dn.write(
            'execute if score @s PS.tools.type matches '+str(t_nid)+' run function ps:tools/'+t_id+'/dn'+'\n'
        )
    if 'hd' in t['mouse_events']:
        f_hd.write(
            'execute if score @s PS.tools.type matches '+str(t_nid)+' run function ps:tools/'+t_id+'/hd'+'\n'
        )
    if 'up' in t['mouse_events']:
        f_up.write(
            'execute if score @s PS.tools.type matches '+str(t_nid)+' run function ps:tools/'+t_id+'/up'+'\n'
        )
    if 'hdws' in t['mouse_events']:
        f_hdws.write(
            'execute if score @s PS.tools.type matches '+str(t_nid)+' run function ps:tools/'+t_id+'/hdws'+'\n'
        )
    else:
        f_hdws.write(
            'execute if score @s PS.tools.type matches '+str(t_nid)+' run function ps:tools/'+t_id+'/hd'+'\n'
        )
    if 'upws' in t['mouse_events']:
        f_hdws.write(
            'execute if score @s PS.tools.type matches '+str(t_nid)+' run function ps:tools/'+t_id+'/upws'+'\n'
        )
    else:
        f_hdws.write(
            'execute if score @s PS.tools.type matches '+str(t_nid)+' run function ps:tools/'+t_id+'/up'+'\n'
        )

    tpath=fpath+'/'+t_id
    if not os.path.exists(tpath):
        os.mkdir(tpath)

    t_item=genitem(t,t_nid)

    f_repl=open(tpath+"/repl.mcfunction","w")
    f_repl.write(
        'clear @s minecraft:carrot_on_a_stick{PS_tool_id:'+str(t_nid)+'}'+'\n'
        'replaceitem entity @s weapon.mainhand '+t_item+'\n'
    )
    f_repl.close()
    
    f_give=open(tpath+"/give.mcfunction","w")
    f_give.write(
        'clear @s minecraft:carrot_on_a_stick{PS_tool_id:'+str(t_nid)+'}'+'\n'
        'give @s '+t_item+'\n'
    )
    f_give.close()

    f_attr.write(
        'execute if score @s PS.tools.type matches '+str(t_nid)+' run function ps:menu/attr/'+t_id+'\n'
    )

    if 'selected' in t:
        f_slc.write(
            'execute if score @s PS.tools.type matches '+str(t_nid)+' run function ps:tools/'+t_id+'/slct'+'\n'
        )
        ff_slc=open(fpath+'/'+t_id+'/slct.mcfunction','w')
        for cmd in t['selected']:
            ff_slc.write(cmd+'\n')
        ff_slc.close()
    if 'deselect' in t:
        f_slc.write(
            'execute if score @s PS.tools.type matches '+str(t_nid)+' run function ps:tools/'+t_id+'/dslc'+'\n'
        )
        ff_dsl=open(fpath+'/'+t_id+'/dslc.mcfunction','w')
        for cmd in t['deselect']:
            ff_slc.write(cmd+'\n')
        ff_dsl.close()

        

f_dn.close()
f_hd.close()
f_up.close()
f_hdws.close()
f_upws.close()

f_slc.close()
f_dsl.close()

f_attr.close()