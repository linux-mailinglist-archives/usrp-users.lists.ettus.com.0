Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9437CA76BD2
	for <lists+usrp-users@lfdr.de>; Mon, 31 Mar 2025 18:18:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5B141385388
	for <lists+usrp-users@lfdr.de>; Mon, 31 Mar 2025 12:18:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743437907; bh=9Q0FUXku6AwrjYG2nJGiPrSLEpERmzkG9Dy9W46UCq4=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Z20DyLvvFFiywaelKLLtoXrvtih2WEDZoSvOjEs64FS8k/Qg0o9igkk5+z4IJztyP
	 +I4nPFz650BWFuNCZ+iI0bL35HQYBeYjIUA3FSQ18lg+drzngjWO+dmfGxC8xo51Pi
	 5YRREhmMLISeUKRiq4dnm6SwwzcQh+8gf+euylhm1JbHNonBUR/Vb5RkWIA6YMroRD
	 2EPG1Ar7dmZpVLejReqkXi2S9gl05JoBhmFVzpaq6VM4mF3Sj9ymZHGr+zaJPLbWt3
	 oAcG962crJlfWm0vxO6pUOybfCB4kLn5sSfPabuOt9K2lkIGP2m1BgLqszo4h0BgZV
	 IeBK8qooZ4u2Q==
Received: from sonic310-14.consmr.mail.bf2.yahoo.com (sonic310-14.consmr.mail.bf2.yahoo.com [74.6.135.124])
	by mm2.emwd.com (Postfix) with ESMTPS id 1D2D638408F
	for <usrp-users@lists.ettus.com>; Mon, 31 Mar 2025 12:17:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="t9BjUUuw";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1743437855; bh=qQNfD1dQBJfcXjmiN9i1m6kyZoTKrlIkadSr68Eexpo=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=t9BjUUuwGJSd6KLmIp4lBAEuL6gyIGjUuwxTSY3eMpEnr98ECgDcC39GZf4OKdDHaEM+EsO/F94wQUaKDM0mGTQCAIDNuX3ADlcr9VJ5sjwkuziWVRjxAHcBmhyp1Bqyc1tvN5CUgNaJuYffw5Y57UoLZXIUZCFfw3t63i9rZgI/C0md3oNVSo/r7s0e2voXzAiLvVvhlKyEoA6TLnA+MA8Xp6FA2O49O/VugjbCdfHJK/MOk/Wu5riVZgIOxK7/xVxdiMOX72ZMLWsLG2fnEiNW8jc0pMJeXhdixLZPutgYcAy+5BicMZLS3TFjrxp34/1/jqmI9oAjDG1+BRF9PQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1743437855; bh=vy7lQ+y3uZTAD4+c09BQZTfocLnkTuDPfIt+JkTMyxZ=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=nxkoYBZSTDPSLXxZPSqB2z94eRI/ED8ymUyPzqDaH+6OGlROzS5ZunGa9VkNK1Hfi88XIMxCD4t7AEZ5CuOMV0u8NmHDNq1zztRW/0MzBAVF7UbCIBMATS8IvtkGzBRYpGfT3dGRGUCo84g20YTQMwKSQtQ2ZO/ra46o3AZPvXjBNtzT3RySLztCoFZPDRlp20DI6ZiN6pxriSCqo5H1TLc0Wjo752YKarorWCYEDOqPGKLWNLmIJ/SKLUNEWVlIRELyJr9BTxds5E6UbRE7tTQAdN7zZN9zQrDibHPAB7SjA2tP4jG9eWxKhenKCINuquPryO4cYyiubj02LKtliw==
