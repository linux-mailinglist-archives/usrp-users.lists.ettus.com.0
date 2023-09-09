Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDB37997D3
	for <lists+usrp-users@lfdr.de>; Sat,  9 Sep 2023 14:03:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 99379384C74
	for <lists+usrp-users@lfdr.de>; Sat,  9 Sep 2023 08:03:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694261032; bh=tIO6kJmpZgR+t2lPwZM1GwkkxW42rVE4tRg8ZetiD90=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=GSISlDzv6BSgnHcC/cuB/+dP5sQPchjgtqTthnDathTegsERIZoBpxQvCCmev5d1o
	 INUD3mcOCxNLpxKBm7T2A1rDbluHyscHkvQ3rbcnoFiQbqoqKnmI9hriPshCFRqYD/
	 PoH5oL2qiv+7a/dajdR/SASSo7Laij4rTFDE5jIgp1NezE8b27l4fJA2VGhEpEqb0R
	 HQrjoqVq1cxMCx6wo4e2+pO3vbipVKTg2Puuq9vawijPErIoI28zm8DoPR2+to7I+i
	 Gsz0aQxCTXEoyucUO3ZOV3wvEWg+YzdtfgIvEr4fH1kwo4vsKYfs124BJupx3YXuxl
	 /7+skd+AEDZyA==
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 44189384812
	for <usrp-users@lists.ettus.com>; Sat,  9 Sep 2023 08:02:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FckHZgxC";
	dkim-atps=neutral
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-490e78ae83bso1062153e0c.0
        for <usrp-users@lists.ettus.com>; Sat, 09 Sep 2023 05:02:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694260975; x=1694865775; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Y/ujWW6PXoaJv5DhqznqVlslW2xeGP/rLSQtXvth9jY=;
        b=FckHZgxC/VP0mysOAAEXASzoNyKsML+5oNVIdtuo0VCEEqs0JS3qjbdaYsohQT3FU5
         FsgZX6SEo1OqUMNtgRfRiVI1qFS5a0QtjQNqMdWsjZXydotuKAAawvPh3G+wJxZunD1c
         d8lq+T4Mr9tFjo3Tu6Vx7ZQfHXoZKA4YpRSNFU1h1cVcejA1PuSVVE+ib/qEajss5bUQ
         jFPsCDj8ZDSct0c2RtEaUjIWAlEBBqZjMXIvrOlbYDttR5LiQz5utPRPTAIk5ImcpZv1
         FopzUKeVkKlW9T/sTQ4mFzn+0Rco3YkzkeHozEyFDSDNhmOOk/Uce0V6AF0KpVolABbB
         iGlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694260975; x=1694865775;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y/ujWW6PXoaJv5DhqznqVlslW2xeGP/rLSQtXvth9jY=;
        b=pIDU7/IJghGjfcZrX0O+hFmCj/bH2PGyshV+z8R15FbpCgLk0xiXqcKFs4OG55iBl6
         evK1xIqcoYLkTCKbIohObrc/PSv6WXH1chUtPOPrr6jRpfXa9ZQGY7NSgp3oVqpQqjpX
         0fq6d2twtfeZz32ZR1KA8V3KmhKRubaGJgwuXP10m4IbNCoVWnh+7+zVzl1TskEmyfLH
         4bz3pTqabdOpUzlh08w5x5vQQThGPHEU5G0ouZ+7aIbrGwC8JosaUmPTK8nSgQ9rr1uF
         2VvFAWUtbEqsMQ/iPONlr1PfPU3TVxMMjCJF14i0wtoluwwjNydfZmofpjRLKeTpjgMh
         Naqw==
X-Gm-Message-State: AOJu0YxpsFbd4ZYaTrIjh5DIe5dzOFka1E3OsLjpPUlCl5Z4uc9l7ncX
	0ARpUgvchzEAwhGfwOV0VNCYb6JC7v6Zh1FNhQZ/SJflvAXPG5nLaFU=
