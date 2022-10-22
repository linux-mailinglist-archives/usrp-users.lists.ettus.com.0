Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD55608ED3
	for <lists+usrp-users@lfdr.de>; Sat, 22 Oct 2022 19:38:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 503BA383BB7
	for <lists+usrp-users@lfdr.de>; Sat, 22 Oct 2022 13:38:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666460317; bh=Nwj4DK2mNePPlvQgcNmkJ/hFO2BQ+wtTUt8Gujm01vA=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=bZOkzojwKzheNiqy9P2PC//9QuNY1joikpkHWnkNU5mbkyBLZHu5Ga017zt/8Rxan
	 7rv6tiDScFfnt07W1YxQ8rudLAogdCpjB6dUnpMfbvwgaWw/D68EMln8PGX4A8wO2V
	 Z4eutFMztaCPhnM77VPTppvvOHA9UmuvjUxECDzanzD9BemCKzEuucYGCmWrRh2PJP
	 dpQNDKciO5cItDKAt9pGjIbr9Co9FzGmXfx0KClrgBHXBfRBjI3r8SedTKJsSQ9IXp
	 UhASgmVcrDv94Noky8fjMM8miuynOvjrUPWp+JgXwhnkn9kfXQpsO3Jq7uNAGwkTkK
	 e2O/yjwww6LYA==
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	by mm2.emwd.com (Postfix) with ESMTPS id CF9EC3839A1
	for <usrp-users@lists.ettus.com>; Sat, 22 Oct 2022 13:37:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AjK8oxhq";
	dkim-atps=neutral
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-367cd2807f2so51676847b3.1
        for <usrp-users@lists.ettus.com>; Sat, 22 Oct 2022 10:37:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bm/RDefS2anEfHSo55at/D2FeYJJTat7G7Zowv+HmTU=;
        b=AjK8oxhqXaHpGFWSEg1Lea8s5Z7jhOQR+7dzewRfMvvLSOzMFvDXKeOwI7BL+mO6GY
         kNe0iRd904PA7OSbOP7+4QYbdB3IyFcgmsKmL2NensGOMgjEtoAfLWAiEE4lYO/qxKo+
         06O7nXAi9q6HwhBpu2/pNJyRk61VrT4WdHaTEoU13Se4Et2GhHHCaBfdCaPDE21pxDu0
         kSkkoejGvmTgGzduDSzucXluw7pcwLc4NjGlG5SNeUSLCA0apdZfhuef9mr8bLs7Jt15
         DiBRs+oGjhDkrBjB12XUCZGXYrHi/JkbhL6o9iONpQ+AlLpqFatVXKT+MHn7yr7s2omr
         5VvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bm/RDefS2anEfHSo55at/D2FeYJJTat7G7Zowv+HmTU=;
        b=71DqTRgGAQ+aXgo9sjNX/c38GZJW+NL5x98dpC7JLu9fmqvrFL33uV9Hm9d02lUZPT
         Vl2bvw9bwujwfUiuKmkYRgRCToidalB+AYT5zFXpASAPx/tzyXCgDrPc5fT8wWNEQUgC
         oTLwbTEjSD0acrAIDRYd9TcF0dnnMNMWs47WSHxFCGcgS+Sqnuqwnq8SLHYbM0ASfpD4
         hYDIJScdt+8/YpX4HFD+s85mQz/wXkWk+3Kr5EbSvOU2sSfYhKGMRDijhPSKEGJGPHsE
         jSwl05LkZVBrlT74YgR/7GyzLi3b1qIy7qvzmSE6J7ozXXneAvDTW7RXzECrd5t34Pcx
         4ilQ==
X-Gm-Message-State: ACrzQf1+zey9+a4Jmk9aRI9EXM2DCOwfNPviVaiDxNeOwxcm6Hcj1Rtk
	enZLEX/f0wa27mVOs/qiWvgjp5YuF6MLyi+qUz/Ak1kBlihz9ts4
