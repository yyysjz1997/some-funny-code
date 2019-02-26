val = get(hpop,'Value');
if val == 1
    colormap(flag)
elseif val == 2
    colormap(hot)
elseif val == 3
    colormap(cool)
elseif val == 4
    colormap(gray)
end