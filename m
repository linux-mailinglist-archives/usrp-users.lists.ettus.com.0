Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B4D78D6BF
	for <lists+usrp-users@lfdr.de>; Wed, 30 Aug 2023 16:58:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 76F71384CA2
	for <lists+usrp-users@lfdr.de>; Wed, 30 Aug 2023 10:58:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693407530; bh=6NSf7Mb6Ildlj4NzQXCJv4gHtm0OvhWEp2mE1G5UKc0=;
	h=Date:To:References:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=kZ9epaqLi5Dy/4To1wqZDXoTLFmMoqRr4/jlV4LYhkXcDirTM1NZDFvGPw08Pfx5l
	 Uvi7NVXlmcBbUhd4NwC56Z/OfNJXcU1NFTZY6yGci8PnMXIT6cF8XomuZCMppFexu/
	 JR87yuBuLsZkZqIy04criJS3dQkmPWkJN4FPbN9W+FFKP81nuxZTwXjkwnuaoXVgv8
	 3DjHnMC6IXTtPLSRBfSIYXKWZ91VFFCuNhTwyqeukK3KYWia4PZ3OglZmhgBb8C8LG
	 b2vRr7x36aDRv4B/uHa5tWqoqvEZxTv9xF3u+FZmOf4FvVTCa8c7z7rEUlM9WmqBRv
	 o8W60riTPfcvQ==
Received: from sonic305-20.consmr.mail.ir2.yahoo.com (sonic305-20.consmr.mail.ir2.yahoo.com [77.238.177.82])
	by mm2.emwd.com (Postfix) with ESMTPS id 6B9A1384AD3
	for <usrp-users@lists.ettus.com>; Wed, 30 Aug 2023 10:57:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.it header.i=@yahoo.it header.b="lje7gyVU";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.it; s=s2048; t=1693407474; bh=We7/zbjIWr3xN8+SMwWClmLn7aJFKsDjrNCt0pFF+wk=; h=Date:From:To:Subject:References:From:Subject:Reply-To; b=lje7gyVUducnQXy09Joa6DjJPjDr0+78WncgHqViAqevGSUlU/22+jzHIH7HYaGA/7jz+bCX1cAbju1kxjvhV2x9MDaU84+oc03x/1w9ZcZIkwwOGPVlS79QD6M3A3TuimxTC6ubMBbg0sewQDg+8mWYbvwbmhigYA97VWtminHxD/D0lry0iJsEDLFPOq6Giv79WOLq970DQ7mltHb8uVGARD7P9vYIx/vP7Wo2ZqnLXzWqtQfLHyUan04kcIjeia1rzLygHtFJBhkX4yk0I1/Kd2axjVfG9Rbe2QL8HtVr1YB9CE7kidLj2ZzvmJOa5q9yZOUb+cZ8j+D0ie+QiQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1693407474; bh=0YCzUQyfQV4YucXdyvtWeUb+dC8d0bPJ8YgbZQBiP9S=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=X1SS6UeA4RL7cH+Vnr7V5Etyj26RV+r+5esmfykotEO3PPZEz2iRMfUAr+O5F08R4p4hyFDwyxkQpoJKCfID9RUAsp0/zr9DT/9H6b0T9MH8FKLvb66m6iCPPUr9q575+9i9SdrfpVfvgcvKtRvd+cpwF+zG+ivHSLMgHZd77rN41jY8OPq+49Q2R0mh3FM+j6WXAFgseuXPpu9w3rabUP4ark0meViLTmTJh7SRFobuLbj9zZOzMWxaY1Xg3RjRqjq1BrwMgbHVr7wuicG0GLzqd7utIY8wbeRpSXwi7IiaDWYclRd7tyF6AepCDk7U+oneLlTEYoqWvahOk4Eyvg==
