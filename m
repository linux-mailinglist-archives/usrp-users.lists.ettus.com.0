Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DE87070BE
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 20:25:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 709183846B3
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 14:25:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684347954; bh=tRGLsxzPnkJkeurQ6xiU8wp9zuzWKkMalI9+wXGHr7E=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=smofO7VKGomtGUc4nB69SJRfA/jOj0tb1JUdMFB0RQsHyciuR8qCPH2Rn1rBJDg2I
	 OIzDdGZSUFQiW9DYlkbp289wUQD64lwFQnhcvVqIDKUPeEUZ/sI4dmw8SVBtCoW6VB
	 lPcF2leTrnZ4Ng577jpXDZDcIdv0eEjljOIkLfzfz0ZRTHtri8r+sisBB0BhgOptsj
	 LGf7S/ciE5ersBEav0s294Y+C81GwUP6bddaWehWAT3R3r43NXrjahXO9+GwpmQqTB
	 rY81KCKgbFq0a01ix70zLGs4SeLS9WLaZpQHrkqdHKbUgz4n+IMj323qO1DW7uQ+pD
	 ZNDF9k4d2PHmg==
Received: from sonic306-26.consmr.mail.gq1.yahoo.com (sonic306-26.consmr.mail.gq1.yahoo.com [98.137.68.89])
	by mm2.emwd.com (Postfix) with ESMTPS id 00BC0384815
	for <usrp-users@lists.ettus.com>; Wed, 17 May 2023 14:24:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="hgCgJk9I";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1684347849; bh=jAecZya3QzfEq/j2Igk4v9qRuX04gawxeuSYhE6gr+k=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=hgCgJk9IttWHvCoCV0yPGBheaafCFa93cNrv5LCIMFZBU1AvsLpaz5sPMAncABbclOsYx+c1qf6KWcXnFmAZsbh0DuL08ssqRZq6O4iencSIakal3s3xi+pqheyGZC//tlnhEZri32PRqVfOmtfqHmWCb/83FOjzSaPOsTgdWr+JIH2/hgD3vY1iWsJiXhF7PuDOG39AAtZD+YfqKN7H3/G8+dBpghse3JilwufaiJzYrFoUcb5/1hGi1aUgWAt8/3Ou2pfSpLEkkDsF777gVKGr/S7bSALXbDTk8Znt1ePCI9vtGPN8nLgwxuBU6bZ69PbPXK0My5Yte35L37gzZg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1684347849; bh=daXiC+1j+djdcCmZo7gCbZwZRMfG8vBvlVp3qHUkAht=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=aF4/ILPV2vJ50UDlC8IUnAaAPucnmBSEspl69u2aBC7Kte84KTtYt9RsjVj9zdYJI6RAb4ekboQ2pj2DZMvwQOHLoJmo2Mu3MFjEb9m/4Lnk5hCaIcb3wBlhERBg+EEuROLkDHKHLfKSMqsPuDQHRFwk4bvgNElmVoghtNV0S534ZgPsXJquVyP4X2qvS4m687+m3UhnFIj2vCLg48+BCnJvZAn4hrzKL2WEZLeu9J/96Ge/6PLa6AKr912y8AFnF+nvYzjFwE45coks0o4yaMwDF1eia9fbHK4RuolzG7XjcJFPJcdKpuM0ZU3kljM+8p1d6IIJ3Q7dNNSEOKYEow==