X-YMail-OSG: zdwm2MwVM1mE3CBITYXH1epZCZ7nV1roevp3lgfdStDrMKpw0vYLH7Tef1gBx85
 kL.SkyIvR9jJzS9i0rGQmax5fvZneHUBTx4WG.zyEdPhEq..U5w2dPHt2rVo1BJmQgvSFSVlcnMM
 IM4iVhgEmdcpAs8tIJPOCyrMzm5yMjDFWiew9Eb.SDpxtsLKEhgJwL.J1qDvhjicLEZDIHixKiIi
 eZzeibNflh5q_ZlNbJyX22I1UMugq_qVSZzQK9JtNM8xBVYdmMK7EP.L5VMBbTuR4FJUcJfEYf6Q
 LBZsHQmaQXTdBYu7pekPMEBLvj6ftQgEcXlenoehNv_CHwNY1gkQQHqRrlV6Xt4rg9zviZB60u0y
 NNxhWe_hUNNJ.gp3YKsB3FMBlQ4PzcuuzVK0iFrmkMXOdXhTHctQIZxvz4FLRoUmLtuFiGTMIM5L
 3IOEsazMZ2aDiAy.kv6ptHpvaFa_0PRAKfqvo7zG3_ln78CaOuOduKealezEoyEYg4EgsisR4LVq
 IY_moWnf1iv2GZtPDKDShkfmcbcyExTcl4TNF17KJ4mDIBGX2n2EKXAY0P_Udm3zEnrWcN2yc2r1
 NglSKiq075DtZowKwBDbng2osIqEL32GuGhReRSIJjnyAEtJXw6vpPuOdg.m7S0QATrDKXHUppot
 xF0CGbvoBzysb2ZlTRke1G2eTmGFz1vkCisyGAhGg3Kq9naQuXfGvuvlx8jsaEs8QQaJQZ6qag9C
 GJm3IcSEPhpUuW57BWncVDKIlpB6LslLM33nbVnY3EoaNailUOrp7lDp8a6wog1FAaOOoZ0b2xts
 XAR6MWb68.7XwZxClfW4m.DVIji.0yog.QHr_YUxY2ZWgntAIRa.F0wbAAv2dk2LjczlTEs8mfWg
 B4ZkT5u3eiAW3n6iBTC33jQ4ETinAfJ4O1ssGeBf2CTycDILtST3hGLfa.Dxa23J0Y7sKZQggPin
 u3P5hoJIur5InE4WykPEkCc0Vtmx2XoVlpeNaLDkNo6XzkBcJuJWDRImQyorwOI6VOiPGiyjQqLT
 zlCddRWY8iv2MacIiBMueuixS6i8OqgopnsK1TWia9hhMnR64MThWesBB.RLbKX7SkhPAiBq7t_5
 BglxbWrgKIjzP2CqrfvQ8oO4SEz4LJfArSkLN4.vscM5GexJeuym9iSL5rwTh5ZjT.lQPutVySDG
 oP_qyxK9eI._XkYKwwyMNutrHXdyPbWlh3Qk_DmtucD_oQOquWRAy0e9SE7pagnXx1uON_40Sgdl
 hMkJsJeB.p0WRKMFbN6Yt9bAHryZVq63V7Ea0IgUDEhll1pkjYEqMZH4cARs6M1d_HPAviZio4Lk
 31Kpm33avUNLTVlKu.bNveKYfxBoorQ4ezYXjz3RT_Als.rC4ZRfvJGenKFN9EiKTWGrZLzcXVsU
 ht6uoi22pkQx9Z__LmDZ_NplmY4.J_wGWhlu4KWTVatUu0WsHkVrDoEuo6_ca_w9n05uwpKhNaIP
 OuhRrOj8_DcikxYNy17d6Q_ReTlBQUf3uPZbNiG4cbjyQgyE6lD8AQxNkL5fDrvf5wiVax6lEEkb
 6.uf7sfioP9gQK5fgPwWTbZfgzxi6.QGABMFZYIfZQGKYtCAAIi99tV1DBJyvtAsk_mLpS5rQJ2u
 CDpJvNNNCMVWfhUF9TkW5vxTZ_3P8_XCkk4a3lyTumq2kksUMNPvsryGU5cfcOOtbRrGL1T4zc_o
 3OZz1169_iJ14Ui7vkUt2vD7kC1QYzKAdvLQqWe1NswshqrCoqxzEA3BO7cY6ZHOOeu8KVeQhjR7
 BR19CXhG5Qv4Wv7Z0bP6SCzE2XMIN2rxLvRSiApZV5syUdCdOKEp4YsQSvqWvRQkYEJ.rEFP5Z8P
 Ni5CQUAR5FO5DmdBASy.C1FIZwCJm8K.Zdgs255q3xGrZKKoAnHNA0VPLHkbCQ0EZye5mNRkFqmj
 zx.MlPRn9AAsGq1tvOmQOHWa5t59Gd6AwOXTA579XcO04DYpOHM0.WWmeb44cxdPZoAjQYwbc1Ve
 rJYhzjKt4p9RyohScsrrU1YmpZujn0gtPcsx1uu1dQoH6hoHw2P_S9gmLNT1oKYv1wr9Y8iYRdPz
 XTDMsec7t4.QlJBY26DaObFzlSJUcd1ec1RcWe3JVA2VQQWFimrY1ClB0GB0bqK23hpQ9YI3pBut
 eEJ6LZm9O.mPk41npTjLf6iSIMt3zPvphGV0J4e8YiuV3NNCBETvD4vYot9XchMpC4IWN7kb0ISw
 r7e6yZoQS1TWt.OrPF49KGpc_7RareJODwiNnWkfvdVnzU8ilmfEEgBKbEpvDBI3QEZAR
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: a7bbe4e6-2700-44de-9ab0-b0ae0c37003a
Received: from sonic.gate.mail.ne1.yahoo.com by sonic310.consmr.mail.bf2.yahoo.com with HTTP; Mon, 31 Mar 2025 16:17:35 +0000
Date: Mon, 31 Mar 2025 16:17:35 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <1603686288.2112812.1743437855091@mail.yahoo.com>
In-Reply-To: <df01792d-cf76-4468-ac42-87a79806bd66@gmail.com>
References: <CALM_BfYZML=gn1qcQEDVCc5W+DdeojAVxiFmKdmDESFuA1Ep6Q@mail.gmail.com> <b577024e-902c-4eed-8a32-409d7ba8335a@gmail.com> <CAOEzSFTb_RoOYxYuDzR4HHYQjL_rZz2oXKB9F3qHQ9op3xis+g@mail.gmail.com> <PH1P110MB1284346766755262C416A81D98A1A@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM> <a5f4e895-2921-4c9d-9979-ede6bf91ceb0@gmail.com> <1606018006.2100559.1743436319414@mail.yahoo.com> <df01792d-cf76-4468-ac42-87a79806bd66@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.23533 YMailNorrin
Message-ID-Hash: IVHJMQFR7VY2MHAFDBX2AVVPEBQJVJIA
X-Message-ID-Hash: IVHJMQFR7VY2MHAFDBX2AVVPEBQJVJIA
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Max Input RF Power in X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IVHJMQFR7VY2MHAFDBX2AVVPEBQJVJIA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============5592174757633986445=="

