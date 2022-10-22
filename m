Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 968FE608D9B
	for <lists+usrp-users@lfdr.de>; Sat, 22 Oct 2022 16:10:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DD63D383978
	for <lists+usrp-users@lfdr.de>; Sat, 22 Oct 2022 10:10:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666447820; bh=wMO5N+HPaTl2lD5bIb8+Zr7XlYqrUD1qiKl/tXJlSNE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ekrAMroo2mStvFMvGfjHYdefrMI0m4UrUymPHI4/+YndigXimLi/16+F2tOwqJ0sk
	 HdEM4UIH0Nzp56Srr31nKdEA7vyAWCUXUQmACNS6CQFOYRVFZJ65Re3LcSAGzQXZMF
	 Gt6dlGg/em4pZiDCGlKHlnXK/T4/4UXiAgPVEj9yi7Hpvnexv1ocFW4XV4fpsFS0ES
	 xjOaNBL2MF/LXX3lb4mzvM+ie7/qwfYd6eg/hNTDLuE/uPyQ6QR57h375FCaO7J8nY
	 JikAA/048u8xguDqW7vley+s4kcKTHrDZykPDhReudd9piUH6eAhRx71eYVAtlPtE0
	 thTZ+NxwgeBjA==
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 878F53809F6
	for <usrp-users@lists.ettus.com>; Sat, 22 Oct 2022 10:09:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="L6eT40jq";
	dkim-atps=neutral
Received: by mail-yb1-f171.google.com with SMTP id 63so6390466ybq.4
        for <usrp-users@lists.ettus.com>; Sat, 22 Oct 2022 07:09:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jWaHeCbNe3W8LIXGx1fPpPUfuNYVQOvK2bkOPd7VMB8=;
        b=L6eT40jqERZInpByzZmTrRmGkfTLDM2XW+8hp5cpoLYbC8iiC6ibz2+IYugmO914aC
         FqrcuKV/QPwhfGwiVGsjoiFzEXz1PeSohWeViscyOvrR2QM0e2WbRGKPG0NlXGiArcHH
         0bH7fvi5wuSrdjxo8KkgJPJmtaCN7teZxb2DKiXsFIjeQcmVG+ID/phYvhk/MWA8NrqN
         SM0tn1mWcB6zkyUY+G2s9/dwD1OoQGn3BZFPnFZ4L+rwH1psnDiE6xWR1rtDV2IAGOmc
         83NZTo4zxb+X5Jf6vsjUsfzBJ/fXn8u4ueCcyprvxZ6w5f6u0RreGiPo7QXHG9/3NUYu
         cBKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jWaHeCbNe3W8LIXGx1fPpPUfuNYVQOvK2bkOPd7VMB8=;
        b=65HwA19HC7Sdq5K5IzpHPmNP2e7CR3yVgXkvuX6fN9JHF1kF4ZpMSlw9reheQK1GdS
         thAGjXSb71J+Hd9yEL1P0difjXcPy0H/zWU8aWgxuZzpj6wqQ+V5ZdeOzJ6BUISm0yrf
         u9Wi80INF+fsG6sFaX7J0i1duykpH7/cP5YVTaLKX4VpKnaEjtBG1wp9oaRhEfBoNcZF
         xEJLKmdkWMi7suoG43ftYs5a4ZUxQm1h9HM7xvbHHBbGCP0khmuae4WzwC1rj1T2ycmg
         7hGjkjXCRPVBL6bCHGIzli73vf74LJSkSrJdUYdJVg6jccunJrr+qAeIH/AjDh+Zz/jN
         6Gxw==
X-Gm-Message-State: ACrzQf0xQjOz9Zj80VD4H2cHOgulxaDz3Uctp+87jipeVq2YbocJ4R+O
	vdzLgepS+/DJOith/IDeMfJI7Lm6on6z6mPYvy8sopZCVMvU+7VG
