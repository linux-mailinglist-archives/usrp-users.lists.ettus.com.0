Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E09E402120
	for <lists+usrp-users@lfdr.de>; Mon,  6 Sep 2021 23:40:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8697538446B
	for <lists+usrp-users@lfdr.de>; Mon,  6 Sep 2021 17:40:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="g1XgEKaO";
	dkim-atps=neutral
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 9C19A3843DE
	for <usrp-users@lists.ettus.com>; Mon,  6 Sep 2021 17:39:57 -0400 (EDT)
Received: by mail-qt1-f171.google.com with SMTP id x5so6369588qtq.13
        for <usrp-users@lists.ettus.com>; Mon, 06 Sep 2021 14:39:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=OBW9S0XCnZTAC/4/gwRuK3CvKx/BV1gfQTmNdOStfAM=;
        b=g1XgEKaOCzBrjE/uEQ/E0oKnMAS3sH2fbXQdZOXljemymuDBSL16b9zjjP8jkgUb2M
         FhzcXvXd349hl5/x3gtRqvarFLNsUYULcmmc7T+xE9EyyJAPkkW26nZDQnYrQJyHRC6N
         wMZUI+Z13iW5+yeyebWxX+c4MYLgHGdziqcDeRqy3Uza5wKlxWJpAT+u6CWw/t+B8Zje
         LEAfQllJ0NbzyUZAtWgTra4dBnqHqaQmmnoolUUerwMzWw/7l+DLd2BVQrFb7hdm2onK
         shx1H0kXoouVvj6/qv4OCOpoPSF7u8QIAHP5rSBbAankPyz0grpADXomZJbBnouD+rYU
         vqcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=OBW9S0XCnZTAC/4/gwRuK3CvKx/BV1gfQTmNdOStfAM=;
        b=J8lwg48fPKe3LMVZx98APg2uizkrX8Vf+aNm8VB9QOiaP55BY5HcTKFuVDGbBij5CS
         KAxYV/2xXB4bv2Yp0PYQgrZkHyGCWx61giXeqoHRZ9tA1RqvPp6zLNkNOXO87WWpaBfV
         iXxq29huYVg5aQ/wEo17HYSH/CVtLgF6ZDslcF8VutdICU/P3Fiz3rD3QKzNCgmRvxo/
         niUFHvsVMY4m5HHqX8dITatYPxYzgGXUHN2IuP0WmODUCi9suQMcdlINnL4BwGIW+Bkb
         YmSUhtAIlLRShH0VfX6tGPlNglF5uTmx8Y7hRJk5NwmeHex7Ct5Pkm/FEWRSeU1Pv2+4
         tZHQ==
X-Gm-Message-State: AOAM530UgPbiMZ1dz+ro1tBrJpfld/88hTsu6Lh3+W14HRqb0n+RIeGE
	E8RKwz8LRoC9sjoVZomlcZtJ1v8IONVrOQ==
X-Google-Smtp-Source: ABdhPJzp31BHdx28JzTbbdpXXp8OtyePseJHmIiHh1/P8HfVCmTQt3IbQ9NTOquGNlDu3mh2DNbzmg==
X-Received: by 2002:ac8:78c:: with SMTP id l12mr13173913qth.112.1630964396832;
        Mon, 06 Sep 2021 14:39:56 -0700 (PDT)
Received: from [192.168.2.239] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id c17sm6367866qtq.42.2021.09.06.14.39.56
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Sep 2021 14:39:56 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <78915145.1401871.1630855703615.ref@mail.yahoo.com>
 <78915145.1401871.1630855703615@mail.yahoo.com>
 <606552990.1786539.1630963952986@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <091849f1-add1-fb06-902f-50dc12c4e4ef@gmail.com>
Date: Mon, 6 Sep 2021 17:39:55 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <606552990.1786539.1630963952986@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: WDQJVNA4YGIDM6SOJOJCMZW4IK7RA3SZ
X-Message-ID-Hash: WDQJVNA4YGIDM6SOJOJCMZW4IK7RA3SZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Rx Packet Drop in N321 USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WDQJVNA4YGIDM6SOJOJCMZW4IK7RA3SZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4853535798425433157=="