--===============5592174757633986445==
Content-Type: multipart/alternative;
	boundary="----=_Part_2112811_1880081044.1743437855089"

------=_Part_2112811_1880081044.1743437855089
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Marcus,
Thanks for your quick response. I still have some doubt. In X410 spec, ther=
e is clear information on max input rf power: +14dBm for f<3GHz, +17dBm for=
 f>3GHz
https://www.ni.com/docs/en-US/bundle/ettus-usrp-x410-specs/page/specs.html#=
GUID-50099182-F4E2-42EC-BBBD-7E336B07FFBE__GUID-B1D08221-A553-4A47-805A-896=
B34C98C07
If the max input signal power is -15dBm, the difference between X310 and X4=
10 is too big.
Any further inputs will be appreciated.



    On Monday 31 March 2025 at 16:59:11 BST, Marcus D. Leech <patchvonbraun=
@gmail.com> wrote: =20
=20
  On 31/03/2025 11:51, zhou via USRP-users wrote:
 =20
=20
 Hi,=20
  What is the max input signal power to RF ports in X310?=C2=A0 There is a =
spec in the below link: https://www.ettus.com/wp-content/uploads/2024/01/X3=
00_X310_Spec_Sheet_2024-01-23.pdf There are max output powers, but not inpu=
t power.
  I am using UBX-160 daughterboard.=20
  In=C2=A0X300/X310 Getting Started Guides - Ettus Knowledge Base, it says =
