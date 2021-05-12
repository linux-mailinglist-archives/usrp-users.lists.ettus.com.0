Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB2037D453
	for <lists+usrp-users@lfdr.de>; Wed, 12 May 2021 22:57:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 057BE384332
	for <lists+usrp-users@lfdr.de>; Wed, 12 May 2021 16:57:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="BVuIqBtB";
	dkim-atps=neutral
Received: from sonic301-22.consmr.mail.ir2.yahoo.com (sonic301-22.consmr.mail.ir2.yahoo.com [77.238.176.99])
	by mm2.emwd.com (Postfix) with ESMTPS id E8A7E3840A4
	for <usrp-users@lists.ettus.com>; Wed, 12 May 2021 16:56:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1620852983; bh=il05K3XA3xJ63PwzjxvNIBgU+Xml3wQwqj0QXoYb45w=; h=From:Subject:Date:To:References:From:Subject:Reply-To; b=BVuIqBtBTQkXvNwZDbEPUhZdOQ3WFAj8BK7dsFUzTsCAORjcIuSJVGrwS8i9yce3NOEcmo0/OJp4TBvhmxhMflxOucqQzoPrK64WHF/BTxGhjTiGj4sn15k5SWiEW6U/itqzkh4E/4Z9bRu1czuPtJgshlH6UCwnL64XOnWNMcyKbgrbXaYWjW/qbAKLs1BwcxCcqBdtLv/CVJqLYpFNceKhd+xYJfrKT0ySZhuweD2Ay53P0XYmZCzPgvN7I97a1ftj3LsRISCuVnfoiJ245y6h666CH8cs/6ptsaUPw+MKRTJ29VdtuLRtWHWKgajBehlR0OxDENzQL2rDDmI4ZA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1620852983; bh=kCP4Z0dCi/4ouqH91L23DecTuXxsRbA8NEvf96VQ1Sm=; h=X-Sonic-MF:From:Subject:Date:To:From:Subject; b=R6QVJgrquuutoElzb5wseaqKBHzKxPnn4yy+qDa9DP0JWgmpIKgV1Q/JNGXK7l7NOGleMRSbGkOIuZPt5w4M3hc+kOKbqZY+m/RLc6ES0Aw38rVsYUjD7JvrM94cGfSMvxSDnVAw8yUUah5sZGdW2D4mih64mvNOTbOLQQV0cMChLLxjpXBCqdA+moBm3LlJGT7LxAOyVELJIBS4H6+8QKoZwurNL1CV0MFHwkCihsQsGzl1rirp83B/kZoscqBeH1vHUs6+9fcKAFRWrBBsIPPzZLK6pddf650jZCim26nJSIBlCADXUXDeuk4sfCKk/xQfpeIllAwcRjzgCNqaqA==
