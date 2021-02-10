Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1EA31695A
	for <lists+usrp-users@lfdr.de>; Wed, 10 Feb 2021 15:45:16 +0100 (CET)
Received: from [::1] (port=46082 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l9qjw-0002Fr-IS; Wed, 10 Feb 2021 09:45:12 -0500
Received: from mail-vs1-f49.google.com ([209.85.217.49]:44459)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <koncept1@gmail.com>) id 1l9qjs-00028F-U1
 for usrp-users@lists.ettus.com; Wed, 10 Feb 2021 09:45:08 -0500
Received: by mail-vs1-f49.google.com with SMTP id s17so1197374vsn.11
 for <usrp-users@lists.ettus.com>; Wed, 10 Feb 2021 06:44:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nMKgiweq9jGDNQK0dDkMsRU1d8NX8OoWwcdINqFRby0=;
 b=dltdH0nzH3gkXN67XDcoJg/BpW0O+Lm11S5tZJnJ0n71O74Ms15hXygR/vOt7wbXvH
 27mBK02/hg5gUXyRq/yK5XbKfdXKFdu6KrOpUfJwrQQRVbTuoJJ2fM3o9sqXymBUaf7C
 HFrESQcrY2rs7OWL2qekvloafa+FDkHwYmfq+kaTBmF/AS8DDt5RuW/E8mFxCiNq3w+R
 REJxEc+xx2+50G/dzgRB4Bi7GON1+WhiV0t/W5YFjnYM8bv77D/LcwHRRDLo2ynaWAQZ
 aV1p3XCv+pFMpllcJDcYQcGha394ERUNnzEhWods1+BLA6KxdCay9ctqf93vDSwEjTdx
 ifbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nMKgiweq9jGDNQK0dDkMsRU1d8NX8OoWwcdINqFRby0=;
 b=V6+RNBG7V68xfFF43uQZ2nnGByqcptUaoX950KHFq8DviiW8S3ES5GgjVFhq80Ao6Q
 qLe14qIJGTqwAB0ab85nV4bfk4tj/xupVuiqJ84V2CdvXUycYToa5SPAifA6PUcXXIoX
 Tg/L6gc9bJ75GRKypF03azYLev0TDP7Nw7DaYgLJQfYngmkTwgzmueB3HjuDd9yZ4cX6
 lBHXt4N2JF6ltR6RWjHL366FpXz7uzuE14iOJnprIkVQL7kjj0H0lMApoiD2SMERYYQC
 ww73IK7t0lGnowvSx+tDIx8yckkc9zDGynF4eOsgIvupJxsDubpcv3CW23pRxeh96soH
 QVfw==
X-Gm-Message-State: AOAM531JnTrRyMUA43GTqt8Ossfnhc/Uj3SGse98B1/aHikLWF+Hk0pi
 9DU+WFcJsBjPk/00p5DpT2Tt8GZv2ueluDQ/dxk=
X-Google-Smtp-Source: ABdhPJye8z1k3oF2GR0n3D8Ylq7ytH7u29nkovJ2yjOeQXvyteYG4i6yNTk6USQyApuWLDrZNPol8vW91Uil87WWmdE=
X-Received: by 2002:a67:f594:: with SMTP id i20mr2067665vso.34.1612968268258; 
 Wed, 10 Feb 2021 06:44:28 -0800 (PST)
MIME-Version: 1.0
References: <c8adce8fc66a02147695ffdfc9ee380542a5bca1@webmail>
In-Reply-To: <c8adce8fc66a02147695ffdfc9ee380542a5bca1@webmail>
Date: Wed, 10 Feb 2021 09:44:15 -0500
Message-ID: <CAKx8PBiJXjP3M0x6jxQVJ67K-VUDAuoY4OfWJ28eG+h1Nknj+A@mail.gmail.com>
To: dtrask1@tampabay.rr.com
Subject: Re: [USRP-users] E310 with v4.0.0.0 Image: Configure Static IP
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
From: Ben Magistro via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ben Magistro <koncept1@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1470657587107178316=="
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

--===============1470657587107178316==
Content-Type: multipart/alternative; boundary="000000000000a9e16505bafc7003"

--000000000000a9e16505bafc7003
Content-Type: text/plain; charset="UTF-8"

I am using an image based on the v4.0.0.0 variant but I needed to rebuild
it to overcome some other issues with the image.  What you listed does work
for me.  If the link is not active, looking at the output of `ip addr` will
not show any inet address(es).  I don't see any obvious typos/differences
between what you provided and what I am using but including the contents
just to be safe.  As far as I know the name should not make any difference
provided it ends with `.network`.

root@ni-e31x-31D7B0C:~# cat /etc/systemd/network/20-wired.network
[Match]
Name=eth0

[Network]
Address=192.168.200.250/24