that

|=20
|=20
|=20
|  |  |

 |

 |
|=20
|  |=20
X300/X310 Getting Started Guides - Ettus Knowledge Base


 |

 |

 |



 "Never apply more than -15 dBm of power into any RF input."=20
  ChatGpt says that "UBX 40: +10 dBm (10 mW)"=20
  What is the max input signal power?=20
  Thanks for any comments,=20
  Zhou=20
   -15dBm is somewhat conservative, but if that's what the manufacturer rec=
ommends, I'd go with that, rather than a
 =C2=A0 hallucination produced by ChatGPT.
=20
 The receivers on USRPs are generally designed to be connected to an antenn=
a, and as such have sensitive, lower-noise
 =C2=A0 front-ends.=C2=A0 Such front-ends generally don't tolerate higher i=
nput powers without damage--and +10dBm *IS* high
 =C2=A0 input power for a radio receiver.
=20
 One may have gotten used to the relatively-insensitive inputs of laborator=
y spectrum analyzers, which often have
 =C2=A0 inputs that can tolerate considerably-higher power levels, but are =
insensitive at levels expected from direct
 =C2=A0 connection to an antenna.=C2=A0 But USRPs are designed for antenna =
connection.=C2=A0=C2=A0 If you want to use them as
 =C2=A0 a laboratory spectrum analyser, you'll need to use attenuators.
=20
=20
=20
 =20
 =20
  =20
  _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
=20
=20
 _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_2112811_1880081044.1743437855089
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html xmlns=3D"http://www.w3.org/1999/xhtml" xmlns:v=3D"urn:schemas-microso=
ft-com:vml" xmlns:o=3D"urn:schemas-microsoft-com:office:office"><head><!--[=
if gte mso 9]><xml><o:OfficeDocumentSettings><o:AllowPNG/><o:PixelsPerInch>=
96</o:PixelsPerInch></o:OfficeDocumentSettings></xml><![endif]--></head><bo=
dy><div class=3D"ydp24bbc0e8yahoo-style-wrap" style=3D"font-family:Helvetic=
a Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi Marcus,</div><div dir=3D"=
ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"=
>Thanks for your quick response. I still have some doubt. In X410 spec, the=
re is clear information on max input rf power: +14dBm for f&lt;3GHz, +17dBm=
 for f&gt;3GHz</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div d=
ir=3D"ltr" data-setdir=3D"false"><a href=3D"https://www.ni.com/docs/en-US/b=
undle/ettus-usrp-x410-specs/page/specs.html#GUID-50099182-F4E2-42EC-BBBD-7E=
336B07FFBE__GUID-B1D08221-A553-4A47-805A-896B34C98C07" rel=3D"nofollow" tar=
get=3D"_blank" class=3D"">https://www.ni.com/docs/en-US/bundle/ettus-usrp-x=
410-specs/page/specs.html#GUID-50099182-F4E2-42EC-BBBD-7E336B07FFBE__GUID-B=
1D08221-A553-4A47-805A-896B34C98C07</a></div><div><br></div><div dir=3D"ltr=
" data-setdir=3D"false">If the max input signal power is -15dBm, the differ=
ence between X310 and X410 is too big.</div><div><br></div><div dir=3D"ltr"=
 data-setdir=3D"false">Any further inputs will be appreciated.</div><div di=
r=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"f=
alse"><br></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div><br><=
/div>
       =20
        </div><div id=3D"ydp5dab60bcyahoo_quoted_3528664397" class=3D"ydp5d=
ab60bcyahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                        On Monday 31 March 2025 at 16:59:11 BST, Marcus D. =
Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                    </div>
                    <div><br></div>
                    <div><br></div>
               =20
               =20
                <div><div id=3D"ydp5dab60bcyiv9675524893"><div id=3D"ydp5da=
