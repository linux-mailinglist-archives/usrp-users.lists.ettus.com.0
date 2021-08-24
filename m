Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E49F3F6BA9
	for <lists+usrp-users@lfdr.de>; Wed, 25 Aug 2021 00:20:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ABCE1384F0A
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 18:20:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="iT8N5vk+";
	dkim-atps=neutral
Received: from sonic308-9.consmr.mail.ne1.yahoo.com (sonic308-9.consmr.mail.ne1.yahoo.com [66.163.187.32])
	by mm2.emwd.com (Postfix) with ESMTPS id BF7D6384897
	for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 18:19:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1629843590; bh=82/9Axu+le9zEDUoI7TLVp04oGYSoe3ZnDftJ2TXQrU=; h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject:Reply-To; b=iT8N5vk+qHxpy8XC1G0MiPgIKRk/d61DdpWuDo8fwU0bWf7zidqMdYNRKCCr2FlWL8D84MLU/QAi1R1pvXLoYuHwLMcS4Kzz0uFIc2d9ZUslXOEtjXaREPFr9L9Qc3Qfbl/b4Oeyt/8UHCujLE+5fw8AAJsaW/nxi7SRFIxJbdwUs640WYZD385PyJSG4tJtJlW9XxrAGsM+E/ixdOsyBLw6G3PH7OGNA7nB8z7UXIZEnf1EAZbYohRONldSfBiwdxGf0ydoGsQzOaYUQen0SIypkgwkuO5TvQ9f5Pzgn/kqIvtrjc9nlysbOcH9RMKfMwUK0C2uA6Gwiz6gW4K5qA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1629843590; bh=0WyIEx/4c+CloARFb1/RiFnZPf7ofGL6Xii0chAlQ6k=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=ezoP+3pMN9/buL+9LL68BHFlWQ6gTc7xoMOZE5LLj9BmaTzQp+XMU26M3vsMWfC0+hYY94c6oXLe/bYIS6pAl8qLX3IWu/lY8H7BaCtgPvHk+u/KusTGO16jqPNo9Wb0cYeaj39Qezt11GoAGvDPzNwvbrjuOx3KpVDC6KBn0LjKw6rCQj8B7f3nmphEaMCijBE6Y2jGtJemPm1o+XflnX4HoX2olqfF6BzMsEhj+yGWXsZJnoFl1EpnzAgkFSvth3qIyqxa/j1OZP5Fxurb6ux5fA4Z5ZHge6V9pU6gH4gRSbuMqvHbhRJbLkmpuj7KzghAx1Q0MDawmJFFQvUhLQ==