This is a multi-part message in MIME format.
--===============4853535798425433157==
Content-Type: multipart/alternative;
 boundary="------------8E5C01FE63C627116C5F5D77"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------8E5C01FE63C627116C5F5D77
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-06 5:32 p.m., zhou via USRP-users wrote:
> Hi,
>
> I have a problem with the N321 USRP. I find packet dropped in USRP but=20
> not in host. In host, I am running Ubuntu 18.04.
>
> *_Below is the ifconfig result in N321:_*
>
> root@ni-n3xx-320CAAB:~# ifconfig
>
> *eth0*=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link encap:Ethernet=C2=A0 HWaddr 0=
0:80:2F:32:36:BA
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet addr:192.16=
8.10.165=C2=A0 Bcast:192.168.255.255=20
> Mask:255.255.255.0
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UP BROADCAST RUN=
NING MULTICAST=C2=A0 MTU:*1500*=C2=A0 Metric:1
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets:61837=
4 errors:0 *dropped:11485*overruns:0 frame:0
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets:19371=
4 errors:0 dropped:0 overruns:0 carrier:0
>
> collisions:0 txqueuelen:1000
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX bytes:3977673=
3 (37.9 MiB)=C2=A0 TX bytes:14546432 (13.8 MiB)
>
> Interrupt:27 Base address:0xb000
>
> int0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link encap:Ethernet HWaddr AE:CD:BA:=
E1:CF:96
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet addr:169.25=
4.0.1=C2=A0 Bcast:169.254.0.255=C2=A0 Mask:255.255.255.0
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UP BROADCAST RUN=
NING MULTICAST=C2=A0 MTU:9000=C2=A0 Metric:1
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets:456 e=
rrors:0 dropped:0 overruns:0 frame:0
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets:15 er=
rors:0 dropped:0 overruns:0 carrier:0
>
> collisions:0 txqueuelen:1000
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX bytes:37392 (=
36.5 KiB)=C2=A0 TX bytes:2770 (2.7 KiB)
>
> lo=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link encap:Local Loopback
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet addr:127.0.=
0.1=C2=A0 Mask:255.0.0.0
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UP LOOPBACK RUNN=
ING=C2=A0 MTU:65536=C2=A0 Metric:1
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets:89 er=
rors:0 dropped:0 overruns:0 frame:0
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets:89 er=
rors:0 dropped:0 overruns:0 carrier:0
>
> collisions:0 txqueuelen:1000
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX bytes:7480 (7=
.3 KiB)=C2=A0 TX bytes:7480 (7.3 KiB)
>
> *sfp0*=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link encap:Ethernet=C2=A0 HWaddr 0=
0:80:2F:32:36:BB
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet addr:192.16=
8.12.2=C2=A0 Bcast:192.168.12.255 Mask:255.255.255.0
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UP BROADCAST RUN=
NING MULTICAST=C2=A0 MTU:*9000*=C2=A0 Metric:1
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets:6239 =
errors:0 *dropped:804 *overruns:0 frame:0
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets:5669 =
errors:0 dropped:0 overruns:0 carrier:0
>
> collisions:0 txqueuelen:1000
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX bytes:1846669=
7 (17.6 MiB)=C2=A0 TX bytes:18417536 (17.5 MiB)
>
> *sfp1*=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link encap:Ethernet=C2=A0 HWaddr 0=
0:80:2F:32:36:BC
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet addr:192.16=
8.13.2=C2=A0 Bcast:192.168.13.255 Mask:255.255.255.0
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UP BROADCAST RUN=
NING MULTICAST=C2=A0 MTU:*9000*=C2=A0 Metric:1
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets:24868=
 errors:0 *dropped:796*overruns:0 frame:0
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets:24613=
 errors:0 dropped:0 overruns:0 carrier:0
>
> collisions:0 txqueuelen:1000
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX bytes:2048691=
5 (19.5 MiB)=C2=A0 TX bytes:19611643 (18.7 MiB)
>
> _*Below is ifconfig result in host:*_
>
> user@USRP-SERVER:~$ ifconfig
>
> *eno1*: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu *1500*
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet 192.168.10.143=C2=A0 ne=
tmask 255.255.255.0=C2=A0 broadcast=20
> 192.168.255.255
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet6 fe80::b27b:25ff:fe1d:9=
e4e=C2=A0 prefixlen 64=C2=A0 scopeid 0x20<link>
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ether b0:7b:25:1d:9e:4e=C2=A0=
 txqueuelen 1000=C2=A0 (Ethernet)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets 5604=C2=A0 bytes =
416435 (416.4 KB)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX errors 0 dropped 0=C2=A0 =
overruns 0=C2=A0 frame 0
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets 404=C2=A0 bytes 6=
8556 (68.5 KB)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX errors 0 dropped 0 overru=
ns 0=C2=A0 carrier 0=C2=A0 collisions 0
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 device interrupt 16=C2=A0 me=
mory 0xd2100000-d2120000
>
> *enp1s0f0*: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu *900=
0*
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet 192.168.12.1=C2=A0 netm=
ask 255.255.255.0=C2=A0 broadcast 192.168.12.255
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet6 fe80::faf2:1eff:fe42:d=
ddc=C2=A0 prefixlen 64=C2=A0 scopeid 0x20<link>
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ether f8:f2:1e:42:dd:dc=C2=A0=
 txqueuelen 1000=C2=A0 (Ethernet)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets 294=C2=A0 bytes 3=