b60bcyiv9675524893yqt35953" class=3D"ydp5dab60bcyiv9675524893yqt0555802826"=
><div>
    <div class=3D"ydp5dab60bcyiv9675524893moz-cite-prefix">On 31/03/2025 11=
:51, zhou via
      USRP-users wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      </blockquote></div><div><div style=3D"font-family:Helvetica Neue, Hel=
vetica, Arial, sans-serif;font-size:13px;" class=3D"ydp5dab60bcyiv967552489=
3ydpcf4bf1c9yahoo-style-wrap">
        <div dir=3D"ltr">Hi,</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">What is the max input signal
          power to RF ports in X310?&nbsp; There is a spec in the below lin=
k:</div>
        <div dir=3D"ltr"><a shape=3D"rect" href=3D"https://www.ettus.com/wp=
-content/uploads/2024/01/X300_X310_Spec_Sheet_2024-01-23.pdf" class=3D"ydp5=
dab60bcyiv9675524893moz-txt-link-freetext" rel=3D"nofollow" target=3D"_blan=
k">https://www.ettus.com/wp-content/uploads/2024/01/X300_X310_Spec_Sheet_20=
24-01-23.pdf</a></div>
        <div dir=3D"ltr"><span><span style=3D"color:rgb(0, 0, 0);font-famil=
y:Helvetica Neue, Helvetica, Arial, sans-serif;">There
              are max output powers, but not input power.</span></span><br =
clear=3D"none">
        </div>
        <div dir=3D"ltr">I am using UBX-160
          daughterboard.</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">In&nbsp;<a shape=3D"rect" href=3D"https://kb.ettus=
.com/X300/X310_Getting_Started_Guides" class=3D"ydp5dab60bcyiv9675524893moz=
-txt-link-freetext enhancr_card_3756291537" rel=3D"nofollow" target=3D"_bla=
nk">X300/X310 Getting Started Guides - Ettus Knowledge Base</a>,
          it says that</div><div><br></div><div id=3D"ydp58fcfaf4enhancr_ca=
rd_3756291537" class=3D"ydp58fcfaf4yahoo-link-enhancr-card ydp58fcfaf4ymail=
-preserve-class ydp58fcfaf4ymail-preserve-style" style=3D"max-width:400px;f=
ont-family:YahooSans VF, YahooSans, OpenSans VF, OpenSans, Helvetica Neue, =
Segoe UI, Helvetica, Arial, sans-serif" data-url=3D"https://kb.ettus.com/X3=
00/X310_Getting_Started_Guides" data-type=3D"YENHANCER" data-size=3D"MEDIUM=
" contenteditable=3D"false"><a href=3D"https://kb.ettus.com/X300/X310_Getti=
ng_Started_Guides" style=3D"text-decoration:none !important;color:#000 !imp=
ortant" class=3D"ydp58fcfaf4yahoo-enhancr-cardlink" rel=3D"nofollow" target=
=3D"_blank"><table border=3D"0" class=3D"ydp58fcfaf4card-wrapper ydp58fcfaf=
4yahoo-ignore-table" cellpadding=3D"0" cellspacing=3D"0" style=3D"max-width=
:400px"><tbody><tr><td width=3D"400"><table border=3D"0" class=3D"ydp58fcfa=
f4card ydp58fcfaf4yahoo-ignore-table" cellpadding=3D"0" cellspacing=3D"0" w=
idth=3D"100%" style=3D"max-width:400px;border-width:1px;border-style:solid;=
border-color:rgb(224, 228, 233);border-radius:2px"><tbody><tr><td class=3D"=
ydp58fcfaf4card-primary-image-cell" background=3D"https://s.yimg.com/lo/api=
/res/1.2/d.Bvlg.XAKfnIXmW85NzWw--~A/Zmk9ZmlsbDt3PTQwMDtoPTIwMDthcHBpZD1pZXh=
0cmFjdA--/https://kb.ettus.com/images/thumb/4/48/Product_x300.jpg/250px-Pro=
duct_x300.jpg.cf.jpg" bgcolor=3D"#000000" valign=3D"top" height=3D"175" sty=
le=3D"background-color: rgb(0, 0, 0); background-repeat: no-repeat; backgro=
und-size: cover; position: relative; border-radius: 2px 2px 0px 0px; min-he=
ight: 175px;"><!--[if gte mso 9]><v:rect fill=3D"true" stroke=3D"false" sty=
le=3D"width:396px;height:175px;position:absolute;top:0;left:0;"><v:fill typ=
e=3D"frame" color=3D"#000000" src=3D"https://s.yimg.com/lo/api/res/1.2/d.Bv=
lg.XAKfnIXmW85NzWw--~A/Zmk9ZmlsbDt3PTQwMDtoPTIwMDthcHBpZD1pZXh0cmFjdA--/htt=
ps://kb.ettus.com/images/thumb/4/48/Product_x300.jpg/250px-Product_x300.jpg=
.cf.jpg"/></v:rect><![endif]--><table border=3D"0" class=3D"ydp58fcfaf4card=
-overlay-container-table ydp58fcfaf4yahoo-ignore-table" cellpadding=3D"0" c=
ellspacing=3D"0" style=3D"width:100%"><tbody><tr><td class=3D"ydp58fcfaf4ca=
rd-overlay-cell" background=3D"https://s.yimg.com/cv/ae/nq/storm/assets/enh=
ancrV21/1/enhancr_gradient-400x175.png" bgcolor=3D"transparent" valign=3D"t=
op" style=3D"background-color: transparent; border-radius: 2px 2px 0px 0px;=
 min-height: 175px;"><!--[if gte mso 9]><v:rect fill=3D"true" stroke=3D"fal=
