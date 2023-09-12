Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A815279D140
	for <lists+usrp-users@lfdr.de>; Tue, 12 Sep 2023 14:41:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B71BE384C91
	for <lists+usrp-users@lfdr.de>; Tue, 12 Sep 2023 08:41:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694522503; bh=DSoCsRN30vj4bAGhxnadXpTCgu4LkkmShEGguCSNQeM=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=pA8L/FK1URKl/79SuvkNYxI0noMnFXoOFFGMWI97Ve1AWt77w8fkWvpAPpuLxGdwS
	 52wUgrAfs7EPjInO3NtfRV0G0bdefAkR1e9/9vIuzr78tA9odEs6GlJX9iwh5sUgjq
	 +5VAZ5yom8RqTSt5TlGTYCCionUXqYcVCKWYpAajWJ3NhxH6jt96lfRIv63whEFQRA
	 aERf3Jp6XUA+1VdX3MQEXz1yFl6bOrl2aTE9GrjwM/Qm5Rugy5FfKvbQevac1Zh5iL
	 Fpv5uVsUirhj42HocrH1IVdl9nKOpltlOPIFiu5iJUuM/f9zCNDph4nwQQIrCuRj6E
	 6zkmB29eA4VXA==
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 01D5D384C6E
	for <usrp-users@lists.ettus.com>; Tue, 12 Sep 2023 08:41:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BEqCZG8y";
	dkim-atps=neutral
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-4937fc5d66fso1904917e0c.2
        for <usrp-users@lists.ettus.com>; Tue, 12 Sep 2023 05:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694522487; x=1695127287; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xZHSi01kdDECV3OjPn/Qw85jTRDYaht/PVd3vltZZnA=;
        b=BEqCZG8yUv88tJqmAXeC3J2IhpG4hl5etvhLNFXBBTdrryHCvgRDp8hNL6pc6th5XD
         G7JAOw3ZgOEJK0td+HPeCL/RPssOTsBKOK36O4kt06twsVWuht2U4Ou0HmRJXCIGCg6W
         phhZF3cGlDz6brjoplFBCUHmuX7JDH1BLTD6VFUbFcOUEGQ+nM6ceaDVH179W6fgaGV7
         N2hejj4fFJSE3jx2mhwWvSg5ojO3MejaF7qRfR2BuggBCMQEOzA4KR9dICUTklKyUzK+
         LsjCX49l9U90eXuc+BAHPabQIwIVts1kDfkz/fr+7GuQHjVxNOLOVhOHiomNbjukrdtd
         RPqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694522487; x=1695127287;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xZHSi01kdDECV3OjPn/Qw85jTRDYaht/PVd3vltZZnA=;
        b=uX+FH7fKCxQOeNZrrzu0jpxB+IL1VCRkZJTwYQCUhfKXhRJ5hiGIh9atTUrhDVzpdf
         lGEGWrkknnGWnBXsWVBkvXixcASKilxCtAG/9/5qkGkqfwbOAFhQgYx1C9zQWo5qJxYb
         9YvGhqvp3U+nvVPdBsa0SOc3dxXSfM37bKG+YveH3yirAWhN1aM5a3MPVIEk7avmtG1t
         rwMKpYf0Qn2ZoKfFclBvDE8v0FcDCIe6MP+kG021qDqzFbpWUlzRoFp8qoXzf7yOcGvJ
         ITAkddjabjfghTRxKmwrFRwhL6Um2y3gHwz3VpAus/OpXmI4NcZs8zis3QsQHaw8vG63
         n2zQ==
X-Gm-Message-State: AOJu0Yzt/aaLaBa8eOcjA/Q1nO0izH8cGvIUTao6iPl9JMbsGZ145hiC
	jpNDcGWY6eBR34ZBGwJhbMMaYXPQG8M7SGtEZ93b5NBMOy7zE5HBy6U=
X-Google-Smtp-Source: AGHT+IEBVQYea0ELmyYTaXFsqzpxhWKE+SYZAr8OM28jsgk5/WC3NEjcSB/WNq5lPdxRwsCsbpkQbCTZv/nKdGf6ol8=
X-Received: by 2002:a1f:d803:0:b0:493:5420:f20c with SMTP id
 p3-20020a1fd803000000b004935420f20cmr11006131vkg.10.1694522486952; Tue, 12
 Sep 2023 05:41:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PvES-s7nR-3uGmxGsMCH6eg30mMeP_cFVmwSi4r2MMUhQ@mail.gmail.com>