5184 (35.1 KB)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX errors 0 dropped 0=C2=A0 =
overruns 0=C2=A0 frame 0
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets 395=C2=A0 bytes 3=
7148 (37.1 KB)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX errors 0 dropped 0 overru=
ns 0=C2=A0 carrier 0=C2=A0 collisions 0
>
> *enp1s0f1*: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu *900=
0*
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet 192.168.13.1=C2=A0 netm=
ask 255.255.255.0=C2=A0 broadcast 192.168.13.255
>
> =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0inet6 fe80::faf2:1eff:fe42:d=
ddd=C2=A0 prefixlen 64=C2=A0 scopeid 0x20<link>
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ether f8:f2:1e:42:dd:dd=C2=A0=
 txqueuelen 1000=C2=A0 (Ethernet)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets 9=C2=A0 bytes 222=
8 (2.2 KB)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX errors 0 dropped 0=C2=A0 =
overruns 0=C2=A0 frame 0
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets 72=C2=A0 bytes 79=
83 (7.9 KB)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX errors 0 dropped 0 overru=
ns 0=C2=A0 carrier 0=C2=A0 collisions 0
>
> lo: flags=3D73<UP,LOOPBACK,RUNNING>=C2=A0 mtu 65536
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet 127.0.0.1=C2=A0 netmask=
 255.0.0.0
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet6 ::1 prefixlen 128=C2=A0=
 scopeid 0x10<host>
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 loop txqueuelen 1000=C2=A0 (=
Local Loopback)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX packets 21071 bytes 14971=
10 (1.4 MB)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX errors 0 dropped 0=C2=A0 =
overruns 0=C2=A0 frame 0
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX packets 21071=C2=A0 bytes=
 1497110 (1.4 MB)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX errors 0 dropped 0 overru=
ns 0=C2=A0 carrier 0=C2=A0 collisions 0
>
> Could you please let me know what is the possible reason for packet=20
> drop in USRP? How to fix it?
>
> Thanks for any inputs.
>
>
These often PHY-layer issues--bad cables.

But also can be due to the driver being forced to drop a frame on the=20
floor because there's nowhere to put it because kernel-to-userland=20
buffers have filled up.=C2=A0 That's
 =C2=A0 usually due to simple inability for the userland application to "=
keep=20
up" with traffic.=C2=A0 That shouldn't ever be the case here, unless you =
have=20
some application that is
 =C2=A0 trying to stream outside of the confines of the FPGA.=C2=A0 The s=
tream=20
endpoints for UHD sample traffic never really get "seen" by the CPU as=20
far as I know, so the only
 =C2=A0 thing the N310 CPU sees is management "stuff", which is very low =
rate=20
(comparatively speaking).



--------------8E5C01FE63C627116C5F5D77
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-06 5:32 p.m., zhou via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:606552990.1786539.1630963952986@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydpb9dc4fa4yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">
          <div>
            <div dir=3D"ltr" data-setdir=3D"false">Hi,=C2=A0</div>
            <div dir=3D"ltr" data-setdir=3D"false"><br>
            </div>
            <div dir=3D"ltr" data-setdir=3D"false">I have a problem with =
the
              N321 USRP. I find packet dropped
              in USRP but not in host. In host, I am running Ubuntu
              18.04.</div>
            <div><br>
            </div>
            <p class=3D"ydpc002c510MsoNormal"><b>=C2=A0<u>Below is the if=
config
                  result in N321:</u></b></p>
            <p class=3D"ydpc002c510MsoNormal">root@ni-n3xx-320CAAB:~#
              ifconfig</p>
            <p class=3D"ydpc002c510MsoNormal"><b>eth0</b>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 Link
              encap:Ethernet=C2=A0 HWaddr 00:80:2F:32:36:BA</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet
              addr:192.168.10.165=C2=A0 Bcast:192.168.255.255=C2=A0
              Mask:255.255.255.0</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 UP
              BROADCAST RUNNING MULTICAST=C2=A0 MTU:<b>1500</b>=C2=A0 Met=
ric:1</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX
              packets:618374 errors:0 <b><span style=3D"color:red">droppe=
