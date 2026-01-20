Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id O6eWDEHXb2n8RwAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Tue, 20 Jan 2026 20:28:01 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5C04A5AA
	for <lists+usrp-users@lfdr.de>; Tue, 20 Jan 2026 20:28:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 987EE386338
	for <lists+usrp-users@lfdr.de>; Tue, 20 Jan 2026 14:27:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1768937279; bh=Mx+yJembamsCF0hlE4/RSEJKP8A7j3q9NNXNXOMSM7I=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=nmMbGIq4S15Pmchlu08S24omNzD9BaDVxky3rZ2buR0PDOK6Jql+fi84TI8Wt6reo
	 vU1AXBBrBAjJeNEedKAKUbWGZA9Ak+8Xvyoqac0xG5J2BJjie4cvPxKlgyqbl9QKNx
	 79SXQhUTI5ZgpAaoLoVG7rco1hupnfhHI7WXPREnCBNFucIskH9HXZQjZuGfzD3uGL
	 Z3uOdJ3AInomgWjhCLVVi/t8vIsU1Kw4Xj2gXEsdqYmrtXX+d9Pih7glU0C6j1v5Fr
	 t+NFdZ+SLLY4OvLXuf2jB0iGjM00CpwBYPn0U7A7OTsCqk4QZOVZgJcIz/jl7ascFh
	 sF2orlcaMfMOg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DBC20385A65
	for <usrp-users@lists.ettus.com>; Tue, 20 Jan 2026 14:26:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1768937208; bh=POrshkNq7tUfaebHx3Wd3Sgn98EwIW6C3NtZYWB/YYA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Vw/m9nWrkeSJyTy8dJxMboiAtgooeIiz4XZr7RaHg+AccyhQou/nlVly8M2dnFYga
	 3CW193LinMvexNUcWogyMNfPOc+0GO+eamSKp++bk4J7bIvVNT77hiP3xq1+0y6yiR
	 /tzKQj9dcM9jZfmojvvYqToQrN9KiTqH5fC4Kc6ZfyTAidjm8PKnv+r43hsZTv9rYq
	 cAN35fTv8Px0tbldaGZ2MfN69y0jZimaUeKa4rlyT89/YB3d3+Cd7/Sqa/vhVicFQA
	 +P3s/2p00f4hj2Gk6btIM4C9BVIt4Ca8KWWqCidbWvaFzN4UIdEunDeJZqIWIvQkoY
	 wF0DDmSkzSzAA==
