Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C94D81370EB
	for <lists+usrp-users@lfdr.de>; Fri, 10 Jan 2020 16:16:38 +0100 (CET)
Received: from [::1] (port=47200 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipw1Z-0003DI-SP; Fri, 10 Jan 2020 10:16:33 -0500
Received: from sonic313-56.consmr.mail.ne1.yahoo.com ([66.163.185.31]:45364)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <santu_voonna@yahoo.com>)
 id 1ipw1W-00039z-T4
 for usrp-users@lists.ettus.com; Fri, 10 Jan 2020 10:16:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1578669350; bh=jMsmMxGEAKW03AQdABXGEWKYyDJcgO5dWVAwzQgnKwY=;
 h=Date:From:To:Subject:References:From:Subject;
 b=rqBvo9ZjnZmFQB3gCdMm8s73b5eRazxNUqaTqTxJSsTxOFzsK2OxiFym4DsFtyw5N/e1qmgqCIFpGw1EeHp4u6rdenBDThWoV/qu8E63eCACq0I+1n75LSxl7xPLVIjmMjdrtb6NAmQhVhx4rd1Rg1U2zpCdVgZiwVc3voL8NM0M4AvMhd8aqNCPnP3qKMCMm+dPG5SC75DixCJFsg6hpjSIwQt6tZNZE0oQ0xTvWphEVTHr85ul+n/RJWZayAq0NB9lCMdKu8EreE/D/URQzFzLGdeZBqZv5KYPRA0eKo34a+pSik7zr7VUPUKnYLu0oWaAtkUq7NE9hQ4Gz/kFFw==
X-YMail-OSG: ehjASuMVM1nIcfaMIoVRWi0fSIoC_PVOGSZcY3UbfxgUMPe82hIsSxM_j_FOmJd
 5Ekjz5.yPuFBzO9SUAGLXMuLeR54wJyZviszEBntgusbj7s7M1kkBSeq0kLg42o6OM7Fz8zcesHd
 XbIJutdR2lyNkjY4_dzvHVWP0mKGNf8a4MSTpbKArNGL.IjeoyrheXhH6Q91qWCHX5x4WshVP_FX
 g1eZFUsjMyxv9b1PgTvhViZd_Z0A.i3MDuGJBSX9Fi5r7fz02P4yHtq_9pey2381QCp55ssini.4
 sT_rW9ajtH86Wxij93y8PCPuij_ic0t3GwxGy1thSGlEF3mke7GwUqDk1bqfFrboFpKzrB6wijjR
 MXHIuYcUgzkOyw9c3G6l5TD.ID2ZFYhh03A0PS5R4pnkCfgBY0VKZzD8aox9NyE9yE.3hG0NrE01
 ACZ4LryLVlv0iyaVaoG5uCfVgaXgGjeNVKUKYUAS2HHpoy0Heo_RhGm3WkuqQWwOtdtKBc1jC8bk
 Bqruh.1vYfq8A8.lPyFoX9wfNoIYOiJExJcgnFhF.t.DvEMmP7DSrYjR6LTF2ucwWKm8_yE73opM
 LANFjNqct9cwJERwHFaAu2bg4VJyCqA9dTAYfD4nIXL2ehAXCiCENS6uRPxoQ9UTBGjXEqOYjFnC
 tg9Y43yjE2hGbokuSxMaV_hvF1UAukVld44zk4sZmBu8Ehs64jjAF1OGWuPyiriKSVIaR.4Wb9AG
 CPDMJmNwv_MaRJ82KETLK6msXX2A2_nrlE1_7P6k6tLzooiZKkZ4fqCoJBpSpKIHkmJ495v5TLpr
 faP9fual0RFCUe.qP2aXjREsqluTrVeL6FVvmSpCtWy5.fVm0.PdPRuzqeOxzk9E_KIZztUDIG73
 .4aO68Pm.bXIzqUlo4E6rOZyrUvtoHcQ41m8y1syLV0JH12Uu1ICxQDRhOyo2G_YBOsJKnUhocBc
 pPM0V5Jq2rWB.eHTtka18OusRcSlkX..hYfJsT5Ef3xBtuj.rzbt4T2SOKOU1zLCPStuGTvZEmIm
 bINIlFMt7AEW12SrPjyhJClxdgTdAzKSw3EaaxpsFR9BJ45UdaYxdigSaJe5d5Rs13NnxRwIdzL4
 ZV84mzJzbRpreMf4QROnPs8_7dXy6MqzCuo5nbtYYK4XOax7FTOWHiCJjTqm2vwztUseyQUaDWn9
 Dfi8Rd17sUo_pDjEfFFyk05Wj84OBXf_orS4NwRH73zQDVtSMVniTEv5AnjEhgn4xkSDjTahExGg
 LYZMtbYKtNme4vjGfnRv5EaVZJdEV009mf7HK4S8jKEcomBWSiM8mHLaarRyA4BYYQEPdjhLKc2J
 OKWX7Kc0xLXauworVP3yVGz6UucLYkfMMH9ng9Bh1
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic313.consmr.mail.ne1.yahoo.com with HTTP; Fri, 10 Jan 2020 15:15:50 +0000
Date: Fri, 10 Jan 2020 15:15:44 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <826572958.9669290.1578669344799@mail.yahoo.com>
MIME-Version: 1.0
References: <826572958.9669290.1578669344799.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.14873 YMailNorrin Mozilla/5.0 (X11; Linux x86_64;
 rv:68.0) Gecko/20100101 Firefox/68.0
