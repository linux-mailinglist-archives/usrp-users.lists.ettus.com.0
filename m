Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ABAD14028AF
	for <lists+usrp-users@lfdr.de>; Tue,  7 Sep 2021 14:23:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BFF803846AE
	for <lists+usrp-users@lfdr.de>; Tue,  7 Sep 2021 08:23:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="ezi6VGhX";
	dkim-atps=neutral
Received: from sonic317-28.consmr.mail.bf2.yahoo.com (sonic317-28.consmr.mail.bf2.yahoo.com [74.6.129.83])
	by mm2.emwd.com (Postfix) with ESMTPS id D5B573842A4
	for <usrp-users@lists.ettus.com>; Tue,  7 Sep 2021 08:22:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1631017339; bh=J/ke+aS9de9g0mhRbGxHBRNDx2NrDenNfjM/KsjjUgo=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=ezi6VGhXmQvtJSF/hmXVL9iNveiAoxOTYdofvokBwPSC+rtKdZg0LgbJQ3Mzb5wMvA/clUUEADqFgL3PgSTYKiiS4UWOPH3GANOCbtdNO8M+nhRy2Hd2ZbN56l9PxcDHH7dVyWBoTX9Sx/TWicEfe1HrEn3grXiNVFhMXbptUFGfkxm4dQRJIyUkQoIjYGYXqxQttSaSJIwMbQKWJrH4mwkCbBMN0dzkDXy8NPYGbKz6TfLCT5Zdl+NKZfer8pAV2V5btFCp/+E5fje8SQNoMV8T3TnnMxCy+T61umlrJSFHhJvR4ckm1q4i32ajL4pe5b8tYOkwyuHwDBnrsK3h7Q==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1631017339; bh=P4LG5oYNSC3DsnWKgS78rowfewqxqsMGsoADFm3kst/=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=HHkViVjZnyvhujmmz6lqo6XE8TR9VDn9R9kdUG6gNJor2HOG2s0W/W10AIKY/NWPxBNUelH8rjtZVtV278UE847C01mTRZFASFLw6vi7iiKWJhvJvQKrP9KXBNFcb9F4vbq671Ehn2/FVfBtVrgR33TWiEG3voiTk6RiBiOMryofrIW+NVsFFRXxkodt8rmJAC4ZwOucis/ThWejXgq+C/ju6iX2QiTgwLyt61A+jXKfdLJQeRW1Ca7GfZTzFI0AU2jW1CfA9jCmJLrxanLFqZ4eMA1a0Myjb/zXCWoTOjCBcVgbGUmBcmCT0tuKQMkq0iBpY+j0clD9MpZDA0U7ew==