X-YMail-OSG: rMtRDIoVM1ltEVQo27wyBaqKjFc_h5uS0qewgQsplv747L_tXy5vWHBNMFoXEoM
 VB9NY9vtionR09BgEYJ2DQsK85b9x18eq7kOsvcQnBACsGlIZYunlBMDINQR_XwLApTVJuk2Jx_J
 hdlQ2jdhwwpWmjZDuRO9HOyEW._VNXelEJmjVnWQsIGDtappPsblmZDJP1OIJHDuGY4hbZyL5HgG
 jnej_KKgkOPrdYtIfNePkoGcfo9Hu3RdNmMkJNcHeAK87IBgWnJqFBIFdwDqGNcIsjrpkw9mGhtc
 BJ9ce1xXM2Xz18us1UsFEbDZMGyBDeQDjh9lkvzLLYrelESZ6Ps__eWpiHU4M1XIEkOOh2VXe6zb
 u1cwnheSqEFkBFamjnJJUiWwdvwLtSd745y7TEJYM1_E22XzlSuvkFXhC1W5lJSyCSxxpu2sU71S
 vQihopZ_SF4kEUITwrkMi0gWraK8OXQ274o3PYp7C_vAn.x7HH3Xq43NCobiwzzrSs.MDFNJUste
 wJKoWLWo2WaKHApJ6DHo16UpFG5JpGeQ7_OBeXChtkqtUrJ8v97rk8T0tTobPelYKeMgF0hw00_x
 Y3zvlOmiqkAST4Pm5dP7gSigZ1URxYrwOQR3Gf6_PykQgu6uAI4eeRRGUVlBJjKnd9y65kke4eKi
 9Ka4dppR5ISCa6J5jiX4cyTM5cLVeovW.PpgV9OcPoJ9lKs4FaHc1g20DgX..gYsCZIGTZeg5u_l
 _2Nr3m0Ap22EmkMLs9LPASZQoff19dwPorXVSd1IKvSu_Qz_2.svYapwLSGW43ZbEVEotqpvZtpS
 NLhtJ9QFzkIqZvjFm9Eun12FDqEKNAlmfiwxqQwNaT1oHdZQJu1mTCEln6C74Xb6Je.nhcNI1rzV
 duscElymYCSeTkoBccMLjIE0akzdYV2VthIJ5La2QiwkEbc8qsGE95fXyXjJ8RR31qZbhKderov.
 PqL4sQtfdyZtvFhakBA5LRBX0GBczKQqeV3ldst6QhBTL6ozTJink94lpHXkviVWKkjgPNAsI.HZ
 l22mwySXbwqIUDUvhfBZtAy3pAA2Vjb3zC2qIVsWZGm.egrwzQm2md8L1tgBNkrJRSrVK.Pbh5SB
 YA.95l7JnSNGzvnpYlLj2Ve16OgTJRcc.T69AbJFGJHICWxk2u5z9ZAC8MqxGfs0q2jdpUsu6qf9
 eS3MKLrXX7vdb6xylJmOXhu2PSbISRXXZMkQpAFwJf2xbFEi2RZTVrXE2IGAwNGwtafTKviijc1X
 KriuXkY1ysaIa3OEpn4ATcdKlzzz72AqC_d49Q2dsylcg.dr_kNvPp8akDM9u9ICiVGCEHLbdQWc
 3CPivGWA1RGGOc8hXu59eupH2Fk1xdtDzmNbhS0H1XLLt_iLeNxsvD8uDlRmHg1dXuMWKEodJTEA
 r7SuBHO0yhl8h0l_7SYYxV6Ut113R.H38cDfB1hSP5gjQnCbbmZlpCDafoAv7PYo1iIi6LQu3R.C
 GelWFaqTth6CFTFDrIc4h1GXZMgtRd6cdbJlDXCCc.R4hWoB1dDX6My_SHueBOpW.RkM_jn3GFO.
 X2VuSa98rHaZqD9MeDDVi9wWR8O2BIp8LM8iKpr7ap2TzeF8JgCBF.c3zPyIvTH584iCYmRKWRfb
 HgcSOmL3nyTTsOXfLiyI9j8Tt.Z4M_QUy5kwVNxenbL5QTWgEDjBv74jwG6tAA463NClsjft7CGF
 VOHPCAZspiQCXu6dJJEQ6HaummNMiEbXyb_UJ4CioACyWivqlnSDH1TWjFVjemK7KxYDgwqzW9.S
 eEJaC.MJJSV7Y2S_1QEsV56B_gIbLiP2l5GggSetdLBV8M.WtxVUwHyYV1XaDTRTyh3QSyAPdhDm
 lJG_tmOVaM6Bki0ugCDJN9OP45pTF5z36Qctq_x8zs0CmmS5bpgRbhyddDE0z.wnCjEYp_ksjQCe
 0jLv7mUlaUL_E9BaHdhtGrvPgaGVRqhl3B3rlpmzIdg3bJBssqPyFpyrFdIgIk9eyB1RxNh.xS.U
 KgeZQ._v1u55x9s2wllmmvFT23dKQFoiFFxNUQyJvwufQw4UVb7UfN3EDHmil1ww8LA0eEgp7Ri6
 66wNmVwuUvl7XlZ_U_yFQ7imW8BOG.0d8ykzWlbgxXUpzACCfAgZnNTf5.fYhC0mlGwN6KOvM6vB
 LvlmaQqKx60B3mN3x1jVhx_ckXIxFdY0jXegvzSAMBCHtEMOYmmLzMAO5BXgpr7QqZ7l6dpU6