X-Google-Smtp-Source: AMsMyM6/oRNW8MRSK1NMc4qJ+TPrObRqmFnWYNrCNMAODZwT7YFnoXKpV7ud9AYnI59jXL3kCzwEFQm8QtUZw9o4X5Q=
X-Received: by 2002:a81:a109:0:b0:367:efbe:e1f0 with SMTP id
 y9-20020a81a109000000b00367efbee1f0mr15391894ywg.365.1666460268829; Sat, 22
 Oct 2022 10:37:48 -0700 (PDT)
MIME-Version: 1.0
From: sp <stackprogramer@gmail.com>
Date: Sat, 22 Oct 2022 21:07:37 +0330
Message-ID: <CAA=S3PvFmb-7AMsfuSSBurMj7BZFoRY8f-pBLL4PiX=nSfXCGA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: U4RPFCL373PLNNFSGCHPBKWTAFVQTCW6
X-Message-ID-Hash: U4RPFCL373PLNNFSGCHPBKWTAFVQTCW6
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] when I intialize block RAM and I want to use block RAM in a FOR I faced with this invalid memory name?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U4RPFCL373PLNNFSGCHPBKWTAFVQTCW6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8967777746067547909=="

--===============8967777746067547909==
Content-Type: multipart/alternative; boundary="0000000000005b200005eba30473"

--0000000000005b200005eba30473
Content-Type: text/plain; charset="UTF-8"

when I initialize block RAM and I want to use block RAM in a FOR I am faced
with this invalid memory name.
When I don't use RAM block array in For loop I have not any warning and
readmemh works correctly...
WARNING: [Synth 8-2898] ignoring malformed $readmem task: invalid memory
name [file.sv:50]
WARNING: [Synth 8-2898] ignoring malformed $readmem task: invalid memory
name [file.sv:51]


module multiplier_core
#(parameter WIDTH=64)
(input clk, input reset,input [31:0] reg_user,
input [32-1:0] config_tdata, input config_tlast, input config_tvalid, output
config_tready,
output [63:0] o_tdata, output o_tlast, output o_tvalid, input o_tready);

reg signed [15:0] data_samples_i_buffer [1024:0];
reg signed [15:0] data_samples_q_buffer [1024:0];

reg [31:0] edgei_tbl_rom[0:1024];
reg [31:0] edgeq_tbl_rom[0:1024];



initial begin
//Initial

$readmemh("/home/sp/rfnoc-test/rfnoc/fpga/rfnoc_block_multiplier/1.hex"
,edgei_tbl_rom,0,1024);
$readmemh("/home/sp/rfnoc-test/rfnoc/fpga/rfnoc_block_multiplier/1.hex"
,edgeq_tbl_rom,0,1024);
ebd


always @(posedge config_tvalid ) begin
if(state==1)
begin
$display("-------Clock is triggerted...%0d ----",m);

//Save samples in samples buffer
data_samples_i_buffer[m]=config_tdata[15:0];
data_samples_q_buffer[m]=config_tdata[31:16];
$display("Sample %0d = %0d +i %0d"
,m,data_samples_i_buffer[m],data_samples_q_buffer[m]);


if(m==1024) begin
m=0;
end else begin
m=m+1;
end
// temp_i_mult_result_sum= edge_tbl_rom[j];
for(j=0; j<1000; j=j+1)
begin
temp_i_mult_result_sum= edgei_tbl_rom[j];
//(temp_i_mult_result_sum+data_samples_i_buffer[j]*edgei_tbl_rom[j]+data_samples_q_buffer[j]*edgeq_tbl_rom[j]);

end
// energy_factor=reg_user;//65536*20;
multiplier_tdata=temp_i_mult_result_sum;
temp_i_mult_result_sum=0;
end
else begin


