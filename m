Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 916C088CBDE
	for <lists+usrp-users@lfdr.de>; Tue, 26 Mar 2024 19:18:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5468338649C
	for <lists+usrp-users@lfdr.de>; Tue, 26 Mar 2024 14:18:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1711477118; bh=X3zNCZ2EkenIAnX6SeaIjtDZd2HHC9EwUVk1779x2GY=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=JUnGexjMYSf+Ytbys6ZDR9jLfrqTmT9h80r2wszcGn3ehzXFIFSOnqvPutc0b6gdh
	 dNVqdTRmFtv04JKlu2vBdHqgTZCodXz3dur3XnC5GOQ7RCyksI7PNbPDJw1C4azFW/
	 uT0ACYYZPTRtbRGeY7ad2BLsLhAWW5LRgHbn8Ls24JrfG7S/3bmZIuf4ztrsqodJut
	 0IonCn5d/oRmNrCirFfCuQiZQIOx/C8AotmUve4m/M6UPzKCjXOr9NZlbRl/K1v4x1
	 /ngvrLf41G3jfLpHI1zEgnWcr39i7wFLv+02RJU4ppT7OuXeThLw8deU86sdsb7hGg
	 aI6jCuGjQgXWw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C24E23862DA
	for <usrp-users@lists.ettus.com>; Tue, 26 Mar 2024 14:18:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1711477103; bh=bKR751Rze2LTQPqoPXrwlkZK9j5ZVugIas1IQDejmls=;
	h=Date:To:From:Subject:From;
	b=KPCl6Y+YCLKtLWm3iz8tEwsFaomj87vcxkffVYzFjkx3s9cGHP9CsRMSFhxlThpyf
	 Al6G80G9SePEXArc/zzUMoEc2L2041OTdYLV7ewbdkwvEWiRy6JxL31ms/0WRtblZI
	 VAEcAJ4tbBMmy2f1ed5V2tSKX2EwYSiH8gnvTzwp/16yPbKw8FphZyJJhxBsK70mOf
	 Cq0I9ilYzodfq01Vb6kLy7MwcapEmfUkTP6Vgaw00tFKQK5sGB6pMeRctXouWbu5GN
	 EHSXs5vXSvtoNVzeGj4KqlEUHTPBLDJjysB/+SQCxc4LLZjUxvJzV1abvXcGj0XTDk
	 OtfyvlG1XLAOQ==
Date: Tue, 26 Mar 2024 18:18:23 +0000
To: usrp-users@lists.ettus.com
Message-ID: <h0L6dBAQPTvnhglyeFh4MRuX89g5HynNE6Dsxxfmymc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 64UF7DTVSW37SY6JIDO3THWP7ZDVDP73
X-Message-ID-Hash: 64UF7DTVSW37SY6JIDO3THWP7ZDVDP73
X-MailFrom: chris.pineda@chaosinc.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Unable to Simulate RFNoC FFT Module in Questa/Modelsim
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/64UF7DTVSW37SY6JIDO3THWP7ZDVDP73/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "chris.pineda--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: chris.pineda@chaosinc.com
Content-Type: multipart/mixed; boundary="===============8720987123329416383=="

This is a multi-part message in MIME format.

--===============8720987123329416383==
Content-Type: multipart/alternative;
 boundary="b1_h0L6dBAQPTvnhglyeFh4MRuX89g5HynNE6Dsxxfmymc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_h0L6dBAQPTvnhglyeFh4MRuX89g5HynNE6Dsxxfmymc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I=E2=80=99ve been trying to integrate the Questa into the simulation envi=
