Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D1DDD2E7293
	for <lists+usrp-users@lfdr.de>; Tue, 29 Dec 2020 18:19:53 +0100 (CET)
Received: from [::1] (port=55632 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kuIf0-0007M6-9y; Tue, 29 Dec 2020 12:19:50 -0500
Received: from mail-oi1-f174.google.com ([209.85.167.174]:36820)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ashutoshsingh7589@gmail.com>)
 id 1kuIew-0007Gl-ME
 for usrp-users@lists.ettus.com; Tue, 29 Dec 2020 12:19:46 -0500
Received: by mail-oi1-f174.google.com with SMTP id 9so15263872oiq.3
 for <usrp-users@lists.ettus.com>; Tue, 29 Dec 2020 09:19:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=ou6hEk7CjiLNbJpGYivScHAlwaI0MqZWOUg2unS1NyA=;
 b=dNwSRsjHrgf64SynEk2YYLINCBn6re/YhYsJl59V6F44qMk+JjeQVe8A/cj8/05v1Y
 0tBiliodG6sWpUidH/MDzOT+eEWH2ACjwzOkCO4QX3mqeFgIrKJ6OfQdGyz+Z7vfok3x
 NuSLwJLvsECFTsWBQ8ni65kfSvnOUx4cF0c9wQ1IVJmlJG19iShuidTRQNPsBXkXeGL7
 d59oqdz4CuNlxLziIzVicF5XIBEGV2YSBzR3TWwKjuSdKQHE3XF++J6IEDPJLVbPcdDl
 FMTsBMtPoMTkXf7rvL95nsv3ar47wggkcYvBD/997Ae2UXpxT7AnbENWOeGptOTbovPZ
 KVrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=ou6hEk7CjiLNbJpGYivScHAlwaI0MqZWOUg2unS1NyA=;
 b=FefhxItIUHzqcPRyyxz7t/9GhUHiZpScoXeChZMugz23Gd3wDzt9A0k7yRZ082HH9X
 vyT9O1EBqZ43vAdAKCsnLkZSH2CrdqlunbNPB+q/B+0CbqkwcXJ1MD4hKwBjEELJcl99
 FtFnUQtqhzVL68/lqEsNddG91lPHtEm414xLFS7a70UEDAshh3T8b7Z0TqWS+4eCtC64
 NM6fELWOTs+QY4JyhdOBt0NliLYRVtlmF3ssY6bqo0p12foZaKj0H1A0bckxiaPmi2ch
 dWosyEt1YHVVMK5wVruRPikzfYSK0FwaaUeH4aJl1Mfl7zn+p7T+XoB/7elKgO5RMWG+
 JUXg==
X-Gm-Message-State: AOAM532cvxWp1nFSYFAOIZ0UB9GGwxCYKnGrWXvv4CAc3CKtJJVCEjgA
 FR2VaT4LCvMJv6xtxttrxoGS2XW4WXGOex8se/mkPZa88JYO4naB
X-Google-Smtp-Source: ABdhPJw5lbnOtL9tbXrPD0LdIDCCDe3jAHLUzfgV09/ymoC439aRGnKImdJ9CiPvrcAWK/tQgsHqfMMiyEEIcmmAo1c=
X-Received: by 2002:a05:6808:3ac:: with SMTP id
 n12mr2986679oie.142.1609262345621; 
 Tue, 29 Dec 2020 09:19:05 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 29 Dec 2020 18:18:54 +0100
Message-ID: <CAO38sJ6jjGaAvuRteOLWzH3baLvxTnAOfvD6iXr=o8qNqjjZnQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] USRP B210 UHD library installation issue
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
Content-Type: multipart/mixed; boundary="===============3427886487042956859=="
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

--===============3427886487042956859==
Content-Type: multipart/alternative; boundary="00000000000076133705b79d96ac"

--00000000000076133705b79d96ac
Content-Type: text/plain; charset="UTF-8"

Hi ,
I am trying to install the UHD libraries using binaries provided by Ettus
research following below page:
USRP Hardware Driver and USRP Manual: Binary Installation (ettus.com)
<https://files.ettus.com/manual/page_install.html#install_linux>


