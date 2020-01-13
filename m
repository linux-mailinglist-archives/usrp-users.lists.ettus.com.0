Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 15156139851
	for <lists+usrp-users@lfdr.de>; Mon, 13 Jan 2020 19:05:43 +0100 (CET)
Received: from [::1] (port=33638 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ir45t-0005JH-35; Mon, 13 Jan 2020 13:05:41 -0500
Received: from mail-oi1-f174.google.com ([209.85.167.174]:39821)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1ir45p-00057q-3c
 for usrp-users@lists.ettus.com; Mon, 13 Jan 2020 13:05:37 -0500
Received: by mail-oi1-f174.google.com with SMTP id a67so9151158oib.6
 for <usrp-users@lists.ettus.com>; Mon, 13 Jan 2020 10:05:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fNBVJb1tqujvO5XUEYiu0IGGYV7RMFjcRULnc7ChprA=;
 b=MJNXlJSPyPCb6YYsFs8J1We99Y+gae3gT1lbirat08W/y2n3ntUmkP+JLVLUDC4zOP
 NSuz3KCg72Bf0cqU6YGxANBu6IoUODgPLsHriT8zvwQ+tfOs/OgeteC3oC/2FPXw3Wvf
 c1S/9eNK+LYNQBVR1E7pb09Y/WDqIIFYGtexb+27Fhxh4UShPL+UMiOCVtNpDHhoGFuv
 C+I7E7IOUHqD6I3KSCkCAab62BiMZOI6eiSH7DcrjFudvMeu4DM1+aZhgm150Tf5ioYo
 ZvAq39F5wB1HYFJYUvw1nsqUmJHjtufK2AOIUAN22MrrIql2CivmeAS6XfXdGKNGexKC
 GcZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fNBVJb1tqujvO5XUEYiu0IGGYV7RMFjcRULnc7ChprA=;
 b=dezVnhvD/wlGt2sIJtV+enlaKm43IZGoN8FizDlEAShhJXTwL2Wbgh6iHxo4FbIOUl
 FvVeGHjoyzxKMb8PLx6Kn4iIf9bC8RNiym3hSVWkCVgt1rFS8jjcxhY94tBQFpqEVZkv
 xZ90xZWuqX8qcdrWnPYTg/ujwuSB7Z6Ajec82S9DIfbUcZS7mQB6bhnzNre+aT7G/f6q
 AogqFT/u3kyPy2eKmx3mB5+YvT2BdRt/96x1c0wzNpXAd4F2giB+uzJ/LiZM45/EJ0hq
 igSpjIJQ8CNuSezA0HnGSVHi0otFA5yLw1R7mikiwAcx4KgiWG6bBU1+vfezuHBgoRnm
 O/0Q==
X-Gm-Message-State: APjAAAXT7Uv7Rs/JvlhZRt976PRTxhbktu/rYgNP69Cvm3WX2/RsANJJ
 14jTD65BKwDUMkamY62kpWsjXKqjMNHTEBmL3qlhsA==
X-Google-Smtp-Source: APXvYqy7RYBNijKfYwTeYgCHQCdcEoncqCwoxz0my4s/z28TqyL4y9cOIRT6yDrBEeDImdIrc7oKuboaVVpSX2rxLf8=
X-Received: by 2002:aca:36c1:: with SMTP id d184mr13762451oia.70.1578938696141; 
 Mon, 13 Jan 2020 10:04:56 -0800 (PST)
MIME-Version: 1.0
References: <826572958.9669290.1578669344799.ref@mail.yahoo.com>
 <826572958.9669290.1578669344799@mail.yahoo.com>
 <CANf970bnEtmcTCOkYseriRLnXLc668Q1Krq9EvseYxrpnrTUSQ@mail.gmail.com>
 <155074570.9720577.1578676938651@mail.yahoo.com>
 <740862592.10631399.1578910940117@mail.yahoo.com>
In-Reply-To: <740862592.10631399.1578910940117@mail.yahoo.com>
Date: Mon, 13 Jan 2020 13:04:44 -0500
Message-ID: <CAB__hTQE163=GUfMpX_8TvQSEU_4wwUStYoA5OzEexLjuA2tZQ@mail.gmail.com>
To: voonna santosh <santu_voonna@yahoo.com>
Subject: Re: [USRP-users] Run time issue with 3.14.1.1 (X300 with UBX)
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2501027844610212138=="
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

--===============2501027844610212138==
Content-Type: multipart/alternative; boundary="0000000000001b404e059c0950c2"

--0000000000001b404e059c0950c2
Content-Type: text/plain; charset="UTF-8"

This likely has nothing to do with the error, but the command line
parameters appear to be a bit inconsistent.  With a baseband rate of 50
MHz, and assuming an IF bandwidth of 160 MHz, it is probably a good idea to
keep the LO offset to a maximum of 55 MHz (rather than 80 MHz as shown in
the command line), so that the full +/- 25 MHz baseband will not be shifted
off the end of the +/- 80 MHz range.
Rob

On Mon, Jan 13, 2020 at 5:23 AM voonna santosh via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Sam,
>    I have managed to reproduce this issue and when it happens, here is the
> info you have asked for:
>
>
> 1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group
> default qlen 1000
>     link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
>     inet 127.0.0.1/8 scope host lo
>        valid_lft forever preferred_lft forever
>     inet6 ::1/128 scope host
>        valid_lft forever preferred_lft forever
> 2: enp3s0f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc mq state UP
> group default qlen 1000
>     link/ether 00:e0:4b:6b:0c:41 brd ff:ff:ff:ff:ff:ff
>     inet 192.168.40.20/24 brd 192.168.40.255 scope global noprefixroute
> enp3s0f0
>        valid_lft forever preferred_lft forever
>     inet6 fe80::2e0:4bff:fe6b:c41/64 scope link
>        valid_lft forever preferred_lft forever
> 3: enp3s0f1: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq state
> DOWN group default qlen 1000
>     link/ether 00:e0:4b:6b:0c:42 brd ff:ff:ff:ff:ff:ff
> 4: enp8s0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq state
> DOWN group default qlen 1000
>     link/ether 00:0c:8b:71:75:78 brd ff:ff:ff:ff:ff:ff
> 5: enp15s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP
> group default qlen 1000
>     link/ether 00:e0:4b:6b:0c:43 brd ff:ff:ff:ff:ff:ff
>     inet 192.168.10.20/24 brd 192.168.10.255 scope global noprefixroute
> enp15s0
>        valid_lft forever preferred_lft forever
>     inet6 fe80::2e0:4bff:fe6b:c43/64 scope link
>        valid_lft forever preferred_lft forever
> 6: virbr0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue
> state DOWN group default qlen 1000
>     link/ether 52:54:00:07:9b:55 brd ff:ff:ff:ff:ff:ff
>     inet 192.168.122.1/24 brd 192.168.122.255 scope global virbr0
>        valid_lft forever preferred_lft forever
> 7: virbr0-nic: <BROADCAST,MULTICAST> mtu 1500 qdisc pfifo_fast master
> virbr0 state DOWN group default qlen 1000
>     link/ether 52:54:00:07:9b:55 brd ff:ff:ff:ff:ff:ff
>
>
> BR,
> Santosh
>
> On Friday, January 10, 2020, 5:22:18 PM GMT, voonna santosh <
> santu_voonna@yahoo.com> wrote:
>
>
> Hi Sam,
>   Since I have rebooted my machine and SDR, issue not seen. I will try to
> reproduce and share you the results.
> BR,
> Santosh
>
> On Friday, January 10, 2020, 3:46:19 PM GMT, Sam Reiter <
> sam.reiter@ettus.com> wrote:
>
>
> Santosh,
>
> Could you send the output of
>
> *ip a*
>
> On you machine with the X300 connected?
>
> Sam
>
>
> On Fri, Jan 10, 2020 at 9:16 AM voonna santosh via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Hi There,
>    I have just updated to 3.14.1 and experiencing the following issue. The
> system starts well, then there would be couple of underflows (even at less
> sampling rates) and the following error is shown. In this case I don't see
> anything on the scope.
>
>    I have restarted SDR and my PC, then it is working well.
>
> Command used:
> ./tx_samples_from_file --args addr=192.168.40.2  --file
> /home/svoonna/repo/test_files/test_file_SW_Samples_1MHz_28G.bin   --type
> short --spb 3640 --rate 50e6 --freq 60e6  --gain 0 --ant TX/RX --subdev A:0
> --bw 40 --ref internal --repeat --lo_off 80000000
>
> *[ERROR] [X300] 192.168.40.2 <http://192.168.40.2>: x300 fw communication
> failure #1*
> *EnvironmentError: IOError: x300 fw poke32 - reply timed out*
>
> BR,
> Santosh
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000001b404e059c0950c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This likely has nothing to do with the error, but the=
=C2=A0command line parameters appear to be a bit inconsistent.=C2=A0 With a=
 baseband rate of 50 MHz, and assuming an IF bandwidth of 160 MHz, it is pr=
obably a good idea to keep the LO offset to a maximum of 55 MHz (rather tha=
n 80 MHz as shown in the command line), so that the full=C2=A0+/- 25 MHz ba=
seband will not be shifted off the end of the=C2=A0+/- 80 MHz range.</div><=
div>Rob<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Mon, Jan 13, 2020 at 5:23 AM voonna santosh via USRP-users &l=
t;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div><div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sa=
ns-serif;font-size:16px"><div></div>
        <div dir=3D"ltr">Hi Sam,</div><div dir=3D"ltr">=C2=A0=C2=A0 I have =
managed to reproduce this issue and when it happens, here is the info you h=
ave asked for:</div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><br></div><=
div dir=3D"ltr"><div>1: lo: &lt;LOOPBACK,UP,LOWER_UP&gt; mtu 65536 qdisc no=
queue state UNKNOWN group default qlen 1000<br>=C2=A0=C2=A0=C2=A0 link/loop=
back 00:00:00:00:00:00 brd 00:00:00:00:00:00<br>=C2=A0=C2=A0=C2=A0 inet <a =
href=3D"http://127.0.0.1/8" target=3D"_blank">127.0.0.1/8</a> scope host lo=
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever preferred_lft fo=
rever<br>=C2=A0=C2=A0=C2=A0 inet6 ::1/128 scope host <br>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 valid_lft forever preferred_lft forever<br>2: enp3s0f0: =
&lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 9000 qdisc mq state UP group de=
fault qlen 1000<br>=C2=A0=C2=A0=C2=A0 link/ether 00:e0:4b:6b:0c:41 brd ff:f=
f:ff:ff:ff:ff<br>=C2=A0=C2=A0=C2=A0 inet <a href=3D"http://192.168.40.20/24=
" target=3D"_blank">192.168.40.20/24</a> brd 192.168.40.255 scope global no=
prefixroute enp3s0f0<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft fore=
ver preferred_lft forever<br>=C2=A0=C2=A0=C2=A0 inet6 fe80::2e0:4bff:fe6b:c=
41/64 scope link <br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever=
 preferred_lft forever<br>3: enp3s0f1: &lt;NO-CARRIER,BROADCAST,MULTICAST,U=
P&gt; mtu 1500 qdisc mq state DOWN group default qlen 1000<br>=C2=A0=C2=A0=
=C2=A0 link/ether 00:e0:4b:6b:0c:42 brd ff:ff:ff:ff:ff:ff<br>4: enp8s0: &lt=
;NO-CARRIER,BROADCAST,MULTICAST,UP&gt; mtu 1500 qdisc mq state DOWN group d=
efault qlen 1000<br>=C2=A0=C2=A0=C2=A0 link/ether 00:0c:8b:71:75:78 brd ff:=
ff:ff:ff:ff:ff<br>5: enp15s0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1=
500 qdisc mq state UP group default qlen 1000<br>=C2=A0=C2=A0=C2=A0 link/et=
her 00:e0:4b:6b:0c:43 brd ff:ff:ff:ff:ff:ff<br>=C2=A0=C2=A0=C2=A0 inet <a h=
ref=3D"http://192.168.10.20/24" target=3D"_blank">192.168.10.20/24</a> brd =
192.168.10.255 scope global noprefixroute enp15s0<br>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 valid_lft forever preferred_lft forever<br>=C2=A0=C2=A0=C2=
=A0 inet6 fe80::2e0:4bff:fe6b:c43/64 scope link <br>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 valid_lft forever preferred_lft forever<br>6: virbr0: &lt;N=
O-CARRIER,BROADCAST,MULTICAST,UP&gt; mtu 1500 qdisc noqueue state DOWN grou=
p default qlen 1000<br>=C2=A0=C2=A0=C2=A0 link/ether 52:54:00:07:9b:55 brd =
ff:ff:ff:ff:ff:ff<br>=C2=A0=C2=A0=C2=A0 inet <a href=3D"http://192.168.122.=
1/24" target=3D"_blank">192.168.122.1/24</a> brd 192.168.122.255 scope glob=
al virbr0<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever preferr=
ed_lft forever<br>7: virbr0-nic: &lt;BROADCAST,MULTICAST&gt; mtu 1500 qdisc=
 pfifo_fast master virbr0 state DOWN group default qlen 1000<br>=C2=A0=C2=
=A0=C2=A0 link/ether 52:54:00:07:9b:55 brd ff:ff:ff:ff:ff:ff</div><div><br>=
</div><div><br></div><div dir=3D"ltr">BR,</div><div dir=3D"ltr">Santosh<br>=
</div></div><div><br></div>
       =20
        </div><div id=3D"gmail-m_-6048420560999029062yahoo_quoted_909775134=
7">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
               =20
                <div>
                    On Friday, January 10, 2020, 5:22:18 PM GMT, voonna san=
tosh &lt;<a href=3D"mailto:santu_voonna@yahoo.com" target=3D"_blank">santu_=
voonna@yahoo.com</a>&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"gmail-m_-6048420560999029062yiv2417742129">=
<div><div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,s=
ans-serif;font-size:16px"><div></div>
        <div dir=3D"ltr">Hi Sam,</div><div dir=3D"ltr">=C2=A0 Since I have =
rebooted my machine and SDR, issue not seen. I will try to reproduce and sh=
are you the results.</div><div dir=3D"ltr">BR,</div><div dir=3D"ltr">Santos=
h<br clear=3D"none"></div><div><br clear=3D"none"></div>
       =20
        </div><div id=3D"gmail-m_-6048420560999029062yiv2417742129yqt42620"=
><div id=3D"gmail-m_-6048420560999029062yiv2417742129yahoo_quoted_897126375=
8">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
               =20
                <div>
                    On Friday, January 10, 2020, 3:46:19 PM GMT, Sam Reiter=
 &lt;<a href=3D"mailto:sam.reiter@ettus.com" target=3D"_blank">sam.reiter@e=
ttus.com</a>&gt; wrote:
                </div>
                <div><br clear=3D"none"></div>
                <div><br clear=3D"none"></div>
                <div><div id=3D"gmail-m_-6048420560999029062yiv2417742129">=
<div><div dir=3D"ltr"><div>Santosh,</div><div><br clear=3D"none"></div><div=
>Could you send the output of <br clear=3D"none"></div><div><br clear=3D"no=
ne"></div><div><b>ip a</b></div><div><b><br clear=3D"none"></b></div><div>O=
n you machine with the X300 connected?<br clear=3D"none"></div><div><b></b>=
</div><div><br clear=3D"none"></div><div><div><div dir=3D"ltr"><div dir=3D"=
ltr"><div><div dir=3D"ltr">Sam</div></div></div></div></div><br clear=3D"no=
ne"></div></div><br clear=3D"none"><div><div id=3D"gmail-m_-604842056099902=
9062yiv2417742129yqt76124"><div dir=3D"ltr">On Fri, Jan 10, 2020 at 9:16 AM=
 voonna santosh via USRP-users &lt;<a rel=3D"nofollow" shape=3D"rect" href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br clear=3D"none"></div><blockquote style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div><div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,=
sans-serif;font-size:16px"><div dir=3D"ltr"><div><div dir=3D"ltr">Hi There,=
</div><div dir=3D"ltr">=C2=A0=C2=A0 I have just updated to 3.14.1 and exper=
iencing the following issue. The system starts well, then there would be co=
uple of underflows (even at less sampling rates) and the following error is=
 shown. In this case I don&#39;t see anything on the scope.</div><div dir=
=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr">=C2=A0=C2=A0 I have rest=
arted SDR and my PC, then it is working well. <br clear=3D"none"></div><div=
 dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr">Command used: <span>=
<br clear=3D"none"></span></div><div dir=3D"ltr"><span>./tx_samples_from_fi=
le --args addr=3D192.168.40.2=C2=A0 --file /home/svoonna/repo/test_files/te=
st_file_SW_Samples_1MHz_28G.bin=C2=A0=C2=A0 --type short --spb 3640 --rate =
50e6 --freq 60e6=C2=A0 --gain 0 --ant TX/RX --subdev A:0 --bw 40 --ref inte=
rnal --repeat --lo_off 80000000</span></div><div><br clear=3D"none"></div><=
div><b>[ERROR] [X300] <a rel=3D"nofollow" shape=3D"rect" href=3D"http://192=
.168.40.2" target=3D"_blank">192.168.40.2</a>: x300 fw communication failur=
e #1</b></div><b>EnvironmentError: IOError: x300 fw poke32 - reply timed ou=
t</b><br clear=3D"none"><div><br clear=3D"none"></div><div dir=3D"ltr">BR,<=
/div><div dir=3D"ltr">Santosh<br clear=3D"none"></div></div><div><br clear=
=3D"none"></div></div></div></div>_________________________________________=
______<br clear=3D"none">
USRP-users mailing list<br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" href=3D"mailto:USRP-users@lists.ettus.co=
m" target=3D"_blank">USRP-users@lists.ettus.com</a><br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" href=3D"http://lists.ettus.com/mailman/l=
istinfo/usrp-users_lists.ettus.com" target=3D"_blank">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br clear=3D"none">
</blockquote></div></div></div></div></div>
            </div>
        </div></div></div></div></div>
            </div>
        </div></div>_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000001b404e059c0950c2--


--===============2501027844610212138==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2501027844610212138==--

