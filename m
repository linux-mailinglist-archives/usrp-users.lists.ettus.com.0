Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB977B2C90
	for <lists+usrp-users@lfdr.de>; Fri, 29 Sep 2023 08:45:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5C714384013
	for <lists+usrp-users@lfdr.de>; Fri, 29 Sep 2023 02:45:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695969932; bh=Oc7B7aPsd+JvZnlrAXQWaaeh2WhT1AD87EnhUbSbRBM=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=tI8Ed31q2KU1F16h2tO4X/HBfEKrjiTP/d+B7AECZB2itZYScGqtXXk+y1h23gSxH
	 tb7jgeS/oS/5zxsdYvNay53lOMd87VHWOIqODpe7i08IDF/FMH471djkLr4S0JAUPX
	 tpq3s/gtbt7A40VdT5IA7/4voeqtBJeReOhn9gy6yNMk15CvQQK1MQf3xe5CZUwi91
	 XpyT4O8v6Jmn4hA5sNjglACTn+HMcQQjhaqqOVs4bVaddhAkBf6kyINr5v/426x4+G
	 9gcHVeCQqCcMsh+PdhC+UK+GNozPWeDhUc9Dpq6tpQnjlt1Qw0K7PrqosI8AsT72/L
	 wtPgIWqHX3Fvw==
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 4CFC1384012
	for <usrp-users@lists.ettus.com>; Fri, 29 Sep 2023 02:45:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DjlvOvry";
	dkim-atps=neutral
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2bfed7c4e6dso224201991fa.1
        for <usrp-users@lists.ettus.com>; Thu, 28 Sep 2023 23:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695969927; x=1696574727; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MoWzDUVL+jPoBGV1Y/JzjEEq3ZccBZ5ySdnMVA8HhuE=;
        b=DjlvOvryC0nQsEuXf84WszYcz/RInuiD8rgMeXgCYj4sAzVGMvY9di/Q9k9WfeJChe
         L/n/ceVL6tsOo86ypNfaOqTMRvgG/Glh+GOcihHN96qe7AQ+9BbbJzmYwXg81Xfq1sbA
         T0bdyecvGmDWDAm6UhGrLY4VpOQsuzWkNJp8cJYaqybDHp3tpVKNJQkTIw/mwmlhaT2t
         z1dksqPgGdXR2bnDDONICUYqkkZikWEbERyCMrsVo8bKmFW828eAfxVcwJO7wUXUjuYp
         X9NjF+p8QjePiWtS7eAfsI/zLlF2pV3rYi7kreQaWEqT5xRxqZemqSby2LUMR2bDrrDY
         N6bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695969927; x=1696574727;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MoWzDUVL+jPoBGV1Y/JzjEEq3ZccBZ5ySdnMVA8HhuE=;
        b=RYaVhQ40cuedRHdjzv/Hgyibgqs6ffCvtSJZ3ckQbFWcXJwMy2zyZjAvjkV2Q0Uwi6
         UYrnv+FrppbyAQ20e1DvagNVeTOE37KfXgqk+iRthXKuXX7EvIQmMWvw10xCZEqEaVpB
         pS5H2/domhrbl3Ucvkmi/mVKY+V7g6PSsp6+5rEgqNhcVTF+cQv09ikFnb+i+VB76j9B
         Ks9fySA+lk8dNolgWXUW5cHr5ipeV2ON/FCBtvwDoXXscRJ7hPdgh3aPEaGpwLZ5fGmz
         XXzvm/+cWkBuZppaGBiGyegPMwzLXp+jyTsGtBuioYa7fKJMiDJo2RCEqcOu4TvmuEgT
         3qtQ==
X-Gm-Message-State: AOJu0YyHSOBjVDmxOvrcEMOYCFJ0sSOsXOsNs343bgXuAC3WtWNFVG3h
	By9f+fCpihxV3mObqQ6LTvo3sqruUNnAqEhR1MWPmJNAGdJM8c6PkTs=
X-Google-Smtp-Source: AGHT+IG35Zv1zNWZ9DXmyWbGzhH4Eg6thOojhRwfOzs5F/GTI2UKmZ0Fz8EWM2Zq1cN17uPhmGFUdgtGq+mjJV8VO6I=
X-Received: by 2002:a05:651c:105b:b0:2c0:bc5:5ff1 with SMTP id
 x27-20020a05651c105b00b002c00bc55ff1mr3334341ljm.22.1695969926848; Thu, 28
 Sep 2023 23:45:26 -0700 (PDT)