X-Google-Smtp-Source: AMsMyM4PFzaRXnkUq/cpnYQEI4BUePHbNCdowgwAQVKeYepDSR+ygk7Mj3XKmBvuDeHCwZX1mbGuG+6o8SrP/fGIRdE=
X-Received: by 2002:a25:c1c2:0:b0:6c4:318:642f with SMTP id
 r185-20020a25c1c2000000b006c40318642fmr19960407ybf.561.1666447753444; Sat, 22
 Oct 2022 07:09:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PtNSw1qOgaKJbRRnUpTfn4A-zK_10frYCk7CoCo93Drhw@mail.gmail.com>
 <CAFche=hOWymQFaD9KkAjX9WSuLAPkmqJBWytMnU5+hu_-fPzEQ@mail.gmail.com>
 <CAA=S3PtF8Qm=FXbqzO2h-0Fazy+Gp8VL7HNbYCpHg74XjSffyg@mail.gmail.com> <CAFche=i=r+vgvYCZxNySF9a7fV92RUNRXfZ6bOL2HF=3FixzaQ@mail.gmail.com>
In-Reply-To: <CAFche=i=r+vgvYCZxNySF9a7fV92RUNRXfZ6bOL2HF=3FixzaQ@mail.gmail.com>
From: sp <stackprogramer@gmail.com>
Date: Sat, 22 Oct 2022 17:39:01 +0330
Message-ID: <CAA=S3PtD4_8Dtybg6ux8+4UkwRpgJpr9v7Yso2kDqfRV3A65_g@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: YXXFZRBYQKANWDVSYNKCYFVYM6R6RK5O
X-Message-ID-Hash: YXXFZRBYQKANWDVSYNKCYFVYM6R6RK5O
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Why initialize large array in Verilog is not successfully in RFNOC blocks...
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YXXFZRBYQKANWDVSYNKCYFVYM6R6RK5O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9045560056443688744=="

--===============9045560056443688744==
Content-Type: multipart/alternative; boundary="00000000000061818105eba01a93"

--00000000000061818105eba01a93
Content-Type: text/plain; charset="UTF-8"

Thanks for the tip! But for usual cases it works.....$readmemhex works like
charm....when I use a for or loop and I used ROM in for I faced with these
errors.....see the source code an RFNOC block code

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

On Fri, Oct 21, 2022 at 9:19 PM Wade Fife <wade.fife@ettus.com> wrote:

> I'm curious if it works if you change the memory size to 1024 instead of
> 1025 like you have now, or if you use increasing addresses instead of
> decreasing. A 1025-word memory with a reversed range is unusual. But
> regardless, this warning comes from Vivado, not UHD/RFNoC, so you should
> probably post your question on the Vivado forum.
>
> Wade
>
> On Sat, Oct 15, 2022 at 10:03 AM sp <stackprogramer@gmail.com> wrote:
>
>> Yes, it is. I attached some example file. I changed name of them in code
>> but I am faced with a warning.........
>> WARNING: [Synth 8-2898] ignoring malformed $readmem task: invalid memory
>> name [file.sv:50]
>> WARNING: [Synth 8-2898] ignoring malformed $readmem task: invalid memory
>> name [file.sv:51]
>> In simulation it works but i synthesis I am faced with top
>> warning..........
>> why in RFNOC block I faced with this error for mem files.........can any
>> one guide me?
>>
>> On Fri, Oct 14, 2022 at 7:36 PM Wade Fife <wade.fife@ettus.com> wrote:
>>
>>> Does the file you're reading from have enough data in it?
>>>
>>> Wade
>>>
>>>
>>> On Thu, Oct 13, 2022, 7:39 AM sp <stackprogramer@gmail.com> wrote:
>>>
>>>> Why initialize large array in Verilog is not successfully. When size of
>>>> array is 255 it work like charm but for other number more than 255 like
>>>> 1024 and ....
>>>> we observe all array is filled with zero? why large array in FPGA can
>>>> not initailize correctly????
>>>>
>>>>
>>>> Code:
>>>>  reg signed  [15:0]  data_i_pattern_buffer [1024:0];
>>>>  reg signed  [15:0]  data_q_pattern_buffer [1024:0];
>>>>   $readmemh("out_i.txt",data_i_pattern_buffer,0,1024);
>>>>  $readmemh("out_q.txt",data_q_pattern_buffer,0,1024);
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>

--00000000000061818105eba01a93
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the tip! But for usual cases it works.....$read=
memhex works like charm....when I use a for or loop and I used ROM in for I=
 faced with these errors.....see the source code an RFNOC block code=C2=A0<=
