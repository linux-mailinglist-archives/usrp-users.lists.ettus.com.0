Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE628AA84A
	for <lists+usrp-users@lfdr.de>; Fri, 19 Apr 2024 08:11:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 158C2385BE8
	for <lists+usrp-users@lfdr.de>; Fri, 19 Apr 2024 02:11:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1713507108; bh=1j9ihnUyEoUFTi9Ol6fzAsvCjPyu6+cs3eokswLwxNA=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=ARp/6JFPIv74JnTUE6SiU9T/S0gbHV+N6EK87uLZFX5ybB3kyTaeyK4ZjPIHRGn9X
	 ooGpXHfxIh4PoWVDhJIafs6mru65jD4Zf9SYEt6S5qoutFQz/accKSXQ5pW+bIeNtd
	 cXKhb3rPu03UxUA1klSpbpfV4rPRLqTEGyWI+PyLxI/DEcZP0fGPnTGp0pSB9o2J81
	 Cgcq1xI7IWRIM/Xka4vdAcoCTzWjtOaDdp3U1aHKFfDBdHbCeJUeG1gtzblqoA84KB
	 IpdJllw56J47hRea98oeN7KCTJboxyFmsZF2Tmv4cxhHYa0POovGCBGBHyUVxXWOeO
	 255uTLPlCGdqQ==
Received: from sonic321-28.consmr.mail.bf2.yahoo.com (sonic321-28.consmr.mail.bf2.yahoo.com [74.6.133.83])
	by mm2.emwd.com (Postfix) with ESMTPS id 4D735385291
	for <usrp-users@lists.ettus.com>; Fri, 19 Apr 2024 02:11:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="ElcskGsL";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1713507100; bh=dL12Cm2/f/Rlgs+Tqbq3swvOD/VZJRH8qPHe7MfVxTQ=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=ElcskGsLIISCNBxfmQX+N3WKAbL9gHyXCgPdIKaqqyYvwM7qb2vrD1wlMWpdNnTxkxiQE+m1x8pbtZGeTqnXm7Cy0Kq/aKYcC8vrstqfk1Bi9b5oH8QQNqaVU9sz7KWqNdQASxrmzKZ2AaFHkUvWAxBpa/Lf+1kMD5k1Wbs9DsQ1ktcoQnLj6v6s3FAb5HxHT2vohICK3b0TPMITbg1AIxlFFnxWdZXEMbVO+DBSj9SGN4IncpeLgF9u4voBxfgIpBSjswBlQO/yKtgF/RsK8A+mOM/tOXYpx0BCiPUSQECbZRbGsz/aXartswulIrG3ZUQglhcq2D+R0D3uksA/GA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1713507100; bh=A1iJjJisZ4HuqpdO17d5dO4VEC8Dulc7wPW9FXBVlqr=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=ilsEwj/xie1zvJGNBa99P7tcdhS18mwxWyDkcatve9yuiuIYBXw5rzVNIfuA8Aw4i61eTyehMSERWdSjoKBTp/TzR8NdOGaa9lK7DO3bh94kJ0UiAuBmN/Mj704t7HT/W39zMDTOCfghr8oyFsTHiTxEjpWKVXtpFcIOoySPyOTPVi2odZ5EGSegV3C16JG70d3gsC0BYRxQJbDgFtRSx/p3rG81aeI4BMJrHJmZWkPN9XjLaOMq4+3Oa/fN/EKWcT2hD6DWKzUFyGUiQWRCCVLlq58Lr5dlpxgT34ukwlTAIpgQ7wQ6qQPZkckcxOEeNeLIgw/5OvBQPQDPGc6cHw==
