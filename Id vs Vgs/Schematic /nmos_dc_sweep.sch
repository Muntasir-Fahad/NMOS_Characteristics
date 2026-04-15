v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 440 -450 1240 -50 {flags=graph
y1=-1.1e-53
y2=0.00041
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
dataset=-1
unitx=1
logx=0
logy=0
color=5
node=i(vmeas)
rainbow=1}
N 150 -60 270 -60 {lab=0}
N 150 -90 150 -60 {lab=0}
N 270 -130 270 -60 {lab=0}
N 270 -60 410 -60 {lab=0}
N 410 -130 410 -60 {lab=0}
N 410 -280 410 -190 {lab=#net1}
N 370 -280 410 -280 {lab=#net1}
N 270 -280 310 -280 {lab=#net2}
N 270 -280 270 -190 {lab=#net2}
N 270 -160 300 -160 {lab=0}
N 300 -160 300 -110 {lab=0}
N 270 -110 300 -110 {lab=0}
N 150 -160 230 -160 {lab=#net3}
N 150 -160 150 -150 {lab=#net3}
C {sky130_fd_pr/nfet_01v8.sym} 250 -160 0 0 {name=M1
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
C {vsource.sym} 150 -120 0 0 {name=V1 value=3 savecurrent=false}
C {vsource.sym} 410 -160 0 0 {name=V2 value=3 savecurrent=false}
C {sky130_fd_pr/corner.sym} 10 -290 0 0 {name=CORNER only_toplevel=false corner=tt}
C {gnd.sym} 270 -60 0 0 {name=l1 lab=0}
C {ammeter.sym} 340 -280 1 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {code_shown.sym} 20 -380 0 0 {name=s1 only_toplevel=false value=".include nmos_Id_vs_Vgs.save 
.dc v1 0 1.8 0.01 v2 0 1.8 0.1
.save all 
.end
"}
C {launcher.sym} 320 -410 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/nmos_Id_vs_Vgs.raw "
}
C {sky130_fd_pr/annotate_fet_params.sym} 160 -340 0 0 {name=annot1 ref=M1}