se" style=3D"width:396px;height:175px;position:absolute;top:-18px;left:0;">=
<v:fill type=3D"pattern" color=3D"#000000" src=3D"https://s.yimg.com/cv/ae/=
nq/storm/assets/enhancrV21/1/enhancr_gradient-400x175.png"/><v:textbox inse=
t=3D"0,0,20px,0"><![endif]--><table border=3D"0" class=3D"ydp58fcfaf4yahoo-=
ignore-table" height=3D"175" style=3D"width: 100%; min-height: 175px;"><tbo=
dy><tr><td class=3D"ydp58fcfaf4card-richInfo2" style=3D"text-align:left;pad=
ding:15px 0 0 15px;vertical-align:top"></td><td class=3D"ydp58fcfaf4card-ac=
tions" style=3D"text-align:right;padding:15px 15px 0 0;vertical-align:top">=
<div class=3D"ydp58fcfaf4card-share-container"></div></td></tr></tbody></ta=
ble><!--[if gte mso 9]></v:textbox></v:rect><![endif]--></td></tr></tbody><=
/table></td></tr><tr><td><table border=3D"0" align=3D"center" class=3D"ydp5=
8fcfaf4card-info ydp58fcfaf4yahoo-ignore-table" cellpadding=3D"0" cellspaci=
ng=3D"0" style=3D"background:#fff;position:relative;z-index:2;width:100%;ma=
x-width:400px;border-radius:0 0 2px 2px;border-top:1px solid rgb(224, 228, =
233)"><tbody><tr><td style=3D"background-color:#ffffff;padding:16px 0 16px =
12px;vertical-align:top;border-radius:0 0 0 2px"></td><td style=3D"vertical=
-align:middle;padding:12px 24px 16px 12px;width:99%;font-family:YahooSans V=
F, YahooSans, OpenSans VF, OpenSans, Helvetica Neue, Segoe UI, Helvetica, A=
rial, sans-serif;border-radius:0 0 2px 0"><h2 class=3D"ydp58fcfaf4card-titl=
e" style=3D"font-size: 14px; line-height: 19px; margin: 0px 0px 6px; font-f=
amily: YahooSans VF, YahooSans, OpenSans VF, OpenSans, Helvetica Neue, Sego=
e UI, Helvetica, Arial, sans-serif; color: rgb(29, 34, 40); max-width: 314p=
x;">X300/X310 Getting Started Guides - Ettus Knowledge Base</h2><p class=3D=
"ydp58fcfaf4card-description" style=3D"font-size: 12px; line-height: 16px; =
margin: 0px; color: rgb(151, 158, 168);"></p></td></tr></tbody></table></td=
></tr></tbody></table></td></tr></tbody></table></a></div><div><br></div><d=
iv><br></div>
        <div dir=3D"ltr">"<span><span style=3D"color:rgb(0, 0, 0);font-fami=