X-YMail-OSG: OpYVO18VM1kjWouMz1.oPvdeMsvHkdEN3cu_St9yh4pxoZfEOTRTgKn7q1jODrV
 gBriD6f3do8jl9hQW9nkGR4k9CgPEZD0AgeiUsLhjflekvxua1itxvMmIhANwyy3P.9sXeBdsQ4j
 bi6vvEy4BvcROJg0NSqgh.Y_Riy3aWi.PKI29w3Wp2MbQZd6oITSCvV7XjM05LQsz7n2C551vaHB
 DNtZWHBwkahCW9aVA0pv7cDU.rhMTqWV_2cb5kFrr3HSICHH7GUs2CqH7MMprWr.BDwkrM8HIsa7
 YLFhDps.eFgRRKwifgZztxHe.RQbS9CGD3a4130SATbmJZvaoCwlo0w0nV0ghGgorZoP165eXwaD
 mHRQZB9_f_bVx5R6wBE9nISIvm8ffqVD99M7plyqcUXPLtKVxPG.yEY0EMNJytzLkkhk7ILUno7b
 f7lTCO3lym86_TlDOISMwE95rfVE0U9PR3wK9iw6WTQm7oi3tsXEJJa9M2xDfdYPSULc3hhgXLfc
 jYCm1bFQj24GKNDn_dNLrdA.SF5Fo7GJbQreWjHSYwcSjHHHbdEZHA1_sPW5b.I1JXMAWZt.nR9n
 YFN5sHXnuTsuE3.utUvm2fYkttkB7uF1vLObbDfYyLZG_r8P4i85WGukhfS6TVQkUV011jTZGHaL
 oVw2hHOBytE6C2.XHOzTZOsff2_jsJkDfwQEnefUCcjp5FXMDwrfNjwQoEL50q8rvAFAhAxsmJ3Z
 YoP4ANX4Hwa.BD56LQLGh5JkvFJiCWYSSPlzdxM7kYAU026mN51gz6IYnyrE9CdIWpGx8zQ1L8vJ
 1IwVsWTLKeNCjZNx96TaiC_7hwbDCyFl1qKTabAVAHElznH3kABeeZCPRKHeQuLdKPSvJIbobjhl
 EiAXKPKekYFUaFc_WIeYQ55p_DNaPFfUFRyCCZlLUxvuKzPvnM0DIYW6X9Lt5hpe0cMptaLx_xzQ
 vAG8hvI180K5x4w5uI93mSTMhv8v0RYa3cs.HbzX5Uie_ZeRctwWhKufC0wLc9HzyPWYuWgPEjsz
 RvJyvXiAaiDnOYzgL1O8JS8OPVL3ilmv2nPJkKRFjbI5SJet3DFWzmfMhyJpXSjwbRtLe7CBMtWM
 s_6jqPOZWN8BgkfK877qVo_wdZMJtqZiEHrtidiLXwJ8RbJX8kBkNvjNTz7Czv558sW9zBXZQ5bL
 RF21DOF6MwvtVWnUzUBT75SpdnQTLDI8bLLByYgVqHsjNNcKrYfRscYXTVV91oN2RemtIk6btULW
 3BfelTul_1yh4v0gdPXUE4JZfl8BOYb1va5gXp6vCYbx3uwOoaucSRyIOdr557X24xuz1JFdFlqc
 HTtvX1iFdS3.6jtFaARskD_Vm2eDeEtMrsdEnQcijr7dOLmop8h7EK8pABH2UcR7YuQorCijbKb6
 oumTPaTLxZu.DyuTG0vDYAw7k.lBPL6Md6uv7B6weuo3t9NGnG3H9JP8XxC0dow__oeh6vlbc5Tg
 vqEvE9kJO6gE0fc.Bm1wFlDLeuf78QEA7kRT31ROAzKdoWepUD.1Dvyvs_oY3cNGLwpfYPOq3.e6
 OxdMBzjDa3MvfdSckC.KdkC.W7DmRl25y.pXV8lrjL5HepemgdWBD3uwpYCfaJBpU8foCyCFWAvd
 HvMK987Rd74ZcbLfJYefRrLXzNshVkJV76iGcyVKvEbeBKnqSQbiPRjaKDzvcnPptnqYVp2m4Vqx
 JWbe4DEIg2QWz6ywORjH5Ty6onM.8O07AV6T1IAQMtk2fGGl72zG1_4OYag_mYfCtBvX0yQQK7zf
 wj2MxInGOUiyp2H5aqA88ytj.zumSBRzw0ZIn0Xh6ODmMX71Et511w08zr8IdgRYm.AOM2O0aY5W
 RnL6sZChfMMfrsPpIayL3SHN716SSkSkNuXpzwqBvVIKKXPs0mJGIRXTO..erW5p7IEfzktqmH9L
 beP_tyQr_ENCOyhBpO5i5qwer6IEhxDZgISA4.glmudcZ6b7Q6aZYVZq6_J5i9FDBh4OlrP93FN2
 RkeQwznRjZBRgSFbGwIRgEHEhKs_WqvYU0yrFpiqAtBBGtCKrHIhux.kwq3JD9sHqdPk7t4ZJrPm
 Fo1l0pZUbxIT7ghasduB5k.2Gk1FLDdVz4Ow9e0hkXfnbJE9hR_x4eOd3JpOJqsA62m9VDXwoO1A
 BETM3EkXR3a3EGeAF049uSGsxGkQ8SCrF4Eqv8MCx5e9wbCUK_ErUafW4b2n.7Cohx7NHHeUxaOM
 hoHLuYF20soLZT1zeBGqH0Xsjr.F0oP2a.7ccwW0rzB2gdL8rimQG9fzA_f_oPT0Y_MBLyMYVojL
 I4FWbtxXISSNfM.Mbr8j1Zp8TPkQ1RH6PfYav.3dK4iMLf5njK81GIoKVX4nPzWjvRhvyUNyI9En
 Rw8L0PrC5AfypZF73XKVPPJyeg8XxKW_tLoOOfrV2M5o0yT258u7idqXYNPqAs63WQcUB.90a_k4
 BD87hAqIDTU5zCxsoLkIGL8r5o1brFKW50riTbNq_GjKyYPjv9BDrjRYZUMbMiQXfUC.XHZdFMyc
 Z8w--
