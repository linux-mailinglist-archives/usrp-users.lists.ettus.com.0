Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA60840756B
	for <lists+usrp-users@lfdr.de>; Sat, 11 Sep 2021 09:18:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D5D5A384B56
	for <lists+usrp-users@lfdr.de>; Sat, 11 Sep 2021 03:18:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="hFME2NOh";
	dkim-atps=neutral
Received: from sonic316-13.consmr.mail.bf2.yahoo.com (sonic316-13.consmr.mail.bf2.yahoo.com [74.6.130.123])
	by mm2.emwd.com (Postfix) with ESMTPS id A5A2B384808
	for <usrp-users@lists.ettus.com>; Sat, 11 Sep 2021 03:18:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1631344686; bh=OcF95GVjHh1REAiZny3GNxf6BrR9PjQjFiLOrOKRAPg=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=hFME2NOhneNK965h1hgty4b47+vTQs6UWN+13rL4DaXfTRf97c8AhxdHlkxa9agGMDFOu1RHiJIBTcnLWWBiWyiPkpozJWXUoecUdVQOFT1yKJKpe8oHSavp0qRNmbcoA288CrGROOX1c+S3GCfd2FJW+KH1woiue4g64PCdToLnxbEthx79CZNiM21OcCc/gJosObBczlsfprDYip6JeliMVMufI0LS6uCIGrxLHVGFaitYOu2lZ8tDx8Ui/EFmElsrDYvbEuHFrJ3j5Ln/8r/yvBRI14k3Vp4B7Rlom0c/U8dBbQHHLGdOQVMCloF7XPusbxSUrEzLkTEh3QtIag==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1631344686; bh=n18vHh8Cl3JreYkuQxlStWWBsbTz3UecNM+0OS044Pz=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=XSJqUTqplthe1vjMh9FHdMsvI3yeMnECSatm8Lp79MlB0USIGXUvcf9Nf+2Bty5+Y5Op0mlh4o8DT2brqrJ5WbtWCL7ySIBkWBH3eNhUBffxvbes+sUO4HrHMd7F0QKtoCGopdCHjw4Bc8kbmsgrBy7/k53UFId/ZpGccXdh+tj90yIuXEO4opJuiF92zj8Uff8vARrju+AKf51eTyT6o9Yt+m/6qSpO0/DzOHr12VWco+HKiCmU/KLdlzIZ7PjodxMhri5ZTIrd2h/QXYIGncvYMjIiZmiptTl8a4Mcrqd4ouoNN7V+F+nTmR4yCo9l28ey9zXdX+wVMIE39Re8yA==