X-YMail-OSG: SPVLOakVM1k1eFAjzVSuVnZ5OM6q38BeSbB4VYRwURebeNfMqTgwqQX2l8pk_Ai
 aFHow7RQyd6p6f7oxxU6rrId5nJJAa4n2y5IKr7hAyrRogHGF67m3ysSBZ9gD6uCPW3hi8CWMttt
 0QbHTghDRy5diXQwgrLnTXi.PsUY1AB6TC2S54V1bQLd.kC7pj2rTukEjg35jWfparjfOkvyvu.i
 Z8J3Ujh3s3i75nJVR4ezuKz449eb_SO1EtwYURmeIfRO7OrxW3SZepbPurShv5zAZM7z3rhf5P6Y
 9zyRh3tkFMBXzKKctOxk3rzNl8Ah..SrC6QkSrWt8LXtkV6rEzFaE3ho9kOk_72WogkpgXRp6a2h
 kbD8wEXLXgcdlTjUUPlxCb86DH6UQ8KoakgMg_5ReqlOsei_Aya4lo.sA_d7ZrVqW58Dq3xYhg76
 xDPySqSPDUl2pIZYtofq1MOhbaXygDqaCfWlqRRMyWyaaQFhPcenOnF1n.kQV6RgjRqG9JbZiimO
 CTdKOl.Qzgy81Jqs_FEBavM11vbH0s_9k4yQ0NRZ8B3yc9.qXR.wzkABLBjNtxMwzE_wEIchaW8P
 ItCqdxLAR8KjDmxjccOiqBlEMS_S9Ez8y_rOYt7x3.84Wu95cOAWFCE8YO3XjvFFmlzObbogmFFK
 M9cEGgn.g19OCxkVPaiqsRbxjs.7DNpN0RVX6So2UPZuLJfHY2Obk8XPM6LrPT6q16X3gEer3ybF
 jTw1b_p0AcI.XrySOEySKNYblo_136IrrotjG_TTYF9X7dgg53RHhYs72RYkg1pt5DRois76ZbZT
 JXEvzU71XUW6NhwATzcYmnqxnd.snNpdensmU_hshA73F21.Wi8GFXU9zecLq7nrHCehx6HLlMAn
 OVYdkoyL1pvVX7x5ZvyH6AOnSbjU1Qh9aMHxfCoF00hjSMaNHim8hq94d0lR8U4P5k_9uTZN.Ror
 lAenXMEMJrFdNA3KAT8ToQEsVq4RxBISCk344VK_6FY3HWoWfU6q8qN2Ry_6_iQyeLGpeG5PiBWV
 00amx2AK0Ok0jSa7FkUKmWGRZmK8wOCmIMmejjfiyyZHoauEh2tiiRV_rYn1Job.qu0gAYA.35Wm
 sw2oGZno.g.UjWJxJRXrGzHXVtiu.eqi27u1G4_HynTKMJzbNEgz02x4jpKMNf9Nk6QOKWGBhiH6
 9.vQcnnpXzrxsCQEv_0r4vVXdMWIk7ZEy7psvf.VjnqXIylK_z4_rQkT2NMbaCU5f1RMI3oR2k2q
 XcbdGsW.TMyFXuVQcxqaP5Bt4aPbql7X34UouyTPL3jmKrK2NTeM90XL0dVDmQ5l9_wP40LsnBhL
 6skV5vOWY7iPYoBopR9W5Wlnv5PxmQ6xpSjU1ah1._Rn7a3horbd43e.mc4z84I1ETh8Zf2Tnh7y
 dx9qDAgbu5sRORhND1LbdlTCm9AqMudX0CMrpOqvNW9eXHTF8X0dZaHqOyCo4h_pd9jQf9kyDb.Z
 qGpJ6GHS_MGRbuUMSQ3AVCHApn0ZL4ofAIruW3kh_D811O9FnGiEMunbPHYXfvBP_7ZNBVJK4U_e
 HqGbdOfNZSw0m_78u19yHIZ4PU01r09b3O3_KZ0.9DVDI9jTLBpELcHGwoko2sQ9PZy.J28NPX.p
 lsCtE8zLwfQGe9jo8ZXlTJntLReNjd52LNx1C7febsLIjVfsu0TacQZCWPI0hCoGQyuQqx6AoKDH
 BeO2QbQ.KOENuv8dT04HI5NSlca7ZB_WjH1iobymsrVR8SeGrLndIJ4FbJ_Hfztyps47wuBVgEcC
 b0PcSaQ2QiXaOcjOvmTu3Kq0VNaEARoGDDcG9YpXc0nq5j3QXVRzuC_9mMrXrxPwpvN54MC8R58S
 Mu_n.CrRILFITkl_jROBiseHWfXxUs5vo1ljRe5RoU9lMB3rdKedVoNNUnoaGDsEToTO8AmQUEjv
 7wJA4pJk2Wnjtoh0L4Z98FpBeCuYlmzUOzHL7ORCR2B_zFfJlUGjHXcbmkwhgoZHdLirrjRfBWfB
 tSs88aCGgjhGS49V5SMGfbMviHmdJ1BstIHeFwxuctJ9IVSsTtb7EDrdkOBJvmz7CnQJyi38yvDH
 ko929BvJv9dbgdWSD3AkU4KhAbUcQplBvjPv8gtu_elICQ5sJGDDTsjyMAFPrZ5xachg3Pee0f7d
 6puppWqkDeu612EzEQ3e93ivawdBwe3KYOwfKpMysdvSB69CDCIbB4M2ViRKq3SDbWSfa9nUOebh
 aXPIv8MQTcb_U2ZGTravGj32HhFINJmqLWq1ynv12sNE.mMolkBiPr4kwLI2yjPu3032rUsMUiZH
 87G0Ukpawovyfd8i8zxx9YFxAPKYx_l98XFqbrpL.Kyed5cc6CnpfeZQ8Wq46st7VQe3vhw--