X-Google-Smtp-Source: AGHT+IGyJWmi72bJgcClISw1Q8Wa3w/MP69VnycfwFNPr4f+8AhdqBSaWcIq9/iuUNTRD/n0+aMkojctN73pfItY6jY=
X-Received: by 2002:a1f:c645:0:b0:493:7c76:bbac with SMTP id
 w66-20020a1fc645000000b004937c76bbacmr4657385vkf.2.1694260975107; Sat, 09 Sep
 2023 05:02:55 -0700 (PDT)
MIME-Version: 1.0
From: sp <stackprogramer@gmail.com>
Date: Sat, 9 Sep 2023 16:32:43 +0430
Message-ID: <CAA=S3PvES-s7nR-3uGmxGsMCH6eg30mMeP_cFVmwSi4r2MMUhQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: Y63D6FHP465VZS6EMBS53M6HX3NM7GEF
X-Message-ID-Hash: Y63D6FHP465VZS6EMBS53M6HX3NM7GEF
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Failure: ERROR:add_1 must be in range [-1,DEPTH-1]
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y63D6FHP465VZS6EMBS53M6HX3NM7GEF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8366823802397738780=="

--===============8366823802397738780==
Content-Type: multipart/alternative; boundary="0000000000009402f00604ebdf44"

--0000000000009402f00604ebdf44
Content-Type: text/plain; charset="UTF-8"

When I added this section a CORDIC IPCORE to rfnoc gain block I faced a
strange error Failure: ERROR:add_1 must be in the range [-1,DEPTH-1]
How can solve this error? Anyone can guide me?

wire [15:0] phase_out_tdata;
wire phase_out_tvalid;
wire phase_out_tready;

wire [31:0] sine_out_tdata;
wire sine_out_tlast;
wire sine_out_tvalid;
wire sine_out_tready;