X-YMail-OSG: VtuopmMVM1nA4sWiTCNikLV_zp96YcgNLmUoyxP0oz8jKKyYdGvPIslPUd_tyJv
 7V4n4i41ty6FmHKZpBc1aV7g3InAvbkbIlOuNtgCfcDH4P0DpIOWbkVaORp4Yy7bCMZ8Tn3D0pnU
 KesTmfLYawSYLNt1XmrnrsO3gIbwbvlgSF3Zn6toEtXCCyp2hOxcwDZxRS3dI.9s2vc2AO.jAbbk
 E2LCv7X1340k0E7Ua97gMNICmNqrJ.A9xiquzgLNQ3NDhkYSbNSbSpT0bfAnE_m4cFqLgV2gXX71
 Q_irx7jQMqNv.1l51RRFOsu9sFHkcmOlOTLGc9cp.eeJAZf7_EyLReKCLTcmJ9kNfKBLE2gJ1EOw
 8A_hDT9JUpn4ejtj2id9b_mQK3_LW2JUzadBGQPwXJpoDsaSyghJaYWh5AOSVKBTaG_j2MwKMV_A
 yoci5E6QyAkmnBcFmWyJXLtHkOXTS2jBbOoXwNM7wcV1szSVnTaclWySEyWJtaCs963X9QtEiNvw
 mXlI.VJBSq_z4FS.jiQ9cQCxiuwikHXX0gAEpWOsVGqxlLB5JgAtby1XVmKZXcIuVKPCx6UYybY4
 9ZoGQ9XPxJ6yiq7giJVR7SqOy2uztTwSUQS6ori_2KrWKIe7A2ntirZTzsFvAApc.SoRsAw53WaD
 .vHoPRzSNa3TsO_iG6yiSgK_246e2mcYN4JHBSSZXoiVNnXUJrJPkivE2QoXKU4Te2DRif4V51.P
 mLoI1wdnhLJl3t2fgBb7txgTNxslng10xDlkrb1Jd2I2i6L4sZFKynKBYF6tI.3fQA0MOOrH4YrD
 qpynyUSolousKrLzKePT.fZLDOYxtLRKYe6TzD_ry0l11z7MZAHrLepcvQz_WskTPqdWFWAb_U70
 _LWf8cI6OfFeiZxW4TCzeqj_nzUPP7p989NPF6UbZzOxQ9d.4wMuQy30EmLy7IyKce39DNB38d3r
 _QF0bQZroncTKk7zD0xLp1IjqxXEj4MeM.7InJi1p9uFkfd.giBy7fNufcOZc4aSA8wZgnaTdrEa
 dQeR9BWyTBzxzUstLsWAf2nKHlZXaGgy7oYm89yPIQd1qPRY8_4gd1LlnA.pBCSZ.yWW2bmTuNS_
 1cd.1BUxDiOgywOkbdu5gLlBr9D7gRolzAoHcR32Hb07313vqONzLnoOgeZOdoqILHpjtbvFHJaj
 DsAv0lJ9HGxAx1MydVl.mLH8.LnvtVJwXqG3..mvn0NiCxBoybBlcXGdmZqNg6lg1HxZTr1OSpx6
 z2uxVPQrcbcUxDqtsmqeNTr1XDjP89PFo6uFBRZHlbgCbNv5fzl2hjZgNhXGgv8OtWVXt6ycs.A0
 anpB2J_Abws3j4aS24eFk5kiZHGweCedj_igKiwYKodphMP6sgvOB3sdaThaRW8kVhEvK6iQPKzg
 8gD4qf0usfatVjeqgkbm4T9V3RAle72ev.5LjrGONDpH6bGK6mMCHEKw3FNM_w48KOFp7oJ8ljO2
 _jHfSnllhDa8KgfqgVWwwQIIPBCmd_pwqz3oBQ6DrGlGkJk_LKD20ZMOs2FXJSkDtPVrhO1Dog1I
 MXrLGsiUcayH44rXHbqjnnAK55yIpsCuYxDoN8oAL8U.ExupAxwmHlsAYJpCxyHJhVAQ2ivFUC64
 0_W8fxbHCXnBP_iCQDtx_9dvABLz_Bugo028Lr8Rnjp4QM_0m10H7jZGr7gLhvDjs0oqw4PjMx1l
 2kMBuOarEAyST15.cKWm9ivHY1J000_EghrS4UJxZaPYFwuk45NVzmkEiQRdQA1oeGsInWzMyhiq
 fR8QRXcaKtM0kVX2zDeHz6e_QS5MZmiIeg9LDebBJiUQV4bd1lk7onVOLoz8vlu_Jkovi0wHsVYm
 H7ZHLXUkDT.9CqKbpAjOrBEIIvSB1DZfxnadYEKAY3k2xWI9VNpBe.FVCQYBU7wJRyZiMHtRhTa_
 iRRqV0RiEAjaTzT.lw7cvE1YsUSIWC3MNSI.Mz_7.BfX9H4wtKt0goCbpFrv26Qr3OeoQeFHcudD
 EHEDXu3ZQUexF453uwXZgpChGGyl4P9hadbLZ6Jb24.sjfdZrVgLTa12BMXUMzQRFIH.HWxGw0Rn
 LPqAVFjgvgEWYy1TMA47ADYNgLzAF4nOVtewl9q6K5lJH.Nyxx.FRNYwXyVVq.Ezi16Js_jOkRlz
 fAzKXsB1VFg4d8zLCDsWoZSOG3r49fiz.NOXX9vVf3dQcoo00K4yUGWPfaiXTtYdBTWAE