Date: Tue, 20 Jan 2026 19:26:48 +0000
To: usrp-users@lists.ettus.com
Message-ID: <sMlLGLRKWHiFIG0jFKd8Cx2lK6U2M32BelF4mjpo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CY1P110MB0888416ED25C0744A4AE0F17AA89A@CY1P110MB0888.NAMP110.PROD.OUTLOOK.COM
MIME-Version: 1.0
Message-ID-Hash: 2LEDG5CH7NKOYR2BW3JPG5XT6NDHEMBV
X-Message-ID-Hash: 2LEDG5CH7NKOYR2BW3JPG5XT6NDHEMBV
X-MailFrom: joerg.hofrichter@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC Front Panel GPIO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2LEDG5CH7NKOYR2BW3JPG5XT6NDHEMBV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "joerg.hofrichter--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: joerg.hofrichter@emerson.com
Content-Type: multipart/mixed; boundary="===============0230404852314190466=="
X-Spamd-Result: default: False [-0.51 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_PHPMAILER_SIG(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	DKIM_MIXED(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	TO_EQ_FROM(0.00)[];
	R_DKIM_REJECT(0.00)[emwd.com:s=harmony];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,emwd.com:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[joerg.hofrichter@emerson.com];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email,uhd.readthedocs.io:url]
X-Rspamd-Queue-Id: 8D5C04A5AA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is a multi-part message in MIME format.

--===============0230404852314190466==
Content-Type: multipart/alternative;
 boundary="b1_sMlLGLRKWHiFIG0jFKd8Cx2lK6U2M32BelF4mjpo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_sMlLGLRKWHiFIG0jFKd8Cx2lK6U2M32BelF4mjpo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Juan,

your question comes just at the right time - we were working on exactly t=
his feature (front-panel access from custom RFNoC blocks - for **all** RF=
NoC enabled devices) recently. The necessary changes are now available in=
 uhd master and were not yet published as an official UHD release (latest=
 UHD release at the time of writing, mid January 2026: UHD 4.9.0.1).

What you need is the following:

1. Build and Install UHD

   * Build UHD from source using uhd master; install UHD (as long as ther=
e is no new official UHD release after UHD 4.9.0.1)

2. Prepare your RFNoC block

   * Write your own RFNoC block. For writing the block as an out-of-tree =
block, use the =E2=80=9Crfnoc_modtool=E2=80=9D utility. It now offers an =
interactive dialogue for creating new RFNoC blocks.

     * your RFNoC block .yml file (e.g. my_gpio_block.yml) needs to have =
an IO port of type =E2=80=9Cgpio=E2=80=9D:\
       parameters:\
         GPIO_WIDTH: ${ config.device.parameters\['FP_GPIO_BANK_WIDTH'\] =
}\
       (=E2=80=A6)\
       io_ports:\
         gpio:\
           type: gpio\
           drive: master\
           parameters:\
             width: "${parameters\['GPIO_WIDTH'\]}"

     * Your RFNoC block implementation in Verilog (e.g. rfnoc_block_my_gp=
io_block.v) needs these additional signals:\
       // GPIO interface\
       output wire \[GPIO_WIDTH-1:0\]  gpio_out,\
       output wire \[GPIO_WIDTH-1:0\]  gpio_ddr,\
       input wire  \[GPIO_WIDTH-1:0\]  gpio_in

     * In your RFNoC block implementation in Verilog (e.g. rfnoc_block_my=
_gpio_block.v), set gpio_ddr\[i\] to 1 if you want GPIO pin i to be outpu=
t. Set gpio_out\[i\] to 1 if you want to drive the GPIO pin i high. gpio_=
in\[i\] is the input value.

     * Your RFNoC image core .yml file (e.g. n310_rfnoc_image_core_with_m=
y_gpio.yml) needs to instantiate the new block. Connect the =E2=80=9Cgpio=
=E2=80=9D port of your block (e.g. =E2=80=9Cmy_gpio_block0=E2=80=9D) to t=
he fp_gpio port of the device:\
       noc_blocks:\
         (=E2=80=A6)\
         my_gpio_block0:\
           block_desc: 'my_gpio_block.yml'\
       connections:\
         (=E2=80=A6)\
         # BSP connections\
         (=E2=80=A6)\
         - { srcblk: my_gpio_block0, srcport: gpio,     dstblk: _device_,=
   dstport: fp_gpio         }

3. Build the FPGA

   * Use rfnoc_image_builder to build the FPGA from your image core file =
(e.g. rfnoc_image_core -y n310_rfnoc_image_core_with_my_gpio.yml (=E2=80=A6=
) )

4. Embedded filesystem on the N310 :

   * Use UHD 4.9.0.0/4.9.0.1 filesystem (as long there is no new UHD rele=
ase after UHD 4.9.0.1)

   * apply the following patch on the device (below /usr/lib/python3.10/s=
ite-packages/usrp_mpm): https://github.com/EttusResearch/uhd/commit/d7a5d=
ba76e261e111c1b0169654b0ce956a4673e (as long there is no new UHD release =
after UHD 4.9.0.1)

   * after applying patch, either reboot or execute =E2=80=9Csystemctl re=
start usrp-hwd=E2=80=9D

5. Write and run your host application

   * The host application needs to set the GPIO source for the desired GP=
IO pins to =E2=80=9CUSER_APP=E2=80=9D (which stands for: the GPIO pin is =
controlled by user logic).

   * Use the API functions uhd::usrp::multi_usrp::set_gpio_src \[1\] or u=
hd::rfnoc::mb_controller::set_gpio_src \[2\] for this.

   * Example for using the multi-USRP API from Python:\
     usrp =3D uhd.usrp.MultiUSRP("addr=3D192.168.10.2") # replace with th=
e actual IP address of your N310\
     usrp.get_gpio_src_banks() # this returns \['FP0'\]\
     usrp.get_gpio_src(=E2=80=9CFP0=E2=80=9D) # this returns \['RF0', 'RF=
0', 'RF0', 'RF0', 'RF0', 'RF0', 'RF0', 'RF0', 'RF0', 'RF0', 'RF0', 'RF0'\=
] in case the sources were not modified after UHD session initialization\
     n =3D 1\
     m =3D 11\
     usrp.set_gpio_src(=E2=80=9CFP0=E2=80=9D, \[=E2=80=9CUSER_APP=E2=80=9D=
\]\*n + \[=E2=80=9CRF0=E2=80=9D\]\*m) # use RFNoC as source for the first=
 n GPIO pins, use the GPIO ATR states for the other m GPIO pins.\
     usrp.get_gpio_src(=E2=80=9CFP0=E2=80=9D) # this should return the de=
sired GPIO sources

   * After the GPIO source was set to =E2=80=9CUSER_APP=E2=80=9D for the =
desired pin, the physical value of this pin will be determined by the log=
ic which you have defined in your RFNoC block (e.g. rfnoc_block_my_gpio_b=
lock.v). **Please** **double check** that you are not driving pins from t=
wo sources (e.g. for the pins that you defined as output in the FPGA, don=
=E2=80=99t connect circuitry to the GPIO pins which drives the wire).

Please let me know if you were successful in using the new front-panel GP=
IO from RFNoC feature. If not, feel free to ask additional questions.

Kind regards,\
J=C3=B6rg

\[1\] https://uhd.readthedocs.io/en/latest/classuhd_1_1usrp_1_1multi__usr=
p.html#a50538e29e9b2053fe303dfc9dd3a217b\
\[2\] https://uhd.readthedocs.io/en/latest/classuhd_1_1rfnoc_1_1mb__contr=
oller.html#ad278664eb8b74f9695237393553897bd

--b1_sMlLGLRKWHiFIG0jFKd8Cx2lK6U2M32BelF4mjpo
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Juan,</p><p>your question comes just at the right time - we were work=
ing on exactly this feature (front-panel access from custom RFNoC blocks - =
for <strong>all</strong> RFNoC enabled devices) recently. The necessary cha=
nges are now available in uhd master and were not yet published as an offic=
ial UHD release (latest UHD release at the time of writing, mid January 202=
6: UHD 4.9.0.1).</p><p>What you need is the following:</p><ol><li><p>Build =
and Install UHD</p><ul><li><p>Build UHD from source using uhd master; insta=
ll UHD (as long as there is no new official UHD release after UHD 4.9.0.1)<=
/p></li></ul></li><li><p>Prepare your RFNoC block</p><ul><li><p>Write your =
own RFNoC block. For writing the block as an out-of-tree block, use the =
=E2=80=9Crfnoc_modtool=E2=80=9D utility. It now offers an interactive dialo=
gue for creating new RFNoC blocks.</p><ul><li><p>your RFNoC block .yml file=
 (e.g. my_gpio_block.yml) needs to have an IO port of type =E2=80=9Cgpio=
=E2=80=9D:<br>parameters:<br>  GPIO_WIDTH: ${ config.device.parameters['FP_=
GPIO_BANK_WIDTH'] }<br>(=E2=80=A6)<br>io_ports:<br>  gpio:<br>    type: gpi=
o<br>    drive: master<br>    parameters:<br>      width: "${parameters['GP=
IO_WIDTH']}"</p></li><li><p>Your RFNoC block implementation in Verilog (e.g=
. rfnoc_block_my_gpio_block.v) needs these additional signals:<br>// GPIO i=
nterface<br>output wire [GPIO_WIDTH-1:0]  gpio_out,<br>output wire [GPIO_WI=
DTH-1:0]  gpio_ddr,<br>input wire  [GPIO_WIDTH-1:0]  gpio_in</p></li><li><p=
>In your RFNoC block implementation in Verilog (e.g. rfnoc_block_my_gpio_bl=
ock.v), set gpio_ddr[i] to 1 if you want GPIO pin i to be output. Set gpio_=
out[i] to 1 if you want to drive the GPIO pin i high. gpio_in[i] is the inp=
ut value.</p></li><li><p>Your RFNoC image core .yml file (e.g. n310_rfnoc_i=
mage_core_with_my_gpio.yml) needs to instantiate the new block. Connect the=
 =E2=80=9Cgpio=E2=80=9D port of your block (e.g. =E2=80=9Cmy_gpio_block0=
=E2=80=9D) to the fp_gpio port of the device:<br>noc_blocks:<br>  (=
=E2=80=A6)<br>  my_gpio_block0:<br>    block_desc: 'my_gpio_block.yml'<br>c=
onnections:<br>  (=E2=80=A6)<br>  # BSP connections<br>  (=E2=80=A6)<br>  -=
 { srcblk: my_gpio_block0, srcport: gpio,     dstblk: _device_,   dstport: =
fp_gpio         }</p></li></ul></li></ul></li><li><p>Build the FPGA</p><ul>=
<li><p>Use rfnoc_image_builder to build the FPGA from your image core file =
(e.g. rfnoc_image_core -y n310_rfnoc_image_core_with_my_gpio.yml (=E2=80=
=A6) )</p></li></ul></li><li><p>Embedded filesystem on the N310 :</p><ul><l=
i><p>Use UHD 4.9.0.0/4.9.0.1 filesystem (as long there is no new UHD releas=
e after UHD 4.9.0.1)</p></li><li><p>apply the following patch on the device=
 (below /usr/lib/python3.10/site-packages/usrp_mpm): https://github.com/Ett=
usResearch/uhd/commit/d7a5dba76e261e111c1b0169654b0ce956a4673e (as long the=
re is no new UHD release after UHD 4.9.0.1)</p></li><li><p>after applying p=
atch, either reboot or execute =E2=80=9Csystemctl restart usrp-hwd=E2=80=
=9D</p></li></ul></li><li><p>Write and run your host application</p><ul><li=
><p>The host application needs to set the GPIO source for the desired GPIO =
pins to =E2=80=9CUSER_APP=E2=80=9D (which stands for: the GPIO pin is contr=
olled by user logic).</p></li><li><p>Use the API functions uhd::usrp::multi=
_usrp::set_gpio_src [1] or uhd::rfnoc::mb_controller::set_gpio_src [2] for =
this.</p></li><li><p>Example for using the multi-USRP API from Python:<br>u=
srp =3D uhd.usrp.MultiUSRP("addr=3D192.168.10.2") # replace with the actual=
 IP address of your N310<br>usrp.get_gpio_src_banks() # this returns ['FP0'=
]<br>usrp.get_gpio_src(=E2=80=9CFP0=E2=80=9D) # this returns ['RF0', 'RF0',=
 'RF0', 'RF0', 'RF0', 'RF0', 'RF0', 'RF0', 'RF0', 'RF0', 'RF0', 'RF0'] in c=