d:11485</span></b><span
                style=3D"color:red"> </span>overruns:0 frame:0</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX
              packets:193714 errors:0 dropped:0 overruns:0 carrier:0</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
              collisions:0 txqueuelen:1000</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX
              bytes:39776733 (37.9 MiB)=C2=A0 TX bytes:14546432 (13.8 MiB=
)</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
              Interrupt:27 Base address:0xb000</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0</p>
            <p class=3D"ydpc002c510MsoNormal">int0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 Link
              encap:Ethernet=C2=A0
              HWaddr AE:CD:BA:E1:CF:96</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet
              addr:169.254.0.1=C2=A0 Bcast:169.254.0.255=C2=A0 Mask:255.2=
55.255.0</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 UP
              BROADCAST RUNNING MULTICAST=C2=A0 MTU:9000=C2=A0 Metric:1</=
p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX
              packets:456 errors:0 dropped:0 overruns:0 frame:0</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX
              packets:15 errors:0 dropped:0 overruns:0 carrier:0</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
              collisions:0 txqueuelen:1000</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX
              bytes:37392 (36.5 KiB)=C2=A0 TX bytes:2770 (2.7 KiB)</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0</p>
            <p class=3D"ydpc002c510MsoNormal">lo=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 Link
              encap:Local Loopback</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet
              addr:127.0.0.1=C2=A0 Mask:255.0.0.0</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 UP
              LOOPBACK RUNNING=C2=A0 MTU:65536=C2=A0 Metric:1</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX
              packets:89 errors:0 dropped:0 overruns:0 frame:0</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX
              packets:89 errors:0 dropped:0 overruns:0 carrier:0</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
              collisions:0 txqueuelen:1000</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX
              bytes:7480 (7.3 KiB)=C2=A0 TX bytes:7480 (7.3 KiB)</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0</p>
            <p class=3D"ydpc002c510MsoNormal"><b>sfp0</b>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 Link
              encap:Ethernet=C2=A0 HWaddr 00:80:2F:32:36:BB</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet
              addr:192.168.12.2=C2=A0 Bcast:192.168.12.255=C2=A0
              Mask:255.255.255.0</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 UP
              BROADCAST RUNNING MULTICAST=C2=A0 MTU:<b>9000</b>=C2=A0 Met=
ric:1</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX
              packets:6239 errors:0 <b><span style=3D"color:red">dropped:=
804
                </span></b>overruns:0
              frame:0</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX
              packets:5669 errors:0 dropped:0 overruns:0 carrier:0</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
              collisions:0 txqueuelen:1000</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX
              bytes:18466697 (17.6 MiB)=C2=A0 TX bytes:18417536 (17.5 MiB=
)</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0</p>
            <p class=3D"ydpc002c510MsoNormal"><b>sfp1</b>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 Link
              encap:Ethernet=C2=A0 HWaddr 00:80:2F:32:36:BC</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet
              addr:192.168.13.2=C2=A0 Bcast:192.168.13.255=C2=A0
              Mask:255.255.255.0</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 UP
              BROADCAST RUNNING MULTICAST=C2=A0 MTU:<b>9000</b>=C2=A0 Met=
ric:1</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX
              packets:24868 errors:0 <b><span style=3D"color:red">dropped=
:796</span></b><span
                style=3D"color:red"> </span>overruns:0 frame:0</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX
              packets:24613 errors:0 dropped:0 overruns:0 carrier:0</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
              collisions:0 txqueuelen:1000</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX
              bytes:20486915 (19.5 MiB)=C2=A0 TX bytes:19611643 (18.7 MiB=
)</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0</p>
            <p class=3D"ydpc002c510MsoNormal"><u><b>Below is ifconfig
                  result in host:</b></u></p>
            <p class=3D"ydpc002c510MsoNormal">user@USRP-SERVER:~$ ifconfi=
g</p>
            <p class=3D"ydpc002c510MsoNormal"><b>eno1</b>:
              flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;=C2=A0 mt=
u <b>1500</b></p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 inet
              192.168.10.143=C2=A0 netmask 255.255.255.0=C2=A0 broadcast
              192.168.255.255</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 inet6
              fe80::b27b:25ff:fe1d:9e4e=C2=A0 prefixlen 64=C2=A0 scopeid
              0x20&lt;link&gt;</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0ether
              b0:7b:25:1d:9e:4e=C2=A0 txqueuelen 1000=C2=A0 (Ethernet)</p=
