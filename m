Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3423E53A9DE
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jun 2022 17:20:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 11D0A383674
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jun 2022 11:20:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654096840; bh=INmAN7k9vEaL+ZYbgEvj59vSmcQkeFhwgdqzFW4mJXw=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Q6e1hQnmU+MuyOyM/07vbtWCXN0EW23KWoFqOQQjl7fnZxwyiKshWkl7yLsg/JQRW
	 cKhoEalT5jtqRxt7P+/gGUARj8LDDCc/S44T1+XbcCuT+ZQIR/ODXTBGpki5U5cCoe
	 KHlQWSzrRGq3SxWs5/qTMtr6/UVHrUgpbtDzI7mHfRSUE4+sUoFCv7Kh04bbthvrQz
	 sZ76mp765Gxkr1OTdrJAKvM0RnLFipXbbYhCHpUD8P61Oe/qHjcUnEClTyfu073diJ
	 tUmu7uoDhqvmWlt21xfdU27PLN7x9GSVsBCZ8nALqerzfvPPN68Gg2QGG7Am3Pim+o
	 bp/gtebCW+QXg==
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 4CDBB38411A;
	Wed,  1 Jun 2022 11:19:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gQoh/dI0";
	dkim-atps=neutral
Received: by mail-pj1-f43.google.com with SMTP id 3-20020a17090a174300b001e426a02ac5so3420234pjm.2;
        Wed, 01 Jun 2022 08:19:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=KmTCTu61EU5ePU6VfidaxnOBQPNGVgg4p01Aob5N6Fg=;
        b=gQoh/dI0WvrwIBmudRFVdpjsjv+jQpHgeWYRtMOcKsRq8To/jxBq23GPoFUBOMFrLk
         rwaMiMvgofBYqBFBWqKR1FzndKum388UJoe6KwpoZhT9B9g2c8eBTjthWOg/NFnfyGa5
         foSMXbM7Qk8cm+Ww9Qvh7VjRDuLP7PMotoj9wGZOPNFPUY63ch27iaB9oMewI72owMw4
         pKrESaJwNYlBcRweCGcH2YjjvbfJcnL//CeMNbqv6OzPKkOQoKonQVd5QnZzxbquUfVe
         H4uz6gSKLHOdxY96vOZ+p7tcpjaVk+vA/oLpG8E2h/TgYLmqniCnfTjZzlol0I95gGlW
         djhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=KmTCTu61EU5ePU6VfidaxnOBQPNGVgg4p01Aob5N6Fg=;
        b=XLn56retqY/6Nlud4D71hii46Ci5ogVtd9m22jABR7bXilXx8yXSOI0IFbpLhG7L8Q
         6z1j+i3U3//LbMSwvu2QgqWd6BYuqL2FD7jizhizsSedmfrp4UKqt+qxrxpP43SpDuMc
         XQUmSMWfZ0LC3mZQmOiRynUQbl5A+piMeAsv+30K2/lrU9QfYI94fV09VPlaEHsbxmUt
         BpIHlYOi3CkcHr69jzgDqZxLXm1O7dbh6fHMTiFiCcd+5XFt0zsQTcWaxuX+UfiD0+PU
         oUN1Lc0MdOj79epJApR+9SpSHnRYzZnVrh0ikuont3ot4sBO43HcHly5w8WOGcoGMTDt
         lr3g==
X-Gm-Message-State: AOAM530vBdgCXvCQC+x1dIiax5qXbW+5bQyTO4YjI46uXyRuEpEi9wjr
	qz8AMRgy7y6+6IhX2kOXZJEvbmbXU+UhzPeusyes31cLMSNgqw==
X-Google-Smtp-Source: ABdhPJy5Z+/MJVQtWdleKtqDmgIjFyDCnJg8RyncxtcuMPTdH0PvQ4LQ1/wttTyduw6FVWUqNasyGJIjeR4YCRGOiOo=
X-Received: by 2002:a17:903:32c8:b0:166:3674:b2d4 with SMTP id
 i8-20020a17090332c800b001663674b2d4mr414223plr.173.1654096768109; Wed, 01 Jun
 2022 08:19:28 -0700 (PDT)
MIME-Version: 1.0
From: gokul sani <cnsgokul@gmail.com>
Date: Wed, 1 Jun 2022 17:19:17 +0200
Message-ID: <CAJ28uHF+da1ghihZpZty73+VGq+8KB3cxFZQJFAoC1=5HAUcZw@mail.gmail.com>
To: usrp-users-owner@lists.ettus.com, usrp-users@lists.ettus.com
Message-ID-Hash: LQVPJ7UXGC3JY4WACFW7EZYDAF3ZMCNN
X-Message-ID-Hash: LQVPJ7UXGC3JY4WACFW7EZYDAF3ZMCNN
X-MailFrom: cnsgokul@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] GPS invalid reply
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LQVPJ7UXGC3JY4WACFW7EZYDAF3ZMCNN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2214704693651301847=="