X-Sonic-MF: <djtandrea@yahoo.it>
X-Sonic-ID: e26b68ee-62a5-4baa-877f-bb199cd1a2b8
Received: from sonic.gate.mail.ne1.yahoo.com by sonic305.consmr.mail.ir2.yahoo.com with HTTP; Wed, 30 Aug 2023 14:57:54 +0000
Date: Wed, 30 Aug 2023 14:57:52 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <584480455.3301411.1693407472738@mail.yahoo.com>
MIME-Version: 1.0
References: <584480455.3301411.1693407472738.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.21763 YMailNorrin
Message-ID-Hash: ULU3AZADMNK3UIJOJYKCD7C3TQTAWTBR
X-Message-ID-Hash: ULU3AZADMNK3UIJOJYKCD7C3TQTAWTBR
X-MailFrom: djtandrea@yahoo.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310 problem with LLLLL
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ULU3AZADMNK3UIJOJYKCD7C3TQTAWTBR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Andrea De Jesus Torres via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andrea De Jesus Torres <djtandrea@yahoo.it>
Content-Type: multipart/mixed; boundary="===============6448031779817736230=="

--===============6448031779817736230==
Content-Type: multipart/alternative;
	boundary="----=_Part_3301410_175626055.1693407472737"

------=_Part_3301410_175626055.1693407472737
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi everyone,
i am working with openairinterface, and i am experiencing a strange behavio=
r with the X310 (branded USRP-2954R before flashing).When i run a code with=
 a certain configuration file using a B210 everything works as expected, wh=
ile when using an X310 i almost always end seeing a flood of LLL on the scr=
een.That happens, for those who have familiarity with openairinterface, eit=
her running the gNB or the UE.

The X310 is flashed with the XG firmware using uhd 4.4 (but also with other=
 4.x versions happens the same) and connected to an Ubuntu 22.04 machine wi=
th an ethernet cable.
The USRP an the network interface are configured according to the Ettus gui=
de=C2=A0https://kb.ettus.com/Getting_Started_with_4G_LTE_using_Eurecom_Open=
AirInterface_(OAI)_on_the_USRP_2974


Though, with the uhd test utilities, like benchmark_rate, no issue appear.

Do you have any idea on how i could debug this situation?
Already asked the OpenAirInterface, but no reply yet.

thanks,
andrea


------=_Part_3301410_175626055.1693407472737
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"yahoo-style-wrap" style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div dir=
=3D"ltr" data-setdir=3D"false">Hi everyone,</div><div dir=3D"ltr" data-setd=
ir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">i am working =
with openairinterface, and i am experiencing a strange behavior with the X3=
10 (branded USRP-2954R before flashing).</div><div dir=3D"ltr" data-setdir=
=3D"false">When i run a code with a certain configuration file using a B210=
 everything works as expected, while when using an X310 i almost always end=
 seeing a flood of LLL on the screen.</div><div dir=3D"ltr" data-setdir=3D"=
false">That happens, for those who have familiarity with openairinterface, =
either running the gNB or the UE.<br><br>The X310 is flashed with the XG fi=
rmware using uhd 4.4 (but also with other 4.x versions happens the same) an=
d connected to an Ubuntu 22.04 machine with an ethernet cable.<br>The USRP =
an the network interface are configured according to the Ettus guide&nbsp;<=
a href=3D"https://kb.ettus.com/Getting_Started_with_4G_LTE_using_Eurecom_Op=
enAirInterface_(OAI)_on_the_USRP_2974" rel=3D"nofollow" target=3D"_blank">h=
ttps://kb.ettus.com/Getting_Started_with_4G_LTE_using_Eurecom_OpenAirInterf=
ace_(OAI)_on_the_USRP_2974</a><br><br><br>Though, with the uhd test utiliti=
es, like benchmark_rate, no issue appear.<br><br>Do you have any idea on ho=
w i could debug this situation?<br>Already asked the OpenAirInterface, but =
no reply yet.<br><br>thanks,<br>andrea<br><br></div></div></body></html>
------=_Part_3301410_175626055.1693407472737--

--===============6448031779817736230==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6448031779817736230==--
