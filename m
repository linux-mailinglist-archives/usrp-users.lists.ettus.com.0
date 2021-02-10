Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A133169A8
	for <lists+usrp-users@lfdr.de>; Wed, 10 Feb 2021 16:02:48 +0100 (CET)
Received: from [::1] (port=46224 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l9r0w-0003sl-Tm; Wed, 10 Feb 2021 10:02:46 -0500
Received: from mail-ot1-f47.google.com ([209.85.210.47]:40231)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1l9r0s-0003ma-Rg
 for usrp-users@lists.ettus.com; Wed, 10 Feb 2021 10:02:42 -0500
Received: by mail-ot1-f47.google.com with SMTP id i20so2037200otl.7
 for <usrp-users@lists.ettus.com>; Wed, 10 Feb 2021 07:02:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ahCKxmxr8+Z9+8phl6eufeLmKVUdFBmq4PP8UxnzVcQ=;
 b=J/UFQCh0f5GIQjWt1xuwv4H1HUxW9atRVGrw4GKjFS9klKMKDxY/jAgYi1re63pjEV
 /prPy4j2PT4jT/x7br+6zg1MxIF8oX/HHJAYVHwNAkOKCjHGN2sGkviuxJxOChV69Tyc
 x1Ib7/ZHHrD2v3U2vKNpeHg5U2jIg97cgzPEh6jH8LSJDIe+5HzHzggms45sBqfBlcp6
 nu3wUfansjTNRr1vhp5O62PKCmqReQQcYoca/v5NaMFteb5XYFe68pyzffGW7g9xUZ0s
 w+5aNVro2iORV9MSohea5bAXvqfhCvhEqcsnIpHJxbqk4RqTrQCZk3QLs3WHSCPH/NuS
 n4lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ahCKxmxr8+Z9+8phl6eufeLmKVUdFBmq4PP8UxnzVcQ=;
 b=OQbbSZu5C1I67h93XtMKoN914AqA4N7jejvL3t8Pg8NeAAGgJrp2WgxML9IsE2HbVf
 V8o2Y+y0Sh/SPQw6GuT0D3VMlxHyt9U9UjO2IJbjGOVor4izJu1MY9c+nKH/kzGpBYW6
 iHWIXgkVFk58RNOADsQFGHvFE4OkZKTa6yMsyhsaZ86uzVDJ4y94GypUThmnc8hHgSra
 va2bSDwn2npZ714LMkQbElOZIxqBPgXmL7AFWxlsoaZ9xzH/BzGspDCiXsyAyd5Rb7ci
 xukB9v6rcdfP9kz76+FuVhH+vMQ6tOaiPNokWk4pQ+tj947xM9Qm/yQWFtAHmmDx8ON4
 8TcA==
X-Gm-Message-State: AOAM530irX1Zg0RyDNtz9Nv1AFx2tBwn4dT4f8msdiDcmGOW3wG9dTDq
 h8DC7RkM/VxuTfGWTjyC8dQAz2MxcX8liF4j8vsjdA==
X-Google-Smtp-Source: ABdhPJzqfK/GYnoz1+S3pSJWrLoamORTyFOCu3vZgdTVnidf41+TulnNUZnVbcZcCXj4+6b+2KTW17AwG4osQ4uMSTk=
X-Received: by 2002:a9d:5503:: with SMTP id l3mr2350099oth.302.1612969321928; 
 Wed, 10 Feb 2021 07:02:01 -0800 (PST)
MIME-Version: 1.0
References: <dc7956e4d464ca7111db615edccaeb34506348a5@webmail>
In-Reply-To: <dc7956e4d464ca7111db615edccaeb34506348a5@webmail>
Date: Wed, 10 Feb 2021 10:01:51 -0500
Message-ID: <CAB__hTQLPXG0EBWHoLOJnbUC0vBoHouHPsrbLSx190i6Mm=Tdg@mail.gmail.com>
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0045760644610349987=="
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

--===============0045760644610349987==
Content-Type: multipart/alternative; boundary="00000000000077f35d05bafcafd9"

--00000000000077f35d05bafcafd9
Content-Type: text/plain; charset="UTF-8"

I don't know about the E310, but on the N310, I found files in
/data/network which is where I needed to make changes such as these.
Rob

On Wed, Feb 10, 2021 at 9:48 AM Dennis Trask via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Here are the results....
>
> root@ni-e31x-3199693:~# systemctl | grep -i net
> sys-devices-soc0-amba-e000b000.ethernet-net-eth0.device
>                loaded active plugged
>  /sys/devices/soc0/amba/e000b000.ethernet/net/eth0
> sys-subsystem-net-devices-eth0.device
>                loaded active plugged   /sys/subsystem/net/devices/eth0
> systemd-networkd.service
>                 loaded active running   Network Service
> systemd-resolved.service
>                 loaded active running   Network Name Resolution
> systemd-timesyncd.service
>                loaded active running   Network Time Synchronization
> systemd-networkd.socket
>                loaded active running   Network Service Netlink Socket
> network-pre.target
>                 loaded active active    Network (Pre)
> network.target
>                 loaded active active    Network
> nss-lookup.target
>                loaded active active    Host and Network Name Lookups
> root@ni-e31x-3199693:~# ip link
> 1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue qlen 1000
>     link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
> 2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast qlen
> 1000
>     link/ether 00:80:2f:26:50:06 brd ff:ff:ff:ff:ff:ff
>
>
> -----------------------------------------
> From: "Marcus D. Leech"
> To: dtrask1@tampabay.rr.com
> Cc: "usrp-users@lists.ettus.com"
> Sent: Tuesday February 9 2021 5:40:32PM
> Subject: Re: [USRP-users] E310 with v4.0.0.0 Image: Configure Static IP
>
> On 02/09/2021 05:04 PM, dtrask1@tampabay.rr.com wrote:
>
> Thanks, Marcus.
>
> That was actually what I attempted first. As described in the man page (
> <https://www.freedesktop.org/software/systemd/man/systemd.network.html>
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
> OK, what does:
>
> systemctl |grep -i net
>
> Yield?
>
> What does:
>
> ip link
>
> Return?
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
> " <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
> <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>>
> target=
> "_blank">
> <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
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
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000077f35d05bafcafd9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I don&#39;t know about the E310, but on the N310, I found =
files in /data/network which is where I needed to make changes such as thes=
e.<div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Feb 10, 2021 at 9:48 AM Dennis Trask via USRP-users=
 &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div>Here are the results....<div><br></div><div><div>root@ni-e31x-319969=
3:~# systemctl | grep -i net</div><div>sys-devices-soc0-amba-e000b000.ether=
net-net-eth0.device=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0loaded=
 active plugged=C2=A0 =C2=A0/sys/devices/soc0/amba/e000b000.ethernet/net/et=
h0</div><div>sys-subsystem-net-devices-eth0.device=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0loaded active plugged=C2=A0 =C2=A0/sys/subsystem/net/devic=
es/eth0</div><div>systemd-networkd.service=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 loaded active running=
=C2=A0 =C2=A0Network Service</div><div>systemd-resolved.service=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 l=
oaded active running=C2=A0 =C2=A0Network Name Resolution</div><div>systemd-=
timesyncd.service=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0loaded active running=C2=A0 =C2=A0Network Time S=
ynchronization</div><div>systemd-networkd.socket=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0loaded active=
 running=C2=A0 =C2=A0Network Service Netlink Socket</div><div>network-pre.t=
arget=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 loaded active active=C2=A0 =C2=A0 Networ=
k (Pre)</div><div>network.target=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 loaded active active=C2=A0 =C2=A0 Network</div><div>nss-lookup.target=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0loaded active active=C2=A0 =C2=A0 Hos=
t and Network Name Lookups</div><div>root@ni-e31x-3199693:~# ip link</div><=
div>1: lo: &lt;LOOPBACK,UP,LOWER_UP&gt; mtu 65536 qdisc noqueue qlen 1000</=
div><div>=C2=A0 =C2=A0 link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:0=
0</div><div>2: eth0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qdisc=
 pfifo_fast qlen 1000</div><div>=C2=A0 =C2=A0 link/ether 00:80:2f:26:50:06 =
brd ff:ff:ff:ff:ff:ff</div><div><br></div><br><div></div><p>---------------=
--------------------------</p>From: &quot;Marcus D. Leech&quot; <u></u><br>=
To: <a href=3D"mailto:dtrask1@tampabay.rr.com" target=3D"_blank">dtrask1@ta=
mpabay.rr.com</a><br>Cc: &quot;<a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank">usrp-users@lists.ettus.com</a>&quot;<br>Sent: Tuesday F=
ebruary 9 2021 5:40:32PM<br>Subject: Re: [USRP-users] E310 with v4.0.0.0 Im=
age: Configure Static IP<br><br>
<div>On 02/09/2021 05:04 PM, <a>dtrask1@tampabay.rr.com</a>
wrote:<br></div>
<blockquote>
Thanks, Marcus.
<div><br></div>
<div>That was actually what I attempted first. As described in the
man page (<a href=3D"https://www.freedesktop.org/software/systemd/man/syste=
md.network.html" target=3D"_blank"></a><a href=3D"https://www.freedesktop.o=
rg/software/systemd/man/systemd.network.html" target=3D"_blank">https://www=
.freedesktop.org/software/systemd/man/systemd.network.html</a>)
I created eth0.network under /etc/systemd/network/, with these
contents:</div>
<div><br></div>
<div>
<div>[Match]</div>
<div>Name=3Deth0</div>
<div><br></div>
<div>[Network]</div>
<div>Address=3D<a href=3D"http://192.168.200.2/24" target=3D"_blank">192.16=
8.200.2/24</a></div>
<div><br></div>
<div>The system seemed to ignore this configuration, however.</div>
<div><br></div>
<div><br></div>
<br></div>
</blockquote>
OK, what does:<br><br>
systemctl |grep -i net<br><br>
Yield?<br><br>
What does:<br><br>
ip link<br><br>
Return?<br><br><br><br><blockquote>
<div>
<p>-----------------------------------------</p>
From: &quot;Marcus D. Leech via USRP-users&quot;<br>
To: <a>usrp-users@lists.ettus.com</a><br>

Cc:<br>
Sent: Tuesday February 9 2021 4:42:34PM<br>
Subject: Re: [USRP-users] E310 with v4.0.0.0 Image: Configure
Static IP<br><br><div>On 02/09/2021 04:35 PM, Dennis Trask
via USRP-users wrote:<br></div>
<blockquote>I have re-imaged the SD card for my E310 with the
v4.0.0.0 image. I cannot figure out how to set a static IP address
on eth0 at boot-up. I created an /etc/network/interfaces file that
looks like this:
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
USRP-users mailing list<br><a>&quot;mailto:USRP-users@lists.ettus.com&quot;=
</a>&gt;<a>USRP-users@lists.ettus.com</a><br><a href=3D"http://lists.ettus.=
com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_blank">
&quot;</a><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lis=
ts.ettus.com" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usr=
p-users_lists.ettus.com&quot;</a>&gt;
target=3D<br>
&quot;_blank&quot;&gt;<a href=3D"http://lists.ettus.com/mailman/listinfo/us=
rp-users_lists.ettus.com" target=3D"_blank"></a><a href=3D"http://lists.ett=
us.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_blank">http:=
//lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br></bloc=
kquote>
It almost certainly is running systemd/networkd<br><br>
So look under /etc/systemd/networkd<br><br>
In Linux, there have historically been many different ways to
configure network devices, and even under systemd, there are a
couple of<br>
=C2=A0 different schemes &quot;out there&quot;.=C2=A0 I believe that in a U=
HD
4 system image on E310, it is based on Networkd.<br><br><br></div>
</blockquote>
<br><u></u></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000077f35d05bafcafd9--


--===============0045760644610349987==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0045760644610349987==--