br><div><br></div><div><div style=3D"color:rgb(0,0,0);font-family:&quot;Dro=
id Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallbac=
k&quot;;font-size:14px;line-height:19px;white-space:pre"><div><span style=
=3D"color:rgb(0,0,255)">module</span> multiplier_core</div><div>  #(<span s=
tyle=3D"color:rgb(0,0,255)">parameter</span> WIDTH=3D<span style=3D"color:r=
gb(9,134,88)">64</span>)</div><div>   (<span style=3D"color:rgb(0,0,255)">i=
nput</span> clk, <span style=3D"color:rgb(0,0,255)">input</span> reset,<spa=
n style=3D"color:rgb(0,0,255)">input</span> [<span style=3D"color:rgb(9,134=
,88)">31</span>:<span style=3D"color:rgb(9,134,88)">0</span>] reg_user,</di=
v><div>    <span style=3D"color:rgb(0,0,255)">input</span> [<span style=3D"=
color:rgb(9,134,88)">32</span>-<span style=3D"color:rgb(9,134,88)">1</span>=
:<span style=3D"color:rgb(9,134,88)">0</span>] config_tdata, <span style=3D=
"color:rgb(0,0,255)">input</span> config_tlast, <span style=3D"color:rgb(0,=
0,255)">input</span> config_tvalid, <span style=3D"color:rgb(0,0,255)">outp=
ut</span> config_tready,</div><div>    <span style=3D"color:rgb(0,0,255)">o=
utput</span> [<span style=3D"color:rgb(9,134,88)">63</span>:<span style=3D"=
color:rgb(9,134,88)">0</span>] o_tdata, <span style=3D"color:rgb(0,0,255)">=
output</span> o_tlast, <span style=3D"color:rgb(0,0,255)">output</span> o_t=
valid, <span style=3D"color:rgb(0,0,255)">input</span> o_tready);</div><br>=
<div>     <span style=3D"color:rgb(0,0,255)">reg</span> <span style=3D"colo=
r:rgb(0,0,255)">signed</span> [<span style=3D"color:rgb(9,134,88)">15</span=
>:<span style=3D"color:rgb(9,134,88)">0</span>] data_samples_i_buffer [<spa=
n style=3D"color:rgb(9,134,88)">1024</span>:<span style=3D"color:rgb(9,134,=
88)">0</span>];</div><div>     <span style=3D"color:rgb(0,0,255)">reg</span=
> <span style=3D"color:rgb(0,0,255)">signed</span> [<span style=3D"color:rg=
b(9,134,88)">15</span>:<span style=3D"color:rgb(9,134,88)">0</span>] data_s=
amples_q_buffer [<span style=3D"color:rgb(9,134,88)">1024</span>:<span styl=
e=3D"color:rgb(9,134,88)">0</span>];</div><br><div>     <span style=3D"colo=
r:rgb(0,0,255)">reg</span> [<span style=3D"color:rgb(9,134,88)">31</span>:<=
span style=3D"color:rgb(9,134,88)">0</span>] edgei_tbl_rom[<span style=3D"c=
olor:rgb(9,134,88)">0</span>:<span style=3D"color:rgb(9,134,88)">1024</span=
>];</div><div>     <span style=3D"color:rgb(0,0,255)">reg</span> [<span sty=
le=3D"color:rgb(9,134,88)">31</span>:<span style=3D"color:rgb(9,134,88)">0<=
/span>] edgeq_tbl_rom[<span style=3D"color:rgb(9,134,88)">0</span>:<span st=
yle=3D"color:rgb(9,134,88)">1024</span>];</div><br><br><br><div>     <span =
style=3D"color:rgb(0,0,255)">initial</span> <span style=3D"color:rgb(0,0,25=
5)">begin</span> </div><div>          <span style=3D"color:rgb(0,128,0)">//=
Initial </span></div><br><div>            $readmemh(<span style=3D"color:rg=
b(163,21,21)">&quot;/home/sp/rfnoc-test/rfnoc/fpga/rfnoc_block_multiplier/1=
.hex&quot;</span>,edgei_tbl_rom,<span style=3D"color:rgb(9,134,88)">0</span=
>,<span style=3D"color:rgb(9,134,88)">1024</span>);</div><div>            $=
readmemh(<span style=3D"color:rgb(163,21,21)">&quot;/home/sp/rfnoc-test/rfn=
oc/fpga/rfnoc_block_multiplier/1.hex&quot;</span>,edgeq_tbl_rom,<span style=
=3D"color:rgb(9,134,88)">0</span>,<span style=3D"color:rgb(9,134,88)">1024<=
/span>);</div><div>    ebd</div><br><br><div>     <span style=3D"color:rgb(=
0,0,255)">always</span> @(<span style=3D"color:rgb(0,0,255)">posedge</span>=
 config_tvalid ) <span style=3D"color:rgb(0,0,255)">begin</span></div><div>=
        <span style=3D"color:rgb(0,0,255)">if</span>(state=3D=3D<span style=
=3D"color:rgb(9,134,88)">1</span>)</div><div>        <span style=3D"color:r=
gb(0,0,255)">begin</span></div><div>           $display(<span style=3D"colo=
r:rgb(163,21,21)">&quot;-------Clock is triggerted...%0d ----&quot;</span>,=
m);</div><br><div>            <span style=3D"color:rgb(0,128,0)">//Save sam=
ples in samples buffer </span></div><div>            data_samples_i_buffer[=
m]=3Dconfig_tdata[<span style=3D"color:rgb(9,134,88)">15</span>:<span style=
=3D"color:rgb(9,134,88)">0</span>];</div><div>            data_samples_q_bu=
ffer[m]=3Dconfig_tdata[<span style=3D"color:rgb(9,134,88)">31</span>:<span =
style=3D"color:rgb(9,134,88)">16</span>];</div><div>         </div><div>   =
         $display(<span style=3D"color:rgb(163,21,21)">&quot;Sample %0d =3D=
 %0d +i %0d&quot;</span>,m,data_samples_i_buffer[m],data_samples_q_buffer[m=
]);</div><br><br><div>            <span style=3D"color:rgb(0,0,255)">if</sp=
an>(m=3D=3D<span style=3D"color:rgb(9,134,88)">1024</span>) <span style=3D"=
color:rgb(0,0,255)">begin</span></div><div>            </div><div>         =
     m=3D<span style=3D"color:rgb(9,134,88)">0</span>;</div><div>          =
  </div><div>            <span style=3D"color:rgb(0,0,255)">end</span> <spa=
