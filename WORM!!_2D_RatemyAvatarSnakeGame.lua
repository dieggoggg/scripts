CreateTraps = true
AppleCount = 6
SnakeSpeed = 7 --(smaller is faster)

StopKeybind = "Z"


--(certain emojis get tagged)
back = utf8.char(0x0001f5a4) --Background colour
snek = utf8.char(0x0001F49A) --snake colour
border = utf8.char(0x0001F49B) --Border/Trap colour
banan = utf8.char(0x00002764) --Apple colour

BoothImage = 11748926696

local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=getfenv or function()return _ENV;end;local v9=setmetatable;local v10=pcall;local v11=select;local v12=unpack or table.unpack;local v13=tonumber;local function v14(v15,v16)local v17=1;local v18;v15=v4(v3(v15,5),"..",function(v29)if (v1(v29,2)==79) then v18=v0(v3(v29,1,1));return "";else local v70=v2(v0(v29,16));if v18 then local v82=v5(v70,v18);v18=nil;return v82;else return v70;end end end);local function v19(v30,v31,v32)if v32 then local v71=(v30/(2^(v31-1)))%(2^(((v32-1) -(v31-1)) + 1));return v71-(v71%1);else local v72=2^(v31-1);return (((v30%(v72 + v72))>=v72) and 1) or 0;end end local function v20()local v37=v1(v15,v17,v17);v17=v17 + 1;return v37;end local function v21()local v38,v39=v1(v15,v17,v17 + 2);v17=v17 + 2;return (v39 * 256) + v38;end local function v22()local v40,v41,v42,v43=v1(v15,v17,v17 + 3);v17=v17 + 4;return (v43 * 16777216) + (v42 * 65536) + (v41 * 256) + v40;end local function v23()local v44=v22();local v45=v22();return (( -2 * v19(v45,32)) + 1) * (2^(v19(v45,21,31) -1023)) * ((((v19(v45,1,20) * (2^32)) + v44)/(2^52)) + 1);end local function v24(v33)local v46;if  not v33 then v33=v22();if (v33==0) then return "";end end v46=v3(v15,v17,(v17 + v33) -1);v17=v17 + v33;local v47={};for v58=1, #v46 do v47[v58]=v2(v1(v3(v46,v58,v58)));end return v6(v47);end local v25=v22;local function v26(...)return {...},v11("#",...);end local function v27()local v48={};local v49={};local v50={};local v51={v48,v49,nil,v50};local v52=v22();local v53={};for v60=1,v52 do local v61=v20();local v62;if (v61==1) then v62=v20()~=0;elseif (v61==2) then v62=v23();elseif (v61==3) then v62=v24();end v53[v60]=v62;end v51[3]=v20();for v64=1,v22() do local v65=v20();if (v19(v65,1,1)==0) then local v78=v19(v65,2,3);local v79=v19(v65,4,6);local v80={v21(),v21(),nil,nil};if (v78==0) then v80[3]=v21();v80[4]=v21();elseif (v78==1) then v80[3]=v22();elseif (v78==2) then v80[3]=v22() -(2^16);elseif (v78==3) then v80[3]=v22() -(2^16);v80[4]=v21();end if (v19(v79,1,1)==1) then v80[2]=v53[v80[2]];end if (v19(v79,2,2)==1) then v80[3]=v53[v80[3]];end if (v19(v79,3,3)==1) then v80[4]=v53[v80[4]];end v48[v64]=v80;end end for v66=1,v22() do v49[v66-1]=v27();end for v68=1,v22() do v50[v68]=v22();end return v51;end local function v28(v34,v35,v36)local v55=v34[1];local v56=v34[2];local v57=v34[3];return function(...)local v73=1;local v74= -1;local v75={...};local v76=v11("#",...) -1;local function v77()local v83=v55;local v84=Const;local v85=v56;local v86=v57;local v87=v26;local v88={};local v89={};local v90={};for v100=0,v76 do if (v100>=v86) then v88[v100-v86]=v75[v100 + 1];else v90[v100]=v75[v100 + 1];end end local v91=(v76-v86) + 1;local v92;local v93;while true do v92=v83[v73];v93=v92[1];if (v93<=21) then if (v93<=10) then if (v93<=4) then if (v93<=1) then if (v93>0) then v90[v92[2]]=v92[3];else v90[v92[2]]=v90[v92[3]][v92[4]];end elseif (v93<=2) then if (v90[v92[2]]==v92[4]) then v73=v73 + 1;else v73=v92[3];end elseif (v93==3) then local v143=v92[2];local v144,v145=v87(v90[v143](v90[v143 + 1]));v74=(v145 + v143) -1;local v146=0;for v186=v143,v74 do v146=v146 + 1;v90[v186]=v144[v146];end else local v147=v92[2];v90[v147](v12(v90,v147 + 1,v92[3]));end elseif (v93<=7) then if (v93<=5) then local v109=v92[2];v90[v109]=v90[v109](v12(v90,v109 + 1,v74));elseif (v93>6) then if (v90[v92[2]]<=v90[v92[4]]) then v73=v73 + 1;else v73=v92[3];end else v90[v92[2]]=v36[v92[3]];end elseif (v93<=8) then local v111=v85[v92[3]];local v112;local v113={};v112=v9({},{__index=function(v132,v133)local v149=v113[v133];return v149[1][v149[2]];end,__newindex=function(v134,v135,v136)local v150=v113[v135];v150[1][v150[2]]=v136;end});for v137=1,v92[4] do v73=v73 + 1;local v138=v83[v73];if (v138[1]==21) then v113[v137-1]={v90,v138[3]};else v113[v137-1]={v35,v138[3]};end v89[ #v89 + 1]=v113;end v90[v92[2]]=v28(v111,v112,v36);elseif (v93==9) then if (v92[2]<v90[v92[4]]) then v73=v92[3];else v73=v73 + 1;end else v90[v92[2]]={};end elseif (v93<=15) then if (v93<=12) then if (v93>11) then local v115=v92[2];v90[v115](v90[v115 + 1]);else v90[v92[2]]= #v90[v92[3]];end elseif (v93<=13) then v90[v92[2]]=v90[v92[3]] -v92[4];elseif (v93==14) then do return;end else v90[v92[2]]=v90[v92[3]] + v92[4];end elseif (v93<=18) then if (v93<=16) then v73=v92[3];elseif (v93==17) then local v154=v92[3];local v155=v90[v154];for v190=v154 + 1,v92[4] do v155=v155   .. v90[v190];end v90[v92[2]]=v155;elseif  not v90[v92[2]] then v73=v73 + 1;else v73=v92[3];end elseif (v93<=19) then local v118=v92[2];local v119=v90[v118];local v120=v92[3];for v140=1,v120 do v119[v140]=v90[v118 + v140];end elseif (v93>20) then v90[v92[2]]=v90[v92[3]];else local v158=v92[2];v90[v158]=v90[v158](v90[v158 + 1]);end elseif (v93<=32) then if (v93<=26) then if (v93<=23) then if (v93==22) then local v121=v92[2];v90[v121]=v90[v121](v12(v90,v121 + 1,v92[3]));else local v123=v92[2];local v124=v90[v123];local v125=v90[v123 + 2];if (v125>0) then if (v124>v90[v123 + 1]) then v73=v92[3];else v90[v123 + 3]=v124;end elseif (v124<v90[v123 + 1]) then v73=v92[3];else v90[v123 + 3]=v124;end end elseif (v93<=24) then v90[v92[2]]=v28(v85[v92[3]],nil,v36);elseif (v93==25) then if v90[v92[2]] then v73=v73 + 1;else v73=v92[3];end else local v160=v92[2];local v161=v90[v160 + 2];local v162=v90[v160] + v161;v90[v160]=v162;if (v161>0) then if (v162<=v90[v160 + 1]) then v73=v92[3];v90[v160 + 3]=v162;end elseif (v162>=v90[v160 + 1]) then v73=v92[3];v90[v160 + 3]=v162;end end elseif (v93<=29) then if (v93<=27) then if (v90[v92[2]]~=v92[4]) then v73=v73 + 1;else v73=v92[3];end elseif (v93>28) then local v164=v92[2];local v165=v90[v92[3]];v90[v164 + 1]=v165;v90[v164]=v165[v92[4]];else v90[v92[2]]=v35[v92[3]];end elseif (v93<=30) then v36[v92[3]]=v90[v92[2]];elseif (v93==31) then v90[v92[2]]=v92[3]~=0;else local v170=v92[2];local v171={v90[v170](v90[v170 + 1])};local v172=0;for v191=v170,v92[4] do v172=v172 + 1;v90[v191]=v171[v172];end end elseif (v93<=38) then if (v93<=35) then if (v93<=33) then v90[v92[2]][v92[3]]=v92[4];elseif (v93==34) then v90[v92[2]]=v90[v92[3]][v90[v92[4]]];else v90[v92[2]][v90[v92[3]]]=v92[4];end elseif (v93<=36) then if (v90[v92[2]]==v90[v92[4]]) then v73=v73 + 1;else v73=v92[3];end elseif (v93==37) then if (v90[v92[2]]<v90[v92[4]]) then v73=v73 + 1;else v73=v92[3];end else local v175=v92[2];v90[v175](v12(v90,v175 + 1,v74));end elseif (v93<=41) then if (v93<=39) then local v129=v92[2];local v130=v90[v129];for v142=v129 + 1,v92[3] do v7(v130,v90[v142]);end elseif (v93==40) then v90[v92[2]][v92[3]]=v90[v92[4]];elseif (v90[v92[2]]<v92[4]) then v73=v92[3];else v73=v73 + 1;end elseif (v93<=42) then v90[v92[2]][v90[v92[3]]]=v90[v92[4]];elseif (v93>43) then local v177=v92[2];local v178,v179=v87(v90[v177](v12(v90,v177 + 1,v92[3])));v74=(v179 + v177) -1;local v180=0;for v193=v177,v74 do v180=v180 + 1;v90[v193]=v178[v180];end else local v181=v92[2];local v182=v92[4];local v183=v181 + 2;local v184={v90[v181](v90[v181 + 1],v90[v183])};for v195=1,v182 do v90[v183 + v195]=v184[v195];end local v185=v184[1];if v185 then v90[v183]=v185;v73=v92[3];else v73=v73 + 1;end end v73=v73 + 1;end end A,B=v26(v10(v77));if  not A[1] then local v94=v34[4][v73] or "?";error("Script error at ["   .. v94   .. "]:"   .. A[2]);else return v12(A,2,B);end end;end return v28(v27(),{},v16)();end v14("LOL!8F3O0003073O0072752O6E696E6703053O007072696E7403093O002372752O6E696E672303043O0067616D65030A3O004765745365727669636503103O0055736572496E70757453657276696365030A3O00496E707574426567616E03073O00436F2O6E65637403083O00746F737472696E6703043O006D61746803063O0072616E646F6D024O0084D79741022O0080FF642OCD4103083O00496E7374616E63652O033O006E657703093O005363722O656E47756903053O004672616D6503093O00546578744C6162656C030A3O005465787442752O746F6E03043O004E616D6503063O00506172656E7403073O00506C6179657273030B3O004C6F63616C506C61796572030C3O0057616974466F724368696C6403093O00506C61796572477569030E3O005A496E6465784265686176696F7203043O00456E756D03073O005369626C696E6703103O004261636B67726F756E64436F6C6F723303063O00436F6C6F723303073O0066726F6D524742025O00C05440030C3O00426F72646572436F6C6F7233028O00030F3O00426F7264657253697A65506978656C026O00244003083O00506F736974696F6E03053O005544696D320230DFF23F9691DA3F023A67B8BF822DD83F03043O0053697A65025O00C06C40025O00A0684003063O004163746976650100025O00E06F4003163O004261636B67726F756E645472616E73706172656E6379026O00F03F0241DC2F4016B2B03F02984EE09F0F64B73F026O006A40026O00564003043O00466F6E74030A3O00536F7572636553616E7303043O005465787403083O004D6164652062793A030A3O0054657874436F6C6F723303083O005465787453697A65025O00802O40030B3O00546578745772612O7065642O010259D6E97F3AB7D73F025O00C06940026O00484003113O0028312B313D32206F6E20726F626C6F782902085236A036DEE13F025O00A06940026O00474003153O0028726F75786861766572206F6E2067697468756229030A3O00546578745363616C656403013O0032025O00406540026O00084002D59135803D0AEB3F02C74A36E151B88E3F03013O0058026O002C4003043O0047616D6503113O004D6F75736542752O746F6E31436C69636B03073O00636F2O6E65637403063O00636F756E743103063O00636F756E7432026O00F0BF03063O00636F756E743303043O00636F7264025O00E09540025O00804440025O00409540026O004440027O00402O033O00706F73025O00E07540025O00D07540025O00C07540025O00B075402O033O00646965034O0003063O004D6F76656F72030B3O0046696E645365727669636503113O005265706C69636174656453746F72616765031B3O0044656661756C744368617453797374656D436861744576656E747303163O004F6E4D652O73616765446F6E6546696C746572696E6703113O005361794D652O73616765526571756573742O033O00497341030B3O0052656D6F74654576656E7403073O007265717569726503043O004368617403113O00436C69656E74436861744D6F64756C6573030C3O004368617453652O74696E677303143O004D6178696D756D4D652O736167654C656E677468030D3O004F6E436C69656E744576656E74030A3O00412O706C65436F756E7403053O0062616E616E03053O0073636F72652O033O0076617203073O007265766C61737403073O0072756E6F6E636503043O0077616974027B14AE47E17A843F030A3O00536E616B6553702O656403053O00526967687403043O004C65667403023O00557003043O00446F776E03043O00736B697003053O00706169727303053O007461626C6503063O0072656D6F766503063O0062616E616E7303043O006368617203043O006261636B03043O00736E656B03063O00626F7264657203013O000A030B3O00437265617465547261707303043O0077612O6C03063O00557064617465030F3O004465736372697074696F6E5465787403073O00496D6167654964030A3O00422O6F7468496D616765030E3O00437573746F6D697365422O6F7468030A3O004669726553657276657203063O00756E7061636B00A0023O001F3O00013O00121E3O00013O0012063O00023O001201000100034O000C3O000200010012063O00043O00201D5O0005001201000200064O00163O0002000200202O00013O000700201D00010001000800021800036O0004000100030001001206000100093O0012060002000A3O00202O00020002000B0012010003000C3O0012010004000D4O002C000200044O000500013O00020012060002000E3O00202O00020002000F001201000300104O00140002000200020012060003000E3O00202O00030003000F001201000400114O00140003000200020012060004000E3O00202O00040004000F001201000500124O00140004000200020012060005000E3O00202O00050005000F001201000600124O00140005000200020012060006000E3O00202O00060006000F001201000700124O00140006000200020012060007000E3O00202O00070007000F001201000800134O0014000700020002001028000200140001001206000800043O00202O00080008001600202O00080008001700201D000800080018001201000A00194O00160008000A00020010280002001500080012060008001B3O00202O00080008001A00202O00080008001C0010280002001A00080010280003001400010010280003001500020012060008001E3O00202O00080008001F001201000900203O001201000A00203O001201000B00204O00160008000B00020010280003001D00080012060008001E3O00202O00080008001F001201000900223O001201000A00223O001201000B00224O00160008000B0002001028000300210008003021000300230024001206000800263O00202O00080008000F001201000900273O001201000A00223O001201000B00283O001201000C00224O00160008000C0002001028000300250008001206000800263O00202O00080008000F001201000900223O001201000A002A3O001201000B00223O001201000C002B4O00160008000C00020010280003002900080010280004001400010010280004001500030030210004002C002D0012060008001E3O00202O00080008001F0012010009002E3O001201000A002E3O001201000B002E4O00160008000B00020010280004001D00080030210004002F0030001206000800263O00202O00080008000F001201000900313O001201000A00223O001201000B00323O001201000C00224O00160008000C0002001028000400250008001206000800263O00202O00080008000F001201000900223O001201000A00333O001201000B00223O001201000C00344O00160008000C00020010280004002900080012060008001B3O00202O00080008003500202O0008000800360010280004003500080030210004003700380012060008001E3O00202O00080008001F001201000900223O001201000A00223O001201000B00224O00160008000B00020010280004003900080030210004003A003B0030210004003C003D0010280005001400010010280005001500030030210005002C002D0012060008001E3O00202O00080008001F0012010009002E3O001201000A002E3O001201000B002E4O00160008000B00020010280005001D00080030210005002F0030001206000800263O00202O00080008000F001201000900313O001201000A00223O001201000B003E3O001201000C00224O00160008000C0002001028000500250008001206000800263O00202O00080008000F001201000900223O001201000A003F3O001201000B00223O001201000C00404O00160008000C00020010280005002900080012060008001B3O00202O00080008003500202O0008000800360010280005003500080030210005003700410012060008001E3O00202O00080008001F001201000900223O001201000A00223O001201000B00224O00160008000B00020010280005003900080030210005003A003B0030210005003C003D0010280006001400010010280006001500030030210006002C002D0012060008001E3O00202O00080008001F0012010009002E3O001201000A002E3O001201000B002E4O00160008000B00020010280006001D00080030210006002F0030001206000800263O00202O00080008000F001201000900313O001201000A00223O001201000B00423O001201000C00224O00160008000C0002001028000600250008001206000800263O00202O00080008000F001201000900223O001201000A00433O001201000B00223O001201000C00444O00160008000C00020010280006002900080012060008001B3O00202O00080008003500202O0008000800360010280006003500080030210006003700450012060008001E3O00202O00080008001F001201000900223O001201000A00223O001201000B00224O00160008000B000200102800060039000800302100060046003D0030210006003A003B0030210006003C003D2O0015000800013O001201000900474O00110008000800090010280007001400080010280007001500030012060008001E3O00202O00080008001F0012010009002E3O001201000A00223O001201000B00224O00160008000B00020010280007001D00080012060008001E3O00202O00080008001F001201000900483O001201000A00223O001201000B00224O00160008000B0002001028000700210008003021000700230049001206000800263O00202O00080008000F0012010009004A3O001201000A00223O001201000B004B3O001201000C00224O00160008000C0002001028000700250008001206000800263O00202O00080008000F001201000900223O001201000A003B3O001201000B00223O001201000C003B4O00160008000C00020010280007002900080012060008001B3O00202O00080008003500202O00080008003600102800070035000800302100070037004C0012060008001E3O00202O00080008001F0012010009002E3O001201000A002E3O001201000B002E4O00160008000B000200102800070039000800302100070046003D0030210007003A004D0030210007003C003D0012060008004E3O00202O00080008001600202O00080008001700202O0008000800192O00220008000800012O00220009000800012O0015000A00013O001201000B00474O0011000A000A000B2O002200090009000A00202O000A0009004F00201D000A000A0050000608000C0001000100012O00153O00084O0004000A000C0001001201000A00223O00121E000A00513O001201000A00533O00121E000A00523O001201000A00223O00121E000A00544O000A000A5O00121E000A00553O001201000A00303O001201000B00563O001201000C00303O000417000A003E2O01001206000E00553O002023000E000D0022001206000E00513O00200F000E000E003000121E000E00513O001206000E00523O00200F000E000E003000121E000E00523O002629000D00322O0100570004103O00322O01000E09005800322O01000D0004103O00322O01001206000E00513O002602000E00362O0100590004103O00362O01001206000E00553O002023000E000D005A001201000E00223O00121E000E00513O001206000E00523O002602000E003D2O0100590004103O003D2O01001201000E00223O00121E000E00523O001206000E00553O002023000E000D005A00041A000A00232O012O000A000A00043O001201000B005C3O001201000C005D3O001201000D005E3O001201000E005F4O0013000A0004000100121E000A005B3O001206000A00553O001206000B005B3O00202O000B000B0030002023000A000B0030001201000A00613O00121E000A00603O001201000A00613O00121E000A00623O001206000A00043O00201D000A000A0063001201000C00644O0016000A000C000200201D000B000A0018001201000D00654O0016000B000D000200201D000C000B0018001201000E00664O0016000C000E000200201D000D000B0018001201000F00674O0016000D000F000200201D000E000D0068001201001000694O0016000E00100002000619000E00642O013O0004103O00642O0100201D000E000C0068001201001000694O0016000E00100002000612000E00652O0100010004103O00652O012O000E3O00013O001206000E006A3O001206000F00043O00201D000F000F00630012010011006B4O0016000F0011000200201D000F000F00180012010011006C4O0016000F0011000200201D000F000F00180012010011006D4O002C000F00114O0005000E3O000200202O000E000E006E00202O000F000C006F00201D000F000F000800060800110002000100012O00153O000E4O0004000F00110001000218000F00033O001206001000703O001201001100303O001201001200533O000417001000802O012O00150014000F3O001201001500714O000C00140002000100041A0010007C2O01001201001000223O00121E001000723O001201001000613O00121E001000733O001201001000613O00121E001000743O001201001000303O00121E001000753O001206001000763O001201001100774O00140010000200020006190010009F02013O0004103O009F0201001206001000013O002602001000912O01002D0004103O00912O010004103O009F0201001206001000543O00200F00100010003000121E001000543O001206001000543O001206001100783O0006240010003F020100110004103O003F0201001201001000223O00121E001000543O001206001000603O002602001000A92O0100790004103O00A92O01001206001000553O0012060011005B3O0012060012005B4O000B001200124O00220011001100120020230010001100220012060010005B3O0012060011005B3O00202O00110011003000200F0011001100300010280010003000110004103O00D52O01001206001000603O002602001000B82O01007A0004103O00B82O01001206001000553O0012060011005B3O0012060012005B4O000B001200124O00220011001100120020230010001100220012060010005B3O0012060011005B3O00202O00110011003000200D0011001100300010280010003000110004103O00D52O01001206001000603O002602001000C72O01007B0004103O00C72O01001206001000553O0012060011005B3O0012060012005B4O000B001200124O00220011001100120020230010001100220012060010005B3O0012060011005B3O00202O00110011003000200D0011001100590010280010003000110004103O00D52O01001206001000603O002602001000D52O01007C0004103O00D52O01001206001000553O0012060011005B3O0012060012005B4O000B001200124O00220011001100120020230010001100220012060010005B3O0012060011005B3O00202O00110011003000200F001100110059001028001000300011001201001000303O00121E0010007D3O0012060010005B4O000B001000103O001201001100303O001201001200533O000417001000E82O010012060014007D3O00261B001400E52O0100300004103O00E52O010012060014005B3O00200F0015001300300012060016005B4O00220016001600132O002A0014001500160004103O00E72O01001201001400223O00121E0014007D3O00041A001000DC2O01001206001000553O0012060011005B3O00202O0011001100302O002200100010001100261B001000F42O01005A0004103O00F42O01001206001000553O0012060011005B3O00202O0011001100302O002200100010001100260200100030020100300004103O003002010012060010007E3O0012060011005B4O00200010000200120004103O00FD2O010012060015007F3O00202O0015001500800012060016005B4O0015001700134O000400150017000100062B001000F82O0100020004103O00F82O012O000A001000043O0012010011005C3O0012010012005D3O0012010013005E3O0012010014005F4O001300100004000100121E0010005B3O0012010010007A3O00121E001000603O001201001000303O001201001100563O001201001200303O000417001000270201001206001400553O002023001400130022001206001400513O00200F00140014003000121E001400513O001206001400523O00200F00140014003000121E001400523O0026290013001B020100570004103O001B0201000E090058001B020100130004103O001B0201001206001400513O0026020014001F020100590004103O001F0201001206001400553O00202300140013005A001201001400223O00121E001400513O001206001400523O00260200140026020100590004103O00260201001201001400223O00121E001400523O001206001400553O00202300140013005A00041A0010000C0201001206001000703O001201001100303O001201001200533O0004170010002F02012O00150014000F3O001201001500714O000C00140002000100041A0010002B02010004103O003802010012060010007E3O0012060011005B4O00200010000200120004103O00360201001206001500553O00202300150014003000062B00100034020100020004103O00340201001206001000753O0026020010003F020100300004103O003F02010012010010007A3O00121E001000603O001201001000223O00121E001000753O001201001000613O00121E001000733O001201001000223O00121E001000813O0012060010007E3O001206001100554O00200010000200120004103O006B02010026020014004B020100220004103O004B0201001206001500833O00121E001500823O0026020014004F020100300004103O004F0201001206001500843O00121E001500823O002602001400530201005A0004103O00530201001206001500853O00121E001500823O0026020014005A020100490004103O005A0201001206001500713O00121E001500823O001206001500813O00200F00150015003000121E001500813O001206001500513O00260200150064020100590004103O00640201001201001500303O00121E001500513O001206001500733O001201001600864O001100150015001600121E001500733O0004103O00670201001206001500513O00200F00150015003000121E001500513O001206001500733O001206001600824O001100150015001600121E001500733O00062B00100047020100020004103O00470201001206001000813O001206001100703O0006250010008C020100110004103O008C0201001206001000813O00200F00100010003000121E001000814O00150010000F3O001201001100714O000C001000020001001206001000873O0026020010007D0201003D0004103O007D02012O00150010000F3O001201001100884O000C001000020001001206001000723O00200F00100010003000121E001000723O0012060010005B4O000B001000103O001201001100303O001201001200533O0004170010008B02010012060014005B3O00200F0015001300300012060016005B4O00220016001600132O002A00140015001600041A0010008502010004103O006D02012O000A00103O00020030210010003000892O000A00113O0002001206001200733O0010280011008A00120012060012008C3O0010280011008B00120010280010005A0011001206001100043O00201D001100110005001201001300644O001600110013000200202O00110011008D00201D00110011008E0012060013008F4O0015001400104O0003001300144O002600113O00010004103O00882O012O000E3O00013O00043O00073O0003073O004B6579436F646503043O00456E756D030B3O0053746F704B657962696E6403073O0072752O6E696E672O0103053O007072696E7403093O002373746F2O7065642301103O00202O00013O0001001206000200023O00202O000200020001001206000300034O00220002000200030006240001000F000100020004103O000F0001001206000100043O0026020001000F000100050004103O000F0001001206000100063O001201000200074O000C0001000200012O001F00015O00121E000100044O000E3O00017O00103O00053O00053O00053O00053O00053O00053O00053O00063O00063O00063O00073O00073O00073O00083O00083O000B3O00023O0003073O00456E61626C6564012O00034O001C7O0030213O000100022O000E3O00017O00033O00523O00523O00533O00133O0003073O0072752O6E696E67010003083O00746F737472696E67030B3O0046726F6D537065616B657203073O004D652O736167652O033O006C656E026O001C4003063O00737472696E6703053O006C6F77657203053O006D6174636803043O006C6566742O033O0064696503053O00526967687403043O004C65667403053O00726967687403023O00757003043O00446F776E03023O00557003043O00646F776E014E3O001206000100013O00261B0001004D000100020004103O004D00010006123O0006000100010004103O000600012O000E3O00013O001206000100033O00202O00023O00042O0014000100020002001206000200033O00202O00033O00052O001400020002000200201D0003000200062O00140003000200022O001C00045O00200D0004000400070006070003004D000100040004103O004D0001001206000300083O00202O0003000300092O0015000400024O001400030002000200201D00030003000A0012010005000B4O00160003000500020006190003002100013O0004103O002100010012060003000C3O00261B000300210001000D0004103O002100010012010003000E3O00121E0003000C3O0004103O004D0001001206000300083O00202O0003000300092O0015000400024O001400030002000200201D00030003000A0012010005000F4O00160003000500020006190003003000013O0004103O003000010012060003000C3O00261B000300300001000E0004103O003000010012010003000D3O00121E0003000C3O0004103O004D0001001206000300083O00202O0003000300092O0015000400024O001400030002000200201D00030003000A001201000500104O00160003000500020006190003003F00013O0004103O003F00010012060003000C3O00261B0003003F000100110004103O003F0001001201000300123O00121E0003000C3O0004103O004D0001001206000300083O00202O0003000300092O0015000400024O001400030002000200201D00030003000A001201000500134O00160003000500020006190003004D00013O0004103O004D00010012060003000C3O00261B0003004D000100120004103O004D0001001201000300113O00121E0003000C4O000E3O00017O004E3O00723O00723O00723O00733O00733O00743O00763O00763O00763O00773O00773O00773O00783O00783O00783O00783O00783O00783O00793O00793O00793O00793O00793O00793O00793O00793O00793O00793O00793O00793O007B3O007B3O007C3O007D3O007D3O007D3O007D3O007D3O007D3O007D3O007D3O007D3O007D3O007D3O007D3O007F3O007F3O00803O00813O00813O00813O00813O00813O00813O00813O00813O00813O00813O00813O00813O00833O00833O00843O00853O00853O00853O00853O00853O00853O00853O00853O00853O00853O00853O00853O00863O00863O008A3O000D3O0003073O0072752O6E696E67010003043O0072616E6403043O006D61746803063O0072616E646F6D026O00F03F025O00E0954003043O00636F7264028O0003053O0062616E616E026O00084003043O0077612O6C027O0040011C3O001206000100013O00260200010004000100020004103O000400012O000E3O00013O001206000100043O00202O000100010005001201000200063O001201000300074O001600010003000200121E000100033O001206000100083O001206000200034O002200010001000200260200010004000100090004103O000400010004103O001100010004103O000400010026023O00160001000A0004103O00160001001206000100083O001206000200033O00202300010002000B0026023O001B0001000C0004103O001B0001001206000100083O001206000200033O00202300010002000D2O000E3O00017O001C3O008C3O008C3O008C3O008D3O00903O00903O00903O00903O00903O00903O00913O00913O00913O00913O00913O00923O00933O00953O00953O00963O00963O00963O00983O00983O00993O00993O00993O009B3O00A0022O00013O00013O00023O00023O00023O00033O00033O00033O00033O00043O00043O000B3O00043O000C3O000C3O000C3O000C3O000C3O000C3O000C3O000D3O000D3O000D3O000D3O000E3O000E3O000E3O000E3O000F3O000F3O000F3O000F3O00103O00103O00103O00103O00113O00113O00113O00113O00123O00123O00123O00123O00133O00143O00143O00143O00143O00143O00143O00143O00153O00153O00153O00153O00163O00173O00183O00183O00183O00183O00183O00183O00183O00193O00193O00193O00193O00193O00193O00193O001A3O001B3O001B3O001B3O001B3O001B3O001B3O001B3O001B3O001C3O001C3O001C3O001C3O001C3O001C3O001C3O001C3O001D3O001E3O001F3O00203O00203O00203O00203O00203O00203O00203O00213O00223O00223O00223O00223O00223O00223O00223O00223O00233O00233O00233O00233O00233O00233O00233O00233O00243O00243O00243O00243O00253O00263O00263O00263O00263O00263O00263O00263O00273O00283O00293O002A3O002B3O002C3O002C3O002C3O002C3O002C3O002C3O002C3O002D3O002E3O002E3O002E3O002E3O002E3O002E3O002E3O002E3O002F3O002F3O002F3O002F3O002F3O002F3O002F3O002F3O00303O00303O00303O00303O00313O00323O00323O00323O00323O00323O00323O00323O00333O00343O00353O00363O00373O00383O00383O00383O00383O00383O00383O00383O00393O003A3O003A3O003A3O003A3O003A3O003A3O003A3O003A3O003B3O003B3O003B3O003B3O003B3O003B3O003B3O003B3O003C3O003C3O003C3O003C3O003D3O003E3O003E3O003E3O003E3O003E3O003E3O003E3O003F3O00403O00413O00423O00423O00423O00423O00433O00443O00443O00443O00443O00443O00443O00443O00453O00453O00453O00453O00453O00453O00453O00463O00473O00473O00473O00473O00473O00473O00473O00473O00483O00483O00483O00483O00483O00483O00483O00483O00493O00493O00493O00493O004A3O004B3O004B3O004B3O004B3O004B3O004B3O004B3O004C3O004D3O004E3O004F3O004F3O004F3O004F3O004F3O00503O00503O00503O00503O00503O00513O00513O00533O00533O00513O00543O00543O00553O00553O00563O00563O00573O00573O00583O00583O00583O00583O00593O00593O005A3O005A3O005A3O005B3O005B3O005B3O005C3O005C3O005C3O005C3O005C3O005C3O005C3O005D3O005D3O005E3O005E3O00603O00603O00603O00613O00613O00623O00623O00583O00653O00653O00653O00653O00653O00653O00653O00663O00663O00663O00663O00673O00673O00683O00683O00693O00693O00693O00693O006A3O006A3O006A3O006B3O006B3O006B3O006C3O006C3O006C3O006D3O006D3O006D3O006D3O006D3O006D3O006D3O006D3O006D3O006D3O006E3O00703O00703O00703O00703O00703O00703O00703O00703O00703O00703O00703O00703O00703O00713O00713O008A3O008A3O00713O009B3O009C3O009C3O009C3O009C3O009D3O009D3O009D3O009C3O009F3O009F3O00A03O00A03O00A13O00A13O00A23O00A23O00A33O00A33O00A33O00A33O00A33O00A43O00A43O00A43O00A53O00A73O00A73O00A73O00A83O00A83O00A83O00A83O00A93O00A93O00AA3O00AA3O00AA3O00AC3O00AC3O00AC3O00AC3O00AC3O00AC3O00AD3O00AD3O00AD3O00AD3O00AD3O00AE3O00AF3O00AF3O00AF3O00B13O00B13O00B13O00B13O00B13O00B13O00B23O00B23O00B23O00B23O00B23O00B33O00B43O00B43O00B43O00B63O00B63O00B63O00B63O00B63O00B63O00B73O00B73O00B73O00B73O00B73O00B83O00B93O00B93O00B93O00BA3O00BA3O00BA3O00BA3O00BA3O00BA3O00BB3O00BB3O00BB3O00BB3O00BB3O00BD3O00BD3O00BE3O00BE3O00BE3O00BE3O00BE3O00BF3O00BF3O00BF3O00C13O00C13O00C13O00C13O00C13O00C23O00C43O00C43O00BE3O00C73O00C73O00C73O00C73O00C73O00C73O00C73O00C73O00C73O00C73O00C73O00C73O00C93O00C93O00C93O00C93O00CA3O00CA3O00CA3O00CA3O00CA3O00C93O00CA3O00CC3O00CC3O00CC3O00CC3O00CC3O00CC3O00CC3O00CD3O00CD3O00CE3O00CE3O00CE3O00CE3O00CF3O00CF3O00D03O00D03O00D03O00D13O00D13O00D13O00D23O00D23O00D23O00D23O00D23O00D23O00D23O00D33O00D33O00D43O00D43O00D63O00D63O00D63O00D73O00D73O00D83O00D83O00CE3O00DB3O00DB3O00DB3O00DB3O00DC3O00DC3O00DC3O00DB3O00DE3O00E03O00E03O00E03O00E03O00E13O00E13O00E03O00E13O00E43O00E43O00E43O00E53O00E53O00E63O00E63O00E93O00E93O00EA3O00EA3O00EB3O00EB3O00EB3O00EB3O00EC3O00EC3O00ED3O00ED3O00EF3O00EF3O00F03O00F03O00F23O00F23O00F33O00F33O00F53O00F53O00F63O00F63O00F73O00F73O00F73O00F93O00F93O00F93O00FB3O00FB3O00FC3O00FC3O00FC3O00FC3O00FD3O00FF3O00FF3O00FF3O002O012O002O012O002O012O002O012O00EB3O002O012O0003012O0003012O0003012O0003012O0004012O0004012O0004012O0005012O0005012O0005012O0006012O0006012O0006012O0007012O0007012O0007012O0009012O0009012O0009012O000A012O000A012O000A012O000A012O000A012O000B012O000B012O000B012O000B012O000B012O000A012O000C012O000E012O000E012O000E012O000E012O000E012O000E012O000E012O000E012O000F012O000F012O000F012O000F012O000F012O000F012O000F012O000F012O000F012O000F012O000F012O0010012O00",v8());
