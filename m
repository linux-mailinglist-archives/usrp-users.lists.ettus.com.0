Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 092033F6BAF
	for <lists+usrp-users@lfdr.de>; Wed, 25 Aug 2021 00:26:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 000EF385204
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 18:26:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="ZMQMkXDe";
	dkim-atps=neutral
Received: from sonic312-24.consmr.mail.ne1.yahoo.com (sonic312-24.consmr.mail.ne1.yahoo.com [66.163.191.205])
	by mm2.emwd.com (Postfix) with ESMTPS id A2C2B380A97
	for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 18:25:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1629843929; bh=5u2E1oexdKXCo0g4c/DHTNoAQtkZrk0svtFkElKIT6A=; h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject:Reply-To; b=ZMQMkXDew4VU2PczNnXmPgN9waKg9L8BS6LzwiMtMv6WCZfqi6WPGphezH5YnFpDDtLDILsbpToJDO8Pl9xHK8Gx1cw/IhR8G6HkUYmf+CZP/F220DNQx+a0yR7uCRSZmyVOLVe48mAytGHtEQdhV5+9vTb0mHbOjvdz1pcs+J0Kb6gbvGYDPw3Q/JDWUw9mGgjwD9GzcJJ+t6agmEH5/38j56Gxn7WTKDsokv4JC8UdOBtl8Mc3a0jrbsuHid8SsDmZQbKHBbP37q6uQf8pBRqNv4s+qxTs/iq5Srdag1wTvhnwp6yZkBPYkfmcNEUyaft6/X4HVbqWswArEjODAw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1629843929; bh=9Cvaj/YJ39UDjK9Tz9f7w9mdF2ZX6MneX1Yf1/pCfeu=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=fvutkIBswzcwa8fezdH6WCk1iTErQJMjuf6dOs2GDlYa/XT8+YKeRMyPq5zq08nPbP8BakfURL+gZl6fQsK2734WRfnMcrXtscVjQRQTCI/lHtGYfIM59y8JevMzHJ8Y/WIi3Spj3yb8ZZ8ghj+ADKMHxyb7KxOv6t+DEDrmMOD8TtTOVgm++vFyy8zrl1eaCRWXU/Tcv/eR4e2IV30OIPicszBoRidH6yt2aSor5uTAjlGYWvHfwRpaM/Vmac6OmnGHUAsvQeusfomymPzDZhbtS6lQ+vjhI6GnZmsqJdJ4VYYjRKOAzD0RSscopsSODMPCyPIcfpeyJWThoI1lYg==