X-YMail-OSG: mkvrLyQVM1lVqgTcUz90z_QZnvqtJ75qR6dZ2v_T_RKroR08IZliE3pUtIFugU_
 QGmFcVbRbPtzwurW.qezOgNHss5RBsE9HYMU93JIFeBzbml7sfEbHVqO1ijoRfL5Cw1gxe2VVtL4
 QQ7ezsYHczSWf7Eq1Jk5qWJFHKM2PyPnThXcpeKgKX6wu6.vicLEHM0oI05NREIMf4gg7_G5B.5q
 BqR1TFf9U2vBlj6L0DrhxHRwr.3YByaOmzkVp2pu6LFjZn_jFpZgBAeHZNkwafQhQkYpYjC0CY6F
 .6899CYa0eM4G9FAddoQZcAJZcwTdU0EvWUaKAMCi4deM.8kJjNIbAirg8_STQcbbd64629.dzKX
 TfKDokC.SxCn1OuDCRFHlHmAzI4azlHWSWTCpY5xnUhwMQbV9Se0waRHnLv7mfAR3PNXw3GjMTEF
 riUhYfn4dCZ9kKLOiG4Q13z1p_3DrB4qzsq7TTfHj7Ervbz47elCoCRA2DmqtvhPRuokgHIbbA2j
 PwN432Vtq1_hTGcUjEYKrjNOVAbYLmzag1LzCv.cKzVjMeRr3Kle2NWBJ2nEFYg0140bNn8QM63Z
 KMT9x.UtnoKf9KLx_H7JNmx28rO_R4zBFjhvedRNzGYJ5nmfwtvSLTl.ie452QgZ2uecV7Y3zMDt
 ChkYjj__gfAzHO41dP5lvmY2yirqNvNhUUDEh_bN6v1UvpT.b0UJNL185YiSAYT85CxI.bkPgkMK
 HdmA6UvxLCKAXq5mIoaXtd1ATJmvUpdtsroJnOO7mbmeFb8kBPX26CPNxK9MYUiNQY8Sy5aH.jGd
 .Re7_uquXEmZQPbfkqFcIaay.i4kyWCMPvYs.XgNlohYf9CXGTWS3HYrXWPTRsK.lQAI5.PpXY68
 ppSfyuZLfLNaPsAC8vmObW4EPSrTbjquCQutjKsAkjBYaI7VapWpdFOUSqa10XDvlPwQa3MX4S9h
 IAlhumjyvIkbknO5wWSHM4uAUnbIrXEtSjOhA8WNIm1Ic6IVTS7_PB3vLsrovj_HZQqdDQhrOrrY
 yy0h27keS4A7ySgOYKbht2QF8Q45tLHKLzybx7Z92yVsXy7zKPqsj8RQpBz6mIg4wCqJ579bS7tn
 kx2X7pzRf_yQFJii7hBesJimnYocqlH9hMyA1Zcfrjv6mt80cjlcC..ku.eemJ_SrtMG3tecGe.r
 uqbHr6N0UdNHjcCK_pW6zo1ceWOe87x5W4fEpG95rwLYfbKN_tTC7jOCFVAiSWMiWryMACIwG.uH
 PaW6bi_dGQt4t9DK.2kMnsaecUOJWb3SvXf0jOJ6GW9suOeM7sSXyjf_ZvujNhdFY5DuzeqFplHG
 5gORjoXldg08tQ1pcYoSvEvMwTHd2hYD5_..GeEFSrZM0l7nijZ9W3GoE_Sd2KLUNGpaXooL5jtX
 jMjhKdt6rBFTWIGcePZQgkzQeJnlrL.eQLrEgR581VdM43Vr9uAQ6T1cTWrc7nRHEV8V1.CSsV4q
 gYaltngw_X0qlHEoslEkGLUCQKBxNQb.vyuX2EFtQkOr1OBEf5TD.QNe92nfsABrPKlMnJJ4Y6p4
 eDnkqJDd0x40DgwQmXq5tSZwzcorqOX6u1S4mbUgk47bZjo.54p_UbenlaOZa5DcJXcqi7weDxnQ
 9z_ZQVEVcn19rPoFLqM0t7KKfTYvt58JvbFPzdqYtTe4n9ZX_dOfT2CVivrqkvFhmbncDsxEcTDg
 UnnSx.Nx8haOUOAJqMkDSTlFzj8K799wSQ4NzCk3abXyU2L6v5uFWtu19ongxXf1JD2pEEYYsm8G
 VPC1K.3Ds8Bdqh6eMWn1v.dHCG4xFbrdahubPWOxtvj5RqUWf.Cif3N0Gy0MEVuu3.jbfag_qrOi
 Z9nYxwgk8E59iYysJoDcgtkRi4tVGg__kUnXHwub7Re6EtihK4w85cCsDG1DXsDarnemfz8hkJa1
 sXXzw9dwAcF_Tat0N90sIZ9ElV3b.wJDYLfUlTb8s.x8BxXak8gdAa.TR2447ozgkZgUNvh8OWn.
 GA1uoOjjbiOqppPR0XYlp95ysoMWUtGKSLre9Y9upJDQdnCWkPTXwhkpEjjjrey7_QBH4S9XJPuX
 ZsX.zeYTzkEQTOc6nED_J4cCQjjVRzVucInaPY9AqP5MM4gH_Xrv.d6pCTh_DuhClUvOqcGDm84y
 DY1ngSNqhn3AqZrlBWcj2prH_tw7zzb_PTJ1PJ1MdzTaHGygGfqSwhM.7IG3kxlr9ZrXmY1.Fwv4
 aAL2AniQcI9ZRPcfr0s3SyZnGsqY9MLXySXkrxl0bgFYluZELTMQiPYAE7GinD_as_jENvxOcE20
 -
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: f7f54690-fd1b-44e7-8d7f-12c182c93814
Received: from sonic.gate.mail.ne1.yahoo.com by sonic321.consmr.mail.bf2.yahoo.com with HTTP; Fri, 19 Apr 2024 06:11:40 +0000
Date: Fri, 19 Apr 2024 06:11:36 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	Martin Anderseck <martin.anderseck@ni.com>
Message-ID: <957328707.611895.1713507097044@mail.yahoo.com>
In-Reply-To: <PH0PR04MB83115908F44B4BB9C7FB8713F30E2@PH0PR04MB8311.namprd04.prod.outlook.com>
References: <94eb78b8-6ea4-4e04-86d1-918b3b5c1d65@gmail.com> <39cd3dd5-d55f-4fe8-88a1-0e5de4a7c082@localhost> <1697372280.342024.1713419690912@mail.yahoo.com> <PH0PR04MB83115908F44B4BB9C7FB8713F30E2@PH0PR04MB8311.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
	boundary="----=_Part_611894_1430504169.1713507097043"
