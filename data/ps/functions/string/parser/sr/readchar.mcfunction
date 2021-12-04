#move next char to current piece

data modify storage ps:str parser.out[-1].text append from storage ps:str parser.in[0]
data remove storage ps:str parser.in[0]