n style=3D"color:rgb(0,0,255)">else</span> <span style=3D"color:rgb(0,0,255=
)">begin</span></div><div>            </div><div>              m=3Dm+<span =
style=3D"color:rgb(9,134,88)">1</span>;</div><div>            </div><div>  =
          <span style=3D"color:rgb(0,0,255)">end</span></div><div>         =
     <span style=3D"color:rgb(0,128,0)">// temp_i_mult_result_sum=3D edge_t=
bl_rom[j];</span></div><div>            <span style=3D"color:rgb(0,0,255)">=
for</span>(j=3D<span style=3D"color:rgb(9,134,88)">0</span>; j&lt;<span sty=
le=3D"color:rgb(9,134,88)">1000</span>; j=3Dj+<span style=3D"color:rgb(9,13=
4,88)">1</span>)</div><div>                <span style=3D"color:rgb(0,0,255=
)">begin</span></div><div>            </div><div>              temp_i_mult_=
result_sum=3D edgei_tbl_rom[j];<span style=3D"color:rgb(0,128,0)">//(temp_i=
_mult_result_sum+data_samples_i_buffer[j]*edgei_tbl_rom[j]+data_samples_q_b=
uffer[j]*edgeq_tbl_rom[j]);</span></div><br><div>              </div><div> =
              </div><div>                <span style=3D"color:rgb(0,0,255)"=
>end</span></div><div>             </div><div>          </div><div>        =
          </div><div>               <span style=3D"color:rgb(0,128,0)">// e=
nergy_factor=3Dreg_user;//65536*20;</span></div><div>                multip=
lier_tdata=3Dtemp_i_mult_result_sum;</div><div>          temp_i_mult_result=
_sum=3D<span style=3D"color:rgb(9,134,88)">0</span>;</div><div>        </di=
v><div>        <span style=3D"color:rgb(0,0,255)">end</span></div><div>    =
    <span style=3D"color:rgb(0,0,255)">else</span> <span style=3D"color:rgb=