X-Sonic-MF: <cjohnson@serranosystems.com>
X-Sonic-ID: 1158687b-bdea-4a76-aa3c-ac636eb01f91
Received: from sonic.gate.mail.ne1.yahoo.com by sonic306.consmr.mail.gq1.yahoo.com with HTTP; Wed, 17 May 2023 18:24:09 +0000
Date: Wed, 17 May 2023 18:24:07 +0000 (UTC)
From: "cjohnson ." <cjohnson@serranosystems.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <377218986.2890001.1684347847046@mail.yahoo.com>
In-Reply-To: <3b780f57-ec04-3be2-66be-7b300850050e@gmail.com>
References: <6ypbwhbcWpBx8JnZN5qLxU0eRoda8j3f1SXnONIM@lists.ettus.com> <3b780f57-ec04-3be2-66be-7b300850050e@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.21471 YMailNorrin
Message-ID-Hash: GETFQF3NXY7XKXUJ6C2DQX4CPCWVN4ZD
X-Message-ID-Hash: GETFQF3NXY7XKXUJ6C2DQX4CPCWVN4ZD
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Remote Streaming UHD 4.4 on USRP-2974
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GETFQF3NXY7XKXUJ6C2DQX4CPCWVN4ZD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5356368171552060186=="

--===============5356368171552060186==
Content-Type: multipart/alternative;
	boundary="----=_Part_2890000_424484548.1684347847045"

------=_Part_2890000_424484548.1684347847045
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Marcus,
I appreciate you quick responses.=C2=A0 They have been useful.
If you look at the code in xport_adapter_ctrl.cpp, specifically xport_adapt=
er_ctrl::add_remote_ep_route(),=C2=A0 you will notice that the dest_udp is =
required.I don't think we are getting to the "catch" part, since based on a=
ll the network sniffing, there is not traffic directed to the remote stream=
.All the previous messages I sent include the extra "details" at the bottom=
 of the message.... You can see all the tcpdumps, check for arps, and speci=
fying a udp_dest.
How does your team (Martin Braun) verify the FPGA is sending data in this "=
remote" configuration?
Thanks,--Cy
    On Wednesday, May 17, 2023 at 11:11:26 AM PDT, Marcus D. Leech <patchvo=
nbraun@gmail.com> wrote: =20
=20
 On 17/05/2023 14:03, cjohnson@serranosystems.com wrote:
>
> Hi Marcus,
>
> Better news. In an attempt to get my system to match what you might be=20
> using, a =E2=80=9Cknown=E2=80=9D state, I updated the FPGA image.
>
> So the =E2=80=9CRequested remote UDP streaming, but transport adapter sfp=
1=20
> does not support it!" is gone, and I am at =E2=80=9CDevice was unable to =
look=20
> up Ethernet (MAC) address for IP address 192.168.30.30. Make sure=20
> device is correctly connected, or provide MAC address manually.=E2=80=9D
>
> Again, I saw no arps. Added the mac, it starts up, but I don=E2=80=99t se=
e any=20
> traffic to 192.168.30.30 using tcpdump, only a trickle of control=20
> between 192.168.30.1 and 192.168.30.2.
>
> I went back and added all those parameters to my c++ code, with the=20
> same result, no remote streaming.
>
> How can I demonstrate a KNOWN working version, including the stream=20
> receiver (in my case 192.168.30.30). What do you use along with=20
> =E2=80=9Cremote_rx.py=E2=80=9D to validate proper behavior?
>
> Thanks again,
>
> =E2=80=94Cy
>
>
I don't know whether there's a "catchers mitt" client that goes along=20
with the remote_rx.py example.=C2=A0=C2=A0 Since it's a simple
 =C2=A0 UDP stream, one could use "netcat" and dump the output into a file=
=20
for further playing-around.=C2=A0 Did you specify the
 =C2=A0 remote port as well as the address?=C2=A0 I don't know what it uses=
 by=20
default.

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_2890000_424484548.1684347847045
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp494ab1c5yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi Marcus,</div><div dir=3D"=
ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"=
>I appreciate you quick responses.&nbsp; They have been useful.</div><div d=
ir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"=
false">If you look at the code in xport_adapter_ctrl.cpp, specifically <spa=
n>xport_adapter_ctrl::add_remote_ep_route(),</span>&nbsp; you will notice t=
hat the dest_udp is required.</div><div dir=3D"ltr" data-setdir=3D"false">I=
 don't think we are getting to the "catch" part, since based on all the net=