X-YMail-OSG: GriJRDwVM1l0mfj6_DM1jo8wKoKO7jQ_4kAgVttfILUv3_LLcH0AIRO3JgF0edw
 ruuOlKD041ntq3jua4V8huynpTFaE3evxWtIBwCfslyhg6VRoSonGcH8loEwGEHaoHY_0X0Atf96
 Sh2y.CImDCahrylYFA8hCIZJgy7rxKUwNKoLALXmUC4A65dhVt5zGrTYEOcppQG_yR5KlKf9eDdc
 SiIeMCQYYLEID78H4Y5YRAJOJwX_fPyJedarROxWn6CRd8iutFfnDYK8xCHrqDgiE.9XbdIAAmDw
 7RgN6cfCTf2LZ6XgyFB9eT5CZWDn4eYvCxh6imBTQFkd6Iv530edjTnTd1fOlbHg1dPZhOH1y_dq
 FJltC.HJeQgkBUmKV3r_W99f7B4Hf46jDy2jl9jsxoOw7FN_WdL2.KkPjXpbyuMkAZtjAp0RpFk5
 5ntnvJACLRxv8EJ2T8n1D1ivjiQlhSrwXxGJU5u2B2V1CE4NxQZzFzZSk3rONh3ZFj2ijfnh8mMo
 YtBh_lPe83J.B0a2qVN1NdVoGYolN7lL1i_7.CAcT7Rnb5Yv4pet1uqUJ.Tqa5Q1wBZt55Q0n54H
 ykVFn_Q62OUT920mNbdxU10Zzgz9NFF1n_CLxN7Lr5YDj65WfNUAa9aWe4a4SpIbDLiGGXeFDRrS
 8DuKNh.JZHtBUcoPp1pm2DsRwDU6FSLi0zsEv4mGNZ8am8u4Vmi__x35lJQKWom9q0hKOaoXyGLo
 5kGSrTj2FCqbDwbbS.mNjmLigXESjNL_U9PgdoDzv3n3qbnNFY2jPxy8Adxz0i0TQhQQCVYYGx0W
 8TafAUqCXz.VMVwd0qKm.W3NleuevaheIIeSLsjDyMNRXRZ357xN6Xpdn7RjjDEDaNZpMTCHfgyC
 BqxLnnU_Bsm8cDWSXuT9mAuQ36ww9M.y98JwurIe7hnhFcVnksnUbh18SsKh_rMhd0Cj3rfrAJv0
 pKVAFSHHW7HtbhyacdxyLthibzYBUm3_FdFN1itGoamHP0QNqid43DNfGvFPfya9n4lHERQ.yvhl
 kquGocwUzXDT8Jvrp_LCRy7oqQzuUp3XL3i5t0ZNKlXaDyJGVFdA5CbxXIF2jqLXauP9C1soQvhJ
 viuLpsNsdd3evyEkLmyHoyDDUM3ywr6LT6blToRC2OHe5_02GHLcuuf590Ddcen.v7XLhZ7hO4B_
 svdAqCcIKMnnXQXhSF6gYcTS_KLlKCHnnEYChHPzZ0KN8bek1kLdefuAC17R6nwLVORVZJOYgqQZ
 toy0tjbWza5BakE5xTY3UNxEjTBEVDOGpumn.RXPxSD1txlMkKU04p17s.PD.v1Ml8VCiWe3Jziq
 UsIAHLHhcPF5yHyiIUPMfTNCyLxaYJGqvnH8oxyUtbbr3tveFTJkK_.amgRXe6Hk5v4nsVhNQDvH
 gAJPpgNQq4.WNI3SbldaqQTJAfcW3VWK7xajvFQECu2ISSDzbHRzCfkAFDiETIHbDlvGQwG0MK1f
 BoBXoc_iDZWxJPLmEVDDNJADPI9Jf2pfwNJx7.1pNkbhqPgzAwAki77B0t_g1XSCkIyjUd16aDDP
 zJpt09dbMWYHeiPg3eUdWte9VzqjO4v1W3l5qSVhg64zq2BP5EFef9P5vYgNcL5RreEaMBjxjVtN
 M5t.t7G3v0EuEJ9W6C4pAJ1XO1Y8kVcROeXaQpGRuSgD09tqTqKgDDOUzTWPNfUT5yJMgpyns4X5
 cA4W2DpvSP1GhIOs_QJyNymti2fqgC_evLrUsywYRd8JpOsZiyRyYIVm7vnAhWgdbPL1sAoWHAUK
 2jqlvTcSs8nUf6OpBcyLDjtMHkzs5XOMoFA2zLPLiWYBn..NX3Qj.qGJ4DXKVHHYSi2y0MPbEJb2
 rs0NGlUPSJkFlHITzL.IfOtvMwKcwrftpz.OHOkSNjMdt01RCb7aNjeZYkCR16e2fYn8vkvYUQXI
 5o9EPCp60I5oOJvvTFXBrB2OH0YPNZPeP9m22UUF4TOop6x4GBEFu76_ttwYNWliOXOBxIZc7aeb
 NR8q72w3tn4wqC36Nndd5JtDNS8fcEdi3SHHehyr.UMLtrfMVpvjZJrprTd9U15rBhn1CPfN2vSA
 zgB4eA6FK9sD62Nq89afhI8u1Ok737LKIGMc_sy3gVC.LlMW3fE2Ixd_0lV9m1fTV03TzleRe2br
 mDov0ySuBicHVQto3LiQxqE2JVOVtd4gGIZkwDcXV6RH2PkU4hubeSDOtWg2OsupT7.NTDFoSs2F
 IAZUpvwjZHYgT0Axvph3VK6nnBvfMeArerDCz8Yo_vcfCJ64_x0iJqeXmylUE
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic317.consmr.mail.bf2.yahoo.com with HTTP; Tue, 7 Sep 2021 12:22:19 +0000
Date: Tue, 7 Sep 2021 12:12:45 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <1441256320.1871638.1631016765370@mail.yahoo.com>
In-Reply-To: <7d2c5ec1-812b-4f04-6718-d3a0029017ad@gmail.com>
References: <78915145.1401871.1630855703615.ref@mail.yahoo.com> <78915145.1401871.1630855703615@mail.yahoo.com> <606552990.1786539.1630963952986@mail.yahoo.com> <147565774.1577833.1630969165270@mail.yahoo.com> <7d2c5ec1-812b-4f04-6718-d3a0029017ad@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18924 YMailNorrin
Message-ID-Hash: Q4PAAZK4PY2CB7OH7LWS4A2WDRP4VHRD
X-Message-ID-Hash: Q4PAAZK4PY2CB7OH7LWS4A2WDRP4VHRD
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Set Network Buffer in N321 USRP Permanently
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q4PAAZK4PY2CB7OH7LWS4A2WDRP4VHRD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============2970455807020031006=="

--===============2970455807020031006==
Content-Type: multipart/alternative;
	boundary="----=_Part_1871637_837514364.1631016765369"

------=_Part_1871637_837514364.1631016765369
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Marcus,
=20
  Thanks for your comments on my other USRP questions. I have another issue=
 with N321 USRP.Following the tuning tips in=C2=A0https://kb.ettus.com/USRP=
