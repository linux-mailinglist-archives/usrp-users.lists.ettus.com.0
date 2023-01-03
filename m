Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CED65C2F4
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 16:25:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B49EC38408E
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 10:25:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672759552; bh=AWRrc+6DsG7+bzt0CjQK3E3U5uTt3vz27yE8U6hkcL4=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=rVGx+mbEmoqmOFEU0w+Gv4rRIw1ozYoWBLMNqoR18CCd+rPlaA/5dsd0fOdrctM1+
	 46ORNxoxoEg9hqdt2jtMCtFZX7MAg5ZvOoRypLI8lJ/PYx9uzzQLJkzXse4dqLhZfA
	 4+7eacDk6imWeMoLhGWKbnvl95SOvvZQw2MKog3t2M4w0pWbTBn3T/ktvjQ/Usc65l
	 8rCYNPvheMPWk4MyYRNIsvGE67om0+ZSDVfEiNvQKNdjpZAra8g8LgnJQ5pYPOhw2G
	 XOipZqUjMNT4jm1FarQsqNUEcCMWGxtmJiyGqLRdU1VnHDdiP5lK2xpwokkc6oTdk2
	 Jok9sAXQfUKig==
Received: from sonic319-26.consmr.mail.bf2.yahoo.com (sonic319-26.consmr.mail.bf2.yahoo.com [74.6.131.81])
	by mm2.emwd.com (Postfix) with ESMTPS id 7F04C384074
	for <usrp-users@lists.ettus.com>; Tue,  3 Jan 2023 10:24:58 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="qPcLZakr";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1672759497; bh=J9/0yCwUiQCvtZj/k93Vv81pVAoUzZVHAPIw0Xat3NA=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=qPcLZakrscVtssKeGCjqXv5WA86SKeqCWXxFwpI5ijUBq+Ybiq3X2bAQ9fui6I+Bo8MLxlszPaOCQYiojFed9s+wMATYN4irSr2w0ACOFGBfb6x2EWctxXfZ/z9JkRln5hkgOY4ZrEWxRnV4grLzK+IC1sdy6pqoKYmvHdg0oA/3BM8jw+6b7q24icGJwO/s81m1S09R7R6o4xEsFJZTqpI+z0Dm5P6inm6cNV8QvDFfQ147bES280qOTDhdm5M3wT2sd2wcAp+cTHCLMA+oKAWp+Q01NuHSa4bJ+suM34MfvswvMWJ8+3XzdJA/AbQ8ah8wSgwNcYGEvx0sa1a7ug==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1672759497; bh=lSaga9inkbKCiosownGhG+Nbj6A7uC/VYUQPorIhESS=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=MvXvGggcXYFCRHQoOrxtdl6Gco4drt5TYMJ7j68ddm3oaauga4Hj2Xb1hZuc87ckxgnqEW88eTOQkJRqK46bJqodl8PBFcMbbaRcGb3ZVCyUKY2fmwRwZUmM+BrD20pS7x9xPjgFksK19VV4Z2teOA82iY/oXwGVrCO2aI6EZXmk83MBnROW66xwvPNFFlf6N0rJUl3/iA7gTpiBx4GvA+vircYNRDAsGcVo/LD79VSNS0Lr6kNeMY3lA2mE06pJ1OR83e1pedBC5TZXNzjOn8qKRdv/PP9N5MWfcYM5Bn8+iVtjk81h3Z3rHb2A0UMutO7evkGBs7GRO4yXXVHqxg==