X-Mailer: WebService/1.1.22256 YMailNorrin
Message-ID-Hash: UD2U4PWSU53AJQMNV2DX6C3PB7EZTTN5
X-Message-ID-Hash: UD2U4PWSU53AJQMNV2DX6C3PB7EZTTN5
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Unbalanced power among antennas in X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UD2U4PWSU53AJQMNV2DX6C3PB7EZTTN5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>

------=_Part_611894_1430504169.1713507097043
Content-Type: multipart/alternative;
	boundary="----=_Part_611893_404643858.1713507096968"

------=_Part_611893_404643858.1713507096968
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Martin,
Thanks for mentioning the ADC self-cal. It seems that I misunderstood it. I=
 will do a proper calibration.
Yes, the loopback connection is on the front panel.
The same cos(t)+i*sin(t) is transmitted=C2=A0on all four antennas simultane=
ously with timed command. The receive command is also timed. I can accept t=
hat there is phase offset between antennas because paths can be different s=
lightly, for example, the RF cable length can be slightly different. As lon=
g as the offset is constant over the time, it is not a worry. I measured ph=
ase vs time. It is stable. Now, I want to know how to adjust the phase on i=
ndividual antennas.=C2=A0
Kind regards,H.
   _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
   On Thursday, 18 April 2024 at 14:00:44 BST, Martin Anderseck <martin.and=
erseck@ni.com> wrote: =20
 You mention that self-calibration for each channel is running. Please don=
=E2=80=99t get wrong what this calibration is doing. This ADC self-cal is o=
nly responsible for reducing unwanted spurs in the ADCs as described here: =
https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_adc_self_cal

