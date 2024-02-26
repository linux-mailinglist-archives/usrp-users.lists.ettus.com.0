Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 298FE866FEE
	for <lists+usrp-users@lfdr.de>; Mon, 26 Feb 2024 11:06:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 74447384DA8
	for <lists+usrp-users@lfdr.de>; Mon, 26 Feb 2024 05:06:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708942000; bh=lX6lv72Ezd4HwB2ekcvnls++PmGOkxsPltfV59dwiJA=;
	h=Date:To:In-Reply-To:References:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=v43UzpID6BRzlqRA3PM9RgNT8a0grc3k1PGHxWmgld39p6Z2C6GZDXDTcO9czD5tt
	 vOsXvuV/C5/K4PX4jElvEwaOZNOJeCX+ARKi979smffSZ1JHtLPmPGEDEg2n1wr3xR
	 gh58JhizUBAv1xANonchoQDz1je+IGckPRkl7PpchCy8cryAK8dvJEqJsmDHi6zACo
	 VmAKxIRV9MN7LoCoAYpSJe3w/3y9BfNwMTEwE73S66ZgRCNAlwbzuLp9YbXlBGYuNV
	 lB0wjdnw/bBtzXRsNvarAZbzMpWjtrnJL4tqPXPR8wllwpMVPRFtuw8jzZlNdZtu0R
	 Dbv32h1YySeLg==
Received: from sonic312-20.consmr.mail.bf2.yahoo.com (sonic312-20.consmr.mail.bf2.yahoo.com [74.6.128.82])
	by mm2.emwd.com (Postfix) with ESMTPS id E192D384C59
	for <usrp-users@lists.ettus.com>; Mon, 26 Feb 2024 05:06:08 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="pLSijYTy";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1708941968; bh=svwSY+Visvq8RsXj+ocrhwNGPqwwgZ4GrsjJZK0ve6Q=; h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject:Reply-To; b=pLSijYTyzCTRPpE3H9/thf5F2eVSJEbhF2KAc/vZo5a9Vf2XYIc4hrUIh12P7yJXAC30++2AWSQunoMK6szSxMW4aje7e6O6pdHdU/iJlFD1IT0vxe6II27dOgRg1araOceNQiLRkSYcMk8f1K45JwnooWaZ6BUHfTxRFVu1YLpTw8t7R6s+PLHcP2VyjFDT5A9js1euIzLDS+k20jeeG0SLnfgGq9UU2cItoYtoqkVnVHPHdbMXIldOeEvNMTZnNgsyV8Hx0ET/uBXKK2Z0jQxSZD39xfTnq+iN6gP9fIYt1zjBoW41X2nrySV+KoQ5uz0G2c6x5oGQe0qSAxdTQg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1708941968; bh=rcz0bh5YjTjjQDJR988n8lKQ7O6Tubg2JXVYByQpm7B=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=Fh6eO9M6ptI0vXjnnjB1wFNDFY70dmgQjbEkafVFJtzSnErAJV7BcOlefvTFhZfFJhALDX4Z20PRu0ci0qGs5GY4CatqSGdkKAz2bFkFHH5s5j3J4ArM1qTu9ClWFkaqqAdTd9GfGGwERewUGCn20his0+hjSa9J+DpqPkov1pzY+e/bva3QPMTKbnIuMRgTGeFmVm+W/w1S2vz2jyAnjXTdrO9Zp7embFQ1FjQy2NSI4eaPYyubNUSq38vVe5J7dwHIT/fluEdopdU4lCRBA/M+ryMUr3qiVJvHcOSy2WhOoDWIWI8eVDJQIv3eNpuYgDRyz47j1CEuWlduUjDgOA==