// Phase accumulator
phase_accum phase_acc (
.clk (ce_clk),
.reset (ce_rst),
.i_tdata (16'h0001), // Phase increment value
.i_tvalid (1'b1),
.o_tdata (phase_out_tdata),
.o_tvalid (phase_out_tvalid),
.o_tready (phase_out_tready)
);

// // // CORDIC rotator
cordic_rotator cordic_inst (
.aclk (ce_clk),
.aresetn (~ce_rst),
.s_axis_phase_tdata (phase_out_tdata),
//.s_axis_phase_tlast (1'b1),
.s_axis_phase_tvalid (phase_out_tvalid),
.s_axis_phase_tready (phase_out_tready),
.s_axis_cartesian_tdata ({16'd0, 16'd1}), // Initial vector
.s_axis_cartesian_tlast (1'b1),
.s_axis_cartesian_tvalid (phase_out_tvalid),
.s_axis_cartesian_tready (phase_out_tready),
.m_axis_dout_tdata ({sine_out_tdata[ 0 +: 16], // Q
sine_out_tdata[16 +: 16]}), // I
.m_axis_dout_tlast (sine_out_tlast),
.m_axis_dout_tvalid (sine_out_tvalid),
.m_axis_dout_tready (sine_out_tready)
);

--0000000000009402f00604ebdf44
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">When I added this section a CORDIC IPCORE to rfnoc gain bl=
ock I faced a strange error=C2=A0Failure: ERROR:add_1 must be in the range =
[-1,DEPTH-1]<div>How can solve this error? Anyone can guide me?<br><div><br=
></div><div><div style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mon=
o&quot;,&quot;monospace&quot;,monospace;font-size:14px;line-height:19px;whi=
te-space:pre"><div>  <span style=3D"color:rgb(0,0,255)">wire</span> [<span =
style=3D"color:rgb(9,134,88)">15</span>:<span style=3D"color:rgb(9,134,88)"=
>0</span>] phase_out_tdata;</div><div>  <span style=3D"color:rgb(0,0,255)">=
wire</span>        phase_out_tvalid;</div><div>  <span style=3D"color:rgb(0=
,0,255)">wire</span>        phase_out_tready;</div><br><div>  <span style=
=3D"color:rgb(0,0,255)">wire</span> [<span style=3D"color:rgb(9,134,88)">31=
</span>:<span style=3D"color:rgb(9,134,88)">0</span>] sine_out_tdata;</div>=
<div>  <span style=3D"color:rgb(0,0,255)">wire</span>             sine_out_=
tlast;</div><div>  <span style=3D"color:rgb(0,0,255)">wire</span>          =
   sine_out_tvalid;</div><div>  <span style=3D"color:rgb(0,0,255)">wire</sp=
an>             sine_out_tready;</div><br><div>  <span style=3D"color:rgb(0=
,128,0)">// Phase accumulator</span></div><div>  <span style=3D"color:rgb(1=
28,0,0)">phase_accum</span> <span style=3D"color:rgb(128,0,0)">phase_acc</s=
pan> (</div><div>    .clk      (ce_clk),</div><div>    .reset    (ce_rst),<=
/div><div>    .i_tdata  (<span style=3D"color:rgb(9,134,88)">16&#39;h0001</=
span>), <span style=3D"color:rgb(0,128,0)">// Phase increment value</span><=
/div><div>    .i_tvalid (<span style=3D"color:rgb(9,134,88)">1&#39;b1</span=
>),</div><div>    .o_tdata  (phase_out_tdata),</div><div>    .o_tvalid (pha=
se_out_tvalid),</div><div>    .o_tready (phase_out_tready)</div><div>  );</=
div><br><div>  <span style=3D"color:rgb(0,128,0)">// // // CORDIC rotator</=
span></div><div>  <span style=3D"color:rgb(128,0,0)">cordic_rotator</span> =
<span style=3D"color:rgb(128,0,0)">cordic_inst</span> (</div><div>    .aclk=
                    (ce_clk),</div><div>    .aresetn                 (~ce_r=
st),</div><div>    .s_axis_phase_tdata      (phase_out_tdata),</div><div>  =
  <span style=3D"color:rgb(0,128,0)">//.s_axis_phase_tlast     (1&#39;b1),<=
/span></div><div>    .s_axis_phase_tvalid     (phase_out_tvalid),</div><div=
>    .s_axis_phase_tready     (phase_out_tready),</div><div>    .s_axis_car=
tesian_tdata  ({<span style=3D"color:rgb(9,134,88)">16&#39;d0</span>, <span=
 style=3D"color:rgb(9,134,88)">16&#39;d1</span>}), <span style=3D"color:rgb=
(0,128,0)">// Initial vector</span></div><div>    .s_axis_cartesian_tlast  =
(<span style=3D"color:rgb(9,134,88)">1&#39;b1</span>),</div><div>    .s_axi=
s_cartesian_tvalid (phase_out_tvalid),</div><div>    .s_axis_cartesian_trea=
dy (phase_out_tready),</div><div>    .m_axis_dout_tdata       ({sine_out_td=
ata[      <span style=3D"color:rgb(9,134,88)">0</span> +: <span style=3D"co=
lor:rgb(9,134,88)">16</span>],   <span style=3D"color:rgb(0,128,0)">// Q</s=
pan></div><div>                               sine_out_tdata[<span style=3D=
"color:rgb(9,134,88)">16</span> +: <span style=3D"color:rgb(9,134,88)">16</=
span>]}), <span style=3D"color:rgb(0,128,0)">// I</span></div><div>    .m_a=
xis_dout_tlast       (sine_out_tlast),</div><div>    .m_axis_dout_tvalid   =
   (sine_out_tvalid),</div><div>    .m_axis_dout_tready      (sine_out_trea=
dy)</div><div>  );</div><div>  </div><br><br></div></div></div></div>

--0000000000009402f00604ebdf44--

--===============8366823802397738780==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8366823802397738780==--