=20
This ADC self-cal, however, will not handle any power differences. From wha=
t you write it=E2=80=99s not possible to get absolute power values, so the =
relative differences are impossible to get, too. Since those devices are SD=
Rs and not dedicated measurement equipment it is expected that there may be=
 differences (not huge ones though, please see the specs for getting an imp=
ression in figures 2 and 4:https://www.ni.com/docs/de-DE/bundle/ettus-usrp-=
x410-specs/page/specs.html). If the existing accuracy is insufficient, it i=
s possible to use the power API:https://files.ettus.com/manual/page_zbx.htm=
l#zbx_pwr_cal
=20
 =C2=A0
=20
You mention you used a loopback connection. Does that mean that you connect=
ed cables to the front panel connectors for this? To exclude them from the =
issue you might try using the internal loopback =E2=80=9Cantenna=E2=80=9D f=
or both the RX and TX path (see get_rx_antennas() for a list of antennas). =
This will use the internal loopback that is on the daughterboard for each c=
hannel. When using the internal loopback ensure you have compensated the la=
ck of the 30 dB attenuator (e.g. by reducing the=C2=A0 gain on the TX side)=
 as typically in an external loopback you would use 30 dB attenuation (http=
s://kb.ettus.com/USRP_X410/X440_Getting_Started_Guide#Proper_Care_and_Handl=
ing).
=20
 =C2=A0
=20
For the phase difference: You don=E2=80=99t mention how you start the signa=
l generation. I guess timed commands are what you=E2=80=99re missing:https:=
//kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD
=20
 =C2=A0
=20
I hope that gets you a bit further.
=20
 =C2=A0
=20
Best regards,
=20
Martin
=20
 =C2=A0
=20
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Sent: Thursday, April 18, 2024 7:55 AM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Unbalanced power among antennas in X410
=20
 =C2=A0
=20
Hi All,
=20
 =C2=A0
=20
I am using X410 with UHD 4.5. There are 4 Tx and 4 Rx in this unit. I am ch=
ecking the RF signal by using loopback connection, that is, Tx is connected=
 to Rx in the same USRP. .
=20
 =C2=A0
=20
The same single tone signal is transmitted on all 4 Tx antennas, but I find=
 that the received power levels are significantly different among antennas =
as shown in plot below. There are two ZBX daughterboards in X410; ant0 and =
ant1 in the 1st board and ant2 and ant3 in the 2nd. It seems that in the sa=
me daughterboard, power in the 1st antenna is higher than the 2nd antenna.
=20
 =C2=A0
=20
The carrier frequency is 7GHz. Sampling rate 491.52MHz. In every test, UHD =
does self calibration for each channel.
=20
Apart from power difference, there is also phase difference between antenna=
s.
=20
 =C2=A0
=20
How to make tx power closer between antennas?
=20
And, is there a way to adjust the carrier phase for individual antenna?
=20
 =C2=A0
=20
 =C2=A0
=20

=20
 =C2=A0
=20
Thanks for any suggestion.
=20
 =C2=A0
=20
Kind regards,
=20
Hongwei
=20
 =C2=A0
=20
 =C2=A0
 National Instruments Dresden GmbH; Gesch=C3=A4ftsf=C3=BChrer (Managing Dir=
ectors): John Stanton McElroy, Albert Edward Percival III, Kathleen Spurck;=
 Sitz (Registered Office): Dresden; HRB (Commercial Register No.): 22081; R=
egistergericht (Registration Court): Dresden

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system.
------=_Part_611893_404643858.1713507096968
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpbd3ee571yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div id=3D"ydpbd3ee571yiv8952928816"><div><div style=3D"font-family:Helv=
etica Neue, Helvetica, Arial, sans-serif;font-size:13px;" class=3D"ydpbd3ee=
571yiv8952928816ydp72b82cdayahoo-style-wrap"><div></div>
        <div dir=3D"ltr">Hi Martin,</div><div dir=3D"ltr"><br clear=3D"none=