X-Sonic-MF: <fatihoezdemir@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic301.consmr.mail.ir2.yahoo.com with HTTP; Wed, 12 May 2021 20:56:23 +0000
Received: by kubenode530.mail-prod1.omega.ir2.yahoo.com (VZM Hermes SMTP Server) with ESMTPA ID 678dbbc0d58ce2ba7f27abc849557c71;
          Wed, 12 May 2021 20:56:18 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.60.0.2.21\))
Message-Id: <D35A3D58-7C54-4C80-ABBE-B72952654837@yahoo.com>
Date: Wed, 12 May 2021 22:56:17 +0200
To: usrp-users@lists.ettus.com
X-Mailer: Apple Mail (2.3654.60.0.2.21)
References: <D35A3D58-7C54-4C80-ABBE-B72952654837.ref@yahoo.com>
Message-ID-Hash: EBHFSYPDEUER2ODT6OCYIVYNKXUXBTOA
X-Message-ID-Hash: EBHFSYPDEUER2ODT6OCYIVYNKXUXBTOA
X-MailFrom: fatihoezdemir@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] MIMO for one USRP  and Interference
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EBHFSYPDEUER2ODT6OCYIVYNKXUXBTOA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?q?Fatih_=C3=96zdemir_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?utf-8?Q?Fatih_=C3=96zdemir?= <fatihoezdemir@yahoo.com>
Content-Type: multipart/mixed; boundary="===============2371019405039738505=="


--===============2371019405039738505==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_E2584240-A85D-4DE3-B371-EFBDBE4AD34F"


--Apple-Mail=_E2584240-A85D-4DE3-B371-EFBDBE4AD34F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hello everyone,

I want to create a communication between  two USRP=E2=80=99s with the =
following properties (unfortunately I can=E2=80=99t change the equipment =
if needed):

+Transmitter: USRP B210 with two transmit antennas(two different =
waveforms or the same waveform  for two channels)
+Interface:Written with UHD Library in C++

-Receiver: USRP X310 with two receive antennas (two channels) , CBX-120 =
daughterboard
-Interface:GNURadio

#Receiver and Transmitter are 5 meters away with a human blockage =
occurring sometimes between the transceivers.
#So I don=E2=80=99t want to have a MIMO with multiple USPR =
Transmitters/Receivers but only with one.


I didn=E2=80=99t understand the situation regarding the CBX-120 in the =
following website: =
https://files.ettus.com/manual/page_dboards.html#dboards_cbx
=E2=80=9CReceive Antennas: TX/RX or RX2=E2=80=9D. Does it mean that I =
can use RX and RX2 simultaneously or is the =E2=80=9Cor=E2=80=9D an =
=E2=80=9Ceither or=E2=80=9D ? So can I consider a MIMO communication

My  second question is: Am I facing any disadvantage or interference =
when I am deploying the considered scenario?  I have heard that Self =
Interference can happen in MIMO scenarios but I don=E2=80=99t know under =
which circumstances. Do I need to consider this and if yes, how can I =
cancel this self interference in the data( I can use MATLAB as a =
postprocessor)

Best Regards and Many Thanks

Fatih =C3=96zdemir=

--Apple-Mail=_E2584240-A85D-4DE3-B371-EFBDBE4AD34F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">Hello=
 everyone,<div class=3D""><br class=3D""></div><div class=3D"">I want to =
