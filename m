Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B0D69B8B7
	for <lists+usrp-users@lfdr.de>; Sat, 18 Feb 2023 09:28:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7E202384295
	for <lists+usrp-users@lfdr.de>; Sat, 18 Feb 2023 03:27:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676708878; bh=L0Y223YQHQOjNhTrP648lrNdVOMOTL0nKVKyXabzeSM=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=z5oMBXYQBqgNop1GkDRqCh+WMWMQMewSJFU7Bem9Jv00998TXyYM5NtWkxl0XpCYW
	 fuUrM8I8r+PUF+0MVomCuxxeeBoLq0+ZgXdPEp2SF/K/yp7lmpMJdqlLoqZPbgTWsC
	 SlDtn0OE076Qd1qe6ffLIXIorUzBLF9KWvX9VuprYXXEQUFykzDnyaTP4O9m2JbfhP
	 QFWQ+mlASR7+iXn2GLdGNKiBJQoFvkhOozlLkzr+r4HAJaVZTlhtmJl7ICya59I/Yo
	 M+moO9GvjRGU5tokrNEd7V1RHICHOkv6ZH+v53EkVuCy7ehlMqfLymseSf5acpo5na
	 fN+z2pgPrmqMg==
Received: from sonic319-28.consmr.mail.bf2.yahoo.com (sonic319-28.consmr.mail.bf2.yahoo.com [74.6.131.83])
	by mm2.emwd.com (Postfix) with ESMTPS id F3F99384295
	for <usrp-users@lists.ettus.com>; Sat, 18 Feb 2023 03:27:50 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="kNFwpARY";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1676708870; bh=T9GWryQr81o1D0LpWHvnLPk9jQOvE2U/Gl5dB2X7el4=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=kNFwpARYwAcb1DEygR1sc91fzHQNfXGWEXzjDnIFS/Qy3hNSkXEPI6Qe6A1wCCky9r7wPNTY22XLFXeZcsZqXhhRhBUvIECARKRDeSQtj3rFbgXl4HzECN1eVIkIprXWRUTv1ox6ryoiEcMvRWWGGqAJ1TjmZBZzp+apibAq9jGQq2W2wnvTkgqGaPQ0eC6IT79AOrDaiHUuaOQRaiIjn8ncEwLxPlJkLN129h4VwxiiHY7kpXoms1r/y99pT5IuV/GMitihojAsybR568eeiHAh4AFDeNWYweZaPCyu2aACNdsTnecQRRzTOrUCnMEjWX8pmQ39c0Ablqkf3nxRXA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1676708870; bh=vZTWdOHpzeMdmPBDxTodNwevAcdhQatzg0QW7yG0VcG=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=hsLpa41j28Z9NGTGHmiSZl79Dl7AdM5xL5DSIStpIdef/ne/G5nfeyFxfql2zoQHCKh8Yur6kkbT3RMHjAE8BO7iiHesCP5zkkOm2AcjmxaENvvE6U+Xl7NdINgWDN0xvWle2mjKn+bUTzoIhVWmfAostAx0YsQZYMtlZrS3nVD3fE9xLYZv9XN6x20rxSd11RUw5/VfDGmeaYMfyKxplvvvkdHnlHWHr/fG9B/P8uaeTRCPoImPepEB0D3sd6YhWRCQCIC40gKn3X1paHcs8t0aB0+A0OGAlKkVXvFC1r/AJv3IQBmQ/E/T2IYYaXrCtX7PuMXVIMb4CwaJGV/Ydw==