X-YMail-OSG: DGj_dmcVM1n.c3vsrxtzSR7JYkv8sc3fZh3Hems4JWxf3gD_MH2ykiGyJj0cAKg
 VQhb1RmdkwF8bHDDv8G2mZ0F_iqfKP0H9lggp38fb_amgwBm98pR6nOPKG2qNSrg7HrPwojmqij_
 vc1d4zxepDu1JUwETBkBl_PvSUstFOeuCqryztrAfAe0_o7kDpZInD60UxKDXUqRqCE4mLI5Bkhc
 hDCiKDlQiY.0ZCDf8iSfQhxOz4T0o4yEVnfd6Zf2QLSAF9L4eipOJ3EUMz7m0LDH22c2jhqjfPe1
 JixA5Z4h1pFOo6eeD0tqnBaVDwyZozOC9cD1OP9Z0YoM2FGImntgllTWxKzjHVdTVC.e3SM9xj_V
 Wex6qTXNGFIOmSla8b7q4Nh75KMmuP5DJPbr1ZZSF0z.6Fk.BGqF4aty3VS1wHo0kR7iZ6ntMuNh
 6tEUYWsLZDRxQHfVO5mESNE3ShWiTzxhnpyIBZC0xRiescikzRWf4sSFCKiX7kyAJtTh7wS7kAw4
 7OCH2AUc8CcVyF1t.w9eybgLJGclmgYqVJxFUznj6FEgX2gmYYHw2x0QbIPUxUqZlTKZoeKnKmXp
 k22HKJaCkPqcIlFmI7FbfFXmcM262uJNUee2vw1S0CfAV5FAkEaUahdNyScdElHn94T0HK.52RLh
 vK1_ios1Lmic.r4zHb9cgbJ.hx7JsWR_j5V9s.3Tjn_FtNkgEl_ZROnwZsU7dP5VpZwaBxfxZc86
 xhx1Ufb067aAgvbSye7oGobASqTadLhsz49aOUry3_GkZAqdNnPClVgCWmvjtqq6IyjmMBfOU4Jp
 NvlphBuErkxlW_a6zC3wV9bNtjZ5zP6AC0GwBQ9Xi9QBdeNH0BtTnO73s_nOup9vcosTkVV00LCv
 PJUILWMkjXSm.KVtEAVa99HzugKcDheAStNrmgZae4nXsSz2DBP5RVums0ZVyvzUiAGNZcAr7otx
 AcpgmHhmgbBNQrYpOYO_zQOoO7CMpauYsTXa8SoQqYP.8GlZX6umjPuQ.AfoczgdZn8J9ghoiiV8
 x8euaXR6NCrFL4opZ5EvDGfXT4_8DlRV7XIdmPL076yFxuI6an4ewK8hytMw7lw2DI7j0UgS_c6t
 Hzo.e0.W.PNqXxXtjQNmjGv2MtzAl1BtufDyYwDU6rgYbN9OtpkmHnjnuaBACxnihxAoxIDiioV.
 7xWWG9lPfgQoEToKS01XO_sSEnGnkmjoWi9w6DnK3x3hdcxwFss9rCfa8xVYWBIWuKsjI7figSTL
 w3t9jiYn2cmXAxpkDyWpAbq7MTpR0NxXQsru7MMsUYlltKO2CaDIHHNEhWO0GYOKi153LGF2kM30
 RLHHUXRpW9ycr9Bc4Lr0qImHyaxL4ARFU2rqFsOtpcVaQnRK9Xw3MwNOlqRFlL7rOgh5WsGu_c.w
 TdMWljdauMXOhJj4UK9M3RxhaiJI.M.quQ_gfneM7mbXOSK1c2dxVoYl4S.7EkW4FwgwqgqyDtt9
 Pkb3qcnUnv5PgZMYhrOcQhTaBDjW9QNr9OU7TjwzFBdWzpOF5AdMmiuh6WDiQjteSSIH1JzPdkpQ
 It4HQdpxcf9l3GwQrgf2mybU6cOfOjAYEZ5YaaLJhCuxs91FRIL_KtF2QWRF7F79ftutzJKN5peT
 H7Xns3wy1K6k0CNsl2CkM4_m0NoiH1PCXCwZL1mr4Tn686lxShe34NjSKLn2EnE3tybfm_QZgMio
 Jx9P19_sBe4i_7mFxPSM6oIjGIN2q7Ar5AjlOGql6B9iOshVigcNDCwK9q951RzRycSGP2EeTKb4
 bRr.lALtJ.P5RI5Gjtgt0sE8miAPYAX6wi_8yEFzQValuPuC1KqsVDwPSn35FpEpnR88Uc_qLjXX
 2ON2zCTw4BHegP.c7p9AIjrYaGRNHU4te_shipvhYcxYwdrMZePxFv2g9nrjAShB.27_NiB0_9Ll
 d45EHV4hQlrJMCiVpKz_vaiBuDhiP3zumsL3y7S1X42khCUtZ13xPQWxJW_GsHfSMNX63xOwizig
 XcZKojUT0J4jw6P5ja4EDrku3ARlL3TjAePYEJtkjpXo8LMIiiKVWWwkLvJRldA8I5V2DHIlFhlq
 uKILw_tWFK6OBMmcEGvdYDrungnct8PT0XczVjjujYxnLW2uolTAjUe47BYexez_KFFy_MTUExUM
 7AobVtXeW7ea1H2slM1tzatg8NdPdMGIEEq3CNmQmbGxo05hwTnvqMhqAvkDkYeZeTXSN1BUPhL1
 .b.uV.9RrLXHKw45RGd1nBfUorPEl7qrOB8E1k_lL3m6P438G6g--
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: dc68cc18-77aa-4cc5-ad5b-e34aa142aa29
Received: from sonic.gate.mail.ne1.yahoo.com by sonic312.consmr.mail.bf2.yahoo.com with HTTP; Mon, 26 Feb 2024 10:06:08 +0000
Date: Mon, 26 Feb 2024 10:06:05 +0000 (UTC)
To: =?UTF-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>
Message-ID: <165749366.400969.1708941965618@mail.yahoo.com>
In-Reply-To: <ffgkaaf3warhl3a55gke2cy56dxpflshudyse6fnofkroeu5sh@g23xn5nzi35x>
References: <CAO_U4K7iMNWLhLRdWozsXxNQHd0xvp611f7LXQQhSe=-hz+ong@mail.gmail.com> <1464756341.27900.1708721099612@mail.yahoo.com> <ffgkaaf3warhl3a55gke2cy56dxpflshudyse6fnofkroeu5sh@g23xn5nzi35x>
MIME-Version: 1.0
X-Mailer: WebService/1.1.22103 YMailNorrin
Message-ID-Hash: VJGHVZ7WQYSLBXIAQHCTBGQEICB2GKAW
X-Message-ID-Hash: VJGHVZ7WQYSLBXIAQHCTBGQEICB2GKAW
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Pedro Vieira <pav.vieira@gmail.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: OFDM signal transmission by x310 presents a peak
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VJGHVZ7WQYSLBXIAQHCTBGQEICB2GKAW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============1778349232939358470=="

