pro blend

!p.charsize=1.6
!p.thick=6.0
!x.thick=4.0
!y.thick=4.0

!p.font=0
set_plot,'ps'

device,bits=8,$
  /color,$
  filename='blend_n.ps',$
  xsize=14,ysize=12

device,/HELVETICA,font_index=3
device,/SYMBOL,font_index=4

plot,[0],[0],/nodata,$
  xstyle=1,xrange=[0,6],$
  ystyle=1,yrange=[0.0,1.0],$
  xtitle='!3s',ytitle='',$
  xmargin=[4,2],$
  ymargin=[3,1]

np = 100

f=fltarr(np)
tt=fltarr(np)

for i=0,np-1 do begin
    
    t = 3.0*i/(np-1.0)
    tt[i] = t    

    if t lt 1.0 then begin
        f[i] = t^2/2.0
    endif

    if t ge 1.0 and t lt 2.0 then begin
        f[i] = -1.5+3.0*t-t^2
    endif

    if t ge 2.0 then begin
        f[i] = 0.5*(3.0-t)^2
    endif

endfor

oplot,tt-2,f
oplot,tt-1,f,linestyle=1
oplot,tt,f
oplot,tt+1,f,linestyle=1
oplot,tt+2,f
oplot,tt+3,f,linestyle=1
oplot,tt+4,f
oplot,tt+5,f,linestyle=1

x0 = 0.33
y0 = 0.8

xyouts,x0,y0,'N!d-1!n'
xyouts,x0+1,y0,'N!d0!n'
xyouts,x0+2,y0,'N!d1!n'
xyouts,x0+3,y0,'N!d2!n'
xyouts,x0+4,y0,'N!d3!n'
xyouts,x0+5,y0,'N!d4!n'

device,/close

set_plot,'ps'

device,bits=8,$
  /color,$
  filename='blend_f.ps',$
  xsize=14,ysize=12

device,/HELVETICA,font_index=3
device,/SYMBOL,font_index=4

plot,[0],[0],/nodata,$
  xstyle=1,xrange=[0,6],$
  xticks=2,xtickname=['-!4p!3','0','!4p!3'],$
  ystyle=1,yrange=[-1.0,6.0],$
  yticks=7,$
  ytickname=[' ','F!d1!n','F!d2!n','F!d3!n',$
             'F!d4!n','F!d5!n','F!d6!n',' '],$
  xtitle='!4q!3',$
  xmargin=[4,2],$
  ymargin=[3,1]



dy = 1.0

oplot,[0,6],[0,0],linestyle=1
oplot,[0,6],[0,0]+dy,linestyle=1
oplot,[0,6],[0,0]+2*dy,linestyle=1
oplot,[0,6],[0,0]+3*dy,linestyle=1
oplot,[0,6],[0,0]+4*dy,linestyle=1
oplot,[0,6],[0,0]+5*dy,linestyle=1

;;f1;
oplot,tt-2,f
oplot,[1,4],[0,0]
oplot,tt+4,-f  

;;f2;
oplot,tt-1,f+dy
oplot,[2,5],[0,0]+dy
oplot,tt+5,-f+dy  

;;f3;
oplot,tt,f+2*dy
oplot,[3,6],[0,0]+2*dy

;;f4;
oplot,tt+1,f+3*dy
oplot,[4,6],[0,0]+3*dy
oplot,[0,1],[0,0]+3*dy

;;f5;
oplot,tt+2,f+4*dy
oplot,[5,6],[0,0]+4*dy
oplot,[0,2],[0,0]+4*dy

;;f6;
oplot,tt+3,f+5*dy
oplot,[0,3],[0,0]+5*dy

device,/close

end