X-YMail-OSG: riu4osQVM1mBvdx2j_I7e_XfwbWB4kJU4cX7pqBedDJ3ZRYdmhP90BMsRWU4qIv
 iwI1TNm6e4XHOTiAO7bBEETIAvyGIaLgv6roynQ0kWEWUGyuTgTCicOpgzDcPttfxTrTpGBzXCbe
 cU0vWwQN41gThM90qhhzzsa31iphs597bz3ugLCWghyr1FxYGQHh7JFl6ST9edicdocZW69X3kx4
 SHly_8YzM1IKE4O0HnVxgJGZmTjH5sw3YJzlj2.XjaFOW7HBOT1DbIt.ZUIZV2dYF1lJbYpcFEVf
 rw_H0PN.TdREgMVGUzQ8ciehGXFdE7U2b2mX5G8nyEkr.H4NKSh8DNU16c3Q7mUdBL3iJ.9LHvxF
 E3U_hiVRB5s_waZsnCDsPXD4w8Csb_IA6gTkXkDCSj.8silLoyTyKoZ1S6cSE1SkoGuHtTCqYyyn
 uN1NNwDmAlqa5mbr.5cKw3kA8KVjc7cPRNdqSnv8YmwPfY2iL.jaNfM6wdmVhgiLk5p2zoPgskSU
 tvyLdYesec3Ew4EQJzs3j9Skr8cxJgiPUrVACq6sAamiDuvLftPFdunBzaYVrSTIG2tSObI7jZci
 L7_GnfMpE9IZ0_MU5fVT7y61SLSERKqyA370fBBan8UMHQOUllRIZ3iPW2BXihs72220pccbCmmr
 onFMfXK3c4biHSBgZLiNQL9uz63nKdCv4YhAJNXPOaV5tI.G0j3Nq.iEla4AtkPAAjulwOmLKXqX
 0zlxJa_33kPIkc5Px3oMiX__EV2oe3No1Lls2dr6LYhpn8PvJTDy5nNqealUr8LwCRyMkrybl04b
 HoFbnoexy4FvtXqPgOhBD.t4_mkLTHcVzcl4b4f7iv_nnBVXtHJj60Pf0gm01f1sEWZH_3FEUDHB
 9b_vgvUV_xyvk6H66obwNfOHhHIPqaPQK2E9qdf255cKShFxaYUKeRnsoHUHQuiftQpSS43hF5.K
 wxnPjxc22ErlQSvKkUASQhVrppaWfIDvCpOm2x8jWo_grAaZxRRxSnTchPpEVV6j1JkpDBVTjP00
 Ick_mMosMbqxQ8gQgiaGoa7gJtw_FzW2x4F02SbVubf0MUYFVa4N1bDQ9pdQzt8.MldUJr2ilFUI
 dPivAgV04DWvVC918BHB0eY0aKknmZCqS1e6xO7NikvuXkO2UMotoJolp5MElooqG5PRtiVbF.u3
 rAHO_aFc2_sUyoXsYDBqZC7htfJT0NZO5o06waOkRBqBinhACXsUqT817YZgg8r5HbEqbYi2jSHS
 gVT8EpecLrA.iiZjTngwYzeNOZMcoSzJLJb7al39utG4s1KgeEwrH.uiG73G6gP2_y1olMQvQ_tZ
 rGjOzTYTaol_G8RNvgUl4E6FfTbiOyDDdQThFn4Q4Q45Iw1VX4_fc2Qf2XDAGy1AD9RGPxV3rFGJ
 VRqKzxNALUfWL17HTeMYzej521tmlG.i1PeKUF5z6P6qMkDKc6tJj2KZwlhsnPW0UPNGEIuTZUj9
 KWhFE30LFlFx9cxJEucEftb.QsOTlZHrzgCSpWewkS.NwrMr4aL.M7V.aMbsWcKgyKd.BwWN0Ngk
 C7isOmsU7srEpjFttWo_UQckmJasvjsFExkb9EyiTVP5NISPdqVa_CdOpfFVS3oTsRUoymhylj.9
 oFivfpyWv8uot0ohGgP8jYx_cBdTh72q_84ORUXjf9yFdr6PZxfB.4Q3vyie0KxHqjWXWafvGfF9
 e_vLL3jPphEcD6BRNCmRy5ep4pgQBtCpN_FwS2j_DU1f0jGYlont_Px9HAlxRqNaN51rYGdFl.q6
 3a7r_r1crYGt1KeAhYx7IwOED2MPCJr.48Ap5ODv3bw2QY2ojIX3KKJjfylH1eOfk28.9hTWeSLn
 S1F9S_U1qiD3G2mgCoQQL3FoOUMEo5TRG2xZOARJlUkgI3l9KKFUob8cC0w4R1dR71hWUvI09EGu
 lIF0j28v6oFLUFLn6Mdn6hu9fENc9nTZO9VcjuRxU3ZQKcBWF.jYUU4YFlFohmJTIUKEySfN1tOP
 H0Ng4K9OzMY2lLbaxbTBRU1Xi6UM4XBdDzVL.OXoGZTQVNjJhVKrRFOi1K7UWj9JdkcNd7WHkDDd
 _PWG3t1GEIYT0ToWc9_xV8vhdd.rI2Hm3B.xCD5sQGoQgev1FDvUYwwp8_ANHX.J5JLi8ZFn0hua
 y7kJWDpN3K_CXJ4HslVDZLy2u.4moQcZaw2GLChLN2BkCIlRpw9BK5JOeWXGSpbaEwcvVt0UFkuQ
 fgGeGhL_t4qOb4koD
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic319.consmr.mail.bf2.yahoo.com with HTTP; Tue, 3 Jan 2023 15:24:57 +0000
Date: Tue, 3 Jan 2023 15:24:52 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <1969689752.2620757.1672759492639@mail.yahoo.com>
In-Reply-To: <Tw8IjE6vV1f8jS724ptiIK8G4uU8WZ9RNGKr4RLzWDQ@lists.ettus.com>
References: <Tw8IjE6vV1f8jS724ptiIK8G4uU8WZ9RNGKr4RLzWDQ@lists.ettus.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.20982 YMailNorrin
Message-ID-Hash: A7IZY37MMJVRBZX36WB4ALNVAOEJ2LTD
X-Message-ID-Hash: A7IZY37MMJVRBZX36WB4ALNVAOEJ2LTD
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How to save USRP log into buffer
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/A7IZY37MMJVRBZX36WB4ALNVAOEJ2LTD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============4768394794158956037=="