end
end
assign o_tdata = { 32'h00000000, multiplier_tdata};
assign o_tlast = config_tlast;
assign o_tvalid = config_tvalid;
assign config_tready = o_tready;
endmodule

--0000000000005b200005eba30473
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"color:rgb(0,0,0);font-family:&quot;Droid San=
s Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quot=
;;font-size:14px;white-space:pre-wrap">when I initialize block RAM and I wa=
nt to use block RAM in a FOR I am faced with this invalid memory name.<span=
 style=3D"color:rgb(0,0,255)"><br></span></div><div style=3D"color:rgb(0,0,=
0);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace,=
&quot;Droid Sans Fallback&quot;;font-size:14px;white-space:pre-wrap">When I=
 don&#39;t use RAM block array in For loop I have not any warning and readm=
emh works correctly...</div><div style=3D"color:rgb(0,0,0);font-family:&quo=
t;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fa=
llback&quot;;font-size:14px;white-space:pre-wrap">WARNING: [Synth 8-2898] i=
gnoring malformed $readmem task: invalid memory name [<a href=3D"http://fil=
e.sv:50">file.sv:50</a>]<br>WARNING: [Synth 8-2898] ignoring malformed $rea=
dmem task: invalid memory name [<a href=3D"http://file.sv:51">file.sv:51</a=
>]<br></div><div style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mon=
o&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;fon=
t-size:14px;white-space:pre-wrap"><br></div><div style=3D"color:rgb(0,0,0);=
font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace,&qu=
ot;Droid Sans Fallback&quot;;font-size:14px;white-space:pre-wrap"><br></div=
><div style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&qu=
ot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font-size:14px=
;white-space:pre-wrap"><span style=3D"color:rgb(0,0,255)">module</span> mul=
tiplier_core</div><div style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sa=
ns Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quo=
t;;font-size:14px;white-space:pre-wrap">  #(<span style=3D"color:rgb(0,0,25=
5)">parameter</span> WIDTH=3D<span style=3D"color:rgb(9,134,88)">64</span>)=
</div><div style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot=
;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font-size=
:14px;white-space:pre-wrap">   (<span style=3D"color:rgb(0,0,255)">input</s=
pan> clk, <span style=3D"color:rgb(0,0,255)">input</span> reset,<span style=
=3D"color:rgb(0,0,255)">input</span> [<span style=3D"color:rgb(9,134,88)">3=
1</span>:<span style=3D"color:rgb(9,134,88)">0</span>] reg_user,</div><div =
style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;mon=
ospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font-size:14px;white=
-space:pre-wrap">    <span style=3D"color:rgb(0,0,255)">input</span> [<span=
 style=3D"color:rgb(9,134,88)">32</span>-<span style=3D"color:rgb(9,134,88)=
">1</span>:<span style=3D"color:rgb(9,134,88)">0</span>] config_tdata, <spa=
n style=3D"color:rgb(0,0,255)">input</span> config_tlast, <span style=3D"co=
lor:rgb(0,0,255)">input</span> config_tvalid, <span style=3D"color:rgb(0,0,=
255)">output</span> config_tready,</div><div style=3D"color:rgb(0,0,0);font=
-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;D=
roid Sans Fallback&quot;;font-size:14px;white-space:pre-wrap">    <span sty=
le=3D"color:rgb(0,0,255)">output</span> [<span style=3D"color:rgb(9,134,88)=
">63</span>:<span style=3D"color:rgb(9,134,88)">0</span>] o_tdata, <span st=
yle=3D"color:rgb(0,0,255)">output</span> o_tlast, <span style=3D"color:rgb(=
0,0,255)">output</span> o_tvalid, <span style=3D"color:rgb(0,0,255)">input<=
/span> o_tready);</div><br style=3D"color:rgb(0,0,0);font-family:&quot;Droi=
d Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback=
&quot;;font-size:14px;white-space:pre-wrap"><div style=3D"color:rgb(0,0,0);=
font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace,&qu=
ot;Droid Sans Fallback&quot;;font-size:14px;white-space:pre-wrap">     <spa=
n style=3D"color:rgb(0,0,255)">reg</span> <span style=3D"color:rgb(0,0,255)=
">signed</span> [<span style=3D"color:rgb(9,134,88)">15</span>:<span style=
=3D"color:rgb(9,134,88)">0</span>] data_samples_i_buffer [<span style=3D"co=
lor:rgb(9,134,88)">1024</span>:<span style=3D"color:rgb(9,134,88)">0</span>=
];</div><div style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&qu=
ot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font-si=
ze:14px;white-space:pre-wrap">     <span style=3D"color:rgb(0,0,255)">reg</=
span> <span style=3D"color:rgb(0,0,255)">signed</span> [<span style=3D"colo=
r:rgb(9,134,88)">15</span>:<span style=3D"color:rgb(9,134,88)">0</span>] da=
ta_samples_q_buffer [<span style=3D"color:rgb(9,134,88)">1024</span>:<span =
style=3D"color:rgb(9,134,88)">0</span>];</div><br style=3D"color:rgb(0,0,0)=
;font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace,&q=
uot;Droid Sans Fallback&quot;;font-size:14px;white-space:pre-wrap"><div sty=
le=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;monosp=
ace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font-size:14px;white-sp=
ace:pre-wrap">     <span style=3D"color:rgb(0,0,255)">reg</span> [<span sty=
le=3D"color:rgb(9,134,88)">31</span>:<span style=3D"color:rgb(9,134,88)">0<=
/span>] edgei_tbl_rom[<span style=3D"color:rgb(9,134,88)">0</span>:<span st=
yle=3D"color:rgb(9,134,88)">1024</span>];</div><div style=3D"color:rgb(0,0,=
0);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace,=
&quot;Droid Sans Fallback&quot;;font-size:14px;white-space:pre-wrap">     <=
span style=3D"color:rgb(0,0,255)">reg</span> [<span style=3D"color:rgb(9,13=
4,88)">31</span>:<span style=3D"color:rgb(9,134,88)">0</span>] edgeq_tbl_ro=
m[<span style=3D"color:rgb(9,134,88)">0</span>:<span style=3D"color:rgb(9,1=
34,88)">1024</span>];</div><br style=3D"color:rgb(0,0,0);font-family:&quot;=
Droid Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fall=
back&quot;;font-size:14px;white-space:pre-wrap"><br style=3D"color:rgb(0,0,=
0);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace,=
&quot;Droid Sans Fallback&quot;;font-size:14px;white-space:pre-wrap"><br st=
yle=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;monos=
pace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font-size:14px;white-s=
pace:pre-wrap"><div style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans =
Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;=
font-size:14px;white-space:pre-wrap">     <span style=3D"color:rgb(0,0,255)=
">initial</span> <span style=3D"color:rgb(0,0,255)">begin</span> </div><div=
 style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;mo=
nospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font-size:14px;whit=
e-space:pre-wrap">          <span style=3D"color:rgb(0,128,0)">//Initial </=
span></div><br style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&=
quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font-=
size:14px;white-space:pre-wrap"><div style=3D"color:rgb(0,0,0);font-family:=
&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid San=
s Fallback&quot;;font-size:14px;white-space:pre-wrap">            $readmemh=
(<span style=3D"color:rgb(163,21,21)">&quot;/home/sp/rfnoc-test/rfnoc/fpga/=
rfnoc_block_multiplier/1.hex&quot;</span>,edgei_tbl_rom,<span style=3D"colo=
r:rgb(9,134,88)">0</span>,<span style=3D"color:rgb(9,134,88)">1024</span>);=
</div><div style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot=
;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font-size=
:14px;white-space:pre-wrap">            $readmemh(<span style=3D"color:rgb(=
163,21,21)">&quot;/home/sp/rfnoc-test/rfnoc/fpga/rfnoc_block_multiplier/1.h=
ex&quot;</span>,edgeq_tbl_rom,<span style=3D"color:rgb(9,134,88)">0</span>,=
<span style=3D"color:rgb(9,134,88)">1024</span>);</div><div style=3D"color:=
rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,mo=
nospace,&quot;Droid Sans Fallback&quot;;font-size:14px;white-space:pre-wrap=
">    ebd</div><br style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans M=
ono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;f=
ont-size:14px;white-space:pre-wrap"><br style=3D"color:rgb(0,0,0);font-fami=
ly:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid =
Sans Fallback&quot;;font-size:14px;white-space:pre-wrap"><div style=3D"colo=
r:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,=
monospace,&quot;Droid Sans Fallback&quot;;font-size:14px;white-space:pre-wr=
ap">     <span style=3D"color:rgb(0,0,255)">always</span> @(<span style=3D"=
color:rgb(0,0,255)">posedge</span> config_tvalid ) <span style=3D"color:rgb=
(0,0,255)">begin</span></div><div style=3D"color:rgb(0,0,0);font-family:&qu=
ot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans F=
allback&quot;;font-size:14px;white-space:pre-wrap">        <span style=3D"c=
olor:rgb(0,0,255)">if</span>(state=3D=3D<span style=3D"color:rgb(9,134,88)"=
>1</span>)</div><div style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans=
 Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quot;=
