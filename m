Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1FE3F9F59
	for <lists+usrp-users@lfdr.de>; Fri, 27 Aug 2021 20:57:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 56DC5383EF0
	for <lists+usrp-users@lfdr.de>; Fri, 27 Aug 2021 14:57:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="P91gCAov";
	dkim-atps=neutral
Received: from sonic303-3.consmr.mail.bf2.yahoo.com (sonic303-3.consmr.mail.bf2.yahoo.com [74.6.131.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 0E052383E8F
	for <usrp-users@lists.ettus.com>; Fri, 27 Aug 2021 14:56:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1630090618; bh=GXTHd/OFvzn+7xxnpj23RZvjkr7SFiSx5OtPXAegVVQ=; h=Date:From:To:Subject:References:From:Subject:Reply-To; b=P91gCAovX5t4jjX9MH5j2yDNRUdP64wp4G2ADD1M0Z7qE5+WEjWLChc6LnHzX8cz+uL+ZE/xovOHW7mxE0SPay+/GcBcSAYQDTjEhb68srSLNDoF3EZB6wbieLer2/8IACpdNbsUBGsZR6NwaWSpjOFl+ZUB2/4ueCb6YiMU7tduuYEEOYQsADWHibDcYLG85ps3dvqGwOIv1jDMlCtdFtkdvrFnb8V9cCL89M+uB6FUqwnLpRSS6bzW87KuDapBOqxsYxC89n1LCMDwMab9ra3PwAiVB/t+RR+sedj1jhBgqdKMRZAHqkwWeuq3zHXiAQ5ymUI5HDd5NddrRlbGJA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1630090618; bh=tLMKHB3u31WfsnzTfcPNe9k7ORPk4gCp+2P/CDy0INs=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=l04f3ovma1iudsz2b4h+R3GfxPRySWUm8BEH391dpEdPl9+BaYUU/79/qUxwQ3xDNBPtCXtW55nhjl5cctn+zgBhK6TuIWUkeo4RQ/FUYghakmQ7PKBIb9gxqyQCOY0+AlsItLFqU06nUxQPAMDlm1xq6m/CWNX2BXAx7N5BfufXLy/PTZTNwCCPHkf7EMoCKUdPeS4/ZE/vxRd0Qzj6AepQNMqZVLr6oHIyPKG8rKLqPBtUaGumAFwRl6Htkq5y2XCQDddcqxbN0DVBq5Z73UbOtZBwW+HhsSBsJcrFQykyuMurVyAf+jqE3ZQ7cr2vpfspM3PTzo7YgnhF3jjP3A==
X-YMail-OSG: 5qv1tJAVM1n1t1VS5jHLv28xZS5R7USj9rWikm5nSMODlfL9Fc4AbQrVJ8CHs22
 8j7u092k2ZPsqxL_jRf2SQ6ZynAedrosgukTO7l4gW0XGp993v_dAnp6kXxxTRxNz13Zrh8XgvMt
 qw2HaScJ1eEXvP2Ka9yfyZmJ54gfZ1004XC3BZIzHlCh0EJnrqIj1OqLq9.0.SFfrey0W3IexQ.l
 2y41E7mpI8LNKQ96eHL7nNfOFe9lf2hK53t_JQnTLnxb3IRmYeKzQOZvhMBDk9U1O1lEJ15iQJBG
 8DMA9xXQ3q6GY4j2CHk2ktTSDG.Z36QgiW96fRC3Fn8L0b.CuV97QbzuybAKr7SwoJKSS1EbFN4Q
 MYueJ_KIOuc7lUJ5_x7hXp9G3arRNg4IDlfguny.ezYSlSg4hHb0juZIXUcJFzWssef8lCRvAdUt
 MKkTuTtXV2nSHsIjxG9gmnCCMVd5pw70bXNBdJrpWs3VMZWlZb1cuU3BdXlQMbyYNTFbvPjoQRnY
 .iAZYQ9CeeyO3Zf94ufDpfTnqxAnt00kvirI7gDqdfvyWj99hjZ7gb_1hmfkvsG8NUl5KJ41g29s
 qGFm1fmf.q2IVyPoMYDGBztB8kp4uXtDE6ndLF9fgLr7MKdyJYa2DPB.yEyZaMnaIPpKwE1kgO1l
 wtHwgCemPJyLggz6xTJ5K.g2o3gULF2whMA1AwEU6oi2Op6fM.TNwfQff1yijLwbx0pghezFD63e
 LXydy9OjK8FvJCrDFyYhSu2WToAaXhysw6ju7fGv4o6RaZQO9ayp19HRnJrLhL2b6urJnF.K6Xe0
 EhBI6V8xaTAIlfKC4gvspTQs3yXIbvTGGqLa01TkUBjeGVnxQf_SbZuNFJR_HAnlRac7UJzRXRBw
 5tlH0zuxyIFFNoUQnYelgSphi4oLEpr7UKIwrIUfQzNrvzi5VdrkCG65Irbpazr1hq.DyyhDa28s
 EXKEIgS3hgqwSTaoCIWO6rTiK5RZe7T8qaSRL.LEGwJtma_bPFroV4y62pHQAIXQ9VZFymeRYhKS
 xX9N0JKhxZOFJ9eKrnqa0stXOxFIUX3aM5YPSHvagDMW7Bqwa6EIYBN6mYX7dD.mQHKPlvmBwTqG
 Hy1RJy1X3pDN5eUCcok4sCZjOANWu_AdcAgxKzMNQXH_dVNWbJCj3kc6awNNaF15hDMAUVWb6.4l
 rh88wv4HKdyPeFHtgKRafClUOrMUvYJ2X7Q22R_8295tU2Nc_ax2fzPJm3Cvyjo3qdU.cZvmNO1n
 .9REx8v1TOhPu2L0Z7pCxnXgUKZGSxM6Z1emJd6sQ57Tg6vRNKHPgpXGBgW5WMNPzuNJ8f7nP0qM
 TKp0DyvMDopNEoV791gW99WR1kMSxuFm0O9Ob9_FKv2T2Y7wmkY_JxzmSg3CKVeJoyNmYdlwV8cY
 qucPQnbIUUcoun5dBSnI3Ao8XXTwL1kl0l63.gJ0k.GPkgjt6QApgimynFWypCxzguYOj70fbaXv
 nZTaIBSjkvbqxGkk7gtooUUFudwsKeZpgUyinUThxubPzgn7b.vQtxR11a06toCT.YDSmEz8CiCh
 4xRqirbHyquBJhAUi9KybwLbq6oqoFY7l1ADH5QcgvgnCbNndmylE0Bdva9hH6UPDj60.LmS.AnI
 aO5vFSQgiAicwgQfq03xrPdTD7cZBqNAbJ9kbr8uxJoU39McZ5cam4aYSK_gd.gquXE8uoHE9Hrf
 kAO.XlxChewFpTxLys708qfVZYdy1R1bSF5eakGo8RqN.AjZY7WBPZuwE04hYPaF.HvjNLIq4gtj
 iDRIRNLsUJw5fSwtRNSClo_713cbKH.5MaZNkCWCAoExhiP4FXp4jalG6bDcAZnqPTIeAE5pezQv
 hgfndj5AXA5gLFe1CbvXerBegpuysK9qf6JWgjCLJnX8TsKL8RH6jDZ7wZx3ugLAe83fBwz6.mwD
 y_5D.DFxHGDb7Vs.oDbKX7Q5w.O7jvTGvQnitMrE1XKAWv5kose8SKNe6IC8K2E02mUe8yFGLDev
 juaNmax5Tllm5yW.d0LwMjvfaia9SYFqsrHhc6MPmqeJY8f67HNpqgO2bOVhFrmZIS0KtRs4WM80
 b6uZImmfl9pXw4hrSHjRPsPT7GokSAIs4.2eUX26R91dd_SWtfoC_NdgpdVLtT2Cba5P8jAP055T
 Z99P6FIZApS6xNyWWUaSses5zuoLfPxE_bNKOQ0ku9k_5MsKRpuyxWQh7br8J3WlASyKuXXjmWaN
 abRXBKw1IqxtRMj3I_yNJ_XxbodBq69u_MMkZ0aVwycxCbg1onEBpCRsmTO6qSFuUia8T.oNK.x3
 BYUo-
X-Sonic-MF: <t_whit_87@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic303.consmr.mail.bf2.yahoo.com with HTTP; Fri, 27 Aug 2021 18:56:58 +0000
Date: Fri, 27 Aug 2021 18:56:52 +0000 (UTC)
To: Usrp-users <usrp-users@lists.ettus.com>
Message-ID: <127551906.11620.1630090612779@mail.yahoo.com>
MIME-Version: 1.0
References: <127551906.11620.1630090612779.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.18924 YMailNorrin
Message-ID-Hash: J45QJIZJKILB3VOGQT7P6VNIHTANGRPU
X-Message-ID-Hash: J45QJIZJKILB3VOGQT7P6VNIHTANGRPU
X-MailFrom: t_whit_87@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] CMake error when building UHD for N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/J45QJIZJKILB3VOGQT7P6VNIHTANGRPU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Tellrell White via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tellrell White <t_whit_87@yahoo.com>
Content-Type: multipart/mixed; boundary="===============6324564094573616444=="

--===============6324564094573616444==
Content-Type: multipart/alternative;
	boundary="----=_Part_11619_26764009.1630090612778"

------=_Part_11619_26764009.1630090612778
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Currently, I'm trying to build UHD for the N310 on my host machine followin=
g the link https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_fsbuild =
and I'm getting the following error as shown.=20


tw@tw-virtual-machine:~/uhd_n310/uhd/host/build$ cmake -DCMAKE_TOOLCHAIN_FI=
LE=3D/home/tw/uhd_n310/uhd/host/cmake/Toolchains/oe-sdk_cross.cmake -DCMAKE=
_INSTALL_PREFIX=3D/usr/local/share/uhd_n310=20
CMake Warning:
=C2=A0 No source or binary directory provided.=C2=A0 Both will be assumed t=
o be the
=C2=A0 same as the current working directory, but note that this warning wi=
ll
=C2=A0 become a fatal error in future CMake releases.


CMake Error: The source directory "/home/tw/uhd_n310/uhd/host/build" does n=
ot appear to contain CMakeLists.txt.
Specify --help for usage, or press the help button on the CMake GUI.



------=_Part_11619_26764009.1630090612778
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"yahoo-style-wrap" style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div dir=
=3D"ltr" data-setdir=3D"false">Currently, I'm trying to build UHD for the N=
310 on my host machine following the link <a href=3D"https://files.ettus.co=
m/manual/page_usrp_n3xx.html#n3xx_fsbuild" rel=3D"nofollow" target=3D"_blan=
k">https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_fsbuild</a> and =
I'm getting the following error as shown. <br></div><div><br></div><div><br=
></div><div dir=3D"ltr" data-setdir=3D"false"><div>tw@tw-virtual-machine:~/=
uhd_n310/uhd/host/build$ cmake -DCMAKE_TOOLCHAIN_FILE=3D/home/tw/uhd_n310/u=
hd/host/cmake/Toolchains/oe-sdk_cross.cmake -DCMAKE_INSTALL_PREFIX=3D/usr/l=
ocal/share/uhd_n310 <br>CMake Warning:<br>&nbsp; No source or binary direct=
ory provided.&nbsp; Both will be assumed to be the<br>&nbsp; same as the cu=
rrent working directory, but note that this warning will<br>&nbsp; become a=
 fatal error in future CMake releases.<br><br><br>CMake Error: The source d=
irectory "/home/tw/uhd_n310/uhd/host/build" does not appear to contain CMak=
eLists.txt.<br>Specify --help for usage, or press the help button on the CM=
ake GUI.<br><br></div><div><br></div></div></div></body></html>
------=_Part_11619_26764009.1630090612778--

--===============6324564094573616444==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6324564094573616444==--