Subject: [USRP-users] Run time issue with 3.14.1.1 (X300 with UBX)
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: voonna santosh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: voonna santosh <santu_voonna@yahoo.com>
Content-Type: multipart/mixed; boundary="===============6647198801530680730=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============6647198801530680730==
Content-Type: multipart/alternative; 
	boundary="----=_Part_9669289_894881286.1578669344798"
Content-Length: 2626

------=_Part_9669289_894881286.1578669344798
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi There,=C2=A0=C2=A0 I have just updated to 3.14.1 and experiencing the fo=
llowing issue. The system starts well, then there would be couple of underf=
lows (even at less sampling rates) and the following error is shown. In thi=
s case I don't see anything on the scope.
=C2=A0=C2=A0 I have restarted SDR and my PC, then it is working well.=20

Command used:=20
./tx_samples_from_file --args addr=3D192.168.40.2=C2=A0 --file /home/svoonn=
a/repo/test_files/test_file_SW_Samples_1MHz_28G.bin=C2=A0=C2=A0 --type shor=
t --spb 3640 --rate 50e6 --freq 60e6=C2=A0 --gain 0 --ant TX/RX --subdev A:=
0 --bw 40 --ref internal --repeat --lo_off 80000000
[ERROR] [X300] 192.168.40.2: x300 fw communication failure #1EnvironmentErr=
or: IOError: x300 fw poke32 - reply timed out

BR,Santosh


------=_Part_9669289_894881286.1578669344798
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"yahoo-style-wrap" style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div dir=
=3D"ltr" data-setdir=3D"false"><div><div dir=3D"ltr" data-setdir=3D"false">=
Hi There,</div><div dir=3D"ltr" data-setdir=3D"false">&nbsp;&nbsp; I have j=
ust updated to 3.14.1 and experiencing the following issue. The system star=
ts well, then there would be couple of underflows (even at less sampling ra=
tes) and the following error is shown. In this case I don't see anything on=
 the scope.</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=
=3D"ltr" data-setdir=3D"false">&nbsp;&nbsp; I have restarted SDR and my PC,=
 then it is working well. <br></div><div dir=3D"ltr" data-setdir=3D"false">=
<br></div><div dir=3D"ltr" data-setdir=3D"false">Command used: <span><br></=
span></div><div dir=3D"ltr" data-setdir=3D"false"><span>./tx_samples_from_f=
ile --args addr=3D192.168.40.2&nbsp; --file /home/svoonna/repo/test_files/t=
est_file_SW_Samples_1MHz_28G.bin&nbsp;&nbsp; --type short --spb 3640 --rate=
 50e6 --freq 60e6&nbsp; --gain 0 --ant TX/RX --subdev A:0 --bw 40 --ref int=
ernal --repeat --lo_off 80000000</span></div><div><br></div><div><b>[ERROR]=
 [X300] 192.168.40.2: x300 fw communication failure #1</b></div><b>Environm=
entError: IOError: x300 fw poke32 - reply timed out</b><br><div><br></div><=
div dir=3D"ltr" data-setdir=3D"false">BR,</div><div dir=3D"ltr" data-setdir=
=3D"false">Santosh<br></div></div><div><br></div></div></div></body></html>
------=_Part_9669289_894881286.1578669344798--


--===============6647198801530680730==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6647198801530680730==--

