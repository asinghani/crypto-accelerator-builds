module user_project_wrapper (user_clock2,
    wb_clk_i,
    wb_rst_i,
    wbs_ack_o,
    wbs_cyc_i,
    wbs_stb_i,
    wbs_we_i,
    vccd1,
    vssd1,
    vccd2,
    vssd2,
    vdda1,
    vssa1,
    vdda2,
    vssa2,
    analog_io,
    io_in,
    io_oeb,
    io_out,
    la_data_in,
    la_data_out,
    la_oen,
    wbs_adr_i,
    wbs_dat_i,
    wbs_dat_o,
    wbs_sel_i);
 input user_clock2;
 input wb_clk_i;
 input wb_rst_i;
 output wbs_ack_o;
 input wbs_cyc_i;
 input wbs_stb_i;
 input wbs_we_i;
 input vccd1;
 input vssd1;
 input vccd2;
 input vssd2;
 input vdda1;
 input vssa1;
 input vdda2;
 input vssa2;
 inout [30:0] analog_io;
 input [37:0] io_in;
 output [37:0] io_oeb;
 output [37:0] io_out;
 input [127:0] la_data_in;
 output [127:0] la_data_out;
 input [127:0] la_oen;
 input [31:0] wbs_adr_i;
 input [31:0] wbs_dat_i;
 output [31:0] wbs_dat_o;
 input [3:0] wbs_sel_i;

 accelerator_top mprj (.wb_clk_i(wb_clk_i),
    .wb_rst_i(wb_rst_i),
    .wbs_ack_o(wbs_ack_o),
    .wbs_cyc_i(wbs_cyc_i),
    .wbs_stb_i(wbs_stb_i),
    .wbs_we_i(wbs_we_i),
    .io_in({io_in[37],
    io_in[36],
    io_in[35],
    io_in[34],
    io_in[33],
    io_in[32],
    io_in[31],
    io_in[30],
    io_in[29],
    io_in[28],
    io_in[27],
    io_in[26],
    io_in[25],
    io_in[24],
    io_in[23],
    io_in[22],
    io_in[21],
    io_in[20],
    io_in[19],
    io_in[18],
    io_in[17],
    io_in[16],
    io_in[15],
    io_in[14],
    io_in[13],
    io_in[12],
    io_in[11],
    io_in[10],
    io_in[9],
    io_in[8],
    io_in[7],
    io_in[6],
    io_in[5],
    io_in[4],
    io_in[3],
    io_in[2],
    io_in[1],
    io_in[0]}),
    .io_oeb({io_oeb[37],
    io_oeb[36],
    io_oeb[35],
    io_oeb[34],
    io_oeb[33],
    io_oeb[32],
    io_oeb[31],
    io_oeb[30],
    io_oeb[29],
    io_oeb[28],
    io_oeb[27],
    io_oeb[26],
    io_oeb[25],
    io_oeb[24],
    io_oeb[23],
    io_oeb[22],
    io_oeb[21],
    io_oeb[20],
    io_oeb[19],
    io_oeb[18],
    io_oeb[17],
    io_oeb[16],
    io_oeb[15],
    io_oeb[14],
    io_oeb[13],
    io_oeb[12],
    io_oeb[11],
    io_oeb[10],
    io_oeb[9],
    io_oeb[8],
    io_oeb[7],
    io_oeb[6],
    io_oeb[5],
    io_oeb[4],
    io_oeb[3],
    io_oeb[2],
    io_oeb[1],
    io_oeb[0]}),
    .io_out({io_out[37],
    io_out[36],
    io_out[35],
    io_out[34],
    io_out[33],
    io_out[32],
    io_out[31],
    io_out[30],
    io_out[29],
    io_out[28],
    io_out[27],
    io_out[26],
    io_out[25],
    io_out[24],
    io_out[23],
    io_out[22],
    io_out[21],
    io_out[20],
    io_out[19],
    io_out[18],
    io_out[17],
    io_out[16],
    io_out[15],
    io_out[14],
    io_out[13],
    io_out[12],
    io_out[11],
    io_out[10],
    io_out[9],
    io_out[8],
    io_out[7],
    io_out[6],
    io_out[5],
    io_out[4],
    io_out[3],
    io_out[2],
    io_out[1],
    io_out[0]}),
    .la_data_in({la_data_in[127],
    la_data_in[126],
    la_data_in[125],
    la_data_in[124],
    la_data_in[123],
    la_data_in[122],
    la_data_in[121],
    la_data_in[120],
    la_data_in[119],
    la_data_in[118],
    la_data_in[117],
    la_data_in[116],
    la_data_in[115],
    la_data_in[114],
    la_data_in[113],
    la_data_in[112],
    la_data_in[111],
    la_data_in[110],
    la_data_in[109],
    la_data_in[108],
    la_data_in[107],
    la_data_in[106],
    la_data_in[105],
    la_data_in[104],
    la_data_in[103],
    la_data_in[102],
    la_data_in[101],
    la_data_in[100],
    la_data_in[99],
    la_data_in[98],
    la_data_in[97],
    la_data_in[96],
    la_data_in[95],
    la_data_in[94],
    la_data_in[93],
    la_data_in[92],
    la_data_in[91],
    la_data_in[90],
    la_data_in[89],
    la_data_in[88],
    la_data_in[87],
    la_data_in[86],
    la_data_in[85],
    la_data_in[84],
    la_data_in[83],
    la_data_in[82],
    la_data_in[81],
    la_data_in[80],
    la_data_in[79],
    la_data_in[78],
    la_data_in[77],
    la_data_in[76],
    la_data_in[75],
    la_data_in[74],
    la_data_in[73],
    la_data_in[72],
    la_data_in[71],
    la_data_in[70],
    la_data_in[69],
    la_data_in[68],
    la_data_in[67],
    la_data_in[66],
    la_data_in[65],
    la_data_in[64],
    la_data_in[63],
    la_data_in[62],
    la_data_in[61],
    la_data_in[60],
    la_data_in[59],
    la_data_in[58],
    la_data_in[57],
    la_data_in[56],
    la_data_in[55],
    la_data_in[54],
    la_data_in[53],
    la_data_in[52],
    la_data_in[51],
    la_data_in[50],
    la_data_in[49],
    la_data_in[48],
    la_data_in[47],
    la_data_in[46],
    la_data_in[45],
    la_data_in[44],
    la_data_in[43],
    la_data_in[42],
    la_data_in[41],
    la_data_in[40],
    la_data_in[39],
    la_data_in[38],
    la_data_in[37],
    la_data_in[36],
    la_data_in[35],
    la_data_in[34],
    la_data_in[33],
    la_data_in[32],
    la_data_in[31],
    la_data_in[30],
    la_data_in[29],
    la_data_in[28],
    la_data_in[27],
    la_data_in[26],
    la_data_in[25],
    la_data_in[24],
    la_data_in[23],
    la_data_in[22],
    la_data_in[21],
    la_data_in[20],
    la_data_in[19],
    la_data_in[18],
    la_data_in[17],
    la_data_in[16],
    la_data_in[15],
    la_data_in[14],
    la_data_in[13],
    la_data_in[12],
    la_data_in[11],
    la_data_in[10],
    la_data_in[9],
    la_data_in[8],
    la_data_in[7],
    la_data_in[6],
    la_data_in[5],
    la_data_in[4],
    la_data_in[3],
    la_data_in[2],
    la_data_in[1],
    la_data_in[0]}),
    .la_data_out({la_data_out[127],
    la_data_out[126],
    la_data_out[125],
    la_data_out[124],
    la_data_out[123],
    la_data_out[122],
    la_data_out[121],
    la_data_out[120],
    la_data_out[119],
    la_data_out[118],
    la_data_out[117],
    la_data_out[116],
    la_data_out[115],
    la_data_out[114],
    la_data_out[113],
    la_data_out[112],
    la_data_out[111],
    la_data_out[110],
    la_data_out[109],
    la_data_out[108],
    la_data_out[107],
    la_data_out[106],
    la_data_out[105],
    la_data_out[104],
    la_data_out[103],
    la_data_out[102],
    la_data_out[101],
    la_data_out[100],
    la_data_out[99],
    la_data_out[98],
    la_data_out[97],
    la_data_out[96],
    la_data_out[95],
    la_data_out[94],
    la_data_out[93],
    la_data_out[92],
    la_data_out[91],
    la_data_out[90],
    la_data_out[89],
    la_data_out[88],
    la_data_out[87],
    la_data_out[86],
    la_data_out[85],
    la_data_out[84],
    la_data_out[83],
    la_data_out[82],
    la_data_out[81],
    la_data_out[80],
    la_data_out[79],
    la_data_out[78],
    la_data_out[77],
    la_data_out[76],
    la_data_out[75],
    la_data_out[74],
    la_data_out[73],
    la_data_out[72],
    la_data_out[71],
    la_data_out[70],
    la_data_out[69],
    la_data_out[68],
    la_data_out[67],
    la_data_out[66],
    la_data_out[65],
    la_data_out[64],
    la_data_out[63],
    la_data_out[62],
    la_data_out[61],
    la_data_out[60],
    la_data_out[59],
    la_data_out[58],
    la_data_out[57],
    la_data_out[56],
    la_data_out[55],
    la_data_out[54],
    la_data_out[53],
    la_data_out[52],
    la_data_out[51],
    la_data_out[50],
    la_data_out[49],
    la_data_out[48],
    la_data_out[47],
    la_data_out[46],
    la_data_out[45],
    la_data_out[44],
    la_data_out[43],
    la_data_out[42],
    la_data_out[41],
    la_data_out[40],
    la_data_out[39],
    la_data_out[38],
    la_data_out[37],
    la_data_out[36],
    la_data_out[35],
    la_data_out[34],
    la_data_out[33],
    la_data_out[32],
    la_data_out[31],
    la_data_out[30],
    la_data_out[29],
    la_data_out[28],
    la_data_out[27],
    la_data_out[26],
    la_data_out[25],
    la_data_out[24],
    la_data_out[23],
    la_data_out[22],
    la_data_out[21],
    la_data_out[20],
    la_data_out[19],
    la_data_out[18],
    la_data_out[17],
    la_data_out[16],
    la_data_out[15],
    la_data_out[14],
    la_data_out[13],
    la_data_out[12],
    la_data_out[11],
    la_data_out[10],
    la_data_out[9],
    la_data_out[8],
    la_data_out[7],
    la_data_out[6],
    la_data_out[5],
    la_data_out[4],
    la_data_out[3],
    la_data_out[2],
    la_data_out[1],
    la_data_out[0]}),
    .la_oen({la_oen[127],
    la_oen[126],
    la_oen[125],
    la_oen[124],
    la_oen[123],
    la_oen[122],
    la_oen[121],
    la_oen[120],
    la_oen[119],
    la_oen[118],
    la_oen[117],
    la_oen[116],
    la_oen[115],
    la_oen[114],
    la_oen[113],
    la_oen[112],
    la_oen[111],
    la_oen[110],
    la_oen[109],
    la_oen[108],
    la_oen[107],
    la_oen[106],
    la_oen[105],
    la_oen[104],
    la_oen[103],
    la_oen[102],
    la_oen[101],
    la_oen[100],
    la_oen[99],
    la_oen[98],
    la_oen[97],
    la_oen[96],
    la_oen[95],
    la_oen[94],
    la_oen[93],
    la_oen[92],
    la_oen[91],
    la_oen[90],
    la_oen[89],
    la_oen[88],
    la_oen[87],
    la_oen[86],
    la_oen[85],
    la_oen[84],
    la_oen[83],
    la_oen[82],
    la_oen[81],
    la_oen[80],
    la_oen[79],
    la_oen[78],
    la_oen[77],
    la_oen[76],
    la_oen[75],
    la_oen[74],
    la_oen[73],
    la_oen[72],
    la_oen[71],
    la_oen[70],
    la_oen[69],
    la_oen[68],
    la_oen[67],
    la_oen[66],
    la_oen[65],
    la_oen[64],
    la_oen[63],
    la_oen[62],
    la_oen[61],
    la_oen[60],
    la_oen[59],
    la_oen[58],
    la_oen[57],
    la_oen[56],
    la_oen[55],
    la_oen[54],
    la_oen[53],
    la_oen[52],
    la_oen[51],
    la_oen[50],
    la_oen[49],
    la_oen[48],
    la_oen[47],
    la_oen[46],
    la_oen[45],
    la_oen[44],
    la_oen[43],
    la_oen[42],
    la_oen[41],
    la_oen[40],
    la_oen[39],
    la_oen[38],
    la_oen[37],
    la_oen[36],
    la_oen[35],
    la_oen[34],
    la_oen[33],
    la_oen[32],
    la_oen[31],
    la_oen[30],
    la_oen[29],
    la_oen[28],
    la_oen[27],
    la_oen[26],
    la_oen[25],
    la_oen[24],
    la_oen[23],
    la_oen[22],
    la_oen[21],
    la_oen[20],
    la_oen[19],
    la_oen[18],
    la_oen[17],
    la_oen[16],
    la_oen[15],
    la_oen[14],
    la_oen[13],
    la_oen[12],
    la_oen[11],
    la_oen[10],
    la_oen[9],
    la_oen[8],
    la_oen[7],
    la_oen[6],
    la_oen[5],
    la_oen[4],
    la_oen[3],
    la_oen[2],
    la_oen[1],
    la_oen[0]}),
    .wbs_adr_i({wbs_adr_i[31],
    wbs_adr_i[30],
    wbs_adr_i[29],
    wbs_adr_i[28],
    wbs_adr_i[27],
    wbs_adr_i[26],
    wbs_adr_i[25],
    wbs_adr_i[24],
    wbs_adr_i[23],
    wbs_adr_i[22],
    wbs_adr_i[21],
    wbs_adr_i[20],
    wbs_adr_i[19],
    wbs_adr_i[18],
    wbs_adr_i[17],
    wbs_adr_i[16],
    wbs_adr_i[15],
    wbs_adr_i[14],
    wbs_adr_i[13],
    wbs_adr_i[12],
    wbs_adr_i[11],
    wbs_adr_i[10],
    wbs_adr_i[9],
    wbs_adr_i[8],
    wbs_adr_i[7],
    wbs_adr_i[6],
    wbs_adr_i[5],
    wbs_adr_i[4],
    wbs_adr_i[3],
    wbs_adr_i[2],
    wbs_adr_i[1],
    wbs_adr_i[0]}),
    .wbs_dat_i({wbs_dat_i[31],
    wbs_dat_i[30],
    wbs_dat_i[29],
    wbs_dat_i[28],
    wbs_dat_i[27],
    wbs_dat_i[26],
    wbs_dat_i[25],
    wbs_dat_i[24],
    wbs_dat_i[23],
    wbs_dat_i[22],
    wbs_dat_i[21],
    wbs_dat_i[20],
    wbs_dat_i[19],
    wbs_dat_i[18],
    wbs_dat_i[17],
    wbs_dat_i[16],
    wbs_dat_i[15],
    wbs_dat_i[14],
    wbs_dat_i[13],
    wbs_dat_i[12],
    wbs_dat_i[11],
    wbs_dat_i[10],
    wbs_dat_i[9],
    wbs_dat_i[8],
    wbs_dat_i[7],
    wbs_dat_i[6],
    wbs_dat_i[5],
    wbs_dat_i[4],
    wbs_dat_i[3],
    wbs_dat_i[2],
    wbs_dat_i[1],
    wbs_dat_i[0]}),
    .wbs_dat_o({wbs_dat_o[31],
    wbs_dat_o[30],
    wbs_dat_o[29],
    wbs_dat_o[28],
    wbs_dat_o[27],
    wbs_dat_o[26],
    wbs_dat_o[25],
    wbs_dat_o[24],
    wbs_dat_o[23],
    wbs_dat_o[22],
    wbs_dat_o[21],
    wbs_dat_o[20],
    wbs_dat_o[19],
    wbs_dat_o[18],
    wbs_dat_o[17],
    wbs_dat_o[16],
    wbs_dat_o[15],
    wbs_dat_o[14],
    wbs_dat_o[13],
    wbs_dat_o[12],
    wbs_dat_o[11],
    wbs_dat_o[10],
    wbs_dat_o[9],
    wbs_dat_o[8],
    wbs_dat_o[7],
    wbs_dat_o[6],
    wbs_dat_o[5],
    wbs_dat_o[4],
    wbs_dat_o[3],
    wbs_dat_o[2],
    wbs_dat_o[1],
    wbs_dat_o[0]}),
    .wbs_sel_i({wbs_sel_i[3],
    wbs_sel_i[2],
    wbs_sel_i[1],
    wbs_sel_i[0]}));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[0]  (.DIODE(io_in[0]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[10]  (.DIODE(io_in[10]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[11]  (.DIODE(io_in[11]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[12]  (.DIODE(io_in[12]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[13]  (.DIODE(io_in[13]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[14]  (.DIODE(io_in[14]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[15]  (.DIODE(io_in[15]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[16]  (.DIODE(io_in[16]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[17]  (.DIODE(io_in[17]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[18]  (.DIODE(io_in[18]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[19]  (.DIODE(io_in[19]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[1]  (.DIODE(io_in[1]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[20]  (.DIODE(io_in[20]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[21]  (.DIODE(io_in[21]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[22]  (.DIODE(io_in[22]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[23]  (.DIODE(io_in[23]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[24]  (.DIODE(io_in[24]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[25]  (.DIODE(io_in[25]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[26]  (.DIODE(io_in[26]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[27]  (.DIODE(io_in[27]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[28]  (.DIODE(io_in[28]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[29]  (.DIODE(io_in[29]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[2]  (.DIODE(io_in[2]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[30]  (.DIODE(io_in[30]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[31]  (.DIODE(io_in[31]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[32]  (.DIODE(io_in[32]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[33]  (.DIODE(io_in[33]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[34]  (.DIODE(io_in[34]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[35]  (.DIODE(io_in[35]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[36]  (.DIODE(io_in[36]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[37]  (.DIODE(io_in[37]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[3]  (.DIODE(io_in[3]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[4]  (.DIODE(io_in[4]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[5]  (.DIODE(io_in[5]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[6]  (.DIODE(io_in[6]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[7]  (.DIODE(io_in[7]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[8]  (.DIODE(io_in[8]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_io_in[9]  (.DIODE(io_in[9]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[0]  (.DIODE(la_data_in[0]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[100]  (.DIODE(la_data_in[100]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[101]  (.DIODE(la_data_in[101]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[102]  (.DIODE(la_data_in[102]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[103]  (.DIODE(la_data_in[103]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[104]  (.DIODE(la_data_in[104]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[105]  (.DIODE(la_data_in[105]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[106]  (.DIODE(la_data_in[106]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[107]  (.DIODE(la_data_in[107]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[108]  (.DIODE(la_data_in[108]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[109]  (.DIODE(la_data_in[109]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[10]  (.DIODE(la_data_in[10]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[110]  (.DIODE(la_data_in[110]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[111]  (.DIODE(la_data_in[111]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[112]  (.DIODE(la_data_in[112]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[113]  (.DIODE(la_data_in[113]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[114]  (.DIODE(la_data_in[114]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[115]  (.DIODE(la_data_in[115]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[116]  (.DIODE(la_data_in[116]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[117]  (.DIODE(la_data_in[117]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[118]  (.DIODE(la_data_in[118]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[119]  (.DIODE(la_data_in[119]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[11]  (.DIODE(la_data_in[11]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[120]  (.DIODE(la_data_in[120]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[121]  (.DIODE(la_data_in[121]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[122]  (.DIODE(la_data_in[122]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[123]  (.DIODE(la_data_in[123]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[124]  (.DIODE(la_data_in[124]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[125]  (.DIODE(la_data_in[125]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[126]  (.DIODE(la_data_in[126]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[127]  (.DIODE(la_data_in[127]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[12]  (.DIODE(la_data_in[12]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[13]  (.DIODE(la_data_in[13]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[14]  (.DIODE(la_data_in[14]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[15]  (.DIODE(la_data_in[15]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[16]  (.DIODE(la_data_in[16]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[17]  (.DIODE(la_data_in[17]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[18]  (.DIODE(la_data_in[18]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[19]  (.DIODE(la_data_in[19]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[1]  (.DIODE(la_data_in[1]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[20]  (.DIODE(la_data_in[20]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[21]  (.DIODE(la_data_in[21]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[22]  (.DIODE(la_data_in[22]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[23]  (.DIODE(la_data_in[23]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[24]  (.DIODE(la_data_in[24]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[25]  (.DIODE(la_data_in[25]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[26]  (.DIODE(la_data_in[26]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[27]  (.DIODE(la_data_in[27]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[28]  (.DIODE(la_data_in[28]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[29]  (.DIODE(la_data_in[29]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[2]  (.DIODE(la_data_in[2]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[30]  (.DIODE(la_data_in[30]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[31]  (.DIODE(la_data_in[31]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[32]  (.DIODE(la_data_in[32]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[33]  (.DIODE(la_data_in[33]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[34]  (.DIODE(la_data_in[34]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[35]  (.DIODE(la_data_in[35]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[36]  (.DIODE(la_data_in[36]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[37]  (.DIODE(la_data_in[37]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[38]  (.DIODE(la_data_in[38]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[39]  (.DIODE(la_data_in[39]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[3]  (.DIODE(la_data_in[3]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[40]  (.DIODE(la_data_in[40]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[41]  (.DIODE(la_data_in[41]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[42]  (.DIODE(la_data_in[42]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[43]  (.DIODE(la_data_in[43]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[44]  (.DIODE(la_data_in[44]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[45]  (.DIODE(la_data_in[45]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[46]  (.DIODE(la_data_in[46]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[47]  (.DIODE(la_data_in[47]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[48]  (.DIODE(la_data_in[48]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[49]  (.DIODE(la_data_in[49]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[4]  (.DIODE(la_data_in[4]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[50]  (.DIODE(la_data_in[50]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[51]  (.DIODE(la_data_in[51]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[52]  (.DIODE(la_data_in[52]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[53]  (.DIODE(la_data_in[53]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[54]  (.DIODE(la_data_in[54]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[55]  (.DIODE(la_data_in[55]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[56]  (.DIODE(la_data_in[56]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[57]  (.DIODE(la_data_in[57]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[58]  (.DIODE(la_data_in[58]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[59]  (.DIODE(la_data_in[59]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[5]  (.DIODE(la_data_in[5]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[60]  (.DIODE(la_data_in[60]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[61]  (.DIODE(la_data_in[61]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[62]  (.DIODE(la_data_in[62]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[63]  (.DIODE(la_data_in[63]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[64]  (.DIODE(la_data_in[64]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[65]  (.DIODE(la_data_in[65]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[66]  (.DIODE(la_data_in[66]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[67]  (.DIODE(la_data_in[67]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[68]  (.DIODE(la_data_in[68]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[69]  (.DIODE(la_data_in[69]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[6]  (.DIODE(la_data_in[6]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[70]  (.DIODE(la_data_in[70]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[71]  (.DIODE(la_data_in[71]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[72]  (.DIODE(la_data_in[72]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[73]  (.DIODE(la_data_in[73]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[74]  (.DIODE(la_data_in[74]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[75]  (.DIODE(la_data_in[75]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[76]  (.DIODE(la_data_in[76]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[77]  (.DIODE(la_data_in[77]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[78]  (.DIODE(la_data_in[78]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[79]  (.DIODE(la_data_in[79]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[7]  (.DIODE(la_data_in[7]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[80]  (.DIODE(la_data_in[80]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[81]  (.DIODE(la_data_in[81]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[82]  (.DIODE(la_data_in[82]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[83]  (.DIODE(la_data_in[83]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[84]  (.DIODE(la_data_in[84]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[85]  (.DIODE(la_data_in[85]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[86]  (.DIODE(la_data_in[86]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[87]  (.DIODE(la_data_in[87]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[88]  (.DIODE(la_data_in[88]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[89]  (.DIODE(la_data_in[89]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[8]  (.DIODE(la_data_in[8]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[90]  (.DIODE(la_data_in[90]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[91]  (.DIODE(la_data_in[91]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[92]  (.DIODE(la_data_in[92]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[93]  (.DIODE(la_data_in[93]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[94]  (.DIODE(la_data_in[94]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[95]  (.DIODE(la_data_in[95]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[96]  (.DIODE(la_data_in[96]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[97]  (.DIODE(la_data_in[97]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[98]  (.DIODE(la_data_in[98]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[99]  (.DIODE(la_data_in[99]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_data_in[9]  (.DIODE(la_data_in[9]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[0]  (.DIODE(la_oen[0]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[100]  (.DIODE(la_oen[100]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[101]  (.DIODE(la_oen[101]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[102]  (.DIODE(la_oen[102]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[103]  (.DIODE(la_oen[103]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[104]  (.DIODE(la_oen[104]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[105]  (.DIODE(la_oen[105]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[106]  (.DIODE(la_oen[106]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[107]  (.DIODE(la_oen[107]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[108]  (.DIODE(la_oen[108]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[109]  (.DIODE(la_oen[109]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[10]  (.DIODE(la_oen[10]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[110]  (.DIODE(la_oen[110]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[111]  (.DIODE(la_oen[111]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[112]  (.DIODE(la_oen[112]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[113]  (.DIODE(la_oen[113]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[114]  (.DIODE(la_oen[114]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[115]  (.DIODE(la_oen[115]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[116]  (.DIODE(la_oen[116]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[117]  (.DIODE(la_oen[117]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[118]  (.DIODE(la_oen[118]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[119]  (.DIODE(la_oen[119]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[11]  (.DIODE(la_oen[11]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[120]  (.DIODE(la_oen[120]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[121]  (.DIODE(la_oen[121]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[122]  (.DIODE(la_oen[122]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[123]  (.DIODE(la_oen[123]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[124]  (.DIODE(la_oen[124]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[125]  (.DIODE(la_oen[125]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[126]  (.DIODE(la_oen[126]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[127]  (.DIODE(la_oen[127]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[12]  (.DIODE(la_oen[12]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[13]  (.DIODE(la_oen[13]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[14]  (.DIODE(la_oen[14]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[15]  (.DIODE(la_oen[15]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[16]  (.DIODE(la_oen[16]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[17]  (.DIODE(la_oen[17]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[18]  (.DIODE(la_oen[18]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[19]  (.DIODE(la_oen[19]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[1]  (.DIODE(la_oen[1]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[20]  (.DIODE(la_oen[20]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[21]  (.DIODE(la_oen[21]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[22]  (.DIODE(la_oen[22]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[23]  (.DIODE(la_oen[23]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[24]  (.DIODE(la_oen[24]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[25]  (.DIODE(la_oen[25]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[26]  (.DIODE(la_oen[26]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[27]  (.DIODE(la_oen[27]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[28]  (.DIODE(la_oen[28]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[29]  (.DIODE(la_oen[29]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[2]  (.DIODE(la_oen[2]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[30]  (.DIODE(la_oen[30]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[31]  (.DIODE(la_oen[31]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[32]  (.DIODE(la_oen[32]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[33]  (.DIODE(la_oen[33]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[34]  (.DIODE(la_oen[34]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[35]  (.DIODE(la_oen[35]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[36]  (.DIODE(la_oen[36]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[37]  (.DIODE(la_oen[37]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[38]  (.DIODE(la_oen[38]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[39]  (.DIODE(la_oen[39]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[3]  (.DIODE(la_oen[3]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[40]  (.DIODE(la_oen[40]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[41]  (.DIODE(la_oen[41]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[42]  (.DIODE(la_oen[42]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[43]  (.DIODE(la_oen[43]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[44]  (.DIODE(la_oen[44]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[45]  (.DIODE(la_oen[45]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[46]  (.DIODE(la_oen[46]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[47]  (.DIODE(la_oen[47]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[48]  (.DIODE(la_oen[48]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[49]  (.DIODE(la_oen[49]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[4]  (.DIODE(la_oen[4]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[50]  (.DIODE(la_oen[50]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[51]  (.DIODE(la_oen[51]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[52]  (.DIODE(la_oen[52]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[53]  (.DIODE(la_oen[53]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[54]  (.DIODE(la_oen[54]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[55]  (.DIODE(la_oen[55]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[56]  (.DIODE(la_oen[56]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[57]  (.DIODE(la_oen[57]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[58]  (.DIODE(la_oen[58]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[59]  (.DIODE(la_oen[59]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[5]  (.DIODE(la_oen[5]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[60]  (.DIODE(la_oen[60]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[61]  (.DIODE(la_oen[61]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[62]  (.DIODE(la_oen[62]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[63]  (.DIODE(la_oen[63]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[64]  (.DIODE(la_oen[64]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[65]  (.DIODE(la_oen[65]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[66]  (.DIODE(la_oen[66]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[67]  (.DIODE(la_oen[67]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[68]  (.DIODE(la_oen[68]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[69]  (.DIODE(la_oen[69]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[6]  (.DIODE(la_oen[6]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[70]  (.DIODE(la_oen[70]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[71]  (.DIODE(la_oen[71]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[72]  (.DIODE(la_oen[72]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[73]  (.DIODE(la_oen[73]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[74]  (.DIODE(la_oen[74]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[75]  (.DIODE(la_oen[75]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[76]  (.DIODE(la_oen[76]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[77]  (.DIODE(la_oen[77]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[78]  (.DIODE(la_oen[78]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[79]  (.DIODE(la_oen[79]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[7]  (.DIODE(la_oen[7]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[80]  (.DIODE(la_oen[80]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[81]  (.DIODE(la_oen[81]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[82]  (.DIODE(la_oen[82]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[83]  (.DIODE(la_oen[83]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[84]  (.DIODE(la_oen[84]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[85]  (.DIODE(la_oen[85]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[86]  (.DIODE(la_oen[86]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[87]  (.DIODE(la_oen[87]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[88]  (.DIODE(la_oen[88]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[89]  (.DIODE(la_oen[89]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[8]  (.DIODE(la_oen[8]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[90]  (.DIODE(la_oen[90]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[91]  (.DIODE(la_oen[91]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[92]  (.DIODE(la_oen[92]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[93]  (.DIODE(la_oen[93]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[94]  (.DIODE(la_oen[94]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[95]  (.DIODE(la_oen[95]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[96]  (.DIODE(la_oen[96]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[97]  (.DIODE(la_oen[97]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[98]  (.DIODE(la_oen[98]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[99]  (.DIODE(la_oen[99]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_la_oen[9]  (.DIODE(la_oen[9]));
 sky130_fd_sc_hd__diode_2 ANTENNA_mprj_wb_clk_i (.DIODE(wb_clk_i));
 sky130_fd_sc_hd__diode_2 ANTENNA_mprj_wb_rst_i (.DIODE(wb_rst_i));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[0]  (.DIODE(wbs_adr_i[0]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[10]  (.DIODE(wbs_adr_i[10]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[11]  (.DIODE(wbs_adr_i[11]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[12]  (.DIODE(wbs_adr_i[12]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[13]  (.DIODE(wbs_adr_i[13]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[14]  (.DIODE(wbs_adr_i[14]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[15]  (.DIODE(wbs_adr_i[15]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[16]  (.DIODE(wbs_adr_i[16]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[17]  (.DIODE(wbs_adr_i[17]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[18]  (.DIODE(wbs_adr_i[18]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[19]  (.DIODE(wbs_adr_i[19]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[1]  (.DIODE(wbs_adr_i[1]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[20]  (.DIODE(wbs_adr_i[20]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[21]  (.DIODE(wbs_adr_i[21]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[22]  (.DIODE(wbs_adr_i[22]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[23]  (.DIODE(wbs_adr_i[23]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[24]  (.DIODE(wbs_adr_i[24]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[25]  (.DIODE(wbs_adr_i[25]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[26]  (.DIODE(wbs_adr_i[26]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[27]  (.DIODE(wbs_adr_i[27]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[28]  (.DIODE(wbs_adr_i[28]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[29]  (.DIODE(wbs_adr_i[29]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[2]  (.DIODE(wbs_adr_i[2]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[30]  (.DIODE(wbs_adr_i[30]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[31]  (.DIODE(wbs_adr_i[31]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[3]  (.DIODE(wbs_adr_i[3]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[4]  (.DIODE(wbs_adr_i[4]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[5]  (.DIODE(wbs_adr_i[5]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[6]  (.DIODE(wbs_adr_i[6]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[7]  (.DIODE(wbs_adr_i[7]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[8]  (.DIODE(wbs_adr_i[8]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_adr_i[9]  (.DIODE(wbs_adr_i[9]));
 sky130_fd_sc_hd__diode_2 ANTENNA_mprj_wbs_cyc_i (.DIODE(wbs_cyc_i));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[0]  (.DIODE(wbs_dat_i[0]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[10]  (.DIODE(wbs_dat_i[10]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[11]  (.DIODE(wbs_dat_i[11]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[12]  (.DIODE(wbs_dat_i[12]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[13]  (.DIODE(wbs_dat_i[13]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[14]  (.DIODE(wbs_dat_i[14]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[15]  (.DIODE(wbs_dat_i[15]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[16]  (.DIODE(wbs_dat_i[16]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[17]  (.DIODE(wbs_dat_i[17]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[18]  (.DIODE(wbs_dat_i[18]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[19]  (.DIODE(wbs_dat_i[19]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[1]  (.DIODE(wbs_dat_i[1]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[20]  (.DIODE(wbs_dat_i[20]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[21]  (.DIODE(wbs_dat_i[21]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[22]  (.DIODE(wbs_dat_i[22]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[23]  (.DIODE(wbs_dat_i[23]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[24]  (.DIODE(wbs_dat_i[24]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[25]  (.DIODE(wbs_dat_i[25]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[26]  (.DIODE(wbs_dat_i[26]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[27]  (.DIODE(wbs_dat_i[27]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[28]  (.DIODE(wbs_dat_i[28]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[29]  (.DIODE(wbs_dat_i[29]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[2]  (.DIODE(wbs_dat_i[2]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[30]  (.DIODE(wbs_dat_i[30]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[31]  (.DIODE(wbs_dat_i[31]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[3]  (.DIODE(wbs_dat_i[3]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[4]  (.DIODE(wbs_dat_i[4]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[5]  (.DIODE(wbs_dat_i[5]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[6]  (.DIODE(wbs_dat_i[6]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[7]  (.DIODE(wbs_dat_i[7]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[8]  (.DIODE(wbs_dat_i[8]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_dat_i[9]  (.DIODE(wbs_dat_i[9]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_sel_i[0]  (.DIODE(wbs_sel_i[0]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_sel_i[1]  (.DIODE(wbs_sel_i[1]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_sel_i[2]  (.DIODE(wbs_sel_i[2]));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj_wbs_sel_i[3]  (.DIODE(wbs_sel_i[3]));
 sky130_fd_sc_hd__diode_2 ANTENNA_mprj_wbs_stb_i (.DIODE(wbs_stb_i));
 sky130_fd_sc_hd__diode_2 ANTENNA_mprj_wbs_we_i (.DIODE(wbs_we_i));
endmodule
