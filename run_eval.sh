rm lpips_vgg.txt
rm clip_s.txt

for iter in '1' '2' '3' '4' '5' '6' '7' '8' '9' '10'
	do
	for var in 'o_1' 'o_2' 'o_3' 'o_4' 'o_5' 'o_6' 'o_7' 'o_8' 'o_9' 'o_10' 'o_11' 'o_12' 'o_13' 'o_14' 'o_15' 'o_16' 'o_17' 'o_18' 'o_19' 'o_20' 'o_21' 'o_22' 'o_23' 'o_24' 'o_25' 'o_26' 'o_27' 'o_28' 'o_29' 'o_30' 'o_31' 'o_32' 'o_33' 'o_34' 'o_35' 'o_36' 'o_37' 'o_38' 'o_39' 'o_40' 'o_41' 'o_42' 'o_43' 'o_44' 'o_45' 'o_46' 'o_47' 'o_48' 'o_49' 'o_50'
	do
		python -m kiui.cli.clip_sim app/examples/for_clip/${var}_rgba.png app/examples/for_clip_results_backup/${var}.obj clip --force_cuda_rast
	done

	mv clip_s.txt clip_s_${iter}.txt
done

for iter in '1' '2' '3' '4' '5' '6' '7' '8' '9' '10'
do
	for var in 'o_1' 'o_2' 'o_3' 'o_4' 'o_5' 'o_6' 'o_7' 'o_8' 'o_9' 'o_10' 'o_11' 'o_12' 'o_13' 'o_14' 'o_15' 'o_16' 'o_17' 'o_18' 'o_19' 'o_20' 'o_21' 'o_22' 'o_23' 'o_24' 'o_25' 'o_26' 'o_27' 'o_28' 'o_29' 'o_30' 'o_31' 'o_32' 'o_33' 'o_34' 'o_35' 'o_36' 'o_37' 'o_38' 'o_39' 'o_40' 'o_41' 'o_42' 'o_43' 'o_44' 'o_45' 'o_46' 'o_47' 'o_48' 'o_49' 'o_50'
	do
		python -m kiui.cli.clip_sim app/examples/for_lpips/${var}_rgba.png app/examples/for_lpips_results_backup/${var}.obj lpips --force_cuda_rast
	done

	mv lpips_vgg.txt lpips_vgg_${iter}.txt
done