ly:Lucida Sans Unicode, Lucida Grande, sans-serif;font-size:14px;">Never
              apply more than -15 dBm of power into any RF input.</span></s=
pan>"</div>
        <div><br clear=3D"none">
        </div>
        <div dir=3D"ltr">ChatGpt says that "<strong>UBX 40</strong>: <stron=
g>+10 dBm</strong> (10 mW)"</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">What is the max input signal
          power?</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">Thanks for any comments,</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">Zhou</div>
        <div><br clear=3D"none">
        </div>
      </div>
   =20
    -15dBm is somewhat conservative, but if that's what the manufacturer
    recommends, I'd go with that, rather than a<br clear=3D"none">
    &nbsp; hallucination produced by ChatGPT.<br clear=3D"none">
    <br clear=3D"none">
    The receivers on USRPs are generally designed to be connected to an
    antenna, and as such have sensitive, lower-noise<br clear=3D"none">
    &nbsp; front-ends.&nbsp; Such front-ends generally don't tolerate highe=
r input
    powers without damage--and +10dBm *IS* high<br clear=3D"none">
    &nbsp; input power for a radio receiver.<br clear=3D"none">
    <br clear=3D"none">
    One may have gotten used to the relatively-insensitive inputs of
    laboratory spectrum analyzers, which often have<br clear=3D"none">
    &nbsp; inputs that can tolerate considerably-higher power levels, but a=
re
    insensitive at levels expected from direct<br clear=3D"none">
    &nbsp; connection to an antenna.&nbsp; But USRPs are designed for anten=
na
    connection.&nbsp;&nbsp; If you want to use them as<br clear=3D"none">
    &nbsp; a laboratory spectrum analyser, you'll need to use attenuators.<=
br clear=3D"none">
    <br clear=3D"none">
    <br clear=3D"none">
    <blockquote type=3D"cite">
      <div style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-seri=
f;font-size:13px;" class=3D"ydp5dab60bcyiv9675524893ydpcf4bf1c9yahoo-style-=
wrap">
        <div><br clear=3D"none">
        </div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
      </div>
      <br clear=3D"none">
      <fieldset class=3D"ydp5dab60bcyiv9675524893moz-mime-attachment-header=
"></fieldset>
      <pre class=3D"ydp5dab60bcyiv9675524893moz-quote-pre">________________=
_______________________________
USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@list=
s.ettus.com" class=3D"ydp5dab60bcyiv9675524893moz-txt-link-abbreviated" rel=
=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a shape=3D"rect" href=3D"mailto:usrp-users=
-leave@lists.ettus.com" class=3D"ydp5dab60bcyiv9675524893moz-txt-link-abbre=
viated" rel=3D"nofollow" target=3D"_blank">usrp-users-leave@lists.ettus.com=
</a>
</pre>
    </blockquote>
    <br clear=3D"none">
  </div></div></div><div class=3D"ydp5dab60bcyqt0555802826" id=3D"ydp5dab60=
bcyqt21074">_______________________________________________<br clear=3D"non=
e">USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@l=
ists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.c=
om</a><br clear=3D"none">To unsubscribe send an email to <a shape=3D"rect" =
href=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=3D=
"_blank">usrp-users-leave@lists.ettus.com</a><br clear=3D"none"></div></div=
>
            </div>
        </div></body></html>
------=_Part_2112811_1880081044.1743437855089--

--===============5592174757633986445==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5592174757633986445==--
