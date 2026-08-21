function pv_per_v_mult = spk_freq_resp_pv(freqs)
spk_pv_lookup = fileparts(fileparts(mfilename("fullpath")));
spk_pv_lookup = readtable(fullfile(spk_pv_lookup, "koss sparkplug calib", "koss_sparkplug_calib_lookup.csv"));
pv_per_v_mult = interp1(spk_pv_lookup.('freq'), spk_pv_lookup.('slope'), freqs, 'makima'); 