In-Reply-To: <CAA=S3PvES-s7nR-3uGmxGsMCH6eg30mMeP_cFVmwSi4r2MMUhQ@mail.gmail.com>
From: sp <stackprogramer@gmail.com>
Date: Tue, 12 Sep 2023 17:11:15 +0430
Message-ID: <CAA=S3PtwoF0Rme2js_VtgXJ+55QBQwMHdS43c8oGnC021zvmuA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: YGPJM4JVZAF73NI5AVYOMW64QBWY57FL
X-Message-ID-Hash: YGPJM4JVZAF73NI5AVYOMW64QBWY57FL
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Failure: ERROR:add_1 must be in range [-1,DEPTH-1]
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YGPJM4JVZAF73NI5AVYOMW64QBWY57FL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6876122837270483457=="

--===============6876122837270483457==
Content-Type: multipart/alternative; boundary="000000000000e617da060528c2c1"

--000000000000e617da060528c2c1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Finally, my problem is solved...AXI input didn't connect to clk and this
problem caused Failure: ERROR:add_1 must be in range [-1,DEPTH-1]
by adding m_in_payload_... axi4 bus my problem is solved.


wire [31:0] phase_in_tdata;
wire phase_in_tlast;
wire phase_in_tvalid;
wire phase_in_tready;



wire [31:0] cartesian_in_tdata;
wire cartesian_in_tlast;
wire cartesian_in_tvalid;
wire cartesian_in_tready;


wire [31:0] phase_out_tdata;
wire phase_out_tlast;
wire phase_out_tvalid;
wire phase_out_tready;

wire [31:0] signal_out_tdata;
wire signal_out_tlast;
wire sinal_out_tvalid;
wire signal_out_tready;




// // Phase accumulator
phase_accum#( .WIDTH_ACCUM(32),.WIDTH_IN(32),.WIDTH_OUT(32)) phase_acc (
.clk (ce_clk),
.reset (ce_rst),
.i_tdata (32'h0001), // Phase increment value
.i_tlast (m_in_payload_tdata),
.i_tvalid (m_in_payload_tvalid),
.i_tready (m_in_payload_tready),
.o_tdata (phase_out_tdata),
.o_tlast (phase_out_tlast),
.o_tvalid (phase_out_tvalid),
.o_tready (phase_out_tready)
);

// // //CORDIC rotator
cordic_rotator cordic_inst (
.aclk (ce_clk),
.aresetn (ce_rst),
.s_axis_phase_tdata (phase_out_tdata),
//.s_axis_phase_tlast (1'b1),
.s_axis_phase_tvalid (phase_out_tvalid),
.s_axis_phase_tready (phase_out_tready),
.s_axis_cartesian_tdata (cartesian_in_tdata), // Initial vector
.s_axis_cartesian_tlast (cartesian_in_tlast),
.s_axis_cartesian_tvalid (cartesian_in_tvalid),
.s_axis_cartesian_tready (cartesian_in_tready),
.m_axis_dout_tdata (signal_out_tdata), // I
.m_axis_dout_tlast (signal_out_tlast),
.m_axis_dout_tvalid (sinal_out_tvalid),
.m_axis_dout_tready (signal_out_tready)
);



On Sat, Sep 9, 2023 at 4:32=E2=80=AFPM sp <stackprogramer@gmail.com> wrote:

> When I added this section a CORDIC IPCORE to rfnoc gain block I faced a
> strange error Failure: ERROR:add_1 must be in the range [-1,DEPTH-1]
> How can solve this error? Anyone can guide me?
>
> wire [15:0] phase_out_tdata;
> wire phase_out_tvalid;
> wire phase_out_tready;
>
> wire [31:0] sine_out_tdata;
> wire sine_out_tlast;
> wire sine_out_tvalid;
> wire sine_out_tready;
>
> // Phase accumulator
> phase_accum phase_acc (
> .clk (ce_clk),
> .reset (ce_rst),
> .i_tdata (16'h0001), // Phase increment value
> .i_tvalid (1'b1),
> .o_tdata (phase_out_tdata),
> .o_tvalid (phase_out_tvalid),
> .o_tready (phase_out_tready)
> );
>
> // // // CORDIC rotator
> cordic_rotator cordic_inst (
> .aclk (ce_clk),
> .aresetn (~ce_rst),
> .s_axis_phase_tdata (phase_out_tdata),
> //.s_axis_phase_tlast (1'b1),
> .s_axis_phase_tvalid (phase_out_tvalid),
> .s_axis_phase_tready (phase_out_tready),
> .s_axis_cartesian_tdata ({16'd0, 16'd1}), // Initial vector
> .s_axis_cartesian_tlast (1'b1),
> .s_axis_cartesian_tvalid (phase_out_tvalid),
> .s_axis_cartesian_tready (phase_out_tready),
> .m_axis_dout_tdata ({sine_out_tdata[ 0 +: 16], // Q
> sine_out_tdata[16 +: 16]}), // I
> .m_axis_dout_tlast (sine_out_tlast),
> .m_axis_dout_tvalid (sine_out_tvalid),
> .m_axis_dout_tready (sine_out_tready)
> );
>
>
>

--000000000000e617da060528c2c1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Finally, my problem is solved...AXI input didn&#39;t conne=
ct to clk and this problem caused Failure: ERROR:add_1 must be in range [-1=
,DEPTH-1]<div>by adding=C2=A0<span style=3D"color:rgb(0,0,0);font-family:&q=
uot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace;font-size:14px;wh=
ite-space:pre">m_in_payload_... axi4 bus my problem is solved.</span><br><d=
iv class=3D"gmail-nH gmail-V8djrc gmail-byY" style=3D"display:flex;padding:=
20px 0px 8px 72px;color:rgb(32,33,36);font-family:&quot;Google Sans&quot;,R=
oboto,RobotoDraft,Helvetica,Arial,sans-serif;font-size:medium"><div class=
=3D"gmail-nH"><div class=3D"gmail-ha" style=3D"background-image:inherit;bac=
kground-position:inherit;background-size:inherit;background-repeat:inherit;=
background-origin:inherit;background-clip:inherit;background-color:transpar=
ent;border-right:inherit;color:rgb(34,34,34);font-family:inherit;font-size:=
1.375rem;line-height:28px;margin:0px;padding:0px"><span class=3D"gmail-J-J5=
-Ji" style=3D"display:inline-flex;min-height:28px;vertical-align:bottom"><b=
r></span></div><div class=3D"gmail-ha" style=3D"background-image:inherit;ba=
ckground-position:inherit;background-size:inherit;background-repeat:inherit=
;background-origin:inherit;background-clip:inherit;background-color:transpa=
rent;border-right:inherit;color:rgb(34,34,34);font-family:inherit;font-size=
:1.375rem;line-height:28px;margin:0px;padding:0px"><span class=3D"gmail-J-J=
5-Ji" style=3D"display:inline-flex;min-height:28px;vertical-align:bottom"><=
div style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot=
;monospace&quot;,monospace;font-size:14px;line-height:19px;white-space:pre"=
><br><div>  <span style=3D"color:rgb(0,0,255)">wire</span> [<span style=3D"=
color:rgb(9,134,88)">31</span>:<span style=3D"color:rgb(9,134,88)">0</span>=
] phase_in_tdata;</div><div>  <span style=3D"color:rgb(0,0,255)">wire</span=
>        phase_in_tlast;</div><div>  <span style=3D"color:rgb(0,0,255)">wir=
e</span>        phase_in_tvalid;</div><div>  <span style=3D"color:rgb(0,0,2=
55)">wire</span>        phase_in_tready;</div><br><br><br><div>  <span styl=
e=3D"color:rgb(0,0,255)">wire</span> [<span style=3D"color:rgb(9,134,88)">3=
1</span>:<span style=3D"color:rgb(9,134,88)">0</span>] cartesian_in_tdata;<=
/div><div>  <span style=3D"color:rgb(0,0,255)">wire</span>        cartesian=
_in_tlast;</div><div>  <span style=3D"color:rgb(0,0,255)">wire</span>      =
  cartesian_in_tvalid;</div><div>  <span style=3D"color:rgb(0,0,255)">wire<=
/span>        cartesian_in_tready;</div><br><br><div>  <span style=3D"color=
:rgb(0,0,255)">wire</span> [<span style=3D"color:rgb(9,134,88)">31</span>:<=
span style=3D"color:rgb(9,134,88)">0</span>] phase_out_tdata;</div><div>  <=
span style=3D"color:rgb(0,0,255)">wire</span>        phase_out_tlast;</div>=
<div>  <span style=3D"color:rgb(0,0,255)">wire</span>        phase_out_tval=
id;</div><div>  <span style=3D"color:rgb(0,0,255)">wire</span>        phase=
_out_tready;</div><br><div>  <span style=3D"color:rgb(0,0,255)">wire</span>=
 [<span style=3D"color:rgb(9,134,88)">31</span>:<span style=3D"color:rgb(9,=
134,88)">0</span>] signal_out_tdata;</div><div>  <span style=3D"color:rgb(0=
,0,255)">wire</span>             signal_out_tlast;</div><div>  <span style=
=3D"color:rgb(0,0,255)">wire</span>             sinal_out_tvalid;</div><div=
>  <span style=3D"color:rgb(0,0,255)">wire</span>             signal_out_tr=
eady;</div><br><br><br><br><div>  <span style=3D"color:rgb(0,128,0)">// // =
Phase accumulator</span></div><div>  <span style=3D"color:rgb(128,0,0)">pha=
se_accum</span>#( .WIDTH_ACCUM(<span style=3D"color:rgb(9,134,88)">32</span=
>),.WIDTH_IN(<span style=3D"color:rgb(9,134,88)">32</span>),.WIDTH_OUT(<spa=
n style=3D"color:rgb(9,134,88)">32</span>)) <span style=3D"color:rgb(128,0,=
0)">phase_acc</span> (</div><div>    .clk      (ce_clk),</div><div>    .res=
et    (ce_rst),</div><div>    .i_tdata  (<span style=3D"color:rgb(9,134,88)=
">32&#39;h0001</span>), <span style=3D"color:rgb(0,128,0)">// Phase increme=
nt value</span></div><div>    .i_tlast  (m_in_payload_tdata),</div><div>   =
 .i_tvalid (m_in_payload_tvalid),</div><div>    .i_tready (m_in_payload_tre=
ady),</div><div>    .o_tdata  (phase_out_tdata),</div><div>    .o_tlast  (p=
hase_out_tlast),</div><div>    .o_tvalid (phase_out_tvalid),</div><div>    =
.o_tready (phase_out_tready)</div><div>  );</div><br><div>  <span style=3D"=
color:rgb(0,128,0)">// // //CORDIC rotator</span></div><div>  <span style=
=3D"color:rgb(128,0,0)">cordic_rotator</span> <span style=3D"color:rgb(128,=
0,0)">cordic_inst</span> (</div><div>    .aclk                    (ce_clk),=
</div><div>    .aresetn                 (ce_rst),</div><div>    .s_axis_pha=
se_tdata      (phase_out_tdata),</div><div>    <span style=3D"color:rgb(0,1=
28,0)">//.s_axis_phase_tlast     (1&#39;b1),</span></div><div>    .s_axis_p=
hase_tvalid     (phase_out_tvalid),</div><div>    .s_axis_phase_tready     =
(phase_out_tready),</div><div>    .s_axis_cartesian_tdata  (cartesian_in_td=
ata), <span style=3D"color:rgb(0,128,0)">// Initial vector</span></div><div=
>    .s_axis_cartesian_tlast  (cartesian_in_tlast),</div><div>    .s_axis_c=
artesian_tvalid (cartesian_in_tvalid),</div><div>    .s_axis_cartesian_trea=
dy (cartesian_in_tready),</div><div>    .m_axis_dout_tdata       (signal_ou=
t_tdata), <span style=3D"color:rgb(0,128,0)">// I</span></div><div>    .m_a=
xis_dout_tlast       (signal_out_tlast),</div><div>    .m_axis_dout_tvalid =
     (sinal_out_tvalid),</div><div>    .m_axis_dout_tready      (signal_out=
_tready)</div><div>  );</div><div>  </div><br></div></span></div></div></di=
v><div><div style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quo=
t;,&quot;monospace&quot;,monospace;font-size:14px;line-height:19px;white-sp=
ace:pre"><div>  </div><br></div></div></div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Sep 9, 2023 at 4:32=E2=
=80=AFPM sp &lt;<a href=3D"mailto:stackprogramer@gmail.com">stackprogramer@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">When I added this section a CORDIC IPCORE to rf=
noc gain block I faced a strange error=C2=A0Failure: ERROR:add_1 must be in=
 the range [-1,DEPTH-1]<div>How can solve this error? Anyone can guide me?<=
