Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CAD51496B2
	for <lists+usrp-users@lfdr.de>; Sat, 25 Jan 2020 17:44:48 +0100 (CET)
Received: from [::1] (port=35598 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ivOYB-0002kr-I4; Sat, 25 Jan 2020 11:44:47 -0500
Received: from mail-il1-f182.google.com ([209.85.166.182]:34987)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sammywelschen@gmail.com>)
 id 1ivOY7-0002Nl-HH
 for usrp-users@lists.ettus.com; Sat, 25 Jan 2020 11:44:43 -0500
Received: by mail-il1-f182.google.com with SMTP id g12so4161565ild.2
 for <usrp-users@lists.ettus.com>; Sat, 25 Jan 2020 08:44:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=LylVecGmdHePFCCCIbke01/+ZpJN2miDP+MXSHzADJg=;
 b=Utn29FiKXhAjw4LAiXvL42EOgt6G5rlI0eqldWmf0aW+DYlMnqnJiO9SdVXID/HRkO
 /3JFQmr4PRrmOH9uw+CBukno7ZZQ/xQC2P+YvMGkrftVYCyvqHpOeRb2G5W+70a8Sz/7
 7bOqGxdi++8QCcHQBnCvSe03zsSDKPOGmNdT4AANRdHNoBJ0rfW4dcTel92lj2nobieU
 d7gk/fFQp3NdONN/BmZNA4dObuw1onjxhvwdq7jL7vgguZhsXkGO99jYWPuAuK3uzggz
 g7m25YlyeXBmRN9cbFUXMLf8uWCpgqMubSTX/WYG52DYLvb97lliKQEOC66scEc9S0ok
 JytQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=LylVecGmdHePFCCCIbke01/+ZpJN2miDP+MXSHzADJg=;
 b=BUu7uHjcQ6VVTzp7N0n0KdNyfNCg3G2Gr7wy8sywPy6jkOTv1Crst3B5yvvicYGWZv
 DJuhvq8EzlbowcajTn/h8uGHMeVCz2CalxuQ6ogOOFsKiVI2edPr76j1xNg5usS+WH8M
 NCSe9VLcdDaxjU+XJzd0kvd6uWbLycj6RZOtqLGbCvgTBdmH8czFx6qoIsDmskviym12
 VivBlCZu4QTzkOPjiEaiQqK+FZw1GHnshua1ZmlSxlpChIdjLJWVWnRclGaFAL7k+hK1
 /zdcZIY+Z9/EBh5Ktry5rHyjrzWwzxlX66TrZScR17a68VuZxoKFRD2vHUeZWIWU4zR0
 /ZkQ==
X-Gm-Message-State: APjAAAVanWOnierf8hLMUdgzdFyVK35f6x9fyGE1kEGS7L+pYwAJ9ifK
 cxZldJKJM6yT1r2m1geOVzseouNyQp5lJstaSwmlGg==
X-Google-Smtp-Source: APXvYqxV+mWTbAlSW486PfjXuUx5txeE5DFjTNGdLsQsXd1brmPB/P2cuwYKUflH5Q6I47UHl7FRz68NhI+T1IV8OPU=
X-Received: by 2002:a92:3a8d:: with SMTP id i13mr8762483ilf.112.1579970642360; 
 Sat, 25 Jan 2020 08:44:02 -0800 (PST)
MIME-Version: 1.0
Date: Sat, 25 Jan 2020 17:43:50 +0100
Message-ID: <CAE6G02_pDDd2H5yX8Sf2jqBC7bo1hnqBMgz5-i09NBCBYSoZgQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] DOA with N310 or X310+TwinRX
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
From: Sammy Welschen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sammy Welschen <sammywelschen@gmail.com>
Content-Type: multipart/mixed; boundary="===============2692337000474698295=="
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

--===============2692337000474698295==
Content-Type: multipart/alternative; boundary="000000000000e4bef6059cf99444"

--000000000000e4bef6059cf99444
Content-Type: text/plain; charset="UTF-8"

Dear all,

I am planning a system with 5-10 channels that is capable of DOA
estimation.

Concerning the calibration of the resulting array, would there be a
difference between a system made up of N310 and one made up of X310 with
TwinRX boards? Would there be other important differences that influence
estimation performance?

As I understand it, the TwinRX allows LO sharing between the boards in a
single X310, but this would not help me if I have two or three X310. On the
other hand, the N310s could be connected to a shared LO.

Are the following thoughts correct?

Suppose I turn on my system. Then I have to calibrate phase offsets between
channels in any case. Now I change the center frequency. If I have N310s
without shared LO, I have to recalibrate. Same for the X310s, since LOs are
shared only internally. If I have N310s with a shared LO, I do not have to
recalibrate.

If I restart the system, I have to recalibrate  in any case.

The devices would by synchronized with PPS in any case and with the 10 MHz
reference if no external LO is used.

What is the better choice for DOA estimation  (N310 or X310 with TwinRX or
something different)?

Thank you very much

Sammy

--000000000000e4bef6059cf99444
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"auto">Dear all,</div><div dir=3D"auto"><br></=
div><div dir=3D"auto">I am planning a system with 5-10 channels that is cap=
able of DOA estimation.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"=
auto">Concerning the calibration of the resulting array, would there be a d=
ifference between a system made up of N310 and one made up of X310 with Twi=
nRX boards? Would there be other important differences that influence estim=
ation performance?</div><div dir=3D"auto"><br></div><div dir=3D"auto">As I =
understand it, the TwinRX allows LO sharing between the boards in a single =
X310, but this would not help me if I have two or three X310. On the other =
hand, the N310s could be connected to a shared LO.</div><div dir=3D"auto"><=
br></div><div dir=3D"auto">Are the following thoughts correct?</div><div di=
r=3D"auto"><br></div><div dir=3D"auto">Suppose I turn on my system. Then I =
have to calibrate phase offsets between channels in any case. Now I change =
the center frequency. If I have N310s without shared LO, I have to recalibr=
ate. Same for the X310s, since LOs are shared only internally. If I have N3=
10s with a shared LO, I do not have to recalibrate.</div><div dir=3D"auto">=
<br></div><div dir=3D"auto">If I restart the system, I have to recalibrate=
=C2=A0 in any case.</div><div dir=3D"auto"><br></div><div dir=3D"auto">The =
devices would by synchronized with PPS in any case and with the 10 MHz refe=
rence if no external LO is used.</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">What is the better choice for DOA estimation=C2=A0 (N310 or X310 =
with TwinRX or something different)?</div><div dir=3D"auto"><br></div><div =
dir=3D"auto">Thank you very much</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Sammy</div><div dir=3D"auto"><br></div></div>

--000000000000e4bef6059cf99444--


--===============2692337000474698295==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2692337000474698295==--