--===============4768394794158956037==
Content-Type: multipart/alternative;
	boundary="----=_Part_2620756_1388794508.1672759492637"

------=_Part_2620756_1388794508.1672759492637
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi,
Happy New Year!
I am using X310. Our application prints some log information. Meanwhile, UH=
D also prints log information. Currently, all the logs are streamed to a fi=
le. Saving log to file involves access to HD which is a low-speed device. I=
 want to save all logs into RAM first; then only at spare time or after tes=
ting, the logs will be saved to file. I think this will improve the speed a=
nd reliability of our application.=C2=A0
My questions are:- how to save UHD logs into a buffer which is allocated in=
 my code?=C2=A0- how to maintain the time order between UHD logs and the lo=
gs generated by my code?
Thanks,Hongwei


------=_Part_2620756_1388794508.1672759492637
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp34e534c4yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi,</div><div dir=3D"ltr" da=
ta-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Happy =
New Year!</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D=
"ltr" data-setdir=3D"false">I am using X310. Our application prints some lo=
g information. Meanwhile, UHD also prints log information. Currently, all t=
he logs are streamed to a file. Saving log to file involves access to HD wh=
ich is a low-speed device. I want to save all logs into RAM first; then onl=
y at spare time or after testing, the logs will be saved to file. I think t=
his will improve the speed and reliability of our application.&nbsp;</div><=
div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdi=
r=3D"false">My questions are:</div><div dir=3D"ltr" data-setdir=3D"false">-=
 how to save UHD logs into a buffer which is allocated in my code?&nbsp;</d=
iv><div dir=3D"ltr" data-setdir=3D"false">- how to maintain the time order =
between UHD logs and the logs generated by my code?</div><div dir=3D"ltr" d=
ata-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Thank=
s,</div><div dir=3D"ltr" data-setdir=3D"false">Hongwei</div><div dir=3D"ltr=
" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"><b=
r></div></div></body></html>
------=_Part_2620756_1388794508.1672759492637--

--===============4768394794158956037==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4768394794158956037==--