My System :

NAME="Ubuntu"
VERSION="18.04.5 LTS (Bionic Beaver)"



*Error:*

*root@yy217925:/home/lab_5g/openairinterface5g/openairinterface5g/cmake_targets/lte_build_oai/build#
sudo add-apt-repository ppa:ettusresearch/uhd*

* More info: https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd
<https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd>*
*Press [ENTER] to continue or Ctrl-c to cancel adding it.*

*Hit:1 http://nl.archive.ubuntu.com/ubuntu
<http://nl.archive.ubuntu.com/ubuntu> bionic InRelease*
*Hit:2 http://nl.archive.ubuntu.com/ubuntu
<http://nl.archive.ubuntu.com/ubuntu> bionic-updates InRelease*
*Hit:3 http://nl.archive.ubuntu.com/ubuntu
<http://nl.archive.ubuntu.com/ubuntu> bionic-backports InRelease*
*Hit:4 http://nl.archive.ubuntu.com/ubuntu
<http://nl.archive.ubuntu.com/ubuntu> bionic-security InRelease*
*Hit:5 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu
<http://ppa.launchpad.net/ettusresearch/uhd/ubuntu> bionic InRelease*
*Hit:7 http://repo.zabbix.com/zabbix/5.0/ubuntu
<http://repo.zabbix.com/zabbix/5.0/ubuntu> bionic InRelease*
*Ign:6 https://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic
<https://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic> bionic
InRelease*
*Err:8 https://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic
<https://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic> bionic
Release*
*  404  Not Found [IP: 23.253.215.39 443]*
*Reading package lists... Done*
*E: The repository
'http://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic
<http://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic> bionic
Release' does not have a Release file.*
*N: Updating from such a repository can't be done securely, and is
therefore disabled by default.*
*N: See apt-secure(8) manpage for repository creation and user
configuration details.*



Please help me solve it !!

--00000000000076133705b79d96ac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><font color=3D"#0000ff">Hi ,</font><div><font color=3D"#0000ff">I=
 am trying to install the UHD libraries=C2=A0using binaries provided by Ett=
us research following=C2=A0below page:</font></div><div><a href=3D"https://=
files.ettus.com/manual/page_install.html#install_linux">USRP Hardware Drive=
r and USRP Manual: Binary Installation (ettus.com)</a><font color=3D"#0000f=
f"><br></font></div><div><font color=3D"#0000ff"><br></font></div><div><fon=
t color=3D"#0000ff"><br></font></div><div><font color=3D"#0000ff">My System=
 :</font></div><div><font color=3D"#0000ff"><br></font></div><div><div><fon=