"></div><div dir=3D"ltr" data-setdir=3D"false">Thanks for mentioning the AD=
C self-cal. It seems that I misunderstood it. I will do a proper calibratio=
n.</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" d=
ata-setdir=3D"false">Yes, the loopback connection is on the front panel.</d=
iv><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-s=
etdir=3D"false">The same cos(t)+i*sin(t) is <span><span style=3D"color: rgb=
(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">tran=
smitted&nbsp;</span></span>on all four antennas simultaneously with timed c=
ommand. The receive command is also timed. I can accept that there is phase=
 offset between antennas because paths can be different slightly, for examp=
le, the RF cable length can be slightly different. As long as the offset is=
 constant over the time, it is not a worry. I measured phase vs time. It is=
 stable. Now, I want to know how to adjust the phase on individual antennas=
.&nbsp;</div><div><br clear=3D"none"></div><div dir=3D"ltr" data-setdir=3D"=
false">Kind regards,</div><div dir=3D"ltr" data-setdir=3D"false">H.</div><d=
iv dir=3D"ltr" data-setdir=3D"false"><br></div>
       =20
        </div><div id=3D"ydpbd3ee571yiv8952928816ydp6c886d43yahoo_quoted_34=
68651997" class=3D"ydpbd3ee571yiv8952928816ydp6c886d43yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div><div id=3D"ydpbd3ee571yiv8952928816ydp6c886d43yqt90210=
" class=3D"ydpbd3ee571yiv8952928816ydp6c886d43yqt7440430705">______________=
_________________________________<br clear=3D"none">USRP-users mailing list=
 -- <a shape=3D"rect" href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nof=
ollow" target=3D"_blank">usrp-users@lists.ettus.com</a><br clear=3D"none">T=
o unsubscribe send an email to <a shape=3D"rect" href=3D"mailto:usrp-users-=
leave@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users-leave@=
lists.ettus.com</a><br clear=3D"none"></div></div>
            </div>
        </div></div></div></div><div id=3D"ydp6f413f0cyiv8952928816yqt41707=
" class=3D"ydp6f413f0cyiv8952928816yqt3874024442"><div>
                        On Thursday, 18 April 2024 at 14:00:44 BST, Martin =
Anderseck &lt;martin.anderseck@ni.com&gt; wrote:
                    </div>
                    <div><br clear=3D"none"></div>
                    <div><span style=3D"font-size:11pt;">You mention that s=
elf-calibration for each channel is running. Please don=E2=80=99t get wrong=
 what this calibration is doing. This ADC self-cal is only responsible for =
reducing
 unwanted spurs in the ADCs as described here: </span><a shape=3D"rect" hre=
f=3D"https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_adc_self_cal" =
style=3D"font-size:11pt;" class=3D"ydp6f413f0cyiv8952928816" rel=3D"nofollo=
w" target=3D"_blank">
https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_adc_self_cal</a><br=
 clear=3D"none"></div><div><br clear=3D"none"></div></div><div id=3D"ydp6f4=
13f0cyiv8952928816yqt15681" class=3D"ydp6f413f0cyiv8952928816yqt3874024442"=
><div id=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760"><div class=3D=
"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760WordSection1">=20
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n lang=3D"EN-US" style=3D"font-size:11.0pt;">This ADC self-cal, however, wi=
ll not handle any power differences. From what you write it=E2=80=99s not p=
ossible to get absolute power values, so the relative differences are
 impossible to get, too. Since those devices are SDRs and not dedicated mea=
surement equipment it is expected that there may be differences (not huge o=
nes though, please see the specs for getting an impression in figures 2 and=
 4:
<a shape=3D"rect" href=3D"https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x=
410-specs/page/specs.html" rel=3D"nofollow" target=3D"_blank">
https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x410-specs/page/specs.html<=
/a>). If the existing accuracy is insufficient, it is possible to use the p=
ower API:
<a shape=3D"rect" href=3D"https://files.ettus.com/manual/page_zbx.html#zbx_=
pwr_cal" rel=3D"nofollow" target=3D"_blank">https://files.ettus.com/manual/=
page_zbx.html#zbx_pwr_cal</a></span></p>=20
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n lang=3D"EN-US" style=3D"font-size:11.0pt;"> &nbsp;</span></p>=20
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n lang=3D"EN-US" style=3D"font-size:11.0pt;">You mention you used a loopbac=
k connection. Does that mean that you connected cables to the front panel c=
onnectors for this? To exclude them from the issue you might
 try using the internal loopback =E2=80=9Cantenna=E2=80=9D for both the RX =
and TX path (see get_rx_antennas() for a list of antennas). This will use t=
he internal loopback that is on the daughterboard for each channel. When us=
ing the internal loopback ensure you have compensated
 the lack of the 30 dB attenuator (e.g. by reducing the&nbsp; gain on the T=
X side) as typically in an external loopback you would use 30 dB attenuatio=
n (<a shape=3D"rect" href=3D"https://kb.ettus.com/USRP_X410/X440_Getting_St=
arted_Guide#Proper_Care_and_Handling" rel=3D"nofollow" target=3D"_blank">ht=
tps://kb.ettus.com/USRP_X410/X440_Getting_Started_Guide#Proper_Care_and_Han=
dling</a>).
</span></p>=20
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n lang=3D"EN-US" style=3D"font-size:11.0pt;"> &nbsp;</span></p>=20
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n lang=3D"EN-US" style=3D"font-size:11.0pt;">For the phase difference: You =
don=E2=80=99t mention how you start the signal generation. I guess timed co=
mmands are what you=E2=80=99re missing:
<a shape=3D"rect" href=3D"https://kb.ettus.com/Synchronizing_USRP_Events_Us=
ing_Timed_Commands_in_UHD" rel=3D"nofollow" target=3D"_blank">
https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD<=
/a></span></p>=20
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n lang=3D"EN-US" style=3D"font-size:11.0pt;"> &nbsp;</span></p>=20
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n lang=3D"EN-US" style=3D"font-size:11.0pt;">I hope that gets you a bit fur=
ther.</span></p>=20
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n lang=3D"EN-US" style=3D"font-size:11.0pt;"> &nbsp;</span></p>=20
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n lang=3D"EN-US" style=3D"font-size:11.0pt;">Best regards,</span></p>=20
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n lang=3D"EN-US" style=3D"font-size:11.0pt;">Martin</span></p>=20
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n lang=3D"EN-US" style=3D"font-size:11.0pt;"> &nbsp;</span></p>=20
<div id=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760yqt35043" class=
=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760yqt7440430705"><div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in;">
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><b><=
span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:sans-serif;">From=
:</span></b><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:sans=
-serif;"> zhou via USRP-users &lt;usrp-users@lists.ettus.com&gt;
<br clear=3D"none">
<b>Sent:</b> Thursday, April 18, 2024 7:55 AM<br clear=3D"none">
<b>To:</b> usrp-users@lists.ettus.com<br clear=3D"none">
<b>Subject:</b> [USRP-users] Unbalanced power among antennas in X410</span>=
</p>=20
</div>
</div>
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n lang=3D"EN-US"> &nbsp;</span></p>=20
<div>
<div>
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:sans-serif;">Hi All,=
</span></p>=20
</div>
<div>
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:sans-serif;"> &nbsp;=
</span></p>=20
</div>
<div>
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:sans-serif;">I am us=
ing X410 with UHD 4.5. There are 4 Tx and 4 Rx in this unit. I am checking =
the RF signal by using loopback connection, that is, Tx is connected to Rx
 in the same USRP. .</span></p>=20
</div>
<div>
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:sans-serif;"> &nbsp;=
</span></p>=20
</div>
<div>
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:sans-serif;">The sam=
e single tone signal is transmitted on all 4 Tx antennas, but I find that t=
he received power levels are significantly different among antennas as show=
n
 in plot below. There are two ZBX daughterboards in X410; ant0 and ant1 in =
the 1st board and ant2 and ant3 in the 2nd. It seems that in the same daugh=
terboard, power in the 1st antenna is higher than the 2nd antenna.</span></=
p>=20
</div>
<div>
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:sans-serif;"> &nbsp;=
</span></p>=20
</div>
<div>
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:sans-serif;color:bla=
ck;">The carrier frequency is 7GHz. Sampling rate 491.52MHz. In every test,=
 UHD does self calibration for each channel.</span><span lang=3D"EN-US" sty=
le=3D"font-size:10.0pt;font-family:sans-serif;"></span></p>=20
</div>
<div>
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:sans-serif;color:bla=
ck;">Apart from power difference, there is also phase difference between an=
tennas.</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:sa=
ns-serif;"></span></p>=20
</div>
<div>
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:sans-serif;"> &nbsp;=
</span></p>=20
</div>
<div>
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:sans-serif;color:bla=
ck;">How to make tx power closer between antennas?</span><span lang=3D"EN-U=
S" style=3D"font-size:10.0pt;font-family:sans-serif;"></span></p>=20
</div>
<div>
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:sans-serif;color:bla=
ck;">And, is there a way to adjust the carrier phase for individual antenna=
?</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:sans-ser=
if;"></span></p>=20
</div>
<div>
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:sans-serif;"> &nbsp;=
</span></p>=20
</div>
<div>
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:sans-serif;"> &nbsp;=
</span></p>=20
</div>
<div>
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n style=3D"font-size:10.0pt;font-family:sans-serif;"><img id=3D"ydp6f413f0c=
yiv8952928816ydp6c886d43yiv9526375760Picture_x0020_1" border=3D"0" style=3D=
"width:701px;max-width:701px;" src=3D"cid:89a48b98-7b2f-e1f2-85f0-efb03f15e=
b3c@yahoo.com" alt=3D"Inline image" data-inlineimagemanipulating=3D"true" c=
lass=3D""></span><span style=3D"font-size:10.0pt;font-family:sans-serif;"><=
/span></p>=20
</div>
<div>
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n style=3D"font-size:10.0pt;font-family:sans-serif;"> &nbsp;</span></p>=20
</div>
<div>
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:sans-serif;">Thanks =
for any suggestion.</span></p>=20
</div>
<div>
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:sans-serif;"> &nbsp;=
</span></p>=20
</div>
<div>
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:sans-serif;">Kind re=
gards,</span></p>=20
</div>
<div>
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n style=3D"font-size:10.0pt;font-family:sans-serif;">Hongwei</span></p>=20
</div>
<div>
<p style=3D"margin-bottom:12.0pt;" class=3D"ydp6f413f0cyiv8952928816ydp6c88=
6d43yiv9526375760MsoNormal"><span style=3D"font-size:10.0pt;font-family:san=
s-serif;"> &nbsp;</span></p>=20
</div>
<div>
<p class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760MsoNormal"><spa=
n style=3D"font-size:10.0pt;font-family:sans-serif;"> &nbsp;</span></p>=20
</div>
</div></div>
</div>
National Instruments Dresden GmbH; Gesch=C3=A4ftsf=C3=BChrer (Managing Dire=
ctors): John Stanton McElroy, Albert Edward Percival III, Kathleen Spurck; =
Sitz (Registered Office): Dresden; HRB (Commercial Register No.): 22081; Re=
gistergericht (Registration Court): Dresden<br clear=3D"none">
<br clear=3D"none">
This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender
 by return email and delete this email (and any attachments) from your syst=
em.
</div></div></body></html>
------=_Part_611893_404643858.1713507096968--

------=_Part_611894_1430504169.1713507097043
Content-Type: image/png
Content-Transfer-Encoding: base64
Content-Disposition: inline; filename="image001.png"
Content-ID: <89a48b98-7b2f-e1f2-85f0-efb03f15eb3c@yahoo.com>

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
cgAAAABJRU5ErkJggg==

------=_Part_611894_1430504169.1713507097043
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

------=_Part_611894_1430504169.1713507097043--
