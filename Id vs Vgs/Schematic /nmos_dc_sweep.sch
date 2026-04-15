v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 560 -400 1360 0 {flags=graph
y1=-8.4e-23
y2=8.2e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.8
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=i(vmeas)
color=4
dataset=-1
unitx=1
logx=0
logy=0
rainbow=1}
N 180 -80 180 -50 {lab=0}
N 180 -50 330 -50 {lab=0}
N 330 -50 500 -50 {lab=0}
N 500 -130 500 -50 {lab=0}
N 320 -130 320 -50 {lab=0}
N 180 -160 180 -140 {lab=#net1}
N 180 -160 280 -160 {lab=#net1}
N 500 -240 500 -190 {lab=#net2}
N 320 -160 360 -160 {lab=0}
N 360 -160 360 -110 {lab=0}
N 320 -110 360 -110 {lab=0}
N 320 -210 320 -190 {lab=#net3}
N 320 -290 320 -270 {lab=#net2}
N 320 -290 500 -290 {lab=#net2}
N 500 -290 500 -240 {lab=#net2}
C {sky130_fd_pr/nfet_01v8.sym} 300 -160 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {vsource.sym} 180 -110 0 0 {name=V1 value=3 savecurrent=false}
C {vsource.sym} 500 -160 0 0 {name=V2 value=3 savecurrent=false}
C {gnd.sym} 330 -50 0 0 {name=l1 lab=0}
C {ammeter.sym} 320 -240 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {code_shown.sym} 290 -420 0 0 {name=s1 only_toplevel=false value=".dc v2 0 1.8 0.01 v1 0 1 0.05
.save all 
.end
"}
C {sky130_fd_pr/corner.sym} 170 -410 0 0 {name=CORNER only_toplevel=false corner=tt}