;font-size:14px;white-space:pre-wrap">        <span style=3D"color:rgb(0,0,=
255)">begin</span></div><div style=3D"color:rgb(0,0,0);font-family:&quot;Dr=
oid Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallba=
ck&quot;;font-size:14px;white-space:pre-wrap">           $display(<span sty=
le=3D"color:rgb(163,21,21)">&quot;-------Clock is triggerted...%0d ----&quo=
t;</span>,m);</div><br style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sa=
ns Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quo=
t;;font-size:14px;white-space:pre-wrap"><div style=3D"color:rgb(0,0,0);font=
-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;D=
roid Sans Fallback&quot;;font-size:14px;white-space:pre-wrap">            <=
span style=3D"color:rgb(0,128,0)">//Save samples in samples buffer </span><=
/div><div style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;=
,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font-size:=
14px;white-space:pre-wrap">            data_samples_i_buffer[m]=3Dconfig_td=
ata[<span style=3D"color:rgb(9,134,88)">15</span>:<span style=3D"color:rgb(=
9,134,88)">0</span>];</div><div style=3D"color:rgb(0,0,0);font-family:&quot=
;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fal=
lback&quot;;font-size:14px;white-space:pre-wrap">            data_samples_q=
_buffer[m]=3Dconfig_tdata[<span style=3D"color:rgb(9,134,88)">31</span>:<sp=
an style=3D"color:rgb(9,134,88)">16</span>];</div><div style=3D"color:rgb(0=
,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospa=
ce,&quot;Droid Sans Fallback&quot;;font-size:14px;white-space:pre-wrap">   =
      </div><div style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mon=
o&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;fon=
t-size:14px;white-space:pre-wrap">            $display(<span style=3D"color=
:rgb(163,21,21)">&quot;Sample %0d =3D %0d +i %0d&quot;</span>,m,data_sample=
s_i_buffer[m],data_samples_q_buffer[m]);</div><br style=3D"color:rgb(0,0,0)=
;font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace,&q=
uot;Droid Sans Fallback&quot;;font-size:14px;white-space:pre-wrap"><br styl=
e=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;monospa=
ce&quot;,monospace,&quot;Droid Sans Fallback&quot;;font-size:14px;white-spa=
ce:pre-wrap"><div style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mo=
no&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;fo=
nt-size:14px;white-space:pre-wrap">            <span style=3D"color:rgb(0,0=
,255)">if</span>(m=3D=3D<span style=3D"color:rgb(9,134,88)">1024</span>) <s=
pan style=3D"color:rgb(0,0,255)">begin</span></div><div style=3D"color:rgb(=
0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monosp=
ace,&quot;Droid Sans Fallback&quot;;font-size:14px;white-space:pre-wrap">  =
          </div><div style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans=
 Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quot;=