MIME-Version: 1.0
From: sp <stackprogramer@gmail.com>
Date: Fri, 29 Sep 2023 10:15:15 +0330
Message-ID: <CAA=S3Ps6zzFeM-EDbGTaKnwifJZgRHWC721bFcrAkaiH4_OKAw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: ZUNIHIRVSICMIZMJ74JFXMHI7EPQZ5I7
X-Message-ID-Hash: ZUNIHIRVSICMIZMJ74JFXMHI7EPQZ5I7
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] what's default spp in a rfnoc blocks? how can set spp in testbench to 1?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZUNIHIRVSICMIZMJ74JFXMHI7EPQZ5I7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5186836070665575154=="

--===============5186836070665575154==
Content-Type: multipart/alternative; boundary="0000000000000a2703060679c5d0"

--0000000000000a2703060679c5d0
Content-Type: text/plain; charset="UTF-8"

I want to when i examine rfnoc block or example blocks spp is set to 64 in
the test bench, my question is in FPGA what's the spp default for ordinary
blocks?
I need spp to be 1 , but when I changed it I faced a strange error and the
simulation has an error

Fatal: ChdrIfaceBfm::set_max_payload_length: max_payload_length must be a
multiple of CHDR_W in bytes


`default_nettype none


module rfnoc_block_gain_tb;

`include "test_exec.svh"

import PkgTestExec::*;
import PkgChdrUtils::*;
import PkgRfnocBlockCtrlBfm::*;
import PkgRfnocItemUtils::*;

`include "rfnoc_block_siggen_regs.vh"


//---------------------------------------------------------------------------
// Testbench Configuration
//---------------------------------------------------------------------------

localparam [ 9:0] THIS_PORTID = 10'h123;
localparam [31:0] NOC_ID = 32'h2CD7049B;
localparam int NUM_PORTS = 1; // Number of CHDR data ports
localparam int NUM_PORTS_I = 0+NUM_PORTS;
localparam int NUM_PORTS_O = 0+NUM_PORTS;
localparam int CHDR_W = 64; // CHDR size in bits
localparam int ITEM_W = 32; // Sample size in bits
localparam int MTU = 13; // Log2 of max transmission unit in CHDR words
localparam int SPP = 1; // Samples per packet
localparam int PKT_SIZE_BYTES = SPP * (ITEM_W/8);
localparam int STALL_PROB = 25; // Default BFM stall probability
localparam real CHDR_CLK_PER = 5.0; // 200 MHz
localparam real CTRL_CLK_PER = 25.0; // 40 MHz
localparam real CE_CLK_PER = 4.0; // 250 MHz

--0000000000000a2703060679c5d0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I want to when i examine rfnoc block or example blocks spp=
 is set to 64 in the test bench, my question is in FPGA what&#39;s the spp =
default for ordinary blocks?<div>I need spp to be 1 , but when I changed it=
 I faced a strange error and the simulation has an=C2=A0error</div><div><br=
></div><div><div style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mon=
o&quot;,&quot;monospace&quot;,monospace;font-size:14px;line-height:19px;whi=
te-space:pre">Fatal: ChdrIfaceBfm::set_max_payload_length: max_payload_leng=
th must be a multiple of CHDR_W in bytes</div><div style=3D"color:rgb(0,0,0=
);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace;f=
ont-size:14px;line-height:19px;white-space:pre"><br></div><div style=3D"col=
or:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;=
,monospace;font-size:14px;line-height:19px;white-space:pre"><br><div>`defau=
lt_nettype none</div><br><br><div><span style=3D"color:rgb(0,0,255)">module=
</span> rfnoc_block_gain_tb;</div><br><div>  `include <span style=3D"color:=
rgb(163,21,21)">&quot;test_exec.svh&quot;</span></div><br><div>  <span styl=
e=3D"color:rgb(0,0,255)">import</span> PkgTestExec::*;</div><div>  <span st=
yle=3D"color:rgb(0,0,255)">import</span> PkgChdrUtils::*;</div><div>  <span=
 style=3D"color:rgb(0,0,255)">import</span> PkgRfnocBlockCtrlBfm::*;</div><=
div>  <span style=3D"color:rgb(0,0,255)">import</span> PkgRfnocItemUtils::*=
;</div><br><div>  `include <span style=3D"color:rgb(163,21,21)">&quot;rfnoc=
_block_siggen_regs.vh&quot;</span></div><br><br><div>  <span style=3D"color=
:rgb(0,128,0)">//----------------------------------------------------------=
-----------------</span></div><div>  <span style=3D"color:rgb(0,128,0)">// =
Testbench Configuration</span></div><div>  <span style=3D"color:rgb(0,128,0=
)">//----------------------------------------------------------------------=
-----</span></div><br><div>  <span style=3D"color:rgb(0,0,255)">localparam<=
/span> [ <span style=3D"color:rgb(9,134,88)">9</span>:<span style=3D"color:=
rgb(9,134,88)">0</span>] THIS_PORTID     =3D <span style=3D"color:rgb(9,134=
,88)">10&#39;h123</span>;</div><div>  <span style=3D"color:rgb(0,0,255)">lo=
calparam</span> [<span style=3D"color:rgb(9,134,88)">31</span>:<span style=
=3D"color:rgb(9,134,88)">0</span>] NOC_ID          =3D <span style=3D"color=
:rgb(9,134,88)">32&#39;h2CD7049B</span>;</div><div>  <span style=3D"color:r=
gb(0,0,255)">localparam int</span>    NUM_PORTS       =3D <span style=3D"co=
lor:rgb(9,134,88)">1</span>;       <span style=3D"color:rgb(0,128,0)">// Nu=
mber of CHDR data ports</span></div><div>  <span style=3D"color:rgb(0,0,255=
)">localparam int</span>    NUM_PORTS_I     =3D <span style=3D"color:rgb(9,=
134,88)">0</span>+NUM_PORTS;</div><div>  <span style=3D"color:rgb(0,0,255)"=
>localparam int</span>    NUM_PORTS_O     =3D <span style=3D"color:rgb(9,13=
4,88)">0</span>+NUM_PORTS;</div><div>  <span style=3D"color:rgb(0,0,255)">l=
ocalparam int</span>    CHDR_W          =3D <span style=3D"color:rgb(9,134,=
88)">64</span>;      <span style=3D"color:rgb(0,128,0)">// CHDR size in bit=
s</span></div><div>  <span style=3D"color:rgb(0,0,255)">localparam int</spa=
n>    ITEM_W          =3D <span style=3D"color:rgb(9,134,88)">32</span>;   =
   <span style=3D"color:rgb(0,128,0)">// Sample size in bits</span></div><d=
