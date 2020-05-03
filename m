Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C651C2CAB
	for <lists+usrp-users@lfdr.de>; Sun,  3 May 2020 15:15:44 +0200 (CEST)
Received: from [::1] (port=53440 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jVET5-0008LJ-72; Sun, 03 May 2020 09:15:39 -0400
Received: from mail-lj1-f175.google.com ([209.85.208.175]:33691)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <coxe@close-haul.com>) id 1jV7hl-00065f-QS
 for usrp-users@lists.ettus.com; Sun, 03 May 2020 02:02:21 -0400
Received: by mail-lj1-f175.google.com with SMTP id w20so6487907ljj.0
 for <usrp-users@lists.ettus.com>; Sat, 02 May 2020 23:02:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=WpqyvCVkYSCWQEkt5UhorZtnUnFtjcUM8Spt406BEkc=;
 b=IE182GFKT8+I9srzLdQqke9j5Zth2/WI4JQa3q65rUPFydTga2Vt4oA52Hrur613oB
 L9PJ0xkk/G+JWk3ebE4pKXYeX1aaiYJha+cgipsVeBUMt1L0Gf2P5VNu035VzSeM6XGq
 4tc63haHUdTWia1XHlcLApLDo1Y394wv4QdLOvOae7GeHA060OEB4Dm/iN8PFidSYFSY
 O++bnTDL81ai93zDBMXUgTVv74z5eXNgZaZBVBhoF1/laKY+g1V3z/uRiM77kd9u/CDG
 XOeRrcvb0fITTZ71IoXghDo8L8WmUfB1vSmMvVYjrxZAI00P3jJyAVNL2K3+qwMO+DK5
 hfrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=WpqyvCVkYSCWQEkt5UhorZtnUnFtjcUM8Spt406BEkc=;
 b=N9eymmTn2jC/bNuUE9qANrzQIdktBE09jiyOyo5VKPwrcSIAKVWg0GyIuHskSZTWle
 MwkHeDnqqMr+ZLsZsrnLgAKjl8alyw7/ttwMgO3Kcd+T6964d/HIhEWE41LcdAS5xXl2
 ex59Tjs+E0GFRYJGxaZ4Y0IrIVR+54tPpMuCC7TDAl+tmhJUg+elDs/MZJIsE4VTUeLN
 lVHWG24EVUm3P06fgl2Rd29NN0EWJZLUMBp3/LrNQQMflKQEZNMMVySNEU2gX00Vw4op
 csodtHiYOrAaMmCmNbSghYpicrVqnptw3zt2TjS1+eY/GHa2AhzlkF3XSl2py6z1/rC9
 xV9A==
X-Gm-Message-State: AGi0PuZSKniVSDgaCFuAqI4Xsn7nac6z+b7Fj/p7oLCT/B84gsmLnzT/
 4cfUwq34Z3fPl/Ac+ZP9fVuidb7xnp6HWG4toS0mKLBPDVM=
X-Google-Smtp-Source: APiQypL/PnE0WWqGnE/dY1qmyKtRcnGqsX7mwtH52phWN8NUuxDgHtGrYtW/u01/V93y5SeKg/4B7BcV2fkUwFUWFWk=
X-Received: by 2002:a2e:8807:: with SMTP id x7mr6986887ljh.173.1588485700145; 
 Sat, 02 May 2020 23:01:40 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 2 May 2020 23:01:29 -0700
Message-ID: <CAKJyDkJn73mtB6bA+paabburPN9USK+K3Hwfoq1hiqubO_WFwA@mail.gmail.com>
To: Ettus Mail List <usrp-users@lists.ettus.com>
Subject: [USRP-users] Dockerfile that builds GR v3.8.1.0 and UHD v.3.15.0.0
 from source on Ubuntu 18.04
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
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <coxe@quanttux.com>
Content-Type: multipart/mixed; boundary="===============7041391261070027963=="
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

--===============7041391261070027963==
Content-Type: multipart/alternative; boundary="000000000000e361cd05a4b82549"

--000000000000e361cd05a4b82549
Content-Type: text/plain; charset="UTF-8"

Since the release of UHD v3.15.0.0 and GNU Radio v.3.8.1.0, the Ubuntu
18.04 dependencies to build from source have evolved. The
documentation has not.

I've been looking for an excuse to learn how to use Docker containers,
so I created a Dockerfile based on Ubuntu 18.04 with the latest and
greatest UHD and GNU Radio builds. Hopefully it will save some pain
for people who are just getting started or who want to upgrade without
going bonkers:

https://github.com/robincoxe/ettus-docker/tree/master/ubuntu-uhd-gnuradio


Undoubtedly, the path of least resistance would be to upgrade your PC
to Ubuntu 20.04 and install UHD and GNU Radio as follows:
sudo apt install libuhd3.15.0
sudo apt install gnuradio

However, if you'd like to build GNU Radio and UHD from source as well
as keep running an older version of Ubuntu for whatever reason, you
could either refer to the dependencies in this Dockerfile as a
reference or you could just deploy the Docker image.


-Robin

--000000000000e361cd05a4b82549
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre style=3D"white-space:pre-wrap;box-sizing:border-box;f=
ont-family:SFMono-Regular,Consolas,&quot;Liberation Mono&quot;,Menlo,monosp=
ace;font-size:12px;margin-top:0px;margin-bottom:0px;color:rgb(36,41,46)">Si=
nce the release of UHD v3.15.0.0 and GNU Radio v.3.8.1.0, the Ubuntu 18.04 =
dependencies to build from source have evolved. The documentation has not. =
=20
<br></pre><pre style=3D"white-space:pre-wrap;box-sizing:border-box;font-fam=
ily:SFMono-Regular,Consolas,&quot;Liberation Mono&quot;,Menlo,monospace;fon=
t-size:12px;margin-top:0px;margin-bottom:0px;color:rgb(36,41,46)">I&#39;ve =
been looking for an excuse to learn how to use Docker containers, so I crea=
ted a Dockerfile based on Ubuntu 18.04 with the latest and greatest UHD and=
 GNU Radio builds. Hopefully it will save some pain for people who are just=
 getting started or who want to upgrade without going bonkers:</pre><pre st=
yle=3D"white-space:pre-wrap;box-sizing:border-box;font-family:SFMono-Regula=
r,Consolas,&quot;Liberation Mono&quot;,Menlo,monospace;font-size:12px;margi=
n-top:0px;margin-bottom:0px;color:rgb(36,41,46)"><pre style=3D"white-space:=
pre-wrap;box-sizing:border-box;font-family:SFMono-Regular,Consolas,&quot;Li=
beration Mono&quot;,Menlo,monospace;margin-top:0px;margin-bottom:0px"><a hr=
ef=3D"https://github.com/robincoxe/ettus-docker/tree/master/ubuntu-uhd-gnur=
adio" target=3D"_blank">https://github.com/robincoxe/ettus-docker/tree/mast=
er/ubuntu-uhd-gnuradio</a><br></pre></pre><pre style=3D"white-space:pre-wra=
p;box-sizing:border-box;font-family:SFMono-Regular,Consolas,&quot;Liberatio=
n Mono&quot;,Menlo,monospace;font-size:12px;margin-top:0px;margin-bottom:0p=
x;color:rgb(36,41,46)"><br></pre><pre style=3D"white-space:pre-wrap;box-siz=
ing:border-box;font-family:SFMono-Regular,Consolas,&quot;Liberation Mono&qu=
ot;,Menlo,monospace;font-size:12px;margin-top:0px;margin-bottom:0px;color:r=
gb(36,41,46)">Undoubtedly, the path of least resistance would be to upgrade=
 your PC to Ubuntu 20.04 and install UHD and GNU Radio as follows:
sudo apt install libuhd3.15.0
sudo apt install gnuradio

However, if you&#39;d like to build GNU Radio and UHD from source as well a=
s keep running an older version of Ubuntu for whatever reason, you could ei=
ther refer to the dependencies in this Dockerfile as a reference or you cou=
ld just deploy the Docker image.  </pre><font color=3D"#888888"><pre style=
=3D"white-space:pre-wrap;box-sizing:border-box;font-family:SFMono-Regular,C=
onsolas,&quot;Liberation Mono&quot;,Menlo,monospace;font-size:12px;margin-t=
op:0px;margin-bottom:0px;color:rgb(36,41,46)"><br></pre><pre style=3D"white=
-space:pre-wrap;box-sizing:border-box;font-family:SFMono-Regular,Consolas,&=
quot;Liberation Mono&quot;,Menlo,monospace;font-size:12px;margin-top:0px;ma=
rgin-bottom:0px;color:rgb(36,41,46)">-Robin</pre></font></div>

--000000000000e361cd05a4b82549--


--===============7041391261070027963==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7041391261070027963==--