--===============1778349232939358470==
Content-Type: multipart/alternative;
	boundary="----=_Part_400968_1864959996.1708941965617"

------=_Part_400968_1864959996.1708941965617
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi=C2=A0C=C3=A9dric ,
For X310 USRPs, you need to loopback connect the antenna ports. For N321, y=
ou don't need. For other types, I don't know.
Regards,Hongwei


    On Monday, 26 February 2024 at 10:00:41 GMT, C=C3=A9dric Hannotier <ced=
ric.hannotier@ulb.be> wrote: =20
=20
 Hello zhou,

On 2024-02-23 20:44 +0000, zhou via USRP-users wrote:
> It could be DC leakage. Try to run the calibration commands. For X310, yo=
u need to loopback connect Tx and Rx antennas with 30dB attenuators.

Do we need to loopback connect the antenna ports?
From the docs [1]:
UHD software installs the calibration utilities [...].
Disconnect any external hardware from the RF antenna ports[...].

[1] https://files.ettus.com/manual/page_calibration.html#calibration_self_u=
tils

Regards
--=20

C=C3=A9dric Hannotier
 =20
------=_Part_400968_1864959996.1708941965617
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpddf9dfb4yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi&nbsp;<span><span style=3D=
"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">C=C3=A9dric ,<=
/span></span></div><div dir=3D"ltr" data-setdir=3D"false"><span><span style=
=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;"><br></span>=
</span></div><div dir=3D"ltr" data-setdir=3D"false">For X310 USRPs, you nee=
d to loopback connect the antenna ports. For N321, you don't need. For othe=
r types, I don't know.</div><div dir=3D"ltr" data-setdir=3D"false"><br></di=
v><div dir=3D"ltr" data-setdir=3D"false">Regards,</div><div dir=3D"ltr" dat=
a-setdir=3D"false">Hongwei</div><div dir=3D"ltr" data-setdir=3D"false"><br>=
</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div><br></div>
       =20
        </div><div id=3D"ydpb855e63yahoo_quoted_9904344093" class=3D"ydpb85=
5e63yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Monday, 26 February 2024 at 10:00:41 GMT, C=C3=A9dri=
c Hannotier &lt;cedric.hannotier@ulb.be&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div>Hello zhou,<br clear=3D"none"><br clear=3D"none">On 20=
24-02-23 20:44 +0000, zhou via USRP-users wrote:<br clear=3D"none">&gt; It =
could be DC leakage. Try to run the calibration commands. For X310, you nee=
d to loopback connect Tx and Rx antennas with 30dB attenuators.<br clear=3D=
"none"><br clear=3D"none">Do we need to loopback connect the antenna ports?=
<br clear=3D"none">From the docs [1]:<br clear=3D"none">UHD software instal=
ls the calibration utilities [...].<br clear=3D"none">Disconnect any extern=
al hardware from the RF antenna ports[...].<br clear=3D"none"><br clear=3D"=
none">[1] <a shape=3D"rect" href=3D"https://files.ettus.com/manual/page_cal=
ibration.html#calibration_self_utils" rel=3D"nofollow" target=3D"_blank">ht=
tps://files.ettus.com/manual/page_calibration.html#calibration_self_utils</=
a><div class=3D"ydpb855e63yqt7879309056" id=3D"ydpb855e63yqtfd21865"><br cl=
ear=3D"none"><br clear=3D"none">Regards</div><br clear=3D"none">-- <br clea=
r=3D"none"><br clear=3D"none">C=C3=A9dric Hannotier<div class=3D"ydpb855e63=
yqt7879309056" id=3D"ydpb855e63yqtfd30967"><br clear=3D"none"></div></div>
            </div>
        </div></body></html>
------=_Part_400968_1864959996.1708941965617--

--===============1778349232939358470==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1778349232939358470==--