t color=3D"#0000ff">NAME=3D&quot;Ubuntu&quot;</font></div><div><font color=
=3D"#0000ff">VERSION=3D&quot;18.04.5 LTS (Bionic Beaver)&quot;</font></div>=
</div><div><font color=3D"#0000ff"><br></font></div><div><font color=3D"#00=
00ff"><br></font></div><div><font color=3D"#0000ff"><br></font></div><div><=
font color=3D"#ff0000"><b>Error:</b></font></div><div><font color=3D"#0000f=
f"><br></font></div></div></div></div><blockquote style=3D"margin:0px 0px 0=
px 40px;border:none;padding:0px"><div><div><div><div><div><font color=3D"#0=
000ff"><i>root@yy217925:/home/lab_5g/openairinterface5g/openairinterface5g/=
cmake_targets/lte_build_oai/build#<b><font size=3D"4"> sudo add-apt-reposit=
ory ppa:ettusresearch/uhd</font></b></i></font></div></div></div></div></di=
v><div><div><div><div><div><font color=3D"#0000ff"><i><br></i></font></div>=
</div></div></div></div><div><div><div><div><div><font color=3D"#0000ff"><i=
>=C2=A0More info: <a href=3D"https://launchpad.net/~ettusresearch/+archive/=
ubuntu/uhd">https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd</a></i=
></font></div></div></div></div></div><div><div><div><div><div><font color=
=3D"#0000ff"><i>Press [ENTER] to continue or Ctrl-c to cancel adding it.</i=
></font></div></div></div></div></div><div><div><div><div><div><font color=
=3D"#0000ff"><i><br></i></font></div></div></div></div></div><div><div><div=
><div><div><font color=3D"#0000ff"><i>Hit:1 <a href=3D"http://nl.archive.ub=
untu.com/ubuntu">http://nl.archive.ubuntu.com/ubuntu</a> bionic InRelease</=
i></font></div></div></div></div></div><div><div><div><div><div><font color=
=3D"#0000ff"><i>Hit:2 <a href=3D"http://nl.archive.ubuntu.com/ubuntu">http:=
//nl.archive.ubuntu.com/ubuntu</a> bionic-updates InRelease</i></font></div=
></div></div></div></div><div><div><div><div><div><font color=3D"#0000ff"><=
i>Hit:3 <a href=3D"http://nl.archive.ubuntu.com/ubuntu">http://nl.archive.u=
buntu.com/ubuntu</a> bionic-backports InRelease</i></font></div></div></div=
></div></div><div><div><div><div><div><font color=3D"#0000ff"><i>Hit:4 <a h=
ref=3D"http://nl.archive.ubuntu.com/ubuntu">http://nl.archive.ubuntu.com/ub=
untu</a> bionic-security InRelease</i></font></div></div></div></div></div>=
<div><div><div><div><div><font color=3D"#0000ff"><i>Hit:5 <a href=3D"http:/=
/ppa.launchpad.net/ettusresearch/uhd/ubuntu">http://ppa.launchpad.net/ettus=
research/uhd/ubuntu</a> bionic InRelease</i></font></div></div></div></div>=
</div><div><div><div><div><div><font color=3D"#0000ff"><i>Hit:7 <a href=3D"=
http://repo.zabbix.com/zabbix/5.0/ubuntu">http://repo.zabbix.com/zabbix/5.0=
/ubuntu</a> bionic InRelease</i></font></div></div></div></div></div><div><=
div><div><div><div><font color=3D"#0000ff"><i>Ign:6 <a href=3D"https://file=
s.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic">https://files.ettus.com/bi=
naries/uhd/repo/uhd/ubuntu/bionic</a> bionic InRelease</i></font></div></di=
v></div></div></div><div><div><div><div><div><font color=3D"#0000ff"><i sty=
le=3D"background-color:rgb(255,255,0)">Err:8 <a href=3D"https://files.ettus=
.com/binaries/uhd/repo/uhd/ubuntu/bionic">https://files.ettus.com/binaries/=
uhd/repo/uhd/ubuntu/bionic</a> bionic Release</i></font></div></div></div><=
/div></div><div><div><div><div><div><font color=3D"#0000ff"><i style=3D"bac=
kground-color:rgb(255,255,0)">=C2=A0 404=C2=A0 Not Found [IP: 23.253.215.39=
 443]</i></font></div></div></div></div></div><div><div><div><div><div><fon=
t color=3D"#0000ff"><i>Reading package lists... Done</i></font></div></div>=
</div></div></div><div><div><div><div><div><font color=3D"#0000ff"><i>E: Th=
e repository &#39;<a href=3D"http://files.ettus.com/binaries/uhd/repo/uhd/u=
buntu/bionic">http://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic</a=
> bionic Release&#39; does not have a Release file.</i></font></div></div><=
/div></div></div><div><div><div><div><div><font color=3D"#0000ff"><i>N: Upd=
ating from such a repository can&#39;t be done securely, and is therefore d=
isabled by default.</i></font></div></div></div></div></div><div><div><div>=
<div><div><font color=3D"#0000ff"><i>N: See apt-secure(8) manpage for repos=
itory creation and user configuration details.</i></font></div></div></div>=
</div></div><div><br></div><div><br></div><div><br></div></blockquote><bloc=
kquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div>Pleas=
e help me solve it !!</div></blockquote><div dir=3D"ltr"><div dir=3D"ltr"><=
div dir=3D"ltr"><div><br></div></div></div></div></div></div>

--00000000000076133705b79d96ac--


--===============3427886487042956859==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3427886487042956859==--