X-YMail-OSG: ADJNxHcVM1kbK8CjqwxOHNUTd4ItwINyBTFkTBQIPp6HCvUlq_mjcPaRv8LTAdA
 ydvG3banZQXl4NqdktSudBUUVe_7UGFVhzo9IIyzSJnsMdV45YlfKKZD3Qe35xOmpwd2BE2R8QGt
 3rGzfpO4yFENG.Y21y3ydConmF0tlV__BmDNGBk_a34LPA2Bm7TRLP1MSsntm8Iu65jK4Jog20wK
 .dtLOuMWsRQufEyWfnn47KDnS89cJI_LkmYcHfhicUHL.5FbnJv4.rFN3JgRokQs0IdqtD4QVOb4
 TZ.mnuzPEH.6JCFoonPxuBJ5RMHFrhbxYpJ40sG9noPgDb5AhSYtfgLNcSPRlhNP5uzUTIVEuRGY
 npihIpCtY7d8kF5z4bvLFBjYyn_AiH3MjqhmGeoR5v7skCLekcfb6H7w5kP7in7LUBCWepbY6ON6
 b9IPHO3F0bR0ipJ_ty80BravEQG.Na5yot0hXXvq51FG2wm63ZJTuCPzRJSU4G2y17i5gQPPO65b
 BkzpxM020zZqe0urGxfzGa57pTtAA8mB5_mWG9s5AUSeW0R_hBLYWtqnncd0PjbUYFyk5Hde2SGU
 Xjfu04IWkNPWUvewT_Qbqmcpm2Ez4isE26izPVAt2s9W4rKZpsOpHVxcagfXh_ZFfilGAtTa_Wdr
 bNtRCEvzhv8G3OkdaTxeCBy_Owil_klB6lPvhULJTeRjpcG3sJpAvxnIK5ZYOV4MP68R57GkWzEr
 cH803czGwJynJT61W8hxz5W4urglXPWik5pv.Cw6jX1V4uoyLO4O2HOBwjcJ3lQJaYHjC_QFI90r
 JQoblrJp9BELs1exy7tQ5XZQBPLCoK0Bpv0KYyOXqy0iRUohc0FM67_eAPevtokcOSc7hivSyrJ5
 3ytsCkMHzpHp3dxUBNPpXy2LSt_Wxki69Siqz2.b1BeAtNXy6o0KCA90aVRMvhdpd2KhIwvV3m9T
 Gx8bQZ5ht0sJQ7SIeq004uWJFtWtxWR72Icei6a2SPdByQfxZML6Wb9YMOk95tHb7bLkExdL05u6
 Aijds5wIjkL49AsytAt1fMA0adUkm3e9KVwnh6j7a25VMe2hPAQz5SqSjLREHxtVkSjqll61uJta
 JarN_AqUSzPYFazIQ1xLnqGY5vFmkMtOaDMhrbB_eU524bC5wDc6zXd8oCy7M9VFpxq9zz7WvauL
 lDdCrySub0o.m6dWG3oq5aYB1VQxSW0JpdeEVozPh0RHRr9EKXIP8ouIuS88MQhkUB.8js.kixDb
 8ypeRWDzUi6eQAqgabVE8GBCSRdFOlFK4TxiAHQY.0zZjA8AuZ5cd7edooZv4r2WH.LlvtPeeqMB
 yCShnH67QpMdUdmEFsamtdnCXTbI2eie1oU0htrJ03xWXD1zAjDRueN8NxuTP2vPk7kCSENpsuK4
 XTx44Zc87Qvakj2fxH57RVGX_6AiY4ESW4NExhXrJfHNYw4OUMPF_cdS2rSFmu6trgKx3maY8VtR
 2VcWmo8lScgNrc_Vfps9S0MSyzUjOvTBVFdpXUZ11PEajVF9sS_M2RoRX68jnuF7WboRC3vF2pUF
 kfASU1k1xAvuZtIv0P4PUc0K4JgZY1cuwnKl88AGDZWwuj8AgBe4vRdM9DMaIOZaAwlYJpn1sI6E
 ooet0Ytu25R2.0dcE9WpYbqs6G3v9gi8Q1BrTdj6y3bdPtWwiQkRsNVPBR1F54YmQNTYeoF_2Amw
 JzHDaZAYYYe00IS1H7zucKkGrkejhANKfhgWHLNAquR_1juysedTrFJeoK42rNXurFzla22NLVfG
 3.oJ8Lc7NX4zt1kWmbQDsZFIYOopMFUGHi_VYGZBfDDDUsojwcmhbtkNn0I7r1Pa_K3Suvwbf0zP
 FlEjkHclGpGqY04t1OEp66x8YiaB4Lmgl5TXhq0qB8sb6jTTWrCf5OuDaqH8dq7ocvP4Zuc380cl
 ukzG9Vzx5MGfaGGSVDbIGpZgggtzlqVl2mSpgEz8aOdBAktaFNhvoSymSXskbQWZKpsN68cp5J_k
 10auD717rNDEiPbeE0cfGEM7_7T5wW.hwK9ExW12Mqx8faPte96ah4KiZl1nudDrN9RR4PHOhFcO
 VYGtKUgjvsPA5h2qyqmgxYtvVhkDs_ZBCUp6Bdi3MgmIjwEEswtOqvyZ9_q5OsDFus_tr3OEEOgR
 ZUTBomgAX8CFOvZs33TqieX2MH0k4INZmr4ohHXqdqorERl2rcfd1GK8FMqT0Jws7JO7XHwM1VU.
 S7.Q6jvqWOwxrPAp.50Nk43e_hsOvx6PHMBv8PG7ffpMMzrQWAfd7xQCbjS0-
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic316.consmr.mail.bf2.yahoo.com with HTTP; Sat, 11 Sep 2021 07:18:06 +0000
Date: Sat, 11 Sep 2021 07:18:04 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <1020526605.2741269.1631344684410@mail.yahoo.com>
In-Reply-To: <6b46431b-cf2a-4796-c707-cce4ea524c6a@gmail.com>
References: <b24ff5bf-8432-8b63-d75c-82631e45fd9f@cttc.es> <CAL7q81tPjxNWaUbf-2v3dEtsxYgh6QGjV-+LmwCjwG50xgRZTw@mail.gmail.com> <CAFOi1A4JzCrx1NVi9YdwJ3LC3qu0+9VSKVSBWXekk7J=75qHtQ@mail.gmail.com> <0fbeadc5-adf2-8315-f7cd-e95a8ab00703@gmail.com> <804336125.2658048.1631299169124@mail.yahoo.com> <32b873e4-404d-2b27-61d9-2dd53fd0689a@gmail.com> <899213065.2697497.1631311503116@mail.yahoo.com> <6b46431b-cf2a-4796-c707-cce4ea524c6a@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18924 YMailNorrin
Message-ID-Hash: ZVKJGRJNUP5JSLZTJHCRSKAMI67LXFH3
X-Message-ID-Hash: ZVKJGRJNUP5JSLZTJHCRSKAMI67LXFH3
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP Calibration
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZVKJGRJNUP5JSLZTJHCRSKAMI67LXFH3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============0127570396334016484=="