X-YMail-OSG: tzUOjUkVM1ncuD8ISJcSH_efR2O6LOC0.Zo2bDAAuZxMBmE43mDxEG5LExxl4ZS
 PP5CoP8uDYoGuW_hLB_7CqIC.oY.aGPppedkbEhJekixqdrdqr1HMsWqOcq_23Ju8sGnJOIkZBbP
 VkDN4Y2TcGU2Uc_iaow4imLmaBukh7gqXSU3dnD5an4E3rrYI6Xg0S_.7dIkWwR1BaQVF3sbUe.W
 DrNAPkQs343VOmtkVLg7tapoY702MppNqsJ0iB921MTUuK0HDpYDyzNtyutaCsQSEYQdfXdnpt0v
 ffsuIACLSUeWZFU4er4Dlea_Q1ZUc8rJ.IhgOqqGONJXHqtOiXe0s3D3Vd6z7XVY5ghSaz4s3_nB
 g.yBzsfMzreQaYvCQABPn8v5FgK7jx8b3s4nATs6PCM.HGKI1bNwrZOXq1vnU.d9OD4Qlz.gGkQd
 MINwvr0nzdGyZ5v3suy_l1mpbkPWOFt0t.m_0.UhLMrRQRsHcyCRbauQW_MlBD1LxfqSYngDUSc2
 3_dn9CzrPzr2eqx29aGD_ugGAAskUvxoAP60t0AYtQ7771a8c4kmmEtVKm93QeR7CsqZ5b7DN18X
 EEBtaoHTS1XRuKHBO6kbHM2LTYeMU_sIzvJD3jRHkoKq.lBRdWpmPd1BXzVlz9yAzIhPFuGZaicR
 2aLQtjmbDhI8nX0cTBiZEMUAwkslRwJvW2O9bUyXNl64auR_k6GypatG08MTgxBx0iHAOQTaiiTF
 h.0GtcN8WJoeUjgCFZPC_Bo_rXe5IdK04aQHafo6g8lNjalcSNmck_OR7bxjf1WMsQIW7V0xy0r0
 yGP2mLzd5wk5tlTtL6FqPC_bPFO.7ejXf6E7Qs02Mdj5qZGK2T3X9AF7LVLAK95YE3Ui.CZzlRaF
 .eERR5pldVeDjHfjUtcDu9qjeFT0izW4wg17guHss3IKVNXgGc6kS94kJ_ktT32RaLb4hSHzOLIT
 wCkP7Q1DOtlNB2dSy1nV4DLBgdk76iSM0QiUZalKQ8gDKecBaUMhKyBVVMsBvDegdyy8T2BDYg3m
 1pOJiwW2z67Ysh0lr8U2g635F.utlRO.N0UJwwJjLY38XTq1CkO.k31KPAB73wD0YW42S7b43WLM
 EgnxCEAxiSlADkyYEQJKZRzewe98Xvw76nIQFGSxRvqCztUdTIUn.ZXaYwb2vPbZ_qjISNmvnovl
 oe5fjQvvkIuwDIrxxQ1i1SUk4CanPpx5BUchuZCf9Yfwf5MraKI7YiLA927x_jDbXaiXP6xvCOcC
 AALJLnoKVTDzk7Wa5ASt0Pty8JGdxWPEwS_gxyBFuVd65V1TcrmFPyAtz8L67aNsq5_AwIWShpUL
 BmvUGFsotsam5YaVgYdQN2A.4G1tk_W3O2teUsMlc99XGtXYw38YtbIPzfFmlj0vSVySTKXEcCVK
 CkHKf5b2IQ53CbshwmaQqKcxkSTvA.KPTSmzZd5zCXVSPz8fQN6.gCTbQTaUpK9VKhzAeYxa34tm
 3oou_wRYaU.qMqRaEBjWtrbZbrqTR_CgLEWyCUSvH.UMPYcjoezmqjbpc.XJAQfLWv.zFeVFGcDf
 1KixT83qGAtQFAx7Fh5AirDr2zsxeuviKTcW9xZMltUZuTLNMQ9WGgbx5uZ65Q3LN.RPrEatPd39
 7aiID1bL8LWcPQD..FtU8WyrqhtZ6M0iCJbQ50UWhuFQFET_B9DZ2sF426d.N.AuTeegYEdRLlji
 vPQ2gc7gkHYK8LklUbVxV.yKURGaHbRlFu.6hkddPFL2qH4O2jBfXAytZrckBiJKOg1mJHC6btmK
 2jwP9UQiX4Qcwxj.QPbhHAuVaALd_vxLVQJ.vFqEZhe9id0LUwxwEdh0jDuKaHWm4Z1y4B7gRK7g
 X34jxQoEfkWTtfRk5ODJwr1wSHvuORLf7Bv7DSw2HJWb43STKmFCygl6VwxrvAedaVyAcH5._ruK
 Nl0wMQsSuITP.OFwWSzrO_H8aev6H7XhLRpMVgQCnm5NqkouZVPL.1AAKJps4Gt244Agc36TGSZ4
 WRNvT1d2akS5ReKlRd1kuRz1Uey3bUDiZp_GyJ2ZDo5BN7oEbUyhwIsyB8fFvEFnaP489LorMOl1
 kDWGj2ogLjBkPBKNkc1AUkbNvN_THKoFoqs_GDmIUtPaBC8rUGnif_g8v7V2Zql5A9vYNfJKBQ.o
 8ahiQQ2TBY.DvibYfSaBzqCjwITbiQva6PN_Zg47sGzqISWC3La8UBWKyUkr640C4Inii9.ZX6Nm
 U69EsCiQOxU93npdwyqKd2OKIv9wUUsVFqlmwJqlNmfH16a7aa8gqsPB4Vk9w2T7KzMaJ1sxf8lR
 ZplPE3O7F2XlFsoCFj_lYuRRjC_RjHzO8.jKipV809PV5xigYwuLOp8F3h1Sd7fk5Cxeh0LDezA0
 ikQ--
X-Sonic-MF: <ampselectronics@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic312.consmr.mail.ne1.yahoo.com with HTTP; Tue, 24 Aug 2021 22:25:29 +0000
Date: Tue, 24 Aug 2021 22:25:27 +0000 (UTC)
To: Rich Gopstein <rich@ourowndomain.com>,
	Marcus D Leech <patchvonbraun@gmail.com>
