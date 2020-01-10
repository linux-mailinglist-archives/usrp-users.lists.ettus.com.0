Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B82C2136D0A
	for <lists+usrp-users@lfdr.de>; Fri, 10 Jan 2020 13:30:51 +0100 (CET)
Received: from [::1] (port=40802 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iptR7-0007de-AU; Fri, 10 Jan 2020 07:30:45 -0500
Received: from mail-lj1-f180.google.com ([209.85.208.180]:40729)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ee16b025@ee.iitm.ac.in>)
 id 1iptR2-0007Zn-9c
 for usrp-users@lists.ettus.com; Fri, 10 Jan 2020 07:30:40 -0500
Received: by mail-lj1-f180.google.com with SMTP id u1so1952956ljk.7
 for <usrp-users@lists.ettus.com>; Fri, 10 Jan 2020 04:30:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ee-iitm-ac-in.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=+atsLicNJ0nb02eypoD2gbvSjiZrmYFvEU3i8a3PFZ4=;
 b=BtUcv6RQnCTB5GAyzS29EOV4EcKeF8iVmziICvj1lw2aD22j5+GWPsuLrQtHrHLhFy
 36PTYGPWDIEiT47yPoG1FY4NK8v/FlgmtMbn6JjB5x4K5Fk5w7abDKxPSgt8aHXtG6WH
 p5JFL7EUDugVtTAIv5LfUy4uMpDHfG3OhtrXvrSPfm51Uun+krgjfS0mTFVrY3wyIbOG
 HG8vp8Su/kjqc3DrB+YWJKwJEkNb7zYUvye7lmo7tWeEqYGyY7Zc7PiJzny5HcKsmoRm
 a1cBnL7wJo9BFMLmPqWhzB8Kr8CGc3GZnrlvmgEWjM8PubV+fMe+Gfyz9aDrlE/Wpo4T
 VRVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=+atsLicNJ0nb02eypoD2gbvSjiZrmYFvEU3i8a3PFZ4=;
 b=PyUbffG6LmuqBHKtM1gHYxDC2MhyJQEhjSBg62DdM6QzcpeZ6/Kj9D4NUJNQXt+WdD
 gSKuYWMd3+BJREFb6NGTgiTwnzUIxTuSjvv50eZ+LSdOdw4VnPPH+70nHQUBMyvkfTNs
 G0rE/6EwnhpeNNGVz8m+BqfeScqkHUNrouTXH5qpW4M7zvggoucyrx22+9xP+jNqcPt8
 JovNsXgVWmrlfNHNk7hit8md0JoqTz8SWglfLWbgXHLeiiuSCCG6IkBNvs4FrWEt3LC5
 InpVzqIDDSlXdiBOOK98ETeE/Y6FMgsru0XqeiPbO1eVk7m02atFa7JtcevOn/3XJ2jR
 3c8g==
X-Gm-Message-State: APjAAAXSfPpaMAlkTKiX6SNnww73zmTzIY/Aaffp1Ai+Ooz0H67dwTef
 ObC8gewV17Pr1Ux7bMnZMHTQ4yG90sKzBhESSGu5ir2eWP8=
X-Google-Smtp-Source: APXvYqyaSxyf5RuOqa6f4zdN6897YJ0rwV+zQE1sFjZjblJ/44w8AptAiE81xFg1wKVHEzpXQtSozsEXfTXjm4GxvrE=
X-Received: by 2002:a2e:88c5:: with SMTP id a5mr2563853ljk.201.1578659398524; 
 Fri, 10 Jan 2020 04:29:58 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 10 Jan 2020 17:56:04 +0530
Message-ID: <CAC5MLo6XRYaw7MahbQvvgnda+6Yud_nkUNOYdbacfiGR1Z0jKg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Regarding N321 shutdown
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
From: MILIND KUMAR VADDIRAJU via USRP-users <usrp-users@lists.ettus.com>
Reply-To: MILIND KUMAR VADDIRAJU <ee16b025@ee.iitm.ac.in>
Content-Type: multipart/mixed; boundary="===============4498470830568560664=="
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

--===============4498470830568560664==
Content-Type: multipart/alternative; boundary="000000000000abb754059bc84845"

--000000000000abb754059bc84845
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm new to the world of SDR and have just been handed a USRP N321. The
guide here
<https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide>
strongly recommends shutting the system down correctly instead of using a
long press of the power button. However the command

shutdown =C2=AD-h now

in the terminal of a host computer connected to the USRP via an
ethernet cable fails. Could
someone please let me know what the appropriate method to shut the USRP dow=
n is?

Cheers,

Milind

--000000000000abb754059bc84845
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I&#39;m new to the world=
 of SDR and have just been handed a USRP N321. The guide <a href=3D"https:/=
/kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide">here</a> stro=
ngly recommends shutting the system down correctly instead of using a long =
press of the power button. However the command <br><pre>shutdown =C2=AD-h n=
ow<br><font size=3D"2"><font face=3D"georgia,serif"><br>in the terminal of =
a host computer connected to the USRP via an ethernet cable fails. Could <b=
r>someone please let me know what the appropriate method to shut the USRP d=
own is?</font></font><br><font size=3D"2"><span style=3D"font-family:georgi=
a,serif"><br>Cheers,</span></font><font size=3D"2"><span style=3D"font-fami=
ly:georgia,serif"><br></span></font></pre><pre><font size=3D"2"><span style=
=3D"font-family:georgia,serif">Milind</span></font><br></pre> </div></div>

--000000000000abb754059bc84845--


--===============4498470830568560664==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4498470830568560664==--