_Host_Performance_Tuning_Tips_and_Tricks=C2=A0, I have set wmem_max,=C2=A0w=
mem_default, rmem_max, rmem_default to 33554432 in host (Ubuntu):
   sudo sysctl -w net.core.wmem_max=3D33554432
   sudo sysctl -w net.core.rmem_max=3D33554432
   sudo sysctl -w net.core.wmem_default=3D33554432
   sudo sysctl -w net.core.rmem_default=3D33554432I have made the configura=
tion permanent by adding these lines in=C2=A0/etc/sysctl.conf, such that th=
ey won't get lost after host reboot.=C2=A0
I want to do the same in N321 but couldn't because there is no sysctl.conf =
in it. I can still configure these parameters from terminal, but it won't s=
urvive a reboot.The Linux in N321 is tiny. How can I make the configuration=
 permanently in it?
Any comment from the community will be appreciated.
Thanks,Hongwei

  =20
------=_Part_1871637_837514364.1631016765369
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp38909655yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div><span style=3D"color: rgb(38, 40, 42);">Hi Marcus,</span><br><=
/div></div><div id=3D"ydp703015c2yahoo_quoted_1673422088" class=3D"ydp70301=
5c2yahoo_quoted"><div style=3D"font-family:'Helvetica Neue', Helvetica, Ari=
al, sans-serif;font-size:13px;color:#26282a;"><div><div id=3D"ydp703015c2yi=
v5669889621"><div class=3D"ydp703015c2yiv5669889621ydp16591bb1yahoo-style-w=
rap" style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font=
-size:13px;" dir=3D"ltr" data-setdir=3D"false">
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks for your comments on =
my other USRP questions. I have another issue with N321 USRP.</div><div dir=
=3D"ltr" data-setdir=3D"false">Following the tuning tips in&nbsp;<a href=3D=
"https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks" rel=3D"=
nofollow" target=3D"_blank">https://kb.ettus.com/USRP_Host_Performance_Tuni=
ng_Tips_and_Tricks</a>&nbsp;, I have set wmem_max,&nbsp;<span><span style=
=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, =
sans-serif;">wmem_default, r<span><span style=3D"color: rgb(38, 40, 42); fo=
nt-family: Helvetica Neue, Helvetica, Arial, sans-serif;">mem_max, r</span>=
<span style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helveti=
ca, Arial, sans-serif;">mem_default to 33554432 in host (Ubuntu):</span></s=
pan></span></span><br></div><div dir=3D"ltr" data-setdir=3D"false"><div><pr=
e style=3D"font-family: monospace, Courier; color: rgb(0, 0, 0); background=
-color: rgb(249, 249, 249); border: 1px solid rgb(221, 221, 221); padding: =
1em; white-space: pre-wrap; line-height: 1.3em; font-size: 14px;">   sudo s=
ysctl -w net.core.wmem_max=3D33554432
   sudo sysctl -w net.core.rmem_max=3D33554432
   sudo sysctl -w net.core.wmem_default=3D33554432
   sudo sysctl -w net.core.rmem_default=3D33554432</pre></div></div><div di=
r=3D"ltr" data-setdir=3D"false">I have made the configuration permanent by =
adding these lines in&nbsp;<span><span style=3D"font-size: 12pt; font-famil=
y: Liberation Serif, serif;"><b>/etc/sysctl.conf, </b>such that they won't =
get lost after host reboot.&nbsp;</span></span></div><div dir=3D"ltr" data-=
setdir=3D"false"><span><span style=3D"font-size: 12pt; font-family: Liberat=
ion Serif, serif;"><br></span></span></div><div dir=3D"ltr" data-setdir=3D"=
false"><span><span style=3D"font-size: 12pt; font-family: Liberation Serif,=
 serif;">I want to do the same in N321 but couldn't because there is no sys=
ctl.conf in it. I can still configure these parameters from terminal, but i=
t won't survive a reboot.</span></span></div><div dir=3D"ltr" data-setdir=
=3D"false"><span><span style=3D"font-size: 12pt; font-family: Liberation Se=
rif, serif;">The Linux in N321 is tiny. How can I make the configuration pe=
rmanently in it?</span></span></div><div><br></div><div dir=3D"ltr" data-se=
tdir=3D"false">Any comment from the community will be appreciated.</div><di=
v dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=
=3D"false">Thanks,</div><div dir=3D"ltr" data-setdir=3D"false">Hongwei</div=
></div><div class=3D"ydp703015c2yiv5669889621yqt4485559050" id=3D"ydp703015=
c2yiv5669889621yqtfd46881"><br><br clear=3D"none">
  </div></div></div>
            </div>
        </div></body></html>
------=_Part_1871637_837514364.1631016765369--

--===============2970455807020031006==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2970455807020031006==--