X-YMail-OSG: oaVopHwVM1kbdZRGfvQ5hSV796JixGlsxVDRy12.MTwdBZRyAKGV8HUcUTuj1nn
 4nzqedDedSrCDoUUBbJyfVPPUbphO0VAWFyEneN7WtoDDsUHkwBkRYvi4LI.KuEH.FaaU_DFUFWk
 ad7jARry1TUSGmxHjrLUhnIUl04hgCvTtFMCRp7RtVHcjPgmjKolNLuQNZgMMF4AyPyWfvmiouCJ
 TqulnikL5TYIDzIHaC9yvO0c2Sc4zu8MObsz3QwkhWWrDbQQM6U8R6urWx5drSULqa7LVl2Xf6t_
 4r_SpvrcS8B8isZprGOshNUDEBINf_Pbof0Xa46Ea87vdgRN09X.DenOuAr5E_LhCp54nzj5585Q
 axWX8jtMyizi60vOvd4y77_.7XYBpcmCXB5Pgh3Tr4UWuGaBWaZCJxhGW2mBL3hJWZn4dTLYbGfn
 HSjKgsWSIanY6AbRZBtA99Q.wrpp_FmVrYqxiPpGILot5kHBfnM1fZV53_Gf5Uo1XNEzXYa9oi7x
 nWSQFr_hoiSipLmRoohkNpDTT.VqXKXJK69AoFbWX1aAap6.HeLuKgb6l5dxZ4LIFlohiKAb8.q8
 XpAwkV6AvyR.wyky88vJVjrsp314stZ4RJT4fi9XY0fVBDtTRGvANHvZmTJs4Bt.yoD_3Tqj6UZO
 T_DMPu.gZTjMYkvUunv9rlq5l9B2gqyA4VTLNPXSSY9af_8OoWM.5gQE3CQzcpuTGcR7RxWCThIN
 IF8ouKKXLZbMA2fWy1uZGR5thMMZXXnyWbqQ1cGz4TbWtH4m45deaMX5XfPWb78xvUI_M5XRo2Uo
 1tsAlMyCw.4WQhnHo05N6WQmHYbWSk32PStyVQhAL2PLIbL4jJPq2b2qqJWGZzxq42.PzTkVgEiO
 SJ_jeMsku9JlYeVOs.86C4Wu2Rf2vQOaOnPUn.64.9bl.Gw3iYMMHAXRhHExqbwd7y5j1ioerMpR
 qMH2VxxcDcuFwOwoehbKtt4XkrbgjoOmoNUgPlmNenronEYHxC9VB4nyIq_EcqCYKZGjFxrG03Fa
 .g89yty0sVQORwvJqICrcWoJFlDcWwcGrf0MHKkthPCv8fGDv80V1jKjKjDxsG4ZG_pTREZsiWD7
 LNGOikSCsD8.yIjTK_chaCIebkWhpPrkDneGU8meyCtvPFA7zSXf8uIIx_QmEjOh20XTH1RFzBU9
 rSWj17hPI9IHpoQzyfbQIVcABv99zhnBuVaCYf4x4OJUxI9jxpWsO.0esxhIEB1cm86hOAFXGDuv
 t7kKUnN1UpuTVPibJ6eN838T.7lnq4erzCQ6Ucy7uV1nJ5vTi0.uWbJ0nfPlionqRw1_cfclqvUV
 .IAYf_a9nPi5sf1HoSimSlSMMN.xDedxLM2tqtlvzm7LZ4_DOpJCPA1Gp1xtLCukXi7Pz0uIWOQY
 b6HLOHGDth2hHMJdniZXbFIQexjM4bdBmfMIw0WPE0hPncwmDYmWIpFhuw4ho.SVifSpSoHy8AMx
 kQSBDIzXsWEhhpaR6HiOhU_ILU85ELSxyyBWP9fatXBZbCNoKY1y3Mc0qo5pyI2FtIIdNdDczUnM
 .fmDUMsyXcM3XZgf_Ksg8.EYXWNw1qVF0LDLyDXEVn9mtL2E_XpaLnGVwzfu95w5tB7nLnfDmDtO
 O8oITCHrK4pqiSnoitSa0plKCCcmkS441VwMkgxbfTe7Atzj9wQNhDMuJiC4WkpPo9hzpmyJgruY
 jqu3b6bsI6E0dO6I_fYzl0E7Ej.qnUGorQ3GetRi9EpI8NDSH7fYI9_JKUP5Rhp1ZIZ_hT98ulXK
 5ZOZ1xigLy8APMXk3I5rRK2sWCrcJ5F5zpV0eGHbe0bVVHX2RARBVODRu2BQcpRjEzWtRbDMxtyF
 ONvGWhZSXetOyI1s9c5dobwX0d5_XUD9R7yPwkQKbGkTqu7VA6okqH252WDSL3lh0X1ZkxoXvqe5
 QysE9VDa4kBhvPP6YTdThIINnqfZER2PLZDOCcNH9VgRAl4wEfVa.6w2fEw0o1_arztEX0sp_Or9
 Cgoj0osPXLsWifTi3WORE2Z3UrTCTCLdrXkYFhnT2QdDqonqyDIy2BpZvhniyxUgZC1s3Wam1q7x
 AGKZwXy7lEoxt77GnisiYHVqjGLY8DMbDDxJQVqE1omlmIJIQNyuXYa1w6IPPegkmGMsweMfKGrj
 JGR5e8g7Zkb.h8amNxs5Fy85n0s9fq3L_VJsDzumosFn4WX80huh7Evx47NSxF4JY.fLL1V9YwEn
 jR2viLBIw
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic319.consmr.mail.bf2.yahoo.com with HTTP; Sat, 18 Feb 2023 08:27:50 +0000
Date: Sat, 18 Feb 2023 08:27:12 +0000 (UTC)
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <1492376160.1909708.1676708832546@mail.yahoo.com>
In-Reply-To: <CALooG39Scf0NB4sAvB5b8cvdMjAMPh=fY3Zc2N_GMZXbsQgsbg@mail.gmail.com>
References: <CALooG39Scf0NB4sAvB5b8cvdMjAMPh=fY3Zc2N_GMZXbsQgsbg@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.21183 YMailNorrin
Message-ID-Hash: IOE3OIWXLQJLNNVYXIZRJI42LRYJYXJZ
X-Message-ID-Hash: IOE3OIWXLQJLNNVYXIZRJI42LRYJYXJZ
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Dual 10GE Ports in X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IOE3OIWXLQJLNNVYXIZRJI42LRYJYXJZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============3038284311368346047=="

--===============3038284311368346047==
Content-Type: multipart/alternative;
	boundary="----=_Part_1909707_1840916496.1676708832545"

------=_Part_1909707_1840916496.1676708832545
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi,
Some thoughts about X310. They could be silly but answer will be appreciate=
d:Why does X310 have dual 10GE ports? I think it is for achieving the max 1=
20MHz bandwidth.=C2=A0Though dual ports are provided, I can just use only o=
ne but the max achievable bandwidth will be reduced.Am I correct?
Have a nice weekend,Hongwei




------=_Part_1909707_1840916496.1676708832545
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydpd10f995dyahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div></div>
        <div dir="ltr" data-setdir="false">Hi,</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">Some thoughts about X310. They could be silly but answer will be appreciated:</div><div dir="ltr" data-setdir="false">Why does X310 have dual 10GE ports? I think it is for achieving the max 120MHz bandwidth.&nbsp;</div><div dir="ltr" data-setdir="false">Though dual ports are provided, I can just use only one but the max achievable bandwidth will be reduced.</div><div dir="ltr" data-setdir="false">Am I correct?</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">Have a nice weekend,</div><div dir="ltr" data-setdir="false">Hongwei</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false"><br></div><div><br></div><div><br></div></div></body></html>
------=_Part_1909707_1840916496.1676708832545--

--===============3038284311368346047==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3038284311368346047==--