X-Sonic-MF: <ampselectronics@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic308.consmr.mail.ne1.yahoo.com with HTTP; Tue, 24 Aug 2021 22:19:50 +0000
Date: Tue, 24 Aug 2021 22:19:49 +0000 (UTC)
To: Rich Gopstein <rich@ourowndomain.com>,
	Marcus D Leech <patchvonbraun@gmail.com>
Message-ID: <572877336.1228759.1629843589505@mail.yahoo.com>
In-Reply-To: <19B59BC4-DD76-4F88-9465-085241A4398F@gmail.com>
References: <CANsNeao6k=2hTMc7orLE2L=dXKuoM243zTJ3VDWtUnDYU_YvZQ@mail.gmail.com> <19B59BC4-DD76-4F88-9465-085241A4398F@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18906 YMailNorrin
Message-ID-Hash: IHG6YTZ4J6ZICIJSKIBICZYVJXMW33WE
X-Message-ID-Hash: IHG6YTZ4J6ZICIJSKIBICZYVJXMW33WE
X-MailFrom: ampselectronics@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reading E310 temperatures
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IHG6YTZ4J6ZICIJSKIBICZYVJXMW33WE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: aneesh patel via USRP-users <usrp-users@lists.ettus.com>
Reply-To: aneesh patel <ampselectronics@yahoo.com>
Content-Type: multipart/mixed; boundary="===============7901716978130258118=="

--===============7901716978130258118==
Content-Type: multipart/alternative;
	boundary="----=_Part_1228758_766374463.1629843589504"

------=_Part_1228758_766374463.1629843589504
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Concur on verifying-- that being said I know at least one of them (possibl=
y CPU) was available on the SG3 image a while back (I'm sure nothing much h=
as changed there but its been a while).
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
------=_Part_1228758_766374463.1629843589504
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp35950f19yahoo-style-wrap" style=
=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 1=
3px;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Concur on verifying-- that b=
eing said I know at least one of them (possibly CPU) was available on the S=
G3 image a while back (I'm sure nothing much has changed there but its been=
 a while).</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=
=3D"ltr" data-setdir=3D"false">Then is would be very simple to write a simp=
le custom GNURadio block (like basically a command line script to cat the s=
ensor file descriptor [just google that as I can't recall if its in /sys or=
 /proc]) to pull that data from the OS to pass temp messages and ingest the=
m into your message passing or logging system. On the tougher end, dependin=
g on dev cycles, one can cross-compile or pull code from lm-sensors and the=
n turn that into a GNURadio block (and maybe even being able to add the oth=
er sensors when reading into the ettus kernel mod code/schematics if possib=
le). Some options exist.</div><div dir=3D"ltr" data-setdir=3D"false"><br></=
div><div dir=3D"ltr" data-setdir=3D"false">Going all from memory here but t=
hat should be &gt;94.27% correct. :)</div><div dir=3D"ltr" data-setdir=3D"f=
alse"><br></div><div dir=3D"ltr" data-setdir=3D"false">Best of luck!</div><=
div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdi=
r=3D"false">Aneesh&nbsp;</div><div><br></div>
       =20
        </div><div id=3D"ydpca33aaa6yahoo_quoted_0518387881" class=3D"ydpca=
33aaa6yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Tuesday, August 24, 2021, 05:20:51 PM EDT, Marcus D =
Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
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
srp-users-leave@lists.ettus.com</a><div class=3D"ydpca33aaa6yqt5793601014" =
id=3D"ydpca33aaa6yqtfd42373"><br clear=3D"none">___________________________=
____________________<br clear=3D"none">USRP-users mailing list -- <a shape=
=3D"rect" href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollow" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a><br clear=3D"none">To unsubscrib=
e send an email to <a shape=3D"rect" href=3D"mailto:usrp-users-leave@lists.=
ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users-leave@lists.ettus.=
com</a><br clear=3D"none"></div></div></div>
            </div>
        </div></body></html>
------=_Part_1228758_766374463.1629843589504--

--===============7901716978130258118==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7901716978130258118==--
