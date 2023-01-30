Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D02A4680444
	for <lists+usrp-users@lfdr.de>; Mon, 30 Jan 2023 04:28:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 49D2E384005
	for <lists+usrp-users@lfdr.de>; Sun, 29 Jan 2023 22:28:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675049288; bh=GMQu4TKzFWLdcMaj31Zi3q7jpg5rcwDUnSNK5558nVc=;
	h=To:From:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=07/B/r4Ull3D9PfBI6SdRIGHzE0v4/MT9AwZqXBfCaG5xrFnv8xXqeRdY1E93JswA
	 IA/3iFFslJErikPQ+lTkmkxl2hTFrJOER/wWGU+QSy7x29l5rkFyDEdiLDnQz8EH1T
	 rZ/BFlcmfY3u1tmyeL4yXPHkbiavFR2Rr4mRT55vyh0/Yx0gK3DpXNdAwcZO3x2k7O
	 1+kK0rGdZRVTVd1zGMU80aQI9EaW4xA6YBx2zpDB5kpaTe/J4ph0tgw4XD9KczQ0mY
	 NjfXTiUtrzbGCkZYyvalSgXd45Utk0VZgJ6PT0vCZZq61reGsFwpiQdOPSe/HmsOQx
	 Z6c89ElPvGLxg==
Received: from nsstlmta29p.bpe.bigpond.com (nsstlmta29p.bpe.bigpond.com [203.38.21.29])
	by mm2.emwd.com (Postfix) with ESMTPS id 5E797383DD1
	for <usrp-users@lists.ettus.com>; Sun, 29 Jan 2023 22:26:48 -0500 (EST)
Received: from smtp.telstra.com ([10.10.24.4])
          by nsstlfep29p-svc.bpe.nexus.telstra.com.au with ESMTP
          id <20230130032644.CUWL4884.nsstlfep29p-svc.bpe.nexus.telstra.com.au@smtp.telstra.com>
          for <usrp-users@lists.ettus.com>; Mon, 30 Jan 2023 14:26:44 +1100
X-RG-Spam: Unknown
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvhedrudefuddgiedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuuffpveftpgfvgffnuffvtfetpdfqfgfvnecuuegrihhlohhuthemucegtddtnecunecujfgurhepvffkufggtggfihfhffesrgdtregstderjeenucfhrhhomhepffetggfkffcuteeugffnuceouggrvhgvpggrsggvlhessghighhpohhnugdrtghomheqnecuggftrfgrthhtvghrnhepkeehfffffeeugfetgfdtjeethfeileegvdevfeeukedvuedtudevgeffteeltddvnecukfhppedutddruddtrddvgedrgedpuddrudehjedrieekrdeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopegluddtrddutddrvdegrdegngdpihhnvghtpedutddruddtrddvgedrgedpmhgrihhlfhhrohhmpegurghvvggprggsvghlsegsihhgphhonhgurdgtohhmpdhnsggprhgtphhtthhopedupdhrtghpthhtohepuhhsrhhpqdhushgvrhhssehlihhsthhsrdgvthhtuhhsrdgtohhmpdfovfetjfhoshhtpehnshhsthhlrhhgudduphdqshhvtg
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
X-RG-VS-CLASS: clean
Received: from [10.10.24.4] (10.10.24.4) by smtp.telstra.com (5.8.812)
        id 6392A87C09AC0A03 for usrp-users@lists.ettus.com; Mon, 30 Jan 2023 14:26:44 +1100
Received: from [1.157.68.30]
	by email.telstra.com with HTTP; Mon, 30 Jan 2023 14:26:44 +1100
To: usrp-users@lists.ettus.com
Message-ID: <2e1b9d2c.edb5d.18600b67c54.Webtop.89@bigpond.com>
MIME-Version: 1.0
User-Agent: OWM Mail 3
X-SID: 89
X-Originating-IP: [1.157.68.30]
From: DAVID ABEL <dave_abel@bigpond.com>
Date: Mon, 30 Jan 2023 14:26:44 +1100 (AEDT)
Message-ID-Hash: L7YZNEG6KN74JMMLJXJJM7PSFN6SXU5N
X-Message-ID-Hash: L7YZNEG6KN74JMMLJXJJM7PSFN6SXU5N
X-MailFrom: dave_abel@bigpond.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] B200mini spurs
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L7YZNEG6KN74JMMLJXJJM7PSFN6SXU5N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1460569746931134500=="

--===============1460569746931134500==
Content-Type: multipart/alternative;
	boundary="----=_Part_2144119_481697543.1675049204808"

------=_Part_2144119_481697543.1675049204808
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

I have a B200mini.=C2=A0 As a test of spectral purity, I generated a CW=20
signal at 175.0025 MHz using Gnuradio,=C2=A0 I see spurs at +/- 132.5 kHz, =
at=20
-50 dBc; with offsets of 265 kHz=C2=A0 at -60 dBc; and another at 702.5 Khz=
at=20
-60 dBc.

Is this expected behavior for the B200 mini, please?


Some further detail: the Gnuradio flowgraph is a signal source=20
generating a sine waveform at 2500 Hz, followed by a lowpass filter.=C2=A0=
=20
The USRP sink has a frequency of 175 MHz with an LO offset of 15 MHz.=C2=A0=
=20
Sample rate is 384 kHz.=C2=A0 The spurs are present on other carrier=20
frequencies with the same offsets.=C2=A0=C2=A0


Thanks


Dave Abel VK1DJA

------=_Part_2144119_481697543.1675049204808
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org=
/TR/xhtml1/DTD/xhtml1-strict.dtd"> <html xmlns=3D"http://www.w3.org/1999/xh=
tml"> <head> <meta http-equiv=3D"Content-Type" content=3D"text/html; charse=
t=3DUTF-8" /> </head> <body>I have a B200mini.&nbsp; As a test of spectral =
purity, I generated a CW signal at 175.0025 MHz using Gnuradio,&nbsp; I see=
 spurs at +/- 132.5 kHz, at -50 dBc; with offsets of 265 kHz&nbsp; at -60 d=
Bc; and another at 702.5 Khzat -60 dBc.<div><br></div><div>Is this expected=
 behavior for the B200 mini, please?</div><div><br></div><div>Some further =
detail: the Gnuradio flowgraph is a signal source generating a sine wavefor=
m at 2500 Hz, followed by a lowpass filter.&nbsp; The USRP sink has a frequ=
ency of 175 MHz with an LO offset of 15 MHz.&nbsp; Sample rate is 384 kHz.&=
nbsp; The spurs are present on other carrier frequencies with the same offs=
ets.&nbsp;&nbsp;</div><div><br></div><div>Thanks</div><div><br></div><div>D=
ave Abel VK1DJA</div></body></html>
------=_Part_2144119_481697543.1675049204808--

--===============1460569746931134500==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1460569746931134500==--