;font-size:14px;white-space:pre-wrap">              m=3D<span style=3D"colo=
r:rgb(9,134,88)">0</span>;</div><div style=3D"color:rgb(0,0,0);font-family:=
&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid San=
s Fallback&quot;;font-size:14px;white-space:pre-wrap">            </div><di=
v style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;m=
onospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font-size:14px;whi=
te-space:pre-wrap">            <span style=3D"color:rgb(0,0,255)">end</span=
> <span style=3D"color:rgb(0,0,255)">else</span> <span style=3D"color:rgb(0=
,0,255)">begin</span></div><div style=3D"color:rgb(0,0,0);font-family:&quot=
;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fal=
lback&quot;;font-size:14px;white-space:pre-wrap">            </div><div sty=
le=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;monosp=
ace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font-size:14px;white-sp=
ace:pre-wrap">              m=3Dm+<span style=3D"color:rgb(9,134,88)">1</sp=
an>;</div><div style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&=
quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font-=
size:14px;white-space:pre-wrap">            </div><div style=3D"color:rgb(0=
,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospa=
ce,&quot;Droid Sans Fallback&quot;;font-size:14px;white-space:pre-wrap">   =
         <span style=3D"color:rgb(0,0,255)">end</span></div><div style=3D"c=
olor:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quo=
t;,monospace,&quot;Droid Sans Fallback&quot;;font-size:14px;white-space:pre=
-wrap">              <span style=3D"color:rgb(0,128,0)">// temp_i_mult_resu=
lt_sum=3D edge_tbl_rom[j];</span></div><div style=3D"color:rgb(0,0,0);font-=
family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Dr=
oid Sans Fallback&quot;;font-size:14px;white-space:pre-wrap">            <s=
pan style=3D"color:rgb(0,0,255)">for</span>(j=3D<span style=3D"color:rgb(9,=
134,88)">0</span>; j&lt;<span style=3D"color:rgb(9,134,88)">1000</span>; j=
=3Dj+<span style=3D"color:rgb(9,134,88)">1</span>)</div><div style=3D"color=
:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,m=
onospace,&quot;Droid Sans Fallback&quot;;font-size:14px;white-space:pre-wra=
p">                <span style=3D"color:rgb(0,0,255)">begin</span></div><di=
v style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;m=
onospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font-size:14px;whi=
te-space:pre-wrap">            </div><div style=3D"color:rgb(0,0,0);font-fa=
mily:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droi=
d Sans Fallback&quot;;font-size:14px;white-space:pre-wrap">              te=
mp_i_mult_result_sum=3D edgei_tbl_rom[j];<span style=3D"color:rgb(0,128,0)"=
>//(temp_i_mult_result_sum+data_samples_i_buffer[j]*edgei_tbl_rom[j]+data_s=
amples_q_buffer[j]*edgeq_tbl_rom[j]);</span></div><br style=3D"color:rgb(0,=
0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospac=
e,&quot;Droid Sans Fallback&quot;;font-size:14px;white-space:pre-wrap"><div=
 style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;mo=
nospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font-size:14px;whit=
e-space:pre-wrap">              </div><div style=3D"color:rgb(0,0,0);font-f=
amily:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Dro=
id Sans Fallback&quot;;font-size:14px;white-space:pre-wrap">               =
</div><div style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot=
;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font-size=
:14px;white-space:pre-wrap">                <span style=3D"color:rgb(0,0,25=
5)">end</span></div><div style=3D"color:rgb(0,0,0);font-family:&quot;Droid =
Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&q=
uot;;font-size:14px;white-space:pre-wrap">             </div><div style=3D"=
color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&qu=
ot;,monospace,&quot;Droid Sans Fallback&quot;;font-size:14px;white-space:pr=
e-wrap">          </div><div style=3D"color:rgb(0,0,0);font-family:&quot;Dr=
oid Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallba=
ck&quot;;font-size:14px;white-space:pre-wrap">                  </div><div =
style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;mon=
ospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font-size:14px;white=
-space:pre-wrap">               <span style=3D"color:rgb(0,128,0)">// energ=
y_factor=3Dreg_user;//65536*20;</span></div><div style=3D"color:rgb(0,0,0);=
font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace,&qu=
ot;Droid Sans Fallback&quot;;font-size:14px;white-space:pre-wrap">         =
       multiplier_tdata=3Dtemp_i_mult_result_sum;</div><div style=3D"color:=
rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,mo=
nospace,&quot;Droid Sans Fallback&quot;;font-size:14px;white-space:pre-wrap=
">          temp_i_mult_result_sum=3D<span style=3D"color:rgb(9,134,88)">0<=
/span>;</div><div style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mo=
no&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;fo=
nt-size:14px;white-space:pre-wrap">        </div><div style=3D"color:rgb(0,=
0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospac=
e,&quot;Droid Sans Fallback&quot;;font-size:14px;white-space:pre-wrap">    =
    <span style=3D"color:rgb(0,0,255)">end</span></div><div style=3D"color:=
rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,mo=
nospace,&quot;Droid Sans Fallback&quot;;font-size:14px;white-space:pre-wrap=
">        <span style=3D"color:rgb(0,0,255)">else</span> <span style=3D"col=
or:rgb(0,0,255)">begin</span></div><br style=3D"color:rgb(0,0,0);font-famil=
y:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid S=
ans Fallback&quot;;font-size:14px;white-space:pre-wrap"><br style=3D"color:=
rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,mo=
nospace,&quot;Droid Sans Fallback&quot;;font-size:14px;white-space:pre-wrap=
"><div style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&q=
uot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font-size:14p=
x;white-space:pre-wrap">        <span style=3D"color:rgb(0,0,255)">end</spa=
n></div><div style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&qu=
ot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font-si=
ze:14px;white-space:pre-wrap"> </div><div style=3D"color:rgb(0,0,0);font-fa=
mily:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droi=
d Sans Fallback&quot;;font-size:14px;white-space:pre-wrap">       </div><di=
v style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;m=
onospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font-size:14px;whi=
te-space:pre-wrap">  <span style=3D"color:rgb(0,0,255)">end</span></div><di=
v style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;m=
onospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font-size:14px;whi=
te-space:pre-wrap">        <span style=3D"color:rgb(0,0,255)">assign</span>=
 o_tdata =3D { <span style=3D"color:rgb(9,134,88)">32&#39;h00000000</span>,=
 multiplier_tdata};</div><div style=3D"color:rgb(0,0,0);font-family:&quot;D=
roid Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallb=
ack&quot;;font-size:14px;white-space:pre-wrap">        <span style=3D"color=
:rgb(0,0,255)">assign</span> o_tlast =3D config_tlast;</div><div style=3D"c=
olor:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quo=
t;,monospace,&quot;Droid Sans Fallback&quot;;font-size:14px;white-space:pre=
-wrap">        <span style=3D"color:rgb(0,0,255)">assign</span> o_tvalid =
=3D config_tvalid;</div><div style=3D"color:rgb(0,0,0);font-family:&quot;Dr=
oid Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallba=
ck&quot;;font-size:14px;white-space:pre-wrap">        <span style=3D"color:=
rgb(0,0,255)">assign</span> config_tready =3D o_tready;</div><div style=3D"=
color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&qu=
ot;,monospace,&quot;Droid Sans Fallback&quot;;font-size:14px;white-space:pr=
e-wrap"><span style=3D"color:rgb(0,0,255)">endmodule</span></div></div>

--0000000000005b200005eba30473--

--===============8967777746067547909==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8967777746067547909==--
