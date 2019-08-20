Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE409675B
	for <lists+usrp-users@lfdr.de>; Tue, 20 Aug 2019 19:24:46 +0200 (CEST)
Received: from [::1] (port=51446 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i07sA-00056G-My; Tue, 20 Aug 2019 13:24:42 -0400
Received: from mail-lf1-f48.google.com ([209.85.167.48]:38167)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1i07s5-00050O-V0
 for usrp-users@lists.ettus.com; Tue, 20 Aug 2019 13:24:38 -0400
Received: by mail-lf1-f48.google.com with SMTP id h28so4731813lfj.5
 for <usrp-users@lists.ettus.com>; Tue, 20 Aug 2019 10:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CnbeH2VL7q2HFXJf6rib/ZOG4A733OxRrQNVMoL82JM=;
 b=bGi2R4MrIq37QYwhcVpB22yOm4rOJYFNzdSROkQzWWZhSDPJnmOhDaGkA2RZJZy30m
 0Td/WI2yUFtLKtIzcI0Dk3Nk0XnKuJpOsFEkEPePCHNscl+zEkDtPHYy3xPylIZ1vxwD
 ElAmK1Xl6N2I3mAxaulCy4Lxo+LYJGZQPwJcprYh1+fndNsw9NgXtVVW6dNn/vUGrDRn
 Cvg0jtOUBtk0twT9dXz1yhXAFCSj0U49TItDldHpjg/6kQflE2wLmsgNIicOLRrpS9S3
 lDw5tr7jWIyRIDFPTT+MAayvjdqH9D6dDxREeboOj5FyxXdI9kp5hpzFYSCcLOED3N8R
 jemw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CnbeH2VL7q2HFXJf6rib/ZOG4A733OxRrQNVMoL82JM=;
 b=HxfXnmmr2VS+gwXVl/jrR+g2UYAHaiN6ViO53/JwwrABuQSt52OngP1SSoCdVShzAA
 jyKIZIw6uCrElc+GoFRXk0BkRPaalZz/JaJncpyR7/A7y1Z0gfS+kX5jYv2zyNo5GKry
 uqHY1D4ghiELX70voMGgLkE4l7epL6yufNiClbf8M19KD3xxbzm9Gne6S7YrREpHXHK1
 nmxAombd2GZTlo2YB8Ufl6lrsuT7c0oHbKQ8arY2APKHc4VQOuIx4T+/rGJv7awShFZ8
 DY3WpOT9hrfdEfo+rTlDR+0Q2h1VI+LoR/D8CzPQj/Eo/bYApOPGD2UecqkfOo2wR/Jg
 fJ0Q==
X-Gm-Message-State: APjAAAV086uvqwUhcNQ/IAk1+av799EJixxLC4MEKoiaY3dqU3VIgtYn
 i6bin8P8pcgcRPBNkdINE59iQnh/hpi62vgaI6O0y6Dt
X-Google-Smtp-Source: APXvYqzOFEJlxQSNffy1/anEM7lH481y3XtGEcQ/tk0m3Dwza6ajlaWswlzUy703TXQQIfMCvC2kjgO/hikx/SeQrTM=
X-Received: by 2002:ac2:42cc:: with SMTP id n12mr16129932lfl.47.1566321836473; 
 Tue, 20 Aug 2019 10:23:56 -0700 (PDT)
MIME-Version: 1.0
References: <HK0PR01MB2835921DB0A5915C119C4BE5F3CB0@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
 <HK0PR01MB28356667C6C50BC7C37C7153F3C70@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
 <06CA772E-8BE6-4BFF-880B-30B7F97492B9@gmail.com>
 <HK0PR01MB28358F40DF973B33B3EC4A1FF3C60@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
 <B93D0C94-7692-4C77-994D-27ADFD22DBB5@gmail.com>
 <CANf970bQb8vKkrJr8Kruc6YNf_y9VAfUZ6AUwjacZ0z6okH-3w@mail.gmail.com>
 <5D3A0B4E.6030907@gmail.com>
 <CANf970ZTcEFYX1Y5BaDZ8-mwy_rpWe7C_SZ68ja+Gjz6-ihrPg@mail.gmail.com>
 <HK0PR01MB2835D5C46B11D91D91B0F229F3C00@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
 <CANf970ZY3ExaXG5Zdyp6ZtWx7MAEz+aF5OZWfO0Df6=1=Hu3Hg@mail.gmail.com>
 <HK0PR01MB2835C2119CD9404D6F795A51F3C30@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
 <0B791A6B-9D5F-456A-8A91-4266C68DD382@gmail.com>
 <HK0PR01MB283554F9A218C1B013C40C47F3C30@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
 <5D3CE82D.9070307@gmail.com>
 <HK0PR01MB2835B708C9240442B8368BC5F3DC0@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
In-Reply-To: <HK0PR01MB2835B708C9240442B8368BC5F3DC0@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
Date: Tue, 20 Aug 2019 12:23:44 -0500
Message-ID: <CANf970ZSDSG5Yus4hGFJ5KqkvYeFy5ppRejHmdy2bGok=56wtQ@mail.gmail.com>
To: =?UTF-8?B?5rGkIOmjng==?= <retina999@hotmail.com>
Subject: Re: [USRP-users] 
	=?utf-8?b?562U5aSNOiDnrZTlpI06ICDnrZTlpI06IE4zMTAg?=
	=?utf-8?q?=22Bad_CHDR_or_packet_fragment=22_Problem?=
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7751543403693219927=="
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

--===============7751543403693219927==
Content-Type: multipart/related; boundary="000000000000ab9c6705908fb861"

--000000000000ab9c6705908fb861
Content-Type: multipart/alternative; boundary="000000000000ab9c6505908fb860"

--000000000000ab9c6505908fb860
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This thread died out with a rollback to 3.14.0.0 recommended. The issue at
hand is a mismatch between the MTU settings on the host machine and the
radio. Here are the steps to manually correct the MTU with 3.14.1.0:

1. Check your host's MTU with ifconfig. Over 1GbE, your interface should
have an MTU of 1500.
2. Access your N3xx device using a serial connection or via SSH (for the
next steps, an SSH over the mgmt port is recommended)
3. Running ifconfig on the device should show the MTU of the SFP0 port
defaulting to 8000. This needs to be changed to 1500. To do so run:
    ifconfig sfp0 down
    ifconfig sfp0 mtu 1500
    ifconfig sfp0 up

Best,

Sam

On Mon, Jul 29, 2019 at 7:48 PM =E6=B1=A4 =E9=A3=9E <retina999@hotmail.com>=
 wrote:

> Thank you very much!  It did work.
> On 2019/7/28 =E4=B8=8A=E5=8D=888:11, Marcus D. Leech wrote:
>
> On 07/27/2019 08:02 PM, =E6=B1=A4 =E9=A3=9E wrote:
>
> Actually I have tried 1500, same errors. Is there a way to use PyBOMBS to
> create the RFNOC environment with a specified UHD version(3.14.0.0) inste=
ad
> of the default latest version (3.15)?
>
>
> I'm not much of a PyBombs user myself, but something like
>
> pybombs config --package uhd gitrev v3.14.0.0
>
>
> Before proceeding with the rest of your PyBombs flow.
>
>
>
> *=E5=8F=91=E4=BB=B6=E4=BA=BA: *Marcus D Leech <patchvonbraun@gmail.com>
> *=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4: *2019=E5=B9=B47=E6=9C=8828=E6=97=
=A5 3:02
> *=E6=94=B6=E4=BB=B6=E4=BA=BA: *=E6=B1=A4 =E9=A3=9E <retina999@hotmail.com=
>
> *=E6=8A=84=E9=80=81: *Sam Reiter <sam.reiter@ettus.com>; usrp-users@lists=
.ettus.com
> *=E4=B8=BB=E9=A2=98: *Re: =E7=AD=94=E5=A4=8D: [USRP-users] =E7=AD=94=E5=
=A4=8D: N310 "Bad CHDR or packet fragment" Problem
>
>
>
> Try adjusting the MTU as well to 1500.
>
>
>
> Sent from my iPhone
>
>
> On Jul 26, 2019, at 9:36 PM, =E6=B1=A4 =E9=A3=9E <retina999@hotmail.com> =
wrote:
>
> FYI
>
>
>
> ifconfig
>
> enp2s0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 8000
>
>         inet 192.168.10.1  netmask 255.255.255.0  broadcast 192.168.10.25=
5
>
>         inet6 fe80::96c6:91ff:febd:e8bb  prefixlen 64  scopeid 0x20<link>
>
>         ether 94:c6:91:bd:e8:bb  txqueuelen 1000  (Ethernet)
>
>         RX packets 3352  bytes 2274650 (2.2 MB)
>
>         RX errors 0  dropped 0  overruns 0  frame 0
>
>         TX packets 2926  bytes 246527 (246.5 KB)
>
>         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>
>
>
> lo: flags=3D73<UP,LOOPBACK,RUNNING>  mtu 65536
>
>         inet 127.0.0.1  netmask 255.0.0.0
>
>         inet6 ::1  prefixlen 128  scopeid 0x10<host>
>
>         loop  txqueuelen 1000  (Local Loopback)
>
>         RX packets 369  bytes 29489 (29.4 KB)
>
>         RX errors 0  dropped 0  overruns 0  frame 0
>
>         TX packets 369  bytes 29489 (29.4 KB)
>
>         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>
>
>
> wlx3c46d8d7c86c: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
>
>         inet 192.168.0.208  netmask 255.255.254.0  broadcast 192.168.1.25=
5
>
>         inet6 fe80::b8b3:bda6:dd2a:206f  prefixlen 64  scopeid 0x20<link>
>
>         ether 3c:46:d8:d7:c8:6c  txqueuelen 1000  (Ethernet)
>
>         RX packets 1043  bytes 822132 (822.1 KB)
>
>         RX errors 0  dropped 0  overruns 0  frame 0
>
>         TX packets 873  bytes 119925 (119.9 KB)
>
>         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>
> On 2019/7/27 =E4=B8=8A =E5=8D=881:17, Sam Reiter wrote:
>
> Can you post the output of *ifconfig* on your system?
>
>
>
> Sam Reiter
>
> SDR Support Engineer
>
> Ettus Research
>
>
>
>
>
> On Thu, Jul 25, 2019 at 7:40 PM =E6=B1=A4 =E9=A3=9E <retina999@hotmail.co=
m> wrote:
>
> Thanks!
>
> I am learning to use RFNOC to integrate a baseband. So I used PyBOMBS to
> create the environment.  The automatically installed UHD version is as
> follows
>
> uhd_find_devices
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> UHD_3.15.0.git-19-g7e1b567d
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
>     serial: 3182B09
>     addr: 192.168.10.2
>     claimed: False
>     mgmt_addr: 192.168.1.151
>     mgmt_addr: 192.168.10.2
>     product: n310
>     type: n3xx
>
> But how to add  to the device arguments?  I tried like this but not worki=
ng
>
> /usr/local/lib/uhd/examples/rx_ascii_art_dft --args
> "master_clock_rate=3D125e6,mgmt_addr=3D192.168.1.151,recv_frame_size=3D14=
76,addr=3D192.168.10.2"
> --freq 98.5e6 --rate 2.5e6 --gain 50 --ref-lvl=3D"-50" --dyn-rng 90 --ant
> "RX2" --subdev "A:0"
>
>
>
> On 2019/7/26 =E4=B8=8A=E5=8D=885:17, Sam Reiter wrote:
>
> Found the offending commit and reported the issue. It also looks like
> adding *recv_frame_size=3D1476* explicitly to the device arguments cleare=
d
> things up on my N310 running 3.14.1.0. Let me know if this does / doesn't
> work for anyone.
>
>
>
> Sam Reiter
>
> SDR Support Engineer
>
> Ettus Research
>
>
>
>
>
> On Thu, Jul 25, 2019 at 3:04 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
> On 07/25/2019 03:56 PM, Sam Reiter wrote:
>
> Follow up on this thread. I ran my N310 with a 1GbE link and was able to
> reproduce the "Bad CHDR or packet fragment issue". It seems specific to
> N3xx RX over a 1GbE link on 3.14.1.0. I didn't spend a ton of time trying
> to find a workaround on 3.14.1.0, but rolling back to 3.14.0.0 cleared th=
e
> issue for me.
>
>
>
> I'll spend some time finding the offending commit and see what I can't do
> to get a fix / workaround figured out for 3.14.1.0.
>
>
>
> Sam Reiter
>
> SDR Support Engineer
>
> Ettus Research
>
>
>
> Thanks, Sam.  When I go into the lab later, I can probably confirm this a=
s
> well, I haven't seen it before, but I think I'm runing 3.14.0.0
>
>
>
> On Tue, Jul 23, 2019 at 10:13 PM Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
> Normally Intel controllers have better performance but even a RealTek chi=
p
> should have no problem at those data rates.
>
>
>
>
>
> Sent from my iPhone
>
>
> On Jul 23, 2019, at 10:01 PM, =E6=B1=A4 =E9=A3=9E <retina999@hotmail.com>=
 wrote:
>
> Actually my pc=E2=80=99s Ethernet card chip is from Realtek.
>
> I=E2=80=99ve tried all possible MTU sizes of auto, 1000, 1500, 2000, and =
up to
> 9000. Always the same errors.
>
> Is it the inherent problem with the Realtek chip?
>
> If that, is there any workaround? eg. Changing the default Linux driver,
>
> or the last solution, ie. I have to try install a PCIE network card. Whic=
h
> brand ethernet card is compatible, one from Intel?
>
>
>
> *=E5=8F=91=E4=BB=B6=E4=BA=BA**:* Marcus D Leech <patchvonbraun@gmail.com>
> *=E5=8F=91 =E9=80=81=E6=97=B6=E9=97=B4**:* Wednesday, July 24, 2019 7:34:=
13 AM
> *=E6=94=B6 =E4=BB=B6=E4=BA=BA**:* =E6=B1=A4 =E9=A3=9E <retina999@hotmail.=
com>
> *=E6=8A=84=E9=80=81**:* Sam Reiter <sam.reiter@ettus.com>; usrp-users@lis=
ts.ettus.com <
> usrp-users@lists.ettus.com>
> *=E4=B8=BB =E9=A2=98**:* Re: [USRP-users] =E7=AD=94=E5=A4=8D: N310 "Bad C=
HDR or packet fragment" Problem
>
>
>
> Some Ethernet 1g controllers won=E2=80=99t actually do MTUs greater than =
1500
> despite ethnology telling them to. Some Realtek for example.
>
>
>
> If it=E2=80=99s just 1G try default MTU of 1500 and work your way up to s=
ee where
> it fails.
>
> Sent from my iPhone
>
>
> On Jul 23, 2019, at 7:15 PM, =E6=B1=A4 =E9=A3=9E via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> It=E2=80=99s a  1g SFP0 link. I set MTU  to 8000 according to the Applica=
tion
> Note.
>
>
>
> *=E5=8F=91**=E4=BB=B6=E4=BA=BA**:* Sam Reiter <sam.reiter@ettus.com>
> *=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4**:* Wednesday, July 24, 2019 4:56:2=
1 AM
> *=E6=94=B6=E4=BB=B6=E4=BA=BA**:* =E6=B1=A4 =E9=A3=9E <retina999@hotmail.c=
om>
> *=E6=8A=84=E9=80=81**:* usrp-users@lists.ettus.com <usrp-users@lists.ettu=
s.com>
> *=E4=B8=BB=E9=A2=98**:* Re: [USRP-users] N310 "Bad CHDR or packet fragmen=
t" Problem
>
>
>
> If you're connected over a 10GbE link, make sure to set your host's MTU
> appropriately. I set mine to 9000.
>
>
> Sam Reiter
>
> SDR Support Engineer
>
> Ettus Research
>
>
>
>
>
> On Fri, Jul 19, 2019 at 2:21 AM =E6=B1=A4 =E9=A3=9E via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Hi, all,
>
>
>
> When benchmarking my N310, I keep getting such [RX FLOW CTRL] errors.
>
> What causes this and how to solve it?
>
>
>
> Thanks in advance!
>
>
>
> FT
>
>
>
>
>
> /usr/local/lib/uhd/examples/benchmark_rate  \
>
> >    --args "type=3Dn3xx,mgmt_addr=3D192.168.10.2,addr=3D192.168.10.2,mas=
ter_clock_rate=3D122.88e6" \
>
> >    --duration 60 \
>
> >    --channels "0" \
>
> >    --rx_rate 3.84e6 \
>
> >    --rx_subdev "A:0" \
>
> >    --tx_rate 3.84e6 \
>
> >    --tx_subdev "A:0"
>
>
>
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.14.1.HEAD-=
0-gbfb9c1c7
>
> [00:00:00.000014] Creating the usrp device with: type=3Dn3xx,mgmt_addr=3D=
192.168.10.2,addr=3D192.168.10.2,master_clock_rate=3D122.88e6...
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=
=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3182B09,claimed=3DFalse=
,addr=3D192.168.10.2,master_clock_rate=3D122.88e6
>
> [INFO] [MPM.PeriphManager] init() called with device args `master_clock_r=
ate=3D122.88e6,time_source=3Dinternal,clock_source=3Dinternal,mgmt_addr=3D1=
92.168.10.2,product=3Dn310'.
>
> [INFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A0000000000=
4)
>
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000011312=
)
>
> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000011312=
)
>
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
>
> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
>
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)
>
> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000002)
>
> [INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)
>
> [INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)
>
> [INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F0000000000000)
>
> [INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)
>
> Using Device: Single USRP:
>
>   Device: N300-Series Device
>
>   Mboard 0: ni-n3xx-3182B09
>
>   RX Channel: 0
>
>     RX DSP: 0
>
>     RX Dboard: A
>
>     RX Subdev: Magnesium
>
>   TX Channel: 0
>
>     TX DSP: 0
>
>     TX Dboard: A
>
>     TX Subdev: Magnesium
>
>
>
> [00:00:17.353184] Setting device timestamp to 0...
>
> [00:00:17.412187] Testing receive rate 3.840000 Msps on 1 channels
>
> [00:00:17.414164] Receiver error: ERROR_CODE_BAD_PACKET
>
> [[ERROR] [RX FLOW CTRL] Error unpacking packet: ValueError: Bad CHDR or p=
acket fragment
>
>
>
> [ERROR] [STREAMER] The receive packet handler caught a value exception.
>
> ValueError: Bad CHDR or packet fragment
>
> 00:00:17.414180] Unexpected error on recv, continuing...
>
> [00:00:17.514258] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> [00:00:17.514312] Receiver error: ERROR_CODE_BAD_PACKET
>
> [00:00:17.514317] Unexpected error on recv, continuing...
>
> [ERROR] [RX FLOW CTRL] Error unpacking packet: ValueError: Bad CHDR or pa=
cket fragment
>
>
>
> [ERROR] [STREAMER] The receive packet handler caught a value exception.
>
> ValueError: Bad CHDR or packet fragment
>
> [00:00:17.532991] Testing transmit rate 3.840000 Msps on 1 channels
>
> [00:00:17.614329] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> [00:00:17.614372] Receiver error: ERROR_CODE_BAD_PACKET
>
> [00:00:17.614377] Unexpected error on recv, continuing...
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
>
>
>
>
>
>

--000000000000ab9c6505908fb860
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This thread died out with a rollback to 3.14.0.0 reco=
mmended. The issue at hand is a mismatch between the MTU settings on the ho=
st machine and the radio. Here are the steps to manually correct the MTU wi=
th <a href=3D"http://3.14.1.0">3.14.1.0</a>:</div><div><br></div><div>1. Ch=
eck your host&#39;s MTU with ifconfig. Over 1GbE, your interface should hav=
e an MTU of 1500.</div><div>2. Access your N3xx device using a serial conne=
ction or via SSH (for the next steps, an SSH over the mgmt port is recommen=
ded)</div><div>3. Running ifconfig on the device should show the MTU of the=
 SFP0 port defaulting to 8000. This needs to be changed to 1500. To do so r=
un:</div><div>=C2=A0=C2=A0=C2=A0 ifconfig sfp0 down</div><div>=C2=A0=C2=A0=
=C2=A0 ifconfig sfp0 mtu 1500</div><div>=C2=A0=C2=A0=C2=A0 ifconfig sfp0 up=
<br></div><div><br></div><div>Best,</div><div><br></div><div><div><div dir=
=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div =
dir=3D"ltr"><div><div dir=3D"ltr">Sam<br></div></div></div></div></div></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Mon, Jul 29, 2019 at 7:48 PM =E6=B1=A4 =E9=A3=9E &lt;<a href=3D"mailto=
:retina999@hotmail.com">retina999@hotmail.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">



<div bgcolor=3D"#FFFFFF">
<p>Thank you very much!=C2=A0 It did work. <br>
</p>
<div class=3D"gmail-m_9076359053324026458moz-cite-prefix">On 2019/7/28 =E4=
=B8=8A=E5=8D=888:11, Marcus D. Leech wrote:<br>
</div>
<blockquote type=3D"cite">
<div class=3D"gmail-m_9076359053324026458moz-cite-prefix">On 07/27/2019 08:=
02 PM, =E6=B1=A4 =E9=A3=9E wrote:<br>
</div>
<blockquote type=3D"cite">


<div class=3D"gmail-m_9076359053324026458WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Actually I have tried 1500, sam=
e errors. Is there a way to use PyBOMBS to create the RFNOC environment wit=
h a specified UHD version(3.14.0.0) instead of the default latest version (=
3.15)?</span></p>
</div>
</blockquote>
<br>
I&#39;m not much of a PyBombs user myself, but something like<br>
<br>
<pre><code>pybombs config --package uhd gitrev v3.14.0.0

</code></pre>
Before proceeding with the rest of your PyBombs flow.<br>
<br>
<blockquote type=3D"cite">
<div class=3D"gmail-m_9076359053324026458WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:12pt" lang=3D"EN-US"><u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt;font-family:SimSun" la=
ng=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<div style=3D"border-color:rgb(225,225,225) currentcolor currentcolor;borde=
r-style:solid none none;border-width:1pt medium medium;padding:3pt 0cm 0cm"=
>
<p class=3D"MsoNormal" style=3D"border:medium none;padding:0cm"><b>=E5=8F=
=91=E4=BB=B6=E4=BA=BA<span lang=3D"EN-US">: </span>
</b><span lang=3D"EN-US"><a href=3D"mailto:patchvonbraun@gmail.com" target=
=3D"_blank">Marcus D Leech</a><br>
</span><b>=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4<span lang=3D"EN-US">: </span=
></b><span lang=3D"EN-US">2019</span>=E5=B9=B4<span lang=3D"EN-US">7</span>=
=E6=9C=88<span lang=3D"EN-US">28</span>=E6=97=A5<span lang=3D"EN-US"> 3:02<=
br>
</span><b>=E6=94=B6=E4=BB=B6=E4=BA=BA<span lang=3D"EN-US">: </span></b><spa=
n lang=3D"EN-US"><a href=3D"mailto:retina999@hotmail.com" target=3D"_blank"=
><span lang=3D"EN-US"><span lang=3D"EN-US">=E6=B1=A4</span></span><span lan=
g=3D"EN-US"><span lang=3D"EN-US">
</span></span><span lang=3D"EN-US"><span lang=3D"EN-US">=E9=A3=9E</span></s=
pan></a><br>
</span><b>=E6=8A=84=E9=80=81<span lang=3D"EN-US">: </span></b><span lang=3D=
"EN-US"><a href=3D"mailto:sam.reiter@ettus.com" target=3D"_blank">Sam Reite=
r</a>;
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a><br>
</span><b>=E4=B8=BB=E9=A2=98<span lang=3D"EN-US">: </span></b><span lang=3D=
"EN-US">Re: </span>=E7=AD=94=E5=A4=8D<span lang=3D"EN-US">: [USRP-users]
</span>=E7=AD=94=E5=A4=8D<span lang=3D"EN-US">: N310 &quot;Bad CHDR or pack=
et fragment&quot; Problem</span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt;font-family:SimSun" la=
ng=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-align:left" align=3D"left"><span lang=
=3D"EN-US">Try adjusting the MTU as well to 1500.
</span><span style=3D"font-size:12pt" lang=3D"EN-US"><u></u><u></u></span><=
/p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span lang=3D"EN-US"><u=
></u>=C2=A0<u></u></span></p>
<div id=3D"gmail-m_9076359053324026458AppleMailSignature">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Sent from my iPhone</span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span lang=3D"EN-US"><b=
r>
On Jul 26, 2019, at 9:36 PM, </span>=E6=B1=A4 =E9=A3=9E<span lang=3D"EN-US"=
> &lt;<a href=3D"mailto:retina999@hotmail.com" target=3D"_blank">retina999@=
hotmail.com</a>&gt; wrote:<u></u><u></u></span></p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div>
<pre><span lang=3D"EN-US">FYI</span></pre>
<pre><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></pre>
<pre><span lang=3D"EN-US">ifconfig</span></pre>
<pre><span lang=3D"EN-US">enp2s0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULT=
ICAST&gt;=C2=A0 mtu 8000</span></pre>
<pre><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet 1=
92.168.10.1=C2=A0 netmask 255.255.255.0=C2=A0 broadcast 192.168.10.255</spa=
n></pre>
<pre><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet6 =
fe80::96c6:91ff:febd:e8bb=C2=A0 prefixlen 64=C2=A0 scopeid 0x20&lt;link&gt;=
</span></pre>
<pre><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ether =
94:c6:91:bd:e8:bb=C2=A0 txqueuelen 1000=C2=A0 (Ethernet)</span></pre>
<pre><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0RX pac=
kets 3352=C2=A0 bytes 2274650 (2.2 MB)</span></pre>
<pre><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX err=
ors 0=C2=A0 dropped 0=C2=A0 overruns 0=C2=A0 frame 0</span></pre>
<pre><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX pac=
kets 2926=C2=A0 bytes 246527 (246.5 KB)</span></pre>
<pre><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX err=
ors 0=C2=A0 dropped 0 overruns 0=C2=A0 carrier 0=C2=A0 collisions 0</span><=
/pre>
<pre><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></pre>
<pre><span lang=3D"EN-US">lo: flags=3D73&lt;UP,LOOPBACK,RUNNING&gt;=C2=A0 m=
tu 65536</span></pre>
<pre><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet 1=
27.0.0.1=C2=A0 netmask 255.0.0.0</span></pre>
<pre><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet6 =
::1=C2=A0 prefixlen 128=C2=A0 scopeid 0x10&lt;host&gt;</span></pre>
<pre><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 loop=
=C2=A0 txqueuelen 1000=C2=A0 (Local Loopback)</span></pre>
<pre><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX pac=
kets 369=C2=A0 bytes 29489 (29.4 KB)</span></pre>
<pre><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX err=
ors 0=C2=A0 dropped 0=C2=A0 overruns 0=C2=A0 frame 0</span></pre>
<pre><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX pac=
kets 369=C2=A0 bytes 29489 (29.4 KB)</span></pre>
<pre><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX err=
ors 0=C2=A0 dropped 0 overruns 0=C2=A0 carrier 0=C2=A0 collisions 0</span><=
/pre>
<pre><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></pre>
<pre><span lang=3D"EN-US">wlx3c46d8d7c86c: flags=3D4163&lt;UP,BROADCAST,RUN=
NING,MULTICAST&gt;=C2=A0 mtu 1500</span></pre>
<pre><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet 1=
92.168.0.208=C2=A0 netmask 255.255.254.0=C2=A0 broadcast 192.168.1.255</spa=
n></pre>
<pre><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 inet6 =
fe80::b8b3:bda6:dd2a:206f=C2=A0 prefixlen 64=C2=A0 scopeid 0x20&lt;link&gt;=
</span></pre>
<pre><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ether =
3c:46:d8:d7:c8:6c=C2=A0 txqueuelen 1000=C2=A0 (Ethernet)</span></pre>
<pre><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX pac=
kets 1043=C2=A0 bytes 822132 (822.1 KB)</span></pre>
<pre><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX err=
ors 0=C2=A0 dropped 0=C2=A0 overruns 0=C2=A0 frame 0</span></pre>
<pre><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX pac=
kets 873=C2=A0 bytes 119925 (119.9 KB)</span></pre>
<pre><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX err=
ors 0=C2=A0 dropped 0 overruns 0=C2=A0 carrier 0=C2=A0 collisions 0</span><=
/pre>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">On 2019/7/27 </span>=E4=B8=8A =
=E5=8D=88<span lang=3D"EN-US">1:17, Sam Reiter wrote:<u></u><u></u></span><=
/p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Can you post the output of <b>i=
fconfig</b> on your system?</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Sam Reiter=C2=A0 </span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">SDR Support Engineer</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Ettus Research</span></p>
</div>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">On Thu, Jul 25, 2019 at 7:40 PM=
 </span>=E6=B1=A4 =E9=A3=9E
<span lang=3D"EN-US">&lt;<a href=3D"mailto:retina999@hotmail.com" target=3D=
"_blank">retina999@hotmail.com</a>&gt; wrote:</span></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204);border-style:none none none solid;border-width:medium medium=
 medium 1pt;padding:0cm 0cm 0cm 6pt;margin-left:4.8pt;margin-right:0cm">
<div>
<p><span lang=3D"EN-US">Thanks!</span></p>
<p><span lang=3D"EN-US">I am learning to use RFNOC to integrate a baseband.=
 So I used PyBOMBS to create the environment.=C2=A0 The automatically insta=
lled UHD version is as follows</span></p>
<p><span lang=3D"EN-US">uhd_find_devices<br>
[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.15.0.git-19-=
g7e1b567d<br>
--------------------------------------------------<br>
-- UHD Device 0<br>
--------------------------------------------------<br>
Device Address:<br>
=C2=A0=C2=A0=C2=A0 serial: 3182B09<br>
=C2=A0=C2=A0=C2=A0 addr: 192.168.10.2<br>
=C2=A0=C2=A0=C2=A0 claimed: False<br>
=C2=A0=C2=A0=C2=A0 mgmt_addr: 192.168.1.151<br>
=C2=A0=C2=A0=C2=A0 mgmt_addr: 192.168.10.2<br>
=C2=A0=C2=A0=C2=A0 product: n310<br>
=C2=A0=C2=A0=C2=A0 type: n3xx</span></p>
<p><span lang=3D"EN-US">But how to add=C2=A0 to the device arguments?=C2=A0=
 I tried like this but not working</span></p>
<p style=3D"margin-bottom:12pt"><span lang=3D"EN-US">/usr/local/lib/uhd/exa=
mples/rx_ascii_art_dft --args &quot;master_clock_rate=3D125e6,mgmt_addr=3D1=
92.168.1.151<span style=3D"color:red">,recv_frame_size=3D1476,</span>addr=
=3D192.168.10.2&quot; --freq 98.5e6 --rate 2.5e6 --gain
 50 --ref-lvl=3D&quot;-50&quot; --dyn-rng 90 --ant &quot;RX2&quot; --subdev=
 &quot;A:0&quot;</span></p>
<p><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">On 2019/7/26 </span>=E4=B8=8A=
=E5=8D=88<span lang=3D"EN-US">5:17, Sam Reiter wrote:<u></u><u></u></span><=
/p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Found the offending commit and =
reported the issue. It also looks like adding
<b>recv_frame_size=3D1476</b> explicitly to the device arguments cleared th=
ings up on my N310 running 3.14.1.0. Let me know if this does / doesn&#39;t=
 work for anyone.</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Sam Reiter=C2=A0 </span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">SDR Support Engineer</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Ettus Research</span></p>
</div>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">On Thu, Jul 25, 2019 at 3:04 PM=
 Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_=
blank">patchvonbraun@gmail.com</a>&gt; wrote:</span></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204);border-style:none none none solid;border-width:medium medium=
 medium 1pt;padding:0cm 0cm 0cm 6pt;margin-left:4.8pt;margin-right:0cm">
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">On 07/25/2019 03:56 PM, Sam Rei=
ter wrote:<u></u><u></u></span></p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Follow up on this thread. I ran=
 my N310 with a 1GbE link and was able to reproduce the &quot;Bad CHDR or p=
acket fragment issue&quot;. It seems specific to N3xx RX over a 1GbE link o=
n 3.14.1.0. I didn&#39;t spend a ton of time trying
 to find a workaround on 3.14.1.0, but rolling back to 3.14.0.0 cleared the=
 issue for me.
</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#39;ll spend some time findin=
g the offending commit and see what I can&#39;t do to get a fix / workaroun=
d figured out for 3.14.1.0.</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Sam Reiter=C2=A0 </span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">SDR Support Engineer</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Ettus Research</span></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
</blockquote>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks, Sam.=C2=A0 When I go in=
to the lab later, I can probably confirm this as well, I haven&#39;t seen i=
t before, but I think I&#39;m runing 3.14.0.0<br>
<br>
<br>
<br>
</span></p>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">On Tue, Jul 23, 2019 at 10:13 P=
M Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_=
blank">patchvonbraun@gmail.com</a>&gt; wrote:</span></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204);border-style:none none none solid;border-width:medium medium=
 medium 1pt;padding:0cm 0cm 0cm 6pt;margin-left:4.8pt;margin-right:0cm">
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Normally Intel controllers have=
 better performance but even a RealTek chip should have no problem at those=
 data rates.=C2=A0
</span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span lang=3D"EN-US"><u=
></u>=C2=A0<u></u></span></p>
<div id=3D"gmail-m_9076359053324026458gmail-m_4960003340379191278gmail-m_45=
83629004326719419gmail-m_-1782705882285278276AppleMailSignature">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Sent from my iPhone</span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span lang=3D"EN-US"><b=
r>
On Jul 23, 2019, at 10:01 PM, </span>=E6=B1=A4 =E9=A3=9E <span lang=3D"EN-U=
S">&lt;<a href=3D"mailto:retina999@hotmail.com" target=3D"_blank">retina999=
@hotmail.com</a>&gt; wrote:<u></u><u></u></span></p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Actually my pc=E2=80=99s Ethern=
et card chip is from Realtek.
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I=E2=80=99ve tried all possible=
 MTU sizes of auto, 1000, 1500, 2000, and up to 9000. Always the same error=
s.
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is it the inherent problem with=
 the Realtek chip?
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">If that, is there any workaroun=
d? eg. Changing the default Linux driver,
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">or the last solution, ie. I hav=
e to try install a PCIE network card. Which brand ethernet card is compatib=
le, one from Intel?</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><img style=3D"width: 0.0059in; =
height: 0.0178in;" id=3D"gmail-m_9076359053324026458Horizontal_x0020_Line_x=
0020_1" src=3D"cid:16cb00755b788e3ee5b1" width=3D"1" height=3D"2" border=3D=
"0"></span></p>
<div id=3D"gmail-m_9076359053324026458gmail-m_4960003340379191278gmail-m_45=
83629004326719419gmail-m_-1782705882285278276divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;color:black">=E5=8F=
=91=E4=BB=B6=E4=BA=BA</span></b><b><span style=3D"font-size:11pt;font-famil=
y:&quot;Calibri&quot;,sans-serif;color:black" lang=3D"EN-US">:</span></b><s=
pan style=3D"font-size:11pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:black" lang=3D"EN-US">
 Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_b=
lank">patchvonbraun@gmail.com</a>&gt;<br>
</span><b><span style=3D"font-size:11pt;color:black">=E5=8F=91 =E9=80=81=E6=
=97=B6=E9=97=B4</span></b><b><span style=3D"font-size:11pt;font-family:&quo=
t;Calibri&quot;,sans-serif;color:black" lang=3D"EN-US">:</span></b><span st=
yle=3D"font-size:11pt;font-family:&quot;Calibri&quot;,sans-serif;color:blac=
k" lang=3D"EN-US">
 Wednesday, July 24, 2019 7:34:13 AM<br>
</span><b><span style=3D"font-size:11pt;color:black">=E6=94=B6 =E4=BB=B6=E4=
=BA=BA</span></b><b><span style=3D"font-size:11pt;font-family:&quot;Calibri=
&quot;,sans-serif;color:black" lang=3D"EN-US">:</span></b><span style=3D"fo=
nt-size:11pt;font-family:&quot;Calibri&quot;,sans-serif;color:black" lang=
=3D"EN-US">
</span><span style=3D"font-size:11pt;color:black">=E6=B1=A4</span><span sty=
le=3D"font-size:11pt;font-family:&quot;Calibri&quot;,sans-serif;color:black=
">
</span><span style=3D"font-size:11pt;color:black">=E9=A3=9E</span><span sty=
le=3D"font-size:11pt;font-family:&quot;Calibri&quot;,sans-serif;color:black=
">
<span lang=3D"EN-US">&lt;<a href=3D"mailto:retina999@hotmail.com" target=3D=
"_blank">retina999@hotmail.com</a>&gt;<br>
</span></span><b><span style=3D"font-size:11pt;color:black">=E6=8A=84=E9=80=
=81</span></b><b><span style=3D"font-size:11pt;font-family:&quot;Calibri&qu=
ot;,sans-serif;color:black" lang=3D"EN-US">:</span></b><span style=3D"font-=
size:11pt;font-family:&quot;Calibri&quot;,sans-serif;color:black" lang=3D"E=
N-US">
 Sam Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com" target=3D"_blank">s=
am.reiter@ettus.com</a>&gt;;
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
</span><b><span style=3D"font-size:11pt;color:black">=E4=B8=BB =E9=A2=98</s=
pan></b><b><span style=3D"font-size:11pt;font-family:&quot;Calibri&quot;,sa=
ns-serif;color:black" lang=3D"EN-US">:</span></b><span style=3D"font-size:1=
1pt;font-family:&quot;Calibri&quot;,sans-serif;color:black" lang=3D"EN-US">
 Re: [USRP-users] </span><span style=3D"font-size:11pt;color:black">=E7=AD=
=94=E5=A4=8D</span><span style=3D"font-size:11pt;font-family:&quot;Calibri&=
quot;,sans-serif;color:black" lang=3D"EN-US">: N310 &quot;Bad CHDR or packe=
t fragment&quot; Problem</span><span lang=3D"EN-US">
</span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Some Ethernet 1g controllers wo=
n=E2=80=99t actually do MTUs greater than 1500 despite ethnology telling th=
em to. Some Realtek for example.=C2=A0
</span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span lang=3D"EN-US">If=
 it=E2=80=99s just 1G try default MTU of 1500 and work your way up to see w=
here it fails.=C2=A0</span></p>
<div id=3D"gmail-m_9076359053324026458gmail-m_4960003340379191278gmail-m_45=
83629004326719419gmail-m_-1782705882285278276AppleMailSignature">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Sent from my iPhone</span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span lang=3D"EN-US"><b=
r>
On Jul 23, 2019, at 7:15 PM, </span>=E6=B1=A4 =E9=A3=9E<span lang=3D"EN-US"=
> via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<u></u><u></u></span><=
/p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">It=E2=80=99s a=C2=A0 1g SFP0 li=
nk. I set MTU=C2=A0 to 8000 according to the Application Note.
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><img style=3D"width: 0.0059in; =
height: 0.0178in;" id=3D"gmail-m_9076359053324026458Horizontal_x0020_Line_x=
0020_2" src=3D"cid:16cb00755b788e3ee5b1" width=3D"1" height=3D"2" border=3D=
"0"></span></p>
<div id=3D"gmail-m_9076359053324026458gmail-m_4960003340379191278gmail-m_45=
83629004326719419gmail-m_-1782705882285278276divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;color:black">=E5=8F=
=91</span></b><b><span style=3D"font-size:11pt;font-family:&quot;Calibri&qu=
ot;,sans-serif;color:black"></span></b><b><span style=3D"font-size:11pt;col=
or:black">=E4=BB=B6=E4=BA=BA</span></b><b><span style=3D"font-size:11pt;fon=
t-family:&quot;Calibri&quot;,sans-serif;color:black" lang=3D"EN-US">:</span=
></b><span style=3D"font-size:11pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:black" lang=3D"EN-US">
 Sam Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com" target=3D"_blank">s=
am.reiter@ettus.com</a>&gt;<br>
</span><b><span style=3D"font-size:11pt;color:black">=E5=8F=91=E9=80=81=E6=
=97=B6=E9=97=B4</span></b><b><span style=3D"font-size:11pt;font-family:&quo=
t;Calibri&quot;,sans-serif;color:black" lang=3D"EN-US">:</span></b><span st=
yle=3D"font-size:11pt;font-family:&quot;Calibri&quot;,sans-serif;color:blac=
k" lang=3D"EN-US">
 Wednesday, July 24, 2019 4:56:21 AM<br>
</span><b><span style=3D"font-size:11pt;color:black">=E6=94=B6=E4=BB=B6=E4=
=BA=BA</span></b><b><span style=3D"font-size:11pt;font-family:&quot;Calibri=
&quot;,sans-serif;color:black" lang=3D"EN-US">:</span></b><span style=3D"fo=
nt-size:11pt;font-family:&quot;Calibri&quot;,sans-serif;color:black" lang=
=3D"EN-US">
</span><span style=3D"font-size:11pt;color:black">=E6=B1=A4</span><span sty=
le=3D"font-size:11pt;font-family:&quot;Calibri&quot;,sans-serif;color:black=
">
</span><span style=3D"font-size:11pt;color:black">=E9=A3=9E</span><span sty=
le=3D"font-size:11pt;font-family:&quot;Calibri&quot;,sans-serif;color:black=
">
<span lang=3D"EN-US">&lt;<a href=3D"mailto:retina999@hotmail.com" target=3D=
"_blank">retina999@hotmail.com</a>&gt;<br>
</span></span><b><span style=3D"font-size:11pt;color:black">=E6=8A=84=E9=80=
=81</span></b><b><span style=3D"font-size:11pt;font-family:&quot;Calibri&qu=
ot;,sans-serif;color:black" lang=3D"EN-US">:</span></b><span style=3D"font-=
size:11pt;font-family:&quot;Calibri&quot;,sans-serif;color:black" lang=3D"E=
N-US">
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
</span><b><span style=3D"font-size:11pt;color:black">=E4=B8=BB=E9=A2=98</sp=
an></b><b><span style=3D"font-size:11pt;font-family:&quot;Calibri&quot;,san=
s-serif;color:black" lang=3D"EN-US">:</span></b><span style=3D"font-size:11=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black" lang=3D"EN-US">
 Re: [USRP-users] N310 &quot;Bad CHDR or packet fragment&quot; Problem</spa=
n><span lang=3D"EN-US">
</span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span></p>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">If you&#39;re connected over a =
10GbE link, make sure to set your host&#39;s MTU appropriately. I set mine =
to 9000.
</span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><br clear=3D"all">
</span></p>
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Sam Reiter=C2=A0 </span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">SDR Support Engineer</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Ettus Research</span></p>
</div>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">On Fri, Jul 19, 2019 at 2:21 AM=
 </span>=E6=B1=A4 =E9=A3=9E<span lang=3D"EN-US"> via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt; wrote:</span></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204);border-style:none none none solid;border-width:medium medium=
 medium 1pt;padding:0cm 0cm 0cm 6pt;margin-left:4.8pt;margin-right:0cm">
<div>
<pre><span lang=3D"EN-US">Hi, all,</span></pre>
<pre><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></pre>
<pre><span lang=3D"EN-US">When benchmarking my N310, I keep getting such <s=
pan style=3D"color:rgb(204,0,0)">[RX FLOW CTRL]</span> errors. </span></pre=
>
<pre><span lang=3D"EN-US">What causes this and how to solve it?</span></pre=
>
<pre><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></pre>
<pre><span lang=3D"EN-US">Thanks in advance!</span></pre>
<pre><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></pre>
<pre><span lang=3D"EN-US">FT</span></pre>
<pre><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></pre>
<pre><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></pre>
<pre><span lang=3D"EN-US">/usr/local/lib/uhd/examples/benchmark_rate=C2=A0 =
\</span></pre>
<pre><span lang=3D"EN-US">&gt;=C2=A0=C2=A0=C2=A0 --args &quot;type=3Dn3xx,m=
gmt_addr=3D192.168.10.2,addr=3D192.168.10.2,master_clock_rate=3D122.88e6&qu=
ot; \</span></pre>
<pre><span lang=3D"EN-US">&gt;=C2=A0=C2=A0=C2=A0 --duration 60 \</span></pr=
e>
<pre><span lang=3D"EN-US">&gt;=C2=A0=C2=A0=C2=A0 --channels &quot;0&quot; \=
</span></pre>
<pre><span lang=3D"EN-US">&gt;=C2=A0=C2=A0=C2=A0 --rx_rate 3.84e6 \</span><=
/pre>
<pre><span lang=3D"EN-US">&gt;=C2=A0=C2=A0=C2=A0 --rx_subdev &quot;A:0&quot=
; \</span></pre>
<pre><span lang=3D"EN-US">&gt;=C2=A0=C2=A0=C2=A0 --tx_rate 3.84e6 \</span><=
/pre>
<pre><span lang=3D"EN-US">&gt;=C2=A0=C2=A0=C2=A0 --tx_subdev &quot;A:0&quot=
;</span></pre>
<pre><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></pre>
<pre><span style=3D"color:rgb(78,154,6)" lang=3D"EN-US">[INFO] [UHD] </span=
><span lang=3D"EN-US">linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.14.=
1.HEAD-0-gbfb9c1c7</span></pre>
<pre><span lang=3D"EN-US">[00:00:00.000014] Creating the usrp device with: =
type=3Dn3xx,mgmt_addr=3D192.168.10.2,addr=3D192.168.10.2,master_clock_rate=
=3D122.88e6...</span></pre>
<pre><span style=3D"color:rgb(78,154,6)" lang=3D"EN-US">[INFO] [MPMD] </spa=
n><span lang=3D"EN-US">Initializing 1 device(s) in parallel with args: mgmt=
_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3182B09,claimed=3D=
False,addr=3D192.168.10.2,master_clock_rate=3D122.88e6</span></pre>
<pre><span style=3D"color:rgb(78,154,6)" lang=3D"EN-US">[INFO] [MPM.PeriphM=
anager] </span><span lang=3D"EN-US">init() called with device args `master_=
clock_rate=3D122.88e6,time_source=3Dinternal,clock_source=3Dinternal,mgmt_a=
ddr=3D192.168.10.2,product=3Dn310&#39;.</span></pre>
<pre><span style=3D"color:rgb(78,154,6)" lang=3D"EN-US">[INFO] [0/Replay_0]=
 </span><span lang=3D"EN-US">Initializing block control (NOC ID: 0x4E91A000=
00000004)</span></pre>
<pre><span style=3D"color:rgb(78,154,6)" lang=3D"EN-US">[INFO] [0/Radio_0] =
</span><span lang=3D"EN-US">Initializing block control (NOC ID: 0x12AD10000=
0011312)</span></pre>
<pre><span style=3D"color:rgb(78,154,6)" lang=3D"EN-US">[INFO] [0/Radio_1] =
</span><span lang=3D"EN-US">Initializing block control (NOC ID: 0x12AD10000=
0011312)</span></pre>
<pre><span style=3D"color:rgb(78,154,6)" lang=3D"EN-US">[INFO] [0/DDC_0] </=
span><span lang=3D"EN-US">Initializing block control (NOC ID: 0xDDC00000000=
00000)</span></pre>
<pre><span style=3D"color:rgb(78,154,6)" lang=3D"EN-US">[INFO] [0/DDC_1] </=
span><span lang=3D"EN-US">Initializing block control (NOC ID: 0xDDC00000000=
00000)</span></pre>
<pre><span style=3D"color:rgb(78,154,6)" lang=3D"EN-US">[INFO] [0/DUC_0] </=
span><span lang=3D"EN-US">Initializing block control (NOC ID: 0xD0C00000000=
00002)</span></pre>
<pre><span style=3D"color:rgb(78,154,6)" lang=3D"EN-US">[INFO] [0/DUC_1] </=
span><span lang=3D"EN-US">Initializing block control (NOC ID: 0xD0C00000000=
00002)</span></pre>
<pre><span style=3D"color:rgb(78,154,6)" lang=3D"EN-US">[INFO] [0/FIFO_0] <=
/span><span lang=3D"EN-US">Initializing block control (NOC ID: 0xF1F0000000=
000000)</span></pre>
<pre><span style=3D"color:rgb(78,154,6)" lang=3D"EN-US">[INFO] [0/FIFO_1] <=
/span><span lang=3D"EN-US">Initializing block control (NOC ID: 0xF1F0000000=
000000)</span></pre>
<pre><span style=3D"color:rgb(78,154,6)" lang=3D"EN-US">[INFO] [0/FIFO_2] <=
/span><span lang=3D"EN-US">Initializing block control (NOC ID: 0xF1F0000000=
000000)</span></pre>
<pre><span style=3D"color:rgb(78,154,6)" lang=3D"EN-US">[INFO] [0/FIFO_3] <=
/span><span lang=3D"EN-US">Initializing block control (NOC ID: 0xF1F0000000=
000000)</span></pre>
<pre><span lang=3D"EN-US">Using Device: Single USRP:</span></pre>
<pre><span lang=3D"EN-US">=C2=A0 Device: N300-Series Device</span></pre>
<pre><span lang=3D"EN-US">=C2=A0 Mboard 0: ni-n3xx-3182B09</span></pre>
<pre><span lang=3D"EN-US">=C2=A0 RX Channel: 0</span></pre>
<pre><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0 RX DSP: 0</span></pre>
<pre><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0 RX Dboard: A</span></pre>
<pre><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0 RX Subdev: Magnesium</span></p=
re>
<pre><span lang=3D"EN-US">=C2=A0 TX Channel: 0</span></pre>
<pre><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0 TX DSP: 0</span></pre>
<pre><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0 TX Dboard: A</span></pre>
<pre><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0 TX Subdev: Magnesium</span></p=
re>
<pre><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></pre>
<pre><span lang=3D"EN-US">[00:00:17.353184] Setting device timestamp to 0..=
.</span></pre>
<pre><span lang=3D"EN-US">[00:00:17.412187] Testing receive rate 3.840000 M=
sps on 1 channels</span></pre>
<pre><span lang=3D"EN-US">[00:00:17.414164] Receiver error: ERROR_CODE_BAD_=
PACKET</span></pre>
<pre><span lang=3D"EN-US">[<span style=3D"color:rgb(204,0,0)">[ERROR] [RX F=
LOW CTRL] </span>Error unpacking packet: ValueError: Bad CHDR or packet fra=
gment</span></pre>
<pre><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></pre>
<pre><span style=3D"color:rgb(204,0,0)" lang=3D"EN-US">[ERROR] [STREAMER] <=
/span><span lang=3D"EN-US">The receive packet handler caught a value except=
ion.</span></pre>
<pre><span lang=3D"EN-US">ValueError: Bad CHDR or packet fragment</span></p=
re>
<pre><span lang=3D"EN-US">00:00:17.414180] Unexpected error on recv, contin=
uing...</span></pre>
<pre><span lang=3D"EN-US">[00:00:17.514258] Receiver error: ERROR_CODE_TIME=
OUT, continuing...</span></pre>
<pre><span lang=3D"EN-US">[00:00:17.514312] Receiver error: ERROR_CODE_BAD_=
PACKET</span></pre>
<pre><span lang=3D"EN-US">[00:00:17.514317] Unexpected error on recv, conti=
nuing...</span></pre>
<pre><span style=3D"color:rgb(204,0,0)" lang=3D"EN-US">[ERROR] [RX FLOW CTR=
L] </span><span lang=3D"EN-US">Error unpacking packet: ValueError: Bad CHDR=
 or packet fragment</span></pre>
<pre><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></pre>
<pre><span style=3D"color:rgb(204,0,0)" lang=3D"EN-US">[ERROR] [STREAMER] <=
/span><span lang=3D"EN-US">The receive packet handler caught a value except=
ion.</span></pre>
<pre><span lang=3D"EN-US">ValueError: Bad CHDR or packet fragment</span></p=
re>
<pre><span lang=3D"EN-US">[00:00:17.532991] Testing transmit rate 3.840000 =
Msps on 1 channels</span></pre>
<pre><span lang=3D"EN-US">[00:00:17.614329] Receiver error: ERROR_CODE_TIME=
OUT, continuing...</span></pre>
<pre><span lang=3D"EN-US">[00:00:17.614372] Receiver error: ERROR_CODE_BAD_=
PACKET</span></pre>
<pre><span lang=3D"EN-US">[00:00:17.614377] Unexpected error on recv, conti=
nuing...</span></pre>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">_______________________________=
________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a><u></u><u></u></span></p>
</blockquote>
</div>
</div>
</div>
</blockquote>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">_______________________________=
________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a></span></p>
</div>
</blockquote>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</blockquote>
</div>
</blockquote>
</div>
</blockquote>
</div>
</blockquote>
</div>
</blockquote>
</div>
</blockquote>
</div>
</blockquote>
</div>
<p class=3D"MsoNormal" style=3D"margin-right:108pt;margin-bottom:5pt;margin=
-left:117.6pt">
<span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt;font-family:SimSun" la=
ng=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
</div>
</blockquote>
<br>
</blockquote>
</div>

</blockquote></div>

--000000000000ab9c6505908fb860--
--000000000000ab9c6705908fb861
Content-Type: image/png; name="oddkebdbfjoplldh.png"
Content-Disposition: inline; filename="oddkebdbfjoplldh.png"
Content-Transfer-Encoding: base64
Content-ID: <16cb00755b788e3ee5b1>
X-Attachment-Id: 16cb00755b788e3ee5b1

iVBORw0KGgoAAAANSUhEUgAAAAEAAAADCAYAAABS3WWCAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAARSURBVBhXY9h/9vZ/GHH7PwBLUQozodQElgAA
AABJRU5ErkJggg==
--000000000000ab9c6705908fb861--


--===============7751543403693219927==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7751543403693219927==--