Message-ID: <1126607151.1233468.1629843927338@mail.yahoo.com>
In-Reply-To: <572877336.1228759.1629843589505@mail.yahoo.com>
References: <CANsNeao6k=2hTMc7orLE2L=dXKuoM243zTJ3VDWtUnDYU_YvZQ@mail.gmail.com> <19B59BC4-DD76-4F88-9465-085241A4398F@gmail.com> <572877336.1228759.1629843589505@mail.yahoo.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18906 YMailNorrin
Message-ID-Hash: V4AGYKBGPDFDG6UAILUIQTM7FAGPCXI6
X-Message-ID-Hash: V4AGYKBGPDFDG6UAILUIQTM7FAGPCXI6
X-MailFrom: ampselectronics@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reading E310 temperatures
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V4AGYKBGPDFDG6UAILUIQTM7FAGPCXI6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: aneesh patel via USRP-users <usrp-users@lists.ettus.com>
Reply-To: aneesh patel <ampselectronics@yahoo.com>
Content-Type: multipart/mixed; boundary="===============5145626097440958179=="

--===============5145626097440958179==
Content-Type: multipart/alternative;
	boundary="----=_Part_1233467_1453938017.1629843927335"

------=_Part_1233467_1453938017.1629843927335
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Correction-- missed you said "outside of gnuradio." Basically everything b=
elow minus gnuradio. if the sensors_lm package is available (as marcus stat=
ed), parse that output or just manually parse the /sys or /proc (forgot whi=
ch one) file descriptor for the sensor when you find it.=C2=A0
Best of luck!
Aneesh
    On Tuesday, August 24, 2021, 06:19:49 PM EDT, aneesh patel <ampselectro=
