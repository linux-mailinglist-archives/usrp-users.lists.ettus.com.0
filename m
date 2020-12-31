Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C23512E8225
	for <lists+usrp-users@lfdr.de>; Thu, 31 Dec 2020 22:50:17 +0100 (CET)
Received: from [::1] (port=49090 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kv5pm-0001qB-5u; Thu, 31 Dec 2020 16:50:14 -0500
Received: from mail-oi1-f179.google.com ([209.85.167.179]:39669)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ashutoshsingh7589@gmail.com>)
 id 1kv5ph-0001dW-T0
 for usrp-users@lists.ettus.com; Thu, 31 Dec 2020 16:50:09 -0500
Received: by mail-oi1-f179.google.com with SMTP id w124so22995600oia.6
 for <usrp-users@lists.ettus.com>; Thu, 31 Dec 2020 13:49:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V7w0tV+R3gwG5sWIvwGGvOdBsxAN/p5jFISesf1SFSU=;
 b=GHyYCPkHTXN/hUeJ5CB0Z5UPITWmZNyZZkvCxUSAFJcjx3gKM9eUjv2MTocqaM+x/L
 ClAhrn+YCR7u70hztYACzodu6LulePGX8XZ5PwYKVND4vk8sEpwGZ5IpV1Elr3RNrXJR
 cvlhdyCuotIia2/l+TKXsHYZ95tBVgp/9qNWGObshP8XNpWo3pLq53JSkEjRS/KtC8vt
 pJqPfn5m16Qqji/BHMyN2uQsJ6KqAxMNnbJEBc4njau3T8W5FOOQ4bwrQGoDiblIYDQe
 Og+rglr0ghKLMB89XCWCdcpz2JXWA9KsGDiayfIX/vx9Pcwsvwnu+XFkYlv6+M5lWzWV
 vsOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V7w0tV+R3gwG5sWIvwGGvOdBsxAN/p5jFISesf1SFSU=;
 b=DbsFb2yGgXPj/2hQbMVjZOS7iHDkrbmh3VLgDjRgWk8G8mDPUMDw2zHl/p1iMuYgoO
 bNAWSNEPa1R0B0Mvn8HceNISalxE7cTjI2+nDnKmwEiCAJ6y0ymgKD8vYcdhARDaQgBP
 0Ndy6g7bZj5fECU7Elhkf9nGzjXkblT0J8HWURv33RMwDSYy5me9jq8P3aa+7exb/lHa
 lkhpYB9unHLimHkSVvn5CTuPf1TJduToV6sXJHF226yAj+a4utWDDm14CS/ZYsHfMFVT
 wVu7kQSYADGlvQaMQKKQUZQ3jDYNDZLqdA9o3OT6WkxtJ3dAr9FUAAD4Mn/yZi2oYfMq
 64zw==
X-Gm-Message-State: AOAM5311lH1PCHEq/6HW0LoMTLD1SFLX+phWk1/9ATpBGAxuo3khbCQS
 p7DhWsFM56orj0a3aZtIbqMFXMIv8CGfz7sCJZM=
X-Google-Smtp-Source: ABdhPJx5Gj4/14/f2ENutpE2mI3kEDqzL7xbDhWqd7P+jRHmYGY8NsBg3v84tuQSIl+AJqnMLbtnjSo7yiliu4H2RZw=
X-Received: by 2002:aca:2302:: with SMTP id e2mr9054845oie.94.1609451369074;
 Thu, 31 Dec 2020 13:49:29 -0800 (PST)
MIME-Version: 1.0
References: <CAO38sJ6jjGaAvuRteOLWzH3baLvxTnAOfvD6iXr=o8qNqjjZnQ@mail.gmail.com>
 <5FEB6721.9050100@gmail.com>
 <CAO38sJ7siw0ZLqUqOa0ghaLK9vMvFM=-qj0RcqYUWR_4k5U8Cw@mail.gmail.com>
 <5FED25A4.7080507@gmail.com>