br><div><br></div><div><div style=3D"color:rgb(0,0,0);font-family:&quot;Dro=
id Sans Mono&quot;,&quot;monospace&quot;,monospace;font-size:14px;line-heig=
ht:19px;white-space:pre-wrap"><div>  <span style=3D"color:rgb(0,0,255)">wir=
e</span> [<span style=3D"color:rgb(9,134,88)">15</span>:<span style=3D"colo=
r:rgb(9,134,88)">0</span>] phase_out_tdata;</div><div>  <span style=3D"colo=
r:rgb(0,0,255)">wire</span>        phase_out_tvalid;</div><div>  <span styl=
e=3D"color:rgb(0,0,255)">wire</span>        phase_out_tready;</div><br><div=
>  <span style=3D"color:rgb(0,0,255)">wire</span> [<span style=3D"color:rgb=
(9,134,88)">31</span>:<span style=3D"color:rgb(9,134,88)">0</span>] sine_ou=
t_tdata;</div><div>  <span style=3D"color:rgb(0,0,255)">wire</span>        =
     sine_out_tlast;</div><div>  <span style=3D"color:rgb(0,0,255)">wire</s=
pan>             sine_out_tvalid;</div><div>  <span style=3D"color:rgb(0,0,=
255)">wire</span>             sine_out_tready;</div><br><div>  <span style=
=3D"color:rgb(0,128,0)">// Phase accumulator</span></div><div>  <span style=
=3D"color:rgb(128,0,0)">phase_accum</span> <span style=3D"color:rgb(128,0,0=
)">phase_acc</span> (</div><div>    .clk      (ce_clk),</div><div>    .rese=
t    (ce_rst),</div><div>    .i_tdata  (<span style=3D"color:rgb(9,134,88)"=
>16&#39;h0001</span>), <span style=3D"color:rgb(0,128,0)">// Phase incremen=
t value</span></div><div>    .i_tvalid (<span style=3D"color:rgb(9,134,88)"=
>1&#39;b1</span>),</div><div>    .o_tdata  (phase_out_tdata),</div><div>   =
 .o_tvalid (phase_out_tvalid),</div><div>    .o_tready (phase_out_tready)</=
div><div>  );</div><br><div>  <span style=3D"color:rgb(0,128,0)">// // // C=
ORDIC rotator</span></div><div>  <span style=3D"color:rgb(128,0,0)">cordic_=
rotator</span> <span style=3D"color:rgb(128,0,0)">cordic_inst</span> (</div=
><div>    .aclk                    (ce_clk),</div><div>    .aresetn        =
         (~ce_rst),</div><div>    .s_axis_phase_tdata      (phase_out_tdata=
),</div><div>    <span style=3D"color:rgb(0,128,0)">//.s_axis_phase_tlast  =
   (1&#39;b1),</span></div><div>    .s_axis_phase_tvalid     (phase_out_tva=
lid),</div><div>    .s_axis_phase_tready     (phase_out_tready),</div><div>=
    .s_axis_cartesian_tdata  ({<span style=3D"color:rgb(9,134,88)">16&#39;d=
0</span>, <span style=3D"color:rgb(9,134,88)">16&#39;d1</span>}), <span sty=
le=3D"color:rgb(0,128,0)">// Initial vector</span></div><div>    .s_axis_ca=
rtesian_tlast  (<span style=3D"color:rgb(9,134,88)">1&#39;b1</span>),</div>=
<div>    .s_axis_cartesian_tvalid (phase_out_tvalid),</div><div>    .s_axis=
_cartesian_tready (phase_out_tready),</div><div>    .m_axis_dout_tdata     =
  ({sine_out_tdata[      <span style=3D"color:rgb(9,134,88)">0</span> +: <s=
pan style=3D"color:rgb(9,134,88)">16</span>],   <span style=3D"color:rgb(0,=
128,0)">// Q</span></div><div>                               sine_out_tdata=
[<span style=3D"color:rgb(9,134,88)">16</span> +: <span style=3D"color:rgb(=
9,134,88)">16</span>]}), <span style=3D"color:rgb(0,128,0)">// I</span></di=
v><div>    .m_axis_dout_tlast       (sine_out_tlast),</div><div>    .m_axis=
_dout_tvalid      (sine_out_tvalid),</div><div>    .m_axis_dout_tready     =
 (sine_out_tready)</div><div>  );</div><div>  </div><br><br></div></div></d=
iv></div>
</blockquote></div>

--000000000000e617da060528c2c1--

--===============6876122837270483457==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6876122837270483457==--