ase the sources were not modified after UHD session initialization<br>n =3D=
 1<br>m =3D 11<br>usrp.set_gpio_src(=E2=80=9CFP0=E2=80=9D, [=E2=80=9CUSER_A=
PP=E2=80=9D]*n + [=E2=80=9CRF0=E2=80=9D]*m) # use RFNoC as source for the f=
irst n GPIO pins, use the GPIO ATR states for the other m GPIO pins.<br>usr=
p.get_gpio_src(=E2=80=9CFP0=E2=80=9D) # this should return the desired GPIO=
 sources</p></li><li><p>After the GPIO source was set to =E2=80=9CUSER_APP=
=E2=80=9D for the desired pin, the physical value of this pin will be deter=
mined by the logic which you have defined in your RFNoC block (e.g. rfnoc_b=
lock_my_gpio_block.v). <strong>Please</strong> <strong>double check </stron=
g>that you are not driving pins from two sources (e.g. for the pins that yo=
u defined as output in the FPGA, don=E2=80=99t connect circuitry to the GPI=
O pins which drives the wire).</p></li></ul></li></ol><p>Please let me know=
 if you were successful in using the new front-panel GPIO from RFNoC featur=
e. If not, feel free to ask additional questions.</p><p>Kind regards,<br>J=
=C3=B6rg</p><p>[1] https://uhd.readthedocs.io/en/latest/classuhd_1_1usrp_1_=
1multi__usrp.html#a50538e29e9b2053fe303dfc9dd3a217b<br>[2] https://uhd.read=
thedocs.io/en/latest/classuhd_1_1rfnoc_1_1mb__controller.html#ad278664eb8b7=
4f9695237393553897bd</p>

--b1_sMlLGLRKWHiFIG0jFKd8Cx2lK6U2M32BelF4mjpo--

--===============0230404852314190466==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0230404852314190466==--
