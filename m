Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E6D13124D
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jan 2020 13:53:26 +0100 (CET)
Received: from [::1] (port=43986 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ioRsr-00039Q-Pe; Mon, 06 Jan 2020 07:53:25 -0500
Received: from mail-qk1-f177.google.com ([209.85.222.177]:33527)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <subu.rama@gmail.com>) id 1ioRsn-000328-Ko
 for usrp-users@lists.ettus.com; Mon, 06 Jan 2020 07:53:21 -0500
Received: by mail-qk1-f177.google.com with SMTP id d71so31427880qkc.0
 for <usrp-users@lists.ettus.com>; Mon, 06 Jan 2020 04:53:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=G+OVscjOBbV5RYc2SHRgQC/fYB7U/USx8TXlyFv3yzE=;
 b=RVMQKvQoDch/6MRbNMkr/gBTLsIeHGo2FWulfBxsVYbPPGkYqq3Qub4+aNcRx0oM3V
 poQdjKHQQdaawd2aUh76jYutcLKmsMMpPwXJQU8bk/9mdjrmviKCZXudz+JxynGofyg1
 e0+iK0+LGQbrv4fYs18Tt7KTVmo/oDy6LJwudxJuSSCrwFC/8wn/ApSqj3lPU/nyox8A
 763cdnqX2N2jKjaVm3AdsOfYksBjhsia3YtvEoFBdWmxi+Cpdce1Ff2oXcvkWVyE1E8a
 b1T80fkbR7TWdyGK4lDspIBVWdkhBIRKw7lgMyVstCfK2UMMj37IJYNrgjPggBhKxDww
 Wbyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=G+OVscjOBbV5RYc2SHRgQC/fYB7U/USx8TXlyFv3yzE=;
 b=R0nXOMUuQcD9TIUOK24ONsugptKvt15hkbt8pS87X00qy3qT4RCGYO3u+0KjemCOzI
 Ooj9EyAk0WqExxPhzN2LgALTs0yoDb3F2x94xWdukk57uMOe7jfu/unW8OTySRzFaGBV
 CaHgduJlIK0PCH+/KZxta4dCbUOG7nXIfo49ilKgLaw+vG2Tmc7qi3rnRW+q1+GfOYK4
 kmS6qBVUBaxcw0/uOplLio4OClnQG9J74HdEx11dan86sqM0C8bY5FHRTQoZJfixYcMU
 x3icyYWQ0GjDsUJFlTMQ/M1OQuZH9ROebDl3TUfEvZoqxGZW/btl6eFG+cd51jrRkbOr
 i78w==
X-Gm-Message-State: APjAAAUzlc6DOC9ksNbLMfkhqXcrud1YsZZVp6kafbzOn6pT6hDSu/Tj
 xrrtbyQY84v1H4hYYW6SbO0d7gHrv8YpToNJiEmWp+6J
X-Google-Smtp-Source: APXvYqzTePlxtXzQkeBNihjWsipWYDytxE/U50LoVnXHoaawDW0LOgDb6UOCFOLF0nfIDHNML9FFVMxB/sGn0S2xaRw=
X-Received: by 2002:a05:620a:15b1:: with SMTP id
 f17mr67627644qkk.45.1578315160526; 
 Mon, 06 Jan 2020 04:52:40 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 6 Jan 2020 12:52:04 +0000
Message-ID: <CAL1aUnqNTLwj2-h=7Cx54=Qx1TF7xMm4CQy+pz3+h50qhX2F0A@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] USRP PPA for Ubuntu 19.10
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
From: Subu Rama via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Subu Rama <subu.rama@gmail.com>
Content-Type: multipart/mixed; boundary="===============6934718049089356375=="
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

--===============6934718049089356375==
Content-Type: multipart/alternative; boundary="0000000000007ca464059b7822b2"

--0000000000007ca464059b7822b2
Content-Type: text/plain; charset="UTF-8"

I am running Ubuntu 19.10 and am having issues with UHD built from git
source. v3.15.0.0
I have already posted a few messages regarding these issues (kernel panic
etc.)

So I thought I would get the debian package from NI's Ubuntu repo.

When I do:
ramasu@srz4:~/QRC3Git/qrc3/Notes/Misc$ sudo apt-add-repository
https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd
....
I get:

Ign:24 https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd eoan
InRelease
Err:25 https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd eoan Release
  404  Not Found [IP: 91.189.89.222 443]
Reading package lists... Done
E: The repository 'https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd
eoan Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore
disabled by default.

How do I go about resolving this issue?

Thank you
Subu

--0000000000007ca464059b7822b2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I am running Ubuntu 19.10 and am having issues with U=
HD built from git source. v3.15.0.0</div><div>I have already posted a few m=
essages regarding these issues (kernel panic etc.)<br></div><div><br></div>=
<div>So I thought I would get the debian package from NI&#39;s Ubuntu repo.=
</div><div><br></div><div>When I do:</div><div>ramasu@srz4:~/QRC3Git/qrc3/N=
otes/Misc$ sudo apt-add-repository <a href=3D"https://launchpad.net/~ettusr=
esearch/+archive/ubuntu/uhd">https://launchpad.net/~ettusresearch/+archive/=
ubuntu/uhd</a></div><div>....</div><div>I get:</div><div><br></div><div>Ign=
:24 <a href=3D"https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd">ht=
tps://launchpad.net/~ettusresearch/+archive/ubuntu/uhd</a> eoan InRelease =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>Err:25 <a href=3D"https://laun=
chpad.net/~ettusresearch/+archive/ubuntu/uhd">https://launchpad.net/~ettusr=
esearch/+archive/ubuntu/uhd</a> eoan Release<br>=C2=A0 404 =C2=A0Not Found =
[IP: 91.189.89.222 443]<br>Reading package lists... Done<br>E: The reposito=
ry &#39;<a href=3D"https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd=
">https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd</a> eoan Release=
&#39; does not have a Release file.<br>N: Updating from such a repository c=
an&#39;t be done securely, and is therefore disabled by default.</div><div>=
<br></div><div>How do I go about resolving this issue?</div><div><br></div>=
<div>Thank you</div><div>Subu</div><div><br></div><div><br></div></div>

--0000000000007ca464059b7822b2--


--===============6934718049089356375==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6934718049089356375==--

