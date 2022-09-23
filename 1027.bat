psbasemap -R119/123/21/26 -Jm4 -X5.0 -Y7 -P -K -Lf119.5/22.5/23.5/50 -Ba01f0.5:"(c)":/a1f0.5WSNE > 1027.ps
gawk "{print $1,$2}" 2.txt | psxy -R -Jm -Sc.5 -O -K >> 1027.ps
pscoast -R -Jm -O -K -Dh -V -W2 >> 1027.ps
echo 121 24 310 1.5   > 1.v
psxy 1.v -R -Jm -SV -O -K >> 1027.ps
echo 121   23 > 2.v
echo 121.3 24 >> 2.v
psxy 2.v -R -Jm -O -K -M -Sf0.4/0.2R -W2 -V >> 1027.ps
echo 121.3 24.5 16 0 1 1 Taiwan > 3.v
pstext 3.v -R -Jm -O -V >> 1027.ps

gsview32 1027.ps


