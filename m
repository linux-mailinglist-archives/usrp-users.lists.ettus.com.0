Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B21D01312A8
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jan 2020 14:15:29 +0100 (CET)
Received: from [::1] (port=48198 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ioSEC-0004hJ-HH; Mon, 06 Jan 2020 08:15:28 -0500
Received: from mail-qk1-f177.google.com ([209.85.222.177]:38429)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <subu.rama@gmail.com>) id 1ioSE8-0004c8-V7
 for usrp-users@lists.ettus.com; Mon, 06 Jan 2020 08:15:24 -0500
Received: by mail-qk1-f177.google.com with SMTP id k6so39331815qki.5
 for <usrp-users@lists.ettus.com>; Mon, 06 Jan 2020 05:15:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=MLbCkMdTvG0JcquBCw3LiO/CUNnl863C8LZ2YlOVS2A=;
 b=Kk53VrsoTas4jXG72RaFdQ18L4F4pp13lSTIPk0xsOiv6YOYHFj/Yg75qeQ6EWvdaC
 S1oMuFygH5Xc/3DMrV20Ck++4TTKGUK1rWdk5q90cU3kkkNEu/E1YjkZ9q1sicJTlhbn
 gFr3J0jHVBECt7WCBvbWZ3TVLY9vIvp7n8Yvf94e60wsQU/2E1PxXggPEwixvJsj3zn9
 sALLJtSbEiMglkbgRlbCp2DDpvJRiGeVLnMPCAebT9EJOiLWBFW+ScSBK6U1Z2yUPH0q
 9sIGgloKR5jRnMi3VVyJpEcm2o/Iih+z67vpaMmgCRZfvY2CdY6/Bn95Gi+PlaZpJZVc
 qLPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=MLbCkMdTvG0JcquBCw3LiO/CUNnl863C8LZ2YlOVS2A=;
 b=dPZ/osNlxOeQ/slI8I28PSuwozsnGFlD0DRX9dlk4iBeRAB0TuHjlGACH17KUCVpv5
 r+0kdBDoj0BEUXVvqJMQoIEJ7JttewMMJzwHiM+0FRAq6vOU2p82qw/Bg9y2Akib8w7G
 Lc7pwPMnv+nGVGRDm8u0n9+NvXYtNp+NYn+1L2NENVhHM06fkZ0fVm4k5hv3rB/HW8AR
 z5oFoG5wKxbnpteGs7xTSPYEm9AK3/hlWvvhMyQrRKtil+VJeT9dwMxby27BXNtu5A7O
 mGkMEokICGWTdBi1rpx+yKTV9TfeMOEq+tfTHopj/Y3b+pIA3iuS5meKHDVe9zlP8rRC
 Mt3A==
X-Gm-Message-State: APjAAAUzuel89yyNmjpoBQ6OWioYeSgq4H/0ce04ZtLrB6Ljp0dai5IK
 S8T5tt78zEl3Kz7NOnnU9MagurSj3fa9Wn9RnPvXuBfw
X-Google-Smtp-Source: APXvYqzwOcPeeLhG3n6a5rd7IlXq+vUdH6oEx59nvx5JGq4xTu8zoHZxApRe1xqwMD7Gd/+DLPfpyxNtTESQJ0aS6LU=
X-Received: by 2002:a05:620a:15b1:: with SMTP id
 f17mr67720964qkk.45.1578316484057; 
 Mon, 06 Jan 2020 05:14:44 -0800 (PST)
MIME-Version: 1.0
References: <CAL1aUnqNTLwj2-h=7Cx54=Qx1TF7xMm4CQy+pz3+h50qhX2F0A@mail.gmail.com>
In-Reply-To: <CAL1aUnqNTLwj2-h=7Cx54=Qx1TF7xMm4CQy+pz3+h50qhX2F0A@mail.gmail.com>
Date: Mon, 6 Jan 2020 13:14:07 +0000
Message-ID: <CAL1aUnqmKEuj5iQVc+8CHZkZapP94g0-GUHMJTdDQGqNB+t1yw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] USRP PPA for Ubuntu 19.10
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
Content-Type: multipart/mixed; boundary="===============4564612113600918063=="
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

--===============4564612113600918063==
Content-Type: multipart/alternative; boundary="000000000000601ec4059b7871c1"

--000000000000601ec4059b7871c1
Content-Type: text/plain; charset="UTF-8"

As an additional point, I do see uhd-3.15.0.0-0ubuntu1-eoan1 published on
2020-01-01 at
https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd/+packages

Even when I add a file called ettusresearch.list to /etc/apt/sources.list
with the following contents: (to circumvent apt-secure)
deb [allow-insecure=yes]
http://ppa.launchpad.net/~ettusresearch/+archive/ubuntu/uhd eoan main

I get the same error  when running apt update

W: The repository '
http://ppa.launchpad.net/~ettusresearch/+archive/ubuntu/uhd eoan Release'
does not have a Release file.
N: Data from such a repository can't be authenticated and is therefore
potentially dangerous to use.
N: See apt-secure(8) manpage for repository creation and user configuration
details.
E: The repository 'https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd
eoan Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore
disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration
details.

I am not sure if it's a problem with configuring apt on my end or on the
launchpad end.