root@ni-e31x-31D7B0C:~# ip addr
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast qlen
1000
    link/ether 00:80:2f:30:8f:ca brd ff:ff:ff:ff:ff:ff
    inet 192.168.200.250/24 brd 192.168.200.255 scope global eth0
       valid_lft forever preferred_lft forever


root@ni-e31x-31D7B0C:~# systemctl | grep -i net
sys-devices-soc0-amba-e000b000.ethernet-net-eth0.device
              loaded active plugged
/sys/devices/soc0/amba/e000b000.ethernet/net/eth0

sys-subsystem-net-devices-eth0.device
              loaded active plugged   /sys/subsystem/net/devices/eth0

systemd-networkd.service
               loaded active running   Network Service

systemd-resolved.service
               loaded active running   Network Name Resolution

systemd-timesyncd.service
              loaded active running   Network Time Synchronization

systemd-networkd.socket
              loaded active running   Network Service Netlink Socket

network-pre.target
               loaded active active    Network (Pre)

network.target
               loaded active active    Network

nss-lookup.target
              loaded active active    Host and Network Name Lookups



Hope this helps.

On Tue, Feb 9, 2021 at 5:47 PM Dennis Trask via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Thanks, Marcus.
>
> That was actually what I attempted first. As described in the man page (
> https://www.freedesktop.org/software/systemd/man/systemd.network.html) I
> created eth0.network under /etc/systemd/network/, with these contents:
>
> [Match]
> Name=eth0
>
> [Network]
> Address=192.168.200.2/24
>
> The system seemed to ignore this configuration, however.
>
>
>
> -----------------------------------------
> From: "Marcus D. Leech via USRP-users"
> To: usrp-users@lists.ettus.com
> Cc:
> Sent: Tuesday February 9 2021 4:42:34PM
> Subject: Re: [USRP-users] E310 with v4.0.0.0 Image: Configure Static IP
>
> On 02/09/2021 04:35 PM, Dennis Trask via USRP-users wrote:
>
> I have re-imaged the SD card for my E310 with the v4.0.0.0 image. I cannot
> figure out how to set a static IP address on eth0 at boot-up. I created an
> /etc/network/interfaces file that looks like this:
>
> auto eth0
> iface eth0 inet static
> address 192.168.200.2
> netmask 255.255.255.0
>
> I can run the command "ifup eth0" and bring up the interface with the
> desired configuration, but it does not initialize when I reboot.
>
> The SD image I am using was obtained with the command:
> uhd_images_downloader -t e310 -t sg3
>
> I built the uhd_images_downloder from source, and it's version
> is 4.0.0.HEAD-0-g90ce6062.
>
> Dennis
>
>
>
> _______________________________________________
> USRP-users mailing list
> "mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com
> "http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">
> <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
> target=
> "_blank">
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> It almost certainly is running systemd/networkd
>
> So look under /etc/systemd/networkd
>
> In Linux, there have historically been many different ways to configure
> network devices, and even under systemd, there are a couple of
>   different schemes "out there".  I believe that in a UHD 4 system image
> on E310, it is based on Networkd.
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a9e16505bafc7003
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am using an image based on the v4.0.0.0 variant but I ne=
eded to rebuild it to overcome some other issues with the image.=C2=A0 What=
 you listed does work for me.=C2=A0 If the link is not active, looking at t=
he output of `ip addr` will not show any inet address(es).=C2=A0 I don&#39;=
t see any obvious typos/differences between what you provided and what I am=
 using but including the contents just to be safe.=C2=A0 As far as I know t=
he name should not make any difference provided it ends with `.network`.<br=
><div><br></div><div>root@ni-e31x-31D7B0C:~# cat /etc/systemd/network/20-wi=
red.network <br>[Match]<br>Name=3Deth0<br><br>[Network]<br>Address=3D<a hre=
f=3D"http://192.168.200.250/24">192.168.200.250/24</a></div><div><br></div>=
<div>root@ni-e31x-31D7B0C:~# ip addr<br>1: lo: &lt;LOOPBACK,UP,LOWER_UP&gt;=
 mtu 65536 qdisc noqueue qlen 1000<br>=C2=A0 =C2=A0 link/loopback 00:00:00:=
00:00:00 brd 00:00:00:00:00:00<br>=C2=A0 =C2=A0 inet <a href=3D"http://127.=
0.0.1/8">127.0.0.1/8</a> scope host lo<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0valid_=
lft forever preferred_lft forever<br>2: eth0: &lt;BROADCAST,MULTICAST,UP,LO=
WER_UP&gt; mtu 1500 qdisc pfifo_fast qlen 1000<br>=C2=A0 =C2=A0 link/ether =
00:80:2f:30:8f:ca brd ff:ff:ff:ff:ff:ff<br>=C2=A0 =C2=A0 inet <a href=3D"ht=
tp://192.168.200.250/24">192.168.200.250/24</a> brd 192.168.200.255 scope g=
lobal eth0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0valid_lft forever preferred_lft fo=
rever</div><div><br></div><div><br></div><div>root@ni-e31x-31D7B0C:~# syste=
mctl | grep -i net<br>sys-devices-soc0-amba-e000b000.ethernet-net-eth0.devi=
ce =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 loaded active plugged =C2=
=A0 /sys/devices/soc0/amba/e000b000.ethernet/net/eth0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0<br>sys-subsystem-net-devices-eth0.device =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 loaded active plugged =C2=A0 /sys/subsystem/net=
/devices/eth0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>systemd-networkd.servic=
e =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0loaded active running =C2=A0 Network Service =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>sy=
stemd-resolved.service =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0loaded active running =C2=A0 Network Name Re=
solution =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>sy=
stemd-timesyncd.service =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 loaded active running =C2=A0 Network Time Synch=
ronization =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>systemd-networkd.s=
ocket =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 loaded active running =C2=A0 Network Service Netlink Socket =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>network-pre.target =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0loaded active active =C2=A0 =C2=A0Network (Pre) =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0<br>network.target =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lo=
aded active active =C2=A0 =C2=A0Network =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0<br>nss-lookup.target =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 loaded activ=
e active =C2=A0 =C2=A0Host and Network Name Lookups =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=C2=A0 <br></div><div><br></div><div><br></div><div>Hope this =
helps.</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Tue, Feb 9, 2021 at 5:47 PM Dennis Trask via USRP-users &lt;=
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div>Thanks, Marcus.<div><br></div><div>That was actually wh=
at I attempted first. As described in the man page (<a href=3D"https://www.=
freedesktop.org/software/systemd/man/systemd.network.html" target=3D"_blank=
">https://www.freedesktop.org/software/systemd/man/systemd.network.html</a>=
) I created eth0.network under /etc/systemd/network/, with these contents:<=
/div><div><br></div><div><div>[Match]</div><div>Name=3Deth0</div><div><br><=
/div><div>[Network]</div><div>Address=3D<a href=3D"http://192.168.200.2/24"=
 target=3D"_blank">192.168.200.2/24</a></div><div><br></div><div>The system=
 seemed to ignore this configuration, however.</div><div><br></div><div><br=
></div><br><div></div><p>-----------------------------------------</p>From:=
 &quot;Marcus D. Leech via USRP-users&quot; <u></u><br>To: <a href=3D"mailt=
o:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com<=
/a><br>Cc: <br>Sent: Tuesday February 9 2021 4:42:34PM<br>Subject: Re: [USR=
P-users] E310 with v4.0.0.0 Image: Configure Static IP<br><br>
<div>On 02/09/2021 04:35 PM, Dennis Trask
via USRP-users wrote:<br></div>
<blockquote>
I have re-imaged the SD card for my E310 with the v4.0.0.0 image. I
cannot figure out how to set a static IP address on eth0 at
boot-up. I created an /etc/network/interfaces file that looks like
this:
<div><br></div>
<div>
<div>auto eth0</div>
<div>iface eth0 inet static</div>
<div>address 192.168.200.2</div>
<div>netmask 255.255.255.0</div>
</div>
<div><br></div>
<div>I can run the command &quot;ifup eth0&quot; and bring up the interface
with the desired configuration, but it does not initialize when I
reboot.</div>
<div><br></div>
<div>The SD image I am using was obtained with the command:
uhd_images_downloader -t e310 -t sg3</div>
<div><br></div>
<div>I built the uhd_images_downloder from source, and it&#39;s version
is=C2=A04.0.0.HEAD-0-g90ce6062.</div>
<div><br></div>
<div>Dennis</div>
<div><br></div>
<br><br>
_______________________________________________<br>
USRP-users mailing list<br><a></a>
&quot;mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank=
">USRP-users@lists.ettus.com</a>&quot;&gt;<a href=3D"mailto:USRP-users@list=
s.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a><br><a></a>
&quot;<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.e=
ttus.com" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-us=
ers_lists.ettus.com</a>&quot;&gt;<a href=3D"http://lists.ettus.com/mailman/=
listinfo/usrp-users_lists.ettus.com" target=3D"_blank"></a>
target=3D<br>
&quot;_blank&quot;&gt;<a href=3D"http://lists.ettus.com/mailman/listinfo/us=
rp-users_lists.ettus.com" target=3D"_blank">http://lists.ettus.com/mailman/=
listinfo/usrp-users_lists.ettus.com</a><br></blockquote>
It almost certainly is running systemd/networkd<br><br>
So look under /etc/systemd/networkd<br><br>
In Linux, there have historically been many different ways to
configure network devices, and even under systemd, there are a
couple of<br>
=C2=A0 different schemes &quot;out there&quot;.=C2=A0 I believe that in a U=
HD
4 system image on E310, it is based on Networkd.<br><br><br><u></u></div></=
div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000a9e16505bafc7003--


--===============1470657587107178316==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1470657587107178316==--

