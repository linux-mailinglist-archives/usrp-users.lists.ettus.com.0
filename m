Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 28ABF787505
	for <lists+usrp-users@lfdr.de>; Thu, 24 Aug 2023 18:16:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 06C3A384C8D
	for <lists+usrp-users@lfdr.de>; Thu, 24 Aug 2023 12:16:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692893767; bh=3nYZ2ef1Khw1A5aZlzggzFupGvw2GoSV6wXk7E4Vf44=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=mN7BDL9pc8sRsjC4GF/vrjhwzdZWcH3NpE2ANTqNfrHtjk3OW2uhc65Ofuxc5Fwh/
	 yPqOAfDRComofLKG1Osy/FBYwXaaMq6OggSzY4OCn9VM2SjMbI5wUK/xN3Aumdcbpx
	 P7dqS4knw941UBK5ILeADqrfLErc04xh1lSzxTcZZ8hnX5UQHDYuSss5HnAnlkMq8g
	 +y8Fg9TG2RuT9QWvTwtfzhLEr0WmO3kyRrkGxBcIxd7LOcJZ+DzEQ6gCQkQiswRvVK
	 YO63DKTVwWM1vwvSVN6CFTSG/mpH7tZeL28rjlRzhsEVsxUp+q2MTE9n4nfYF9jGMi
	 H0YAJhBAHOB7g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 74286384C34
	for <usrp-users@lists.ettus.com>; Thu, 24 Aug 2023 12:15:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692893734; bh=skPcT9TgWS9AfXUHtetmka/RejlKMsA29aaQrT1Tegw=;
	h=Date:To:From:Subject:From;
	b=kBOJl/KSUky+lniYes3DclND66vwdjIeyXUHoR0C7nEmX3fd3cNQcoT3eW0Jdf7Wl
	 Vwop0d4LfNsD0w8p5a9BuMpS0jyLlRDara2k8jyS55nalZoctbu79PRwEjKTR2IpTi
	 0jMdViuY6Y06SVvz4TvNoN0LJo/epmgKmPJ7F4F/3EI/kxC80JkF7Ct1X2/35opK/E
	 Dyv8byW12Y29mWMjK1Vg/vIQMmGts8hm06mWbDXwBqp2Gk+H/HHzb/H0lFPvtpUIi6
	 nJgu7EmFsYHlMsmH5Deo/p36JMKpzHxyEhwXRWKvwL/Lm23H9EHWjRZaBeVQaEopMP
	 thHcKPfSh73KQ==
Date: Thu, 24 Aug 2023 16:15:34 +0000
To: usrp-users@lists.ettus.com
From: ryan.seal@dynetics.com
Message-ID: <fZMcEuiiMIG56YAz3GaFj1i28Xuj3IRpNU29G8pEKQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: BUVUJVE5HN5R5MMMKBZIKJKON27YHFWU
X-Message-ID-Hash: BUVUJVE5HN5R5MMMKBZIKJKON27YHFWU
X-MailFrom: ryan.seal@dynetics.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X410 FPGA build failure with UHD-4.4
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BUVUJVE5HN5R5MMMKBZIKJKON27YHFWU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8672643659409812407=="

This is a multi-part message in MIME format.

--===============8672643659409812407==
Content-Type: multipart/alternative;
 boundary="b1_fZMcEuiiMIG56YAz3GaFj1i28Xuj3IRpNU29G8pEKQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_fZMcEuiiMIG56YAz3GaFj1i28Xuj3IRpNU29G8pEKQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I attempted to build an FPGA image on the UHD-4.4 branch with Vivado v202=
1.1_AR76780 (64-bit) using:

**make X410_X4_200 SYNTH=3D1 GUI=3D1**

When the IP cores are generated, the following folder is not pulled in pr=
operly:

**uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma_ex/imp=
orts**=20

As a temporary work-around, I was able to generate the example files from=
 the xci file in=20

**uhd/fpga/usrp3/top/x400/ip/xge_pcs_pma**

and then copied the imports into my build directory and kicked off synthe=
sis once again via GUI.=20

There was also a syntax error in x410_200_rfnoc_image_core.v. The forward=
 ticks on line 182 were causing an issue:

**localparam EDGE_TBL_FILE =3D \`"\`RFNOC_EDGE_TBL_FILE\`";** =20

Can someone provide some guidance? I=E2=80=99m not sure if I made a mista=
ke when I pulled something in, or I=E2=80=99m one of the few that attempt=
ed to build the image.

Going forward, I need to make clock modifications and wanted to get a loo=
k at the clock structure in vivado to find the best path forward. To summ=
arize, I need to change the 245.76 clocks to 204.8. I would also like to =
use the RFDC directly if possible (static configuration is fine). That wo=
uld give me what I need without the DUC/DDC RFNoC blocks. If this isn=E2=80=
=99t feasible then I=E2=80=99ll need some rate-changing filters and addit=
ional clocks to adjust downstream.=20

\- Ryan

--b1_fZMcEuiiMIG56YAz3GaFj1i28Xuj3IRpNU29G8pEKQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I attempted to build an FPGA image on the UHD-4.4 branch with Vivado v20=
21.1_AR76780 (64-bit) using:</p><p><strong>make X410_X4_200 SYNTH=3D1 GUI=
=3D1</strong></p><p>When the IP cores are generated, the following folder i=
s not pulled in properly:</p><p><strong>uhd/fpga/usrp3/top/x400/build-ip/xc=
zu28drffvg1517-1e/xge_pcs_pma_ex/imports </strong></p><p>As a temporary wor=
k-around, I was able to generate the example files from the xci file in </p=
><p><strong>uhd/fpga/usrp3/top/x400/ip/xge_pcs_pma</strong></p><p>and then =
copied the imports into my build directory and kicked off synthesis once ag=
ain via GUI. </p><p>There was also a syntax error in x410_200_rfnoc_image_c=
ore.v. The forward ticks on line 182 were causing an issue:</p><p><strong>l=
ocalparam EDGE_TBL_FILE =3D `"`RFNOC_EDGE_TBL_FILE`";</strong>  </p><p>Can =
someone provide some guidance? I=E2=80=99m not sure if I made a mistake whe=
n I pulled something in, or I=E2=80=99m one of the few that attempted to bu=
ild the image.</p><p>Going forward, I need to make clock modifications and =
wanted to get a look at the clock structure in vivado to find the best path=
 forward. To summarize, I need to change the 245.76 clocks to 204.8. I woul=
d also like to use the RFDC directly if possible (static configuration is f=
ine). That would give me what I need without the DUC/DDC RFNoC blocks. If t=
his isn=E2=80=99t feasible then I=E2=80=99ll need some rate-changing filter=
s and additional clocks to adjust downstream. </p><p>- Ryan</p>

--b1_fZMcEuiiMIG56YAz3GaFj1i28Xuj3IRpNU29G8pEKQ--

--===============8672643659409812407==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8672643659409812407==--