iv>  <span style=3D"color:rgb(0,0,255)">localparam int</span>    MTU       =
      =3D <span style=3D"color:rgb(9,134,88)">13</span>;      <span style=
=3D"color:rgb(0,128,0)">// Log2 of max transmission unit in CHDR words</spa=
n></div><div>  <span style=3D"color:rgb(0,0,255)">localparam int</span>    =
SPP             =3D <span style=3D"color:rgb(9,134,88)">1</span>;      <spa=
n style=3D"color:rgb(0,128,0)">// Samples per packet</span></div><div>  <sp=
an style=3D"color:rgb(0,0,255)">localparam int</span>    PKT_SIZE_BYTES  =
=3D SPP * (ITEM_W/<span style=3D"color:rgb(9,134,88)">8</span>);</div><div>=
  <span style=3D"color:rgb(0,0,255)">localparam int</span>    STALL_PROB   =
   =3D <span style=3D"color:rgb(9,134,88)">25</span>;      <span style=3D"c=
olor:rgb(0,128,0)">// Default BFM stall probability</span></div><div>  <spa=
n style=3D"color:rgb(0,0,255)">localparam real</span>   CHDR_CLK_PER    =3D=
 <span style=3D"color:rgb(9,134,88)">5</span>.<span style=3D"color:rgb(9,13=
4,88)">0</span>;     <span style=3D"color:rgb(0,128,0)">// 200 MHz</span></=
div><div>  <span style=3D"color:rgb(0,0,255)">localparam real</span>   CTRL=
_CLK_PER    =3D <span style=3D"color:rgb(9,134,88)">25</span>.<span style=
=3D"color:rgb(9,134,88)">0</span>;    <span style=3D"color:rgb(0,128,0)">//=
 40 MHz</span></div><div>  <span style=3D"color:rgb(0,0,255)">localparam re=
al</span>   CE_CLK_PER      =3D <span style=3D"color:rgb(9,134,88)">4</span=
>.<span style=3D"color:rgb(9,134,88)">0</span>;     <span style=3D"color:rg=
b(0,128,0)">// 250 MHz</span></div><br><br></div></div></div>

--0000000000000a2703060679c5d0--

--===============5186836070665575154==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5186836070665575154==--