In-Reply-To: <5FED25A4.7080507@gmail.com>
Date: Thu, 31 Dec 2020 22:49:17 +0100
Message-ID: <CAO38sJ6QkGPn8hWwh3=JtXEOVNsDUJ+XAm_d_c=iZ7DgvqODpQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] USRP B210 UHD library installation issue
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Ashutosh Singh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ashutosh Singh <ashutoshsingh7589@gmail.com>
Content-Type: multipart/mixed; boundary="===============5985979413171775350=="
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

--===============5985979413171775350==
Content-Type: multipart/alternative; boundary="00000000000023125c05b7c999a9"

--00000000000023125c05b7c999a9
Content-Type: text/plain; charset="UTF-8"

Hi Marcus,
I tried tha as well but i think adding PPA repo is the onlY way to go (many
UHD dependencies get solved by adding PPA repo and because of that some
issues won't occur LATER while running the binary. Issues occurring about
uhd library shared_ptr and all):


I am not able to compile my binary on one system but its working fine on
another system:


root@yy217925:/home/lab_5g/LTE-D2D/cmake_targets# *./build_oai -I --UE*
Will install external packages
Will compile UE
CMAKE_CMD=cmake ..
RF HW set to None
Flags for Deadline scheduler: False
Flags for CPU Affinity: False
2. Setting the OAI PATHS ...
OPENAIR_DIR    = /home/lab_5g/LTE-D2D
FreeDiameter prefix not found, install freeDiameter if EPC, HSS
Installing packages
Hit:1 http://nl.archive.ubuntu.com/ubuntu bionic InRelease
Hit:2 http://nl.archive.ubuntu.com/ubuntu bionic-updates InRelease
Hit:3 http://nl.archive.ubuntu.com/ubuntu bionic-backports InRelease
Hit:4 http://nl.archive.ubuntu.com/ubuntu bionic-security InRelease
Hit:6 http://repo.zabbix.com/zabbix/5.0/ubuntu bionic InRelease
Ign:5 https://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic bionic
InRelease
Err:7 https://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic bionic
Release
  404  Not Found [IP: 23.253.215.39 443]
Reading package lists... Done
E: The repository '
http://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic bionic Release'
does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore
disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration
details.
build have failed




Please help!!


On Thu, Dec 31, 2020 at 2:13 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 12/30/2020 03:54 PM, Ashutosh Singh wrote:
> > Any update over it !!
> >
> I'll point out that unless you need the latest UHD, Ubuntu 18.04
> (Bionic) packages UHD already--
>
> sudo apt-get install libuhd*
>
> Should do the trick without requiring the PPA.
>
>
>
>