(0,0,255)">begin</span></div><br><br><div>        <span style=3D"color:rgb(=
0,0,255)">end</span></div><div> </div><div>       </div><div>  <span style=
=3D"color:rgb(0,0,255)">end</span></div><div>        <span style=3D"color:r=
gb(0,0,255)">assign</span> o_tdata =3D { <span style=3D"color:rgb(9,134,88)=
">32&#39;h00000000</span>, multiplier_tdata};</div><div>        <span style=
=3D"color:rgb(0,0,255)">assign</span> o_tlast =3D config_tlast;</div><div> =
       <span style=3D"color:rgb(0,0,255)">assign</span> o_tvalid =3D config=
_tvalid;</div><div>        <span style=3D"color:rgb(0,0,255)">assign</span>=
 config_tready =3D o_tready;</div><div><span style=3D"color:rgb(0,0,255)">e=
ndmodule</span></div></div></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 21, 2022 at 9:19 PM Wade Fife =
&lt;<a href=3D"mailto:wade.fife@ettus.com">wade.fife@ettus.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr"><div>I&#39;m curious if it works if you change the memory size to 1024 =
instead of 1025 like you have now, or if you use increasing addresses inste=
ad of decreasing. A 1025-word memory with a reversed range is unusual. But =
regardless, this warning comes from Vivado, not UHD/RFNoC, so you should pr=
obably post your question on the Vivado forum.</div><div><br></div><div>Wad=
e<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Sat, Oct 15, 2022 at 10:03 AM sp &lt;<a href=3D"mailto:stackp=
rogramer@gmail.com" target=3D"_blank">stackprogramer@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr">Yes, it is. I attached some example file. I changed name of them in cod=
e but I am faced with a warning.........<br><div><span style=3D"color:rgb(2=
9,29,29);font-family:&quot;Segoe UI&quot;,&quot;Helvetica Neue&quot;,Helvet=
ica,Roboto,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&q=
uot;,sans-serif;font-size:15px;background-color:rgb(234,232,207)">WARNING: =
[Synth 8-2898] ignoring malformed $readmem task: invalid memory name [<a hr=
ef=3D"http://file.sv:50" target=3D"_blank">file.sv:50</a>]</span><br style=
=3D"box-sizing:border-box;color:rgb(29,29,29);font-family:&quot;Segoe UI&qu=
ot;,&quot;Helvetica Neue&quot;,Helvetica,Roboto,Oxygen,Ubuntu,Cantarell,&qu=
ot;Fira Sans&quot;,&quot;Droid Sans&quot;,sans-serif;font-size:15px;backgro=
und-color:rgb(234,232,207)"><span style=3D"color:rgb(29,29,29);font-family:=
&quot;Segoe UI&quot;,&quot;Helvetica Neue&quot;,Helvetica,Roboto,Oxygen,Ubu=
ntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,sans-serif;font-=
size:15px;background-color:rgb(234,232,207)">WARNING: [Synth 8-2898] ignori=
ng malformed $readmem task: invalid memory name [<a href=3D"http://file.sv:=
51" target=3D"_blank">file.sv:51</a>]</span><br></div><div>In simulation it=
 works but i synthesis I am faced with top warning..........</div><div>why =
in RFNOC block I faced with this error for mem files.........can any one gu=
ide me?</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Fri, Oct 14, 2022 at 7:36 PM Wade Fife &lt;<a href=3D"mailt=
o:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"aut=
o"><div>Does the file you&#39;re reading from have enough data in it?<div d=
ir=3D"auto"><br></div><div dir=3D"auto">Wade</div><br><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 13, 2022, 7:39 =
AM sp &lt;<a href=3D"mailto:stackprogramer@gmail.com" target=3D"_blank">sta=
ckprogramer@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr">Why initialize large array in Verilog=
 is not successfully. When size of array is 255 it work like charm but for =
other number more than 255 like 1024 and ....<br>we observe all array is fi=
lled with zero? why large array in FPGA can not initailize correctly????<di=
v><br></div><div><br>Code:<br>=C2=A0reg signed =C2=A0[15:0] =C2=A0data_i_pa=
ttern_buffer [1024:0];<br>=C2=A0reg signed =C2=A0[15:0] =C2=A0data_q_patter=
n_buffer [1024:0];<br>=C2=A0 $readmemh(&quot;out_i.txt&quot;,data_i_pattern=
_buffer,0,1024);<br>=C2=A0$readmemh(&quot;out_q.txt&quot;,data_q_pattern_bu=
ffer,0,1024);<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div></div></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--00000000000061818105eba01a93--

--===============9045560056443688744==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9045560056443688744==--
