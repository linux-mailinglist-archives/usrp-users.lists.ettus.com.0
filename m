Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE3630765B
	for <lists+usrp-users@lfdr.de>; Thu, 28 Jan 2021 13:48:41 +0100 (CET)
Received: from [::1] (port=35382 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l56iz-0003sq-Kv; Thu, 28 Jan 2021 07:48:37 -0500
Received: from mail-oi1-f181.google.com ([209.85.167.181]:35866)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jarroyo@gradiant.org>)
 id 1l56iw-0003oW-EQ
 for usrp-users@lists.ettus.com; Thu, 28 Jan 2021 07:48:34 -0500
Received: by mail-oi1-f181.google.com with SMTP id d18so5869207oic.3
 for <usrp-users@lists.ettus.com>; Thu, 28 Jan 2021 04:48:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gradiant-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=Nog41VWeWklGHH5pByHlp2zs5YLwmy3m55lkN3ePDi4=;
 b=nKFZHqCPfh+C42Ig8TABaathtsTC+eaHnYpFU3+89VaRm/OVlj+zIdvWBXDNiOUEgK
 dU6GhK3EJUtQ/u8iD7DoUHfz/+vVoA+jX3RGrk9gghTnsIXy0nZ85KbEaibPVISRVbUc
 UTM9zNshHin98k7bgW08gipvlm4qOe/2C017g6+Y0aHdhbKttN9kovhJyw5qWHXT9F5x
 DNiJ963bPNLKwO7af7fzoJTGhCHWMr5+kNiyI+F1TsRi7J/JY95R4n+D/NePoA6Wtr5N
 qnTCU7+Epk+jwdX/XrB+0iIWdshaH4ayEdsQNNmii9eYzVh0nA1jXqgjFAo+VtFImxR4
 JvOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Nog41VWeWklGHH5pByHlp2zs5YLwmy3m55lkN3ePDi4=;
 b=H0tvYA7WkYrhBD5PTJQ1S+9ch5v1ye1PsQHv8dZicAc4TqiCjTi9c+SeQAssQRNP0x
 548vuUFwMYIzqo+tikSYed2FR29y4TpJnM8S/fL9VLkvNoZB6Cbrhk+hB1CItecmVQBM
 L92St4Atw7USR5Vj316tTo5jhSDVFPf7cRRgdEEVA8h7LD1LbLM7TB0AzXUg5VjuhwW5
 acxvdNq5R9kMji8iHHn102kuLO0U8mz1NygKX0BAPQz7QqJdQ/Xs9vIB7S5qqOww0Ol9
 HRoMCZKJV+nhEGuLY3T3rO6qW6hSwkfM4iOrRljR9Q5JS83JCf/zemWme1zUhBbWCkYq
 CWHA==
X-Gm-Message-State: AOAM531MblVpLOqSKkxretQJc3G/F+zgXLCPLdJbnf9OBQG5WKRkkOsA
 nnkA8G9STiizRwPmnO5b+j4KBhy1XylQGxXiIPZ7reGVJN8Iyg==
X-Google-Smtp-Source: ABdhPJwUrwwpyV5DVAiHZ1e9IcoqOwGtcMSmpCAdKNB2u0scQqId2H/Qmiyt7IrgBJxakClzgfXcbYSyJdd49b3/QJE=
X-Received: by 2002:a54:4e88:: with SMTP id c8mr6301189oiy.148.1611838073162; 
 Thu, 28 Jan 2021 04:47:53 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 28 Jan 2021 13:47:37 +0100
Message-ID: <CAOx6OK2_yPR6MY8YVfe8_P4TWRaouqmjLRZm=XXX3gPa-dF=Lw@mail.gmail.com>
To: usrp-users@lists.ettus.com, Brais Ares <bares@gradiant.org>
Subject: [USRP-users] Issues getting UHD and DPDK working with Mellanox
 ConnectX-5
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
From: Jorge Arroyo Giganto via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jorge Arroyo Giganto <jarroyo@gradiant.org>
Content-Type: multipart/mixed; boundary="===============8677156667283275786=="
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

--===============8677156667283275786==
Content-Type: multipart/alternative; boundary="000000000000c95e3605b9f54b3d"

--000000000000c95e3605b9f54b3d
Content-Type: text/plain; charset="UTF-8"

Hi,

I am trying to get DPDK and UHD working with a Mellanox ConnectX-5 NIC.

I am using UHD-3.15.LTS (the installation was done with PyBOMBS in order to
have RFNoC support, I did it following the RFNoC Getting Started guide),
with an X310 and running Ubuntu 16.04 on the Host.

I have followed the guides Getting Started with DPDK and UHD
<https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD> and UHD's manual
DPDK page
<https://files.ettus.com/manual_archive/v3.15.0.0/html/page_dpdk.html> with
no luck.