--===============2214704693651301847==
Content-Type: multipart/alternative; boundary="000000000000498f4405e0646a7a"

--000000000000498f4405e0646a7a
Content-Type: text/plain; charset="UTF-8"

Dear USRP Community,

I am using usrp b210 with gpsdo. But "uhd_usrp_probe" gave me an error.
-*-[ERROR] [GPS] GPS invalid reply "scpi > *IDN?*
The gps antenna is tested with a different b210 and received the lock.
last week, it was working fine. No apparent changes were made.! Please
provide any insights of yours.


uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
UHD_3.15.0.HEAD-0-gaea0e2de
[INFO] [B200] Loading firmware image:
/usr/local/share/uhd/images/usrp_b200_fw.hex...
[INFO] [B200] Detected Device: B210
[INFO] [B200] Loading FPGA image:
/usr/local/share/uhd/images/usrp_b210_fpga.bin...
[INFO] [B200] Operating over USB 3.
[INFO] [B200] Detecting internal GPSDO....

*[ERROR] [GPS] GPS invalid reply "scpi > *IDN?", assuming none available*
[INFO] [GPS] No GPSDO found
[INFO] [B200] Initialize CODEC control...
[INFO] [B200] Initialize Radio control...
[INFO] [B200] Performing register loopback test...
[INFO] [B200] Register loopback test passed
[INFO] [B200] Performing register loopback test...
[INFO] [B200] Register loopback test passed
[INFO] [B200] Setting master clock rate selection to 'automatic'.
[INFO] [B200] Asking for clock rate 16.000000 MHz...
[INFO] [B200] Actually got clock rate 16.000000 MHz.
  _____________________________________________________
 /
|       Device: B-Series Device
|     _____________________________________________________
|    /

..
.
..


Thank you,
Gokul

--000000000000498f4405e0646a7a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear USRP Community,</div><div><br></div><div>I am us=
ing usrp b210 with gpsdo. But &quot;uhd_usrp_probe&quot; gave me an error. =
<br></div><div>-<b>-[ERROR] [GPS] GPS invalid reply &quot;scpi &gt; *IDN?</=
b></div><div>The gps antenna is tested with a different b210 and received t=
he lock.</div><div><div>last week, it was working fine. No apparent changes=
 were made.! Please provide any insights of yours.</div><br><b></b></div><d=
iv><br></div><div>uhd_usrp_probe <br>[INFO] [UHD] linux; GNU C++ version 5.=
4.0 20160609; Boost_105800; UHD_3.15.0.HEAD-0-gaea0e2de<br>[INFO] [B200] Lo=
ading firmware image: /usr/local/share/uhd/images/usrp_b200_fw.hex...<br>[I=
NFO] [B200] Detected Device: B210<br>[INFO] [B200] Loading FPGA image: /usr=
/local/share/uhd/images/usrp_b210_fpga.bin...<br>[INFO] [B200] Operating ov=
er USB 3.<br>[INFO] [B200] Detecting internal GPSDO.... <br><b>[ERROR] [GPS=
] GPS invalid reply &quot;scpi &gt; *IDN?<br>&quot;, assuming none availabl=
e</b><br>[INFO] [GPS] No GPSDO found<br>[INFO] [B200] Initialize CODEC cont=
rol...<br>[INFO] [B200] Initialize Radio control...<br>[INFO] [B200] Perfor=
ming register loopback test... <br>[INFO] [B200] Register loopback test pas=
sed<br>[INFO] [B200] Performing register loopback test... <br>[INFO] [B200]=
 Register loopback test passed<br>[INFO] [B200] Setting master clock rate s=
election to &#39;automatic&#39;.<br>[INFO] [B200] Asking for clock rate 16.=
000000 MHz... <br>[INFO] [B200] Actually got clock rate 16.000000 MHz.<br>=
=C2=A0 _____________________________________________________<br>=C2=A0/<br>=
| =C2=A0 =C2=A0 =C2=A0 Device: B-Series Device<br>| =C2=A0 =C2=A0 _________=
____________________________________________<br>| =C2=A0 =C2=A0/</div><div>=
<br></div><div>..</div><div>.</div><div>..</div><div><br></div><div> </div>=
<div><br></div><div>Thank you,</div><div>Gokul<br></div></div>

--000000000000498f4405e0646a7a--

--===============2214704693651301847==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2214704693651301847==--