create a communication between &nbsp;two USRP=E2=80=99s with the =
following properties (unfortunately I can=E2=80=99t change the equipment =
if needed):</div><div class=3D""><br class=3D""></div><div =
class=3D"">+Transmitter: USRP B210 with two transmit antennas(two =
different waveforms or the same waveform &nbsp;for <b class=3D"">two =
channel</b>s)</div><div class=3D"">+Interface:Written with UHD Library =
in C++</div><div class=3D""><br class=3D""></div><div =
class=3D"">-Receiver: USRP X310 with two receive antennas&nbsp;<span =
style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);" class=3D"">(two =
channels) , CBX-120 daughterboard</span></div><div class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);" =
class=3D"">-Interface:GNURadio</span></div><div class=3D""><br =
class=3D""></div><div class=3D"">#Receiver and Transmitter are 5 meters =
away with a human blockage occurring sometimes between the =
transceivers.</div><div class=3D""><font color=3D"#000000" =
class=3D""><span style=3D"caret-color: rgb(0, 0, 0);" class=3D"">#So I =
don=E2=80=99t want to have a MIMO with multiple USPR =
Transmitters/Receivers but only with one.</span></font></div><div =
class=3D""><font color=3D"#000000" class=3D""><span style=3D"caret-color: =
rgb(0, 0, 0);" class=3D""><br class=3D""></span></font></div><div =
class=3D""><font color=3D"#000000" class=3D""><span style=3D"caret-color: =
rgb(0, 0, 0);" class=3D""><br class=3D""></span></font></div><div =
class=3D""><font color=3D"#000000" class=3D"">I didn=E2=80=99t =
understand the situation regarding the CBX-120 in the following website: =
<a href=3D"https://files.ettus.com/manual/page_dboards.html#dboards_cbx" =
class=3D"">https://files.ettus.com/manual/page_dboards.html#dboards_cbx</a=
></font></div><div class=3D""><font color=3D"#000000" =
class=3D"">=E2=80=9C</font><span style=3D"font-family: Roboto, =
sans-serif; font-size: 14px;" class=3D"">Receive Antennas:</span><span =
style=3D"font-family: Roboto, sans-serif; font-size: 14px;" =
class=3D"">&nbsp;</span><b style=3D"font-family: Roboto, sans-serif; =
font-size: 14px;" class=3D"">TX/RX</b><span style=3D"font-family: =
Roboto, sans-serif; font-size: 14px;" class=3D"">&nbsp;</span><span =
style=3D"font-family: Roboto, sans-serif; font-size: 14px;" =
class=3D"">or</span><span style=3D"font-family: Roboto, sans-serif; =
font-size: 14px;" class=3D"">&nbsp;</span><b style=3D"font-family: =
Roboto, sans-serif; font-size: 14px;" class=3D"">RX2</b><font =
color=3D"#000000" class=3D"">=E2=80=9D. Does it mean that I can use RX =
and RX2 simultaneously or is the&nbsp;=E2=80=9Cor=E2=80=9D =
an&nbsp;=E2=80=9Ceither or=E2=80=9D ? So can I consider a MIMO =
communication</font></div><div class=3D""><span style=3D"color: rgb(0, =
0, 0);" class=3D""><br class=3D""></span></div><div class=3D""><font =
color=3D"#000000" class=3D"">My &nbsp;second question is: Am I facing =
any disadvantage or interference when I am deploying the considered =
scenario? &nbsp;I have heard that Self Interference can happen in MIMO =
scenarios but I don=E2=80=99t know under which circumstances. Do I need =
to consider this and if yes, how can I cancel this self interference in =
the data( I can use MATLAB as a postprocessor)</font></div><div =
class=3D""><font color=3D"#000000" class=3D""><br =
class=3D""></font></div><div class=3D""><font color=3D"#000000" =
class=3D""><span style=3D"caret-color: rgb(0, 0, 0);" class=3D"">Best =
Regards and Many Thanks</span></font></div><div class=3D""><font =
color=3D"#000000" class=3D""><span style=3D"caret-color: rgb(0, 0, 0);" =
class=3D""><br class=3D""></span></font></div><div class=3D""><font =
color=3D"#000000" class=3D""><span style=3D"caret-color: rgb(0, 0, 0);" =
class=3D"">Fatih =C3=96zdemir</span></font></div></body></html>=

--Apple-Mail=_E2584240-A85D-4DE3-B371-EFBDBE4AD34F--

--===============2371019405039738505==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2371019405039738505==--