ronment, and have had success simulating all the provided modules, with t=
he exception of the FFT. Whenever I would run `make vsim`, it would gener=
ate the IP, and then I would run into the following error. \
`vcom -32 -93 -work xil_defaultlib ../../../../../build-ip/xc7z100ffg900-=
2/axi_fft/synth/axi_fft.vhd `\
`-- Loading package STANDARD`\
`-- Loading package TEXTIO`\
`-- Loading package std_logic_1164`\
`-- Loading package NUMERIC_STD`\
`** Error: ../../../../../build-ip/xc7z100ffg900-2/axi_fft/synth/axi_fft.=
vhd(56): (vcom-1598) Library "xfft_v9_1_6" not found.`\
`** Error: ../../../../../build-ip/xc7z100ffg900-2/axi_fft/synth/axi_fft.=
vhd(57): (vcom-1136) Unknown identifier "xfft_v9_1_6".`\
`** Note: ../../../../../build-ip/xc7z100ffg900-2/axi_fft/synth/axi_fft.v=
hd(59):`

I have done several steps in trying to resolve this. Originally I compile=
d the sim library through Vivado, so I tried to compile it through the `b=
uild_simlibs` command (which I know just does the same thing, but I thoug=
ht I=E2=80=99d try it). I=E2=80=99ve tried adding in the `MODELSIM_LIBS=3D=
"secureip xpm"`  argument when calling the make file, I=E2=80=99ve tried =
downgrading to Modelsim DE, and regenerating the library with the exact v=
ersion that matches the desired version for Vivado 2021.1 (2020.4). No ma=
tter what, it seems like it can=E2=80=99t resolve this issue. When I chec=
k the generated IP files, I see a xfft_v9_1_vh_rfs.vhd file (which is enc=
rypted), so I=E2=80=99m unclear why it=E2=80=99s unable to find it. Has a=
nyone had any trouble simulating this module? And any steps to try to res=
olve? Thank you.

--b1_h0L6dBAQPTvnhglyeFh4MRuX89g5HynNE6Dsxxfmymc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I=E2=80=99ve been trying to integrate the Questa into the simulation env=
ironment, and have had success simulating all the provided modules, with th=
e exception of the FFT. Whenever I would run <code>make vsim</code>, it wou=
ld generate the IP, and then I would run into the following error. <br><cod=
e>vcom -32 -93 -work xil_defaultlib ../../../../../build-ip/xc7z100ffg900-2=
/axi_fft/synth/axi_fft.vhd <br>-- Loading package STANDARD<br>-- Loading pa=
ckage TEXTIO<br>-- Loading package std_logic_1164<br>-- Loading package NUM=
ERIC_STD<br>** Error: ../../../../../build-ip/xc7z100ffg900-2/axi_fft/synth=
/axi_fft.vhd(56): (vcom-1598) Library "xfft_v9_1_6" not found.<br>** Error:=
 ../../../../../build-ip/xc7z100ffg900-2/axi_fft/synth/axi_fft.vhd(57): (vc=
om-1136) Unknown identifier "xfft_v9_1_6".<br>** Note: ../../../../../build=
-ip/xc7z100ffg900-2/axi_fft/synth/axi_fft.vhd(59):</code></p><p>I have done=
 several steps in trying to resolve this. Originally I compiled the sim lib=
rary through Vivado, so I tried to compile it through the <code>build_simli=
bs</code> command (which I know just does the same thing, but I thought I=
=E2=80=99d try it). I=E2=80=99ve tried adding in the <code>MODELSIM_LIBS=3D=
"secureip xpm"</code>  argument when calling the make file, I=E2=80=99ve tr=
ied downgrading to Modelsim DE, and regenerating the library with the exact=
 version that matches the desired version for Vivado 2021.1 (2020.4). No ma=
tter what, it seems like it can=E2=80=99t resolve this issue. When I check =
the generated IP files, I see a xfft_v9_1_vh_rfs.vhd file (which is encrypt=
ed), so I=E2=80=99m unclear why it=E2=80=99s unable to find it. Has anyone =
had any trouble simulating this module? And any steps to try to resolve? Th=
ank you. </p>

--b1_h0L6dBAQPTvnhglyeFh4MRuX89g5HynNE6Dsxxfmymc--

--===============8720987123329416383==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8720987123329416383==--