nics@yahoo.com> wrote: =20
=20
  Concur on verifying-- that being said I know at least one of them (possib=
ly CPU) was available on the SG3 image a while back (I'm sure nothing much =
has changed there but its been a while).
Then is would be very simple to write a simple custom GNURadio block (like =
basically a command line script to cat the sensor file descriptor [just goo=
gle that as I can't recall if its in /sys or /proc]) to pull that data from=
 the OS to pass temp messages and ingest them into your message passing or =
logging system. On the tougher end, depending on dev cycles, one can cross-=
compile or pull code from lm-sensors and then turn that into a GNURadio blo=
ck (and maybe even being able to add the other sensors when reading into th=
e ettus kernel mod code/schematics if possible). Some options exist.
Going all from memory here but that should be >94.27% correct. :)
Best of luck!
Aneesh=C2=A0
    On Tuesday, August 24, 2021, 05:20:51 PM EDT, Marcus D Leech <patchvonb=
raun@gmail.com> wrote: =20
=20
 My approach would be to see if any of those sensors are understood by the =
kernel lm_sensors subsystem.=20

Sent from my iPhone

> On Aug 24, 2021, at 5:12 PM, Rich Gopstein <rich@ourowndomain.com> wrote:
>=20
> =EF=BB=BF
> I'm helping out on a project that's using an E310.=C2=A0 Someone else is =
doing the GNURadio code, but I need to read the temperature values periodic=
ally (once every few seconds).=C2=A0 My code will not be running in GNURadi=
o.
>=20
> It looks like there are three temp sensors (Zynq, ADT7408, and the AD9361=
).=C2=A0=20
>=20
> What are my options for reading the temp values outside of GNURadio?=C2=
=A0 If it matters, the E310 is running UHD_3.15
> My code will be running on the E310 directly.
>=20
>=20
> Thanks.
>=20
> Rich
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
   =20
------=_Part_1233467_1453938017.1629843927335
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp5071170dyahoo-style-wrap" style=
=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 1=
3px;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Correction-- missed you said=
 "outside of gnuradio." Basically everything below minus gnuradio. if the s=
ensors_lm package is available (as marcus stated), parse that output or jus=
t manually parse the /sys or /proc (forgot which one) file descriptor for t=
he sensor when you find it.&nbsp;</div><div dir=3D"ltr" data-setdir=3D"fals=
e"><br></div><div dir=3D"ltr" data-setdir=3D"false">Best of luck!</div><div=
 dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=
=3D"false">Aneesh</div><div><br></div>
       =20
        </div><div id=3D"ydpb3eb0d01yahoo_quoted_0229013022" class=3D"ydpb3=
eb0d01yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Tuesday, August 24, 2021, 06:19:49 PM EDT, aneesh pa=
tel &lt;ampselectronics@yahoo.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"ydpb3eb0d01yiv6860814934"><div><div class=
=3D"ydpb3eb0d01yiv6860814934ydp35950f19yahoo-style-wrap" style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div></div=
>
        <div dir=3D"ltr">Concur on verifying-- that being said I know at le=
ast one of them (possibly CPU) was available on the SG3 image a while back =
(I'm sure nothing much has changed there but its been a while).</div><div d=
ir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr">Then is would be very =
simple to write a simple custom GNURadio block (like basically a command li=
ne script to cat the sensor file descriptor [just google that as I can't re=
call if its in /sys or /proc]) to pull that data from the OS to pass temp m=
essages and ingest them into your message passing or logging system. On the=
 tougher end, depending on dev cycles, one can cross-compile or pull code f=
rom lm-sensors and then turn that into a GNURadio block (and maybe even bei=
ng able to add the other sensors when reading into the ettus kernel mod cod=
e/schematics if possible). Some options exist.</div><div dir=3D"ltr"><br cl=
ear=3D"none"></div><div dir=3D"ltr">Going all from memory here but that sho=
uld be &gt;94.27% correct. :)</div><div dir=3D"ltr"><br clear=3D"none"></di=
v><div dir=3D"ltr">Best of luck!</div><div dir=3D"ltr"><br clear=3D"none"><=
/div><div dir=3D"ltr">Aneesh&nbsp;</div><div><br clear=3D"none"></div>
       =20
        </div><div class=3D"ydpb3eb0d01yiv6860814934yqt2199907837" id=3D"yd=
pb3eb0d01yiv6860814934yqt80428"><div class=3D"ydpb3eb0d01yiv6860814934ydpca=
33aaa6yahoo_quoted" id=3D"ydpb3eb0d01yiv6860814934ydpca33aaa6yahoo_quoted_0=
518387881">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Tuesday, August 24, 2021, 05:20:51 PM EDT, Marcus D =
Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br clear=3D"none"></div>
                <div><br clear=3D"none"></div>
                <div><div dir=3D"ltr">My approach would be to see if any of=
 those sensors are understood by the kernel lm_sensors subsystem. <br clear=
=3D"none"><br clear=3D"none">Sent from my iPhone<br clear=3D"none"><br clea=
r=3D"none">&gt; On Aug 24, 2021, at 5:12 PM, Rich Gopstein &lt;<a shape=3D"=
rect" href=3D"mailto:rich@ourowndomain.com" rel=3D"nofollow" target=3D"_bla=
nk">rich@ourowndomain.com</a>&gt; wrote:<br clear=3D"none">&gt; <br clear=
=3D"none">&gt; =EF=BB=BF<br clear=3D"none">&gt; I'm helping out on a projec=
t that's using an E310.&nbsp; Someone else is doing the GNURadio code, but =
I need to read the temperature values periodically (once every few seconds)=
.&nbsp; My code will not be running in GNURadio.<br clear=3D"none">&gt; <br=
 clear=3D"none">&gt; It looks like there are three temp sensors (Zynq, ADT7=
408, and the AD9361).&nbsp; <br clear=3D"none">&gt; <br clear=3D"none">&gt;=
 What are my options for reading the temp values outside of GNURadio?&nbsp;=
 If it matters, the E310 is running UHD_3.15<br clear=3D"none">&gt; My code=
 will be running on the E310 directly.<br clear=3D"none">&gt; <br clear=3D"=
none">&gt; <br clear=3D"none">&gt; Thanks.<br clear=3D"none">&gt; <br clear=
=3D"none">&gt; Rich<br clear=3D"none">&gt; <br clear=3D"none">&gt; ________=
_______________________________________<br clear=3D"none">&gt; USRP-users m=
ailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@lists.ettus.com"=
 rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com</a><br clear=
=3D"none">&gt; To unsubscribe send an email to <a shape=3D"rect" href=3D"ma=
ilto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">u=
srp-users-leave@lists.ettus.com</a><div class=3D"ydpb3eb0d01yiv6860814934yd=
pca33aaa6yqt5793601014" id=3D"ydpb3eb0d01yiv6860814934ydpca33aaa6yqtfd42373=
"><br clear=3D"none">_______________________________________________<br cle=
ar=3D"none">USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usr=
p-users@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@list=
s.ettus.com</a><br clear=3D"none">To unsubscribe send an email to <a shape=
=3D"rect" href=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow"=
 target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br clear=3D"none"><=
/div></div></div>
            </div>
        </div></div></div></div></div>
            </div>
        </div></body></html>
------=_Part_1233467_1453938017.1629843927335--

--===============5145626097440958179==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5145626097440958179==--