work sniffing, there is not traffic directed to the remote stream.</div><di=
v dir=3D"ltr" data-setdir=3D"false">All the previous messages I sent includ=
e the extra "details" at the bottom of the message.... You can see all the =
tcpdumps, check for arps, and specifying a udp_dest.</div><div dir=3D"ltr" =
data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">How =
does your team (Martin Braun) verify the FPGA is sending data in this "remo=
te" configuration?</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><d=
iv dir=3D"ltr" data-setdir=3D"false">Thanks,</div><div dir=3D"ltr" data-set=
dir=3D"false">--Cy</div><div><br></div>
       =20
        </div><div id=3D"yahoo_quoted_5188651971" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Wednesday, May 17, 2023 at 11:11:26 AM PDT, Marcus D=
. Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div dir=3D"ltr">On 17/05/2023 14:03, <a shape=3D"rect=
" ymailto=3D"mailto:cjohnson@serranosystems.com" href=3D"mailto:cjohnson@se=
rranosystems.com">cjohnson@serranosystems.com</a> wrote:<br clear=3D"none">=
&gt;<br clear=3D"none">&gt; Hi Marcus,<br clear=3D"none">&gt;<br clear=3D"n=
one">&gt; Better news. In an attempt to get my system to match what you mig=
ht be <br clear=3D"none">&gt; using, a =E2=80=9Cknown=E2=80=9D state, I upd=
ated the FPGA image.<br clear=3D"none">&gt;<br clear=3D"none">&gt; So the =
=E2=80=9CRequested remote UDP streaming, but transport adapter sfp1 <br cle=
ar=3D"none">&gt; does not support it!" is gone, and I am at =E2=80=9CDevice=
 was unable to look <br clear=3D"none">&gt; up Ethernet (MAC) address for I=
P address 192.168.30.30. Make sure <br clear=3D"none">&gt; device is correc=
tly connected, or provide MAC address manually.=E2=80=9D<br clear=3D"none">=
&gt;<br clear=3D"none">&gt; Again, I saw no arps. Added the mac, it starts =
up, but I don=E2=80=99t see any <br clear=3D"none">&gt; traffic to 192.168.=
30.30 using tcpdump, only a trickle of control <br clear=3D"none">&gt; betw=
een 192.168.30.1 and 192.168.30.2.<br clear=3D"none">&gt;<br clear=3D"none"=
>&gt; I went back and added all those parameters to my c++ code, with the <=
br clear=3D"none">&gt; same result, no remote streaming.<br clear=3D"none">=
&gt;<br clear=3D"none">&gt; How can I demonstrate a KNOWN working version, =
including the stream <br clear=3D"none">&gt; receiver (in my case 192.168.3=
0.30). What do you use along with <br clear=3D"none">&gt; =E2=80=9Cremote_r=
x.py=E2=80=9D to validate proper behavior?<br clear=3D"none">&gt;<br clear=
=3D"none">&gt; Thanks again,<br clear=3D"none">&gt;<br clear=3D"none">&gt; =
=E2=80=94Cy<br clear=3D"none">&gt;<br clear=3D"none">&gt;<br clear=3D"none"=
>I don't know whether there's a "catchers mitt" client that goes along <br =
clear=3D"none">with the remote_rx.py example.&nbsp;&nbsp; Since it's a simp=
le<br clear=3D"none"> &nbsp; UDP stream, one could use "netcat" and dump th=
e output into a file <br clear=3D"none">for further playing-around.&nbsp; D=
id you specify the<br clear=3D"none"> &nbsp; remote port as well as the add=
ress?&nbsp; I don't know what it uses by <br clear=3D"none">default.<div cl=
ass=3D"yqt8650596992" id=3D"yqtfd60576"><br clear=3D"none"><br clear=3D"non=
e">_______________________________________________<br clear=3D"none">USRP-u=
sers mailing list -- <a shape=3D"rect" ymailto=3D"mailto:usrp-users@lists.e=
ttus.com" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus=
.com</a><br clear=3D"none">To unsubscribe send an email to <a shape=3D"rect=
" ymailto=3D"mailto:usrp-users-leave@lists.ettus.com" href=3D"mailto:usrp-u=
sers-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a><br clear=
=3D"none"></div></div></div>
            </div>
        </div></body></html>
------=_Part_2890000_424484548.1684347847045--

--===============5356368171552060186==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5356368171552060186==--