--00000000000023125c05b7c999a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Marcus,<div>I tried tha as well but i =
think adding PPA repo is the onlY way to go (many UHD dependencies get solv=
ed by adding PPA repo and because of that some issues won&#39;t occur LATER=
 while running the binary. Issues occurring about uhd library shared_ptr=C2=
=A0and all):</div><div><br></div><div><br></div><div>I am not able to compi=
le my binary on one system but its working fine on another system:</div><di=
v><br></div></div><blockquote style=3D"margin:0 0 0 40px;border:none;paddin=
g:0px"><div><div><div><font size=3D"1"><br></font></div></div></div><div><d=
iv><div><font size=3D"1">root@yy217925:/home/lab_5g/LTE-D2D/cmake_targets# =
</font><font size=3D"4"><b>./build_oai -I --UE</b></font></div></div></div>=
<div><div><div><font size=3D"1">Will install external packages</font></div>=
</div></div><div><div><div><font size=3D"1">Will compile UE</font></div></d=
iv></div><div><div><div><font size=3D"1">CMAKE_CMD=3Dcmake ..</font></div><=
/div></div><div><div><div><font size=3D"1">RF HW set to None</font></div></=
div></div><div><div><div><font size=3D"1">Flags for Deadline scheduler: Fal=
se</font></div></div></div><div><div><div><font size=3D"1">Flags for CPU Af=
finity: False</font></div></div></div><div><div><div><font size=3D"1">2. Se=
tting the OAI PATHS ...</font></div></div></div><div><div><div><font size=
=3D"1">OPENAIR_DIR=C2=A0 =C2=A0 =3D /home/lab_5g/LTE-D2D</font></div></div>=
</div><div><div><div><font size=3D"1">FreeDiameter prefix not found, instal=
l freeDiameter if EPC, HSS</font></div></div></div><div><div><div><font siz=
e=3D"1">Installing packages</font></div></div></div><div><div><div><font si=
ze=3D"1">Hit:1 <a href=3D"http://nl.archive.ubuntu.com/ubuntu">http://nl.ar=
chive.ubuntu.com/ubuntu</a> bionic InRelease</font></div></div></div><div><=
div><div><font size=3D"1">Hit:2 <a href=3D"http://nl.archive.ubuntu.com/ubu=
ntu">http://nl.archive.ubuntu.com/ubuntu</a> bionic-updates InRelease</font=
></div></div></div><div><div><div><font size=3D"1">Hit:3 <a href=3D"http://=
nl.archive.ubuntu.com/ubuntu">http://nl.archive.ubuntu.com/ubuntu</a> bioni=
c-backports InRelease</font></div></div></div><div><div><div><font size=3D"=
1">Hit:4 <a href=3D"http://nl.archive.ubuntu.com/ubuntu">http://nl.archive.=
ubuntu.com/ubuntu</a> bionic-security InRelease</font></div></div></div><di=
v><div><div><font size=3D"1">Hit:6 <a href=3D"http://repo.zabbix.com/zabbix=
/5.0/ubuntu">http://repo.zabbix.com/zabbix/5.0/ubuntu</a> bionic InRelease<=
/font></div></div></div><div><div><div><font size=3D"1" style=3D"background=
-color:rgb(255,255,0)">Ign:5 <a href=3D"https://files.ettus.com/binaries/uh=
d/repo/uhd/ubuntu/bionic">https://files.ettus.com/binaries/uhd/repo/uhd/ubu=
ntu/bionic</a> bionic InRelease</font></div></div></div><div><div><div><fon=
t size=3D"1" style=3D"background-color:rgb(255,255,0)">Err:7 <a href=3D"htt=
ps://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic">https://files.ett=
us.com/binaries/uhd/repo/uhd/ubuntu/bionic</a> bionic Release</font></div><=
/div></div><div><div><div><font size=3D"1" style=3D"background-color:rgb(25=
5,255,0)">=C2=A0 404=C2=A0 Not Found [IP: 23.253.215.39 443]</font></div></=
div></div><div><div><div><font size=3D"1">Reading package lists... Done</fo=
nt></div></div></div><div><div><div><font size=3D"1">E: The repository &#39=
;<a href=3D"http://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic">htt=
p://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic</a> bionic Release&=
#39; does not have a Release file.</font></div></div></div><div><div><div><=
font size=3D"1">N: Updating from such a repository can&#39;t be done secure=
ly, and is therefore disabled by default.</font></div></div></div><div><div=
><div><font size=3D"1">N: See apt-secure(8) manpage for repository creation=
 and user configuration details.</font></div></div></div><div><div><div><fo=
nt size=3D"1">build have failed</font></div></div></div></blockquote><div d=
ir=3D"ltr"><div><br></div><div><br></div><div><br></div><div>Please help!!<=
/div><div><br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Thu, Dec 31, 2020 at 2:13 AM Marcus D. Leech &=
lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 12/=
30/2020 03:54 PM, Ashutosh Singh wrote:<br>
&gt; Any update over it !!<br>
&gt;<br>
I&#39;ll point out that unless you need the latest UHD, Ubuntu 18.04 <br>
(Bionic) packages UHD already--<br>
<br>
sudo apt-get install libuhd*<br>
<br>
Should do the trick without requiring the PPA.<br>
<br>
<br>
<br>
</blockquote></div>

--00000000000023125c05b7c999a9--


--===============5985979413171775350==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5985979413171775350==--

