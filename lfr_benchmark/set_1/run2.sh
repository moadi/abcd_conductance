#!/bin/bash
for i in {1..50}
do
	echo "Run $i"
	#"/home/mua193/Desktop/lfr_benchmark/set_1/ant_community" $1 >> seed
	read -ra values <<< `./ant_community 5000_s_0.3.net`
	seed=${values[0]}
	nmi=`./nmi.r 5000_s_0.3_comm.dat /home/mua193/Desktop/NMI/output.dat`
	echo $nmi-$seed $'\r' >> ./set1_results/5000_s_0.3_data
done

for i in {1..50}
do
	echo "Run $i"
	#"/home/mua193/Desktop/lfr_benchmark/set_1/ant_community" $1 >> seed
	read -ra values <<< `./ant_community 5000_s_0.4.net`
	seed=${values[0]}
	nmi=`./nmi.r 5000_s_0.4_comm.dat /home/mua193/Desktop/NMI/output.dat`
	echo $nmi-$seed $'\r' >> ./set1_results/5000_s_0.4_data
done

for i in {1..50}
do
	echo "Run $i"
	#"/home/mua193/Desktop/lfr_benchmark/set_1/ant_community" $1 >> seed
	read -ra values <<< `./ant_community 5000_s_0.5.net`
	seed=${values[0]}
	nmi=`./nmi.r 5000_s_0.5_comm.dat /home/mua193/Desktop/NMI/output.dat`
	echo $nmi-$seed $'\r' >> ./set1_results/5000_s_0.5_data
done

for i in {1..50}
do
	echo "Run $i"
	#"/home/mua193/Desktop/lfr_benchmark/set_1/ant_community" $1 >> seed
	read -ra values <<< `./ant_community 5000_s_0.6.net`
	seed=${values[0]}
	nmi=`./nmi.r 5000_s_0.6_comm.dat /home/mua193/Desktop/NMI/output.dat`
	echo $nmi-$seed $'\r' >> ./set1_results/5000_s_0.6_data
done

for i in {1..50}
do
	echo "Run $i"
	#"/home/mua193/Desktop/lfr_benchmark/set_1/ant_community" $1 >> seed
	read -ra values <<< `./ant_community 5000_s_0.7.net`
	seed=${values[0]}
	nmi=`./nmi.r 5000_s_0.7_comm.dat /home/mua193/Desktop/NMI/output.dat`
	echo $nmi-$seed $'\r' >> ./set1_results/5000_s_0.7_data
done

for i in {1..50}
do
	echo "Run $i"
	#"/home/mua193/Desktop/lfr_benchmark/set_1/ant_community" $1 >> seed
	read -ra values <<< `./ant_community 5000_s_0.8.net`
	seed=${values[0]}
	nmi=`./nmi.r 5000_s_0.8_comm.dat /home/mua193/Desktop/NMI/output.dat`
	echo $nmi-$seed $'\r' >> ./set1_results/5000_s_0.8_data
done