--===============0127570396334016484==
Content-Type: multipart/alternative;
	boundary="----=_Part_2741268_268761013.1631344684408"

------=_Part_2741268_268761013.1631344684408
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Marcus,
I have a basic question: how to calibrate USRP? I have N321 and X310 models=
.For X310, we have been calibrating them with loopback connection, that is,=
 connecting Tx to Rx with a 30dB attenuator between them. This was suggeste=
d by an ettus engineer a few years back.I am wondering if I should do the s=
ame to N321? or, the new UHD doesn't need loopback? if no loopback is requi=
red, can I leave USRP connected to other RF device which is our DUT, or I n=
eed to disconnect USRP from it when calibrating?
BTW, I find some information on gain range in N321 datasheet spec obtained =
from=C2=A0https://www.ettus.com/wp-content/uploads/2019/03/USRP-N321-Datash=
eet-5.pdfOn the 3rd page, the Rx gain range is -16dB to 34dB, and Tx gain r=
ange is -30 to 25dB. How can the gains be negative? does this mean attenuat=
ion of signal in device? The small text on the bottom says RX and TX path g=
ain does not correlate to UHD gain settings. How to understand this?In page=
 5 and 6, the Tx gain and Rx gain ranges are from 0 to 60dB.The uhd_usrp_pr=
obe command gives 0 - 60dB gain range.
Thanks.


  =20
 =20
------=_Part_2741268_268761013.1631344684408
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpe4b21b20yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi Marcus,</div><div dir=3D"=
ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"=
>I have a basic question: how to calibrate USRP? I have N321 and X310 model=
s.</div><div dir=3D"ltr" data-setdir=3D"false">For X310, we have been calib=
rating them with loopback connection, that is, connecting Tx to Rx with a 3=
0dB attenuator between them. This was suggested by an ettus engineer a few =
years back.</div><div dir=3D"ltr" data-setdir=3D"false">I am wondering if I=
 should do the same to N321? or, the new UHD doesn't need loopback? if no l=
oopback is required, can I leave USRP connected to other RF device which is=
 our DUT, or I need to disconnect USRP from it when calibrating?</div><div =
dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D=
"false">BTW, I find some information on gain range in N321 datasheet spec o=
btained from&nbsp;<a href=3D"https://www.ettus.com/wp-content/uploads/2019/=
03/USRP-N321-Datasheet-5.pdf" rel=3D"nofollow" target=3D"_blank">https://ww=
w.ettus.com/wp-content/uploads/2019/03/USRP-N321-Datasheet-5.pdf</a></div><=
div dir=3D"ltr" data-setdir=3D"false">On the 3rd page, the Rx gain range is=
 -16dB to 34dB, and Tx gain range is -30 to 25dB. How can the gains be nega=
tive? does this mean attenuation of signal in device? The small text on the=
 bottom says RX and TX path gain does not correlate to UHD gain settings. H=
ow to understand this?</div><div dir=3D"ltr" data-setdir=3D"false">In page =
5 and 6, the Tx gain and Rx gain ranges are from 0 to 60dB.</div><div dir=
=3D"ltr" data-setdir=3D"false">The uhd_usrp_probe command gives 0 - 60dB ga=
in range.</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D=
"ltr" data-setdir=3D"false">Thanks.<br></div><div dir=3D"ltr" data-setdir=
=3D"false"><br></div><div><br></div>
       =20
        </div><div id=3D"ydpa9293dyahoo_quoted_2032414123" class=3D"ydpa929=
3dyahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div><br></div>
            </div>
        </div></body></html>
------=_Part_2741268_268761013.1631344684408--

--===============0127570396334016484==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0127570396334016484==--