>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 RX packets
              5604=C2=A0 bytes 416435 (416.4 KB)</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 RX errors 0=C2=A0
              dropped 0=C2=A0 overruns 0=C2=A0 frame 0</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 TX packets
              404=C2=A0 bytes 68556 (68.5 KB)</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 TX errors 0=C2=A0
              dropped 0 overruns 0=C2=A0 carrier 0=C2=A0 collisions 0</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 device interrupt
              16=C2=A0 memory 0xd2100000-d2120000</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0</p>
            <p class=3D"ydpc002c510MsoNormal"><b>enp1s0f0</b>:
              flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;=C2=A0 mt=
u <b><span
                  style=3D"color:red">9000</span></b></p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 inet
              192.168.12.1=C2=A0 netmask 255.255.255.0=C2=A0 broadcast
              192.168.12.255</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 inet6
              fe80::faf2:1eff:fe42:dddc=C2=A0 prefixlen 64=C2=A0 scopeid
              0x20&lt;link&gt;</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 ether
              f8:f2:1e:42:dd:dc=C2=A0 txqueuelen 1000=C2=A0 (Ethernet)</p=
>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 RX packets
              294=C2=A0 bytes 35184 (35.1 KB)</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 RX errors 0=C2=A0
              dropped 0=C2=A0 overruns 0=C2=A0 frame 0</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 TX packets
              395=C2=A0 bytes 37148 (37.1 KB)</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 TX errors 0=C2=A0
              dropped 0 overruns 0=C2=A0 carrier 0=C2=A0 collisions 0</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0</p>
            <p class=3D"ydpc002c510MsoNormal"><b>enp1s0f1</b>:
              flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;=C2=A0 mt=
u <b>9000</b></p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 inet
              192.168.13.1=C2=A0 netmask 255.255.255.0=C2=A0 broadcast
              192.168.13.255</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0 =C2=A0=C2=
=A0=C2=A0=C2=A0inet6
              fe80::faf2:1eff:fe42:dddd=C2=A0 prefixlen 64=C2=A0 scopeid
              0x20&lt;link&gt;</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 ether
              f8:f2:1e:42:dd:dd=C2=A0 txqueuelen 1000=C2=A0 (Ethernet)</p=
>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 RX packets
              9=C2=A0 bytes 2228 (2.2 KB)</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 RX errors 0=C2=A0
              dropped 0=C2=A0 overruns 0=C2=A0 frame 0</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 TX packets
              72=C2=A0 bytes 7983 (7.9 KB)</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 TX errors 0=C2=A0
              dropped 0 overruns 0=C2=A0 carrier 0=C2=A0 collisions 0</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0</p>
            <p class=3D"ydpc002c510MsoNormal">lo:
              flags=3D73&lt;UP,LOOPBACK,RUNNING&gt;=C2=A0 mtu 65536</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 inet
              127.0.0.1=C2=A0 netmask 255.0.0.0</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 inet6 ::1=C2=A0
              prefixlen 128=C2=A0 scopeid 0x10&lt;host&gt;</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 loop=C2=A0
              txqueuelen 1000=C2=A0 (Local Loopback)</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 RX packets 21071=C2=A0
              bytes 1497110 (1.4 MB)</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 RX errors 0=C2=A0
              dropped 0=C2=A0 overruns 0=C2=A0 frame 0</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 TX packets
              21071=C2=A0 bytes 1497110 (1.4 MB)</p>
            <p class=3D"ydpc002c510MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 TX errors 0=C2=A0
              dropped 0 overruns 0=C2=A0 carrier 0=C2=A0 collisions 0</p>
            <div>=C2=A0</div>
            <div>Could you please let me know what is the possible
              reason for
              packet drop in USRP? How to fix it?</div>
          </div>
          <div><br>
          </div>
          <div dir=3D"ltr" data-setdir=3D"false">Thanks for any inputs.</=
div>
          <div dir=3D"ltr" data-setdir=3D"false"><br>
          </div>
          <br>
        </div>
      </div>
    </blockquote>
    These often PHY-layer issues--bad cables.<br>
    <br>
    But also can be due to the driver being forced to drop a frame on
    the floor because there's nowhere to put it because
    kernel-to-userland buffers have filled up.=C2=A0 That's<br>
    =C2=A0 usually due to simple inability for the userland application t=
o
    "keep up" with traffic.=C2=A0 That shouldn't ever be the case here,
    unless you have some application that is<br>
    =C2=A0 trying to stream outside of the confines of the FPGA.=C2=A0 Th=
e stream
    endpoints for UHD sample traffic never really get "seen" by the CPU
    as far as I know, so the only<br>
    =C2=A0 thing the N310 CPU sees is management "stuff", which is very l=
ow
    rate (comparatively speaking).<br>
    <br>
    <br>
  </body>
</html>

--------------8E5C01FE63C627116C5F5D77--

--===============4853535798425433157==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4853535798425433157==--