For DPDK, as I am using Ubuntu 16.04, I downloaded from DPDK's download page
<https://core.dpdk.org/download/> the recommended DPDK 17.11.10 (LTS)
version.

About the ConnectX-5, I installed its drivers (the LTS version of MLNX_OFED
<https://www.mellanox.com/products/infiniband-drivers/linux/mlnx_ofed>)
with "./mlnxofedinstall --upstream-libs --dpdk". The drivers seem to work
fine as I am able to run UHD applications using the X310 at 10Gb/s, however
when setting "use_dpdk=1" I always get the "[WARNING] [DPDK] Detected
use_dpdk argument, but DPDK support not built in." message.

My uhd.conf file looks like this:

[use_dpdk=1]
dpdk-mtu=9000
dpdk-driver=~/dpdk-stable-17.11.10/build/build/drivers   ; (not sure about
this line as I don't have the /usr/lib/x86_64-linux-gnu/dpdk-17.11-drivers/
directory, maybe this is a clue?)
dpdk-corelist=0,1
dpdk-num-mbufs=4095
dpdk-mbufs-cache-size=315

[dpdk-mac=04:3f:72:c3:70:fd]
dpdk-io-cpu=1
dpdk-ipv4=192.168.40.1/24

[dpdk-mac=04:3f:72:c3:70:fc]
dpdk-io-cpu=1
dpdk-ipv4=192.168.10.1/24


If anyone with this setup has gotten DPDK to work I would appreciate the
help very much.

Best regards,

Jorge

--000000000000c95e3605b9f54b3d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I am trying to get DPDK =
and UHD working with a Mellanox ConnectX-5 NIC.</div><div><br></div><div>I =
am using UHD-3.15.LTS (the installation was done with PyBOMBS in order to h=
ave RFNoC support, I did it following the RFNoC Getting Started guide), wit=
h an X310 and running Ubuntu 16.04 on the Host. <br></div><div><br></div><d=
iv>I have followed the guides <a href=3D"https://kb.ettus.com/Getting_Start=
ed_with_DPDK_and_UHD">Getting Started with DPDK and UHD</a> and <a href=3D"=
https://files.ettus.com/manual_archive/v3.15.0.0/html/page_dpdk.html">UHD&#=
39;s manual DPDK page</a> with no luck. <br></div><div><br></div><div>For D=
PDK, as I am using Ubuntu 16.04, I downloaded from <a href=3D"https://core.=
dpdk.org/download/">DPDK&#39;s download page</a> the recommended DPDK 17.11=
.10 (LTS) version.</div><div><br></div><div>About the ConnectX-5, I install=
ed its drivers (the <a href=3D"https://www.mellanox.com/products/infiniband=
-drivers/linux/mlnx_ofed">LTS version of MLNX_OFED</a>) with &quot;./mlnxof=
edinstall --upstream-libs --dpdk&quot;. The drivers seem to work fine as I =
am able to run UHD applications using the X310 at 10Gb/s, however when sett=
ing &quot;use_dpdk=3D1&quot; I always get the &quot;[WARNING] [DPDK] Detect=
ed use_dpdk argument, but DPDK support not built in.&quot; message.</div><d=
iv><br></div><div>My uhd.conf file looks like this:</div><div><br></div><di=
v style=3D"margin-left:40px">[use_dpdk=3D1]<br>dpdk-mtu=3D9000<br>dpdk-driv=
er=3D~/dpdk-stable-17.11.10/build/build/drivers =C2=A0 ; (not sure about th=
is line as I don&#39;t have the /usr/lib/x86_64-linux-gnu/dpdk-17.11-driver=
s/ directory, maybe this is a clue?)<br>dpdk-corelist=3D0,1<br>dpdk-num-mbu=
fs=3D4095<br>dpdk-mbufs-cache-size=3D315<br><br>[dpdk-mac=3D04:3f:72:c3:70:=
fd]<br>dpdk-io-cpu=3D1<br>dpdk-ipv4=3D<a href=3D"http://192.168.40.1/24">19=
2.168.40.1/24</a><br><br>[dpdk-mac=3D04:3f:72:c3:70:fc]<br>dpdk-io-cpu=3D1<=
br>dpdk-ipv4=3D<a href=3D"http://192.168.10.1/24">192.168.10.1/24</a></div>=
<div><br></div><div><br></div><div>If anyone with this setup has gotten DPD=
K to work I would appreciate the help very much.</div><div><br></div><div>B=
est regards,</div><div><br></div><div>Jorge<br></div></div>

--000000000000c95e3605b9f54b3d--


--===============8677156667283275786==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8677156667283275786==--