Should I just download the package (.deb) files themselves and not worry
about adding an apt repo?

Thank you
Subu



On Mon, Jan 6, 2020 at 12:52 PM Subu Rama <subu.rama@gmail.com> wrote:

> I am running Ubuntu 19.10 and am having issues with UHD built from git
> source. v3.15.0.0
> I have already posted a few messages regarding these issues (kernel panic
> etc.)
>
> So I thought I would get the debian package from NI's Ubuntu repo.
>
> When I do:
> ramasu@srz4:~/QRC3Git/qrc3/Notes/Misc$ sudo apt-add-repository
> https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd
> ....
> I get:
>
> Ign:24 https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd eoan
> InRelease
> Err:25 https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd eoan
> Release
>   404  Not Found [IP: 91.189.89.222 443]
> Reading package lists... Done
> E: The repository '
> https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd eoan Release'
> does not have a Release file.
> N: Updating from such a repository can't be done securely, and is
> therefore disabled by default.
>
> How do I go about resolving this issue?
>
> Thank you
> Subu
>
>
>

--000000000000601ec4059b7871c1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>As an additional point, I do see uhd-3.15.0.0-0ubuntu=
1-eoan1 published on 2020-01-01 at <a href=3D"https://launchpad.net/~ettusr=
esearch/+archive/ubuntu/uhd/+packages">https://launchpad.net/~ettusresearch=
/+archive/ubuntu/uhd/+packages</a></div><div><br></div><div>Even when I add=
 a file called ettusresearch.list to /etc/apt/sources.list with the followi=
ng contents: (to circumvent apt-secure)</div><div>deb [allow-insecure=3Dyes=
] <a href=3D"http://ppa.launchpad.net/~ettusresearch/+archive/ubuntu/uhd">h=
ttp://ppa.launchpad.net/~ettusresearch/+archive/ubuntu/uhd</a> eoan main</d=
iv><div><br></div><div>I get the same error=C2=A0 when running apt update<b=
r></div><div><br></div><div>W: The repository &#39;<a href=3D"http://ppa.la=
unchpad.net/~ettusresearch/+archive/ubuntu/uhd">http://ppa.launchpad.net/~e=
ttusresearch/+archive/ubuntu/uhd</a> eoan Release&#39; does not have a Rele=
ase file.<br>N: Data from such a repository can&#39;t be authenticated and =
is therefore potentially dangerous to use.<br>N: See apt-secure(8) manpage =
for repository creation and user configuration details.<br>E: The repositor=
y &#39;<a href=3D"https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd"=
>https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd</a> eoan Release&=
#39; does not have a Release file.<br>N: Updating from such a repository ca=
n&#39;t be done securely, and is therefore disabled by default.<br>N: See a=
pt-secure(8) manpage for repository creation and user configuration details=
.<br></div><div><br></div><div>I am not sure if it&#39;s a problem with con=
figuring apt on my end or on the launchpad end.</div><div><br></div><div>Sh=
ould I just download the package (.deb) files themselves and not worry abou=
t adding an apt repo?</div><div><br></div><div>Thank you<br></div><div>Subu=
</div><div><br></div><div><br></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 6, 2020 at 12:52 PM Subu Ra=
ma &lt;<a href=3D"mailto:subu.rama@gmail.com">subu.rama@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div>I am running Ubuntu 19.10 and am having issues with UHD built=
 from git source. v3.15.0.0</div><div>I have already posted a few messages =
regarding these issues (kernel panic etc.)<br></div><div><br></div><div>So =
I thought I would get the debian package from NI&#39;s Ubuntu repo.</div><d=
iv><br></div><div>When I do:</div><div>ramasu@srz4:~/QRC3Git/qrc3/Notes/Mis=
c$ sudo apt-add-repository <a href=3D"https://launchpad.net/~ettusresearch/=
+archive/ubuntu/uhd" target=3D"_blank">https://launchpad.net/~ettusresearch=
/+archive/ubuntu/uhd</a></div><div>....</div><div>I get:</div><div><br></di=
v><div>Ign:24 <a href=3D"https://launchpad.net/~ettusresearch/+archive/ubun=
tu/uhd" target=3D"_blank">https://launchpad.net/~ettusresearch/+archive/ubu=
ntu/uhd</a> eoan InRelease =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>Err=
:25 <a href=3D"https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd" ta=
rget=3D"_blank">https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd</a=
> eoan Release<br>=C2=A0 404 =C2=A0Not Found [IP: 91.189.89.222 443]<br>Rea=
ding package lists... Done<br>E: The repository &#39;<a href=3D"https://lau=
nchpad.net/~ettusresearch/+archive/ubuntu/uhd" target=3D"_blank">https://la=
unchpad.net/~ettusresearch/+archive/ubuntu/uhd</a> eoan Release&#39; does n=
ot have a Release file.<br>N: Updating from such a repository can&#39;t be =
done securely, and is therefore disabled by default.</div><div><br></div><d=
iv>How do I go about resolving this issue?</div><div><br></div><div>Thank y=
ou</div><div>Subu</div><div><br></div><div><br></div></div>
</blockquote></div>

--000000000000601ec4059b7871c1--


--===============4564612113600918063==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4564612113600918063==--

