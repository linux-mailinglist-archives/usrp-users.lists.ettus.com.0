Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E821F22C7C9
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jul 2020 16:20:02 +0200 (CEST)
Received: from [::1] (port=44558 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyyYL-00038i-Aq; Fri, 24 Jul 2020 10:20:01 -0400
Received: from mail-ot1-f51.google.com ([209.85.210.51]:46930)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jyyYH-00030x-9M
 for usrp-users@lists.ettus.com; Fri, 24 Jul 2020 10:19:57 -0400
Received: by mail-ot1-f51.google.com with SMTP id n24so7064961otr.13
 for <usrp-users@lists.ettus.com>; Fri, 24 Jul 2020 07:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7itgSGcZQx3MHE0S9a+ZbGi1qkIZVrdJCmmjMuHo2Bs=;
 b=G9xBb7w5FSF+edZDZJMEnZ1xnTM4aIRyJfrlnNydDdNQgukpm5jBOl5d79tJuYeIkN
 rICybFWv9CkXLT1r3KCVqYlGHOBeZKAVRw1wzwVzT4V4UNZW23Pk9OcJZHshDDlt7HB3
 URrTUEpuBgTea/AqdYQmCuX8L92ua2zQpWJXvg76QpzDYBHWr6UEoHlQ7BAvl8O/7+wK
 mW6Xrs0QkpR9eJMn0jm7Jm80pN3jzIQt6lnBpGDmPaXCH28e57UaOUR8pVrUrQrC1zYO
 HXzYsSNEDDkLigxX7IV5QM+uZ6BEdl0gcR5EmPAmM+wKbSxVN5Q20oPUYidSqp9npCrm
 qJ5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7itgSGcZQx3MHE0S9a+ZbGi1qkIZVrdJCmmjMuHo2Bs=;
 b=APx0ofKZHLKxKk/FcTdoYz5UCz2kcWbx/d9PeKWLYAQCSV1FLn0iCm4kQALCMuoS+0
 ih81kENpxOVZn0yb3z8fQFf7T+oXks7Sp3Ct7i0HDeGzqA7x4JSqA9JyVCggpXqw8gzo
 yfcRwrDW791KS+TEanDHtkFgzCb/11PxmPBZlApvunIqs8pgeAiD01pzadfPYJ97AMNj
 Iy001lXzf5S3t0D3d61JTyp64WcqNUMne7OHL5MCxTGKUnRtHYZ+fJykaZ2Jv5eVn5XV
 3sssrNJBXHAh74F8WXePwwj+Gy0QZrYxkgjBSInGzwVwCPUOEyYGGG+UWSYPPn7YjoMg
 SNDg==
X-Gm-Message-State: AOAM5314yLiqx7rTXMUAB9GcYqIsC8XAbBKhiP94Hzbh/QIkzlFoIIfK
 l+vsk76U76WACpMG6MKQhh2hVV/3bByKbG3/gO9gSw==
X-Google-Smtp-Source: ABdhPJxY9zWKc8LIXQwtJiMeFnIXQKfncoS+PCZCXcRaed1a31autWXga7mqWK3ulpzOuuJCmWf8ynYtkBuy9u4NZU4=
X-Received: by 2002:a05:6830:1112:: with SMTP id
 w18mr8777222otq.301.1595600356474; 
 Fri, 24 Jul 2020 07:19:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAANLyua6xgH+TsH2bqmKLMu4buMm93QqYQ-JPy+vd4F9aB26SA@mail.gmail.com>
 <81D12D30-8BD2-4ED2-906C-E9F7F08B2B82@gmail.com>
In-Reply-To: <81D12D30-8BD2-4ED2-906C-E9F7F08B2B82@gmail.com>
Date: Fri, 24 Jul 2020 10:19:05 -0400
Message-ID: <CAB__hTTc80gTmTWXK2GnsBQpdAj6vZ_=oV_Nc_8oLs0vRzcMGA@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] tx_stream->get_max_num_samps() too low
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
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3918419109790136436=="
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

--===============3918419109790136436==
Content-Type: multipart/alternative; boundary="00000000000073b22a05ab30a8d0"

--00000000000073b22a05ab30a8d0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

spp can be changed in the radio block xml file

On Thu, Jul 23, 2020 at 9:20 PM Marcus D Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Try using the Spp parameter in the device ages.
>
> Sent from my iPhone
>
> On Jul 23, 2020, at 5:50 PM, Devin Kelly via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> =EF=BB=BF
> Hello,
>
> I'm having an issue where tx_stream->get_max_num_samps() is returning 364
> (for sc16) despite my MTU being set to 9000.
>
> I modified tx_timed_samples to print out how many samples I can place in
> each packet, the number is always 364.
>
> 364 samples makes sense for an MTU of 1500 bytes, 364 * 2 * 2 =3D 1456
> bytes.  Two bytes per sample, one sample for I and another sample for Q.
>
> $ ./examples/tx_timed_samples --args=3D"name=3Dnode4" --nsamps 100000 --r=
ate
> 10e6
>
> Creating the usrp device with: name=3Dnode4...
> [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-39);
> Boost_106900; UHD_3.15.0.heads-v3.15.0.0-0-gaea0e2de
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
> [WARNING] [GPS] update_cache: Malformed GPSDO string: EEPROM Write Failed=
!
> [WARNING] [GPS] update_cache: Malformed GPSDO string: EEPROM Write Failed=
!
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
> 0xF1F0D00000000000)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1313 MB/s)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001=
)
> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001=
)
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
> Using Device: Single USRP:
>   Device: X-Series Device
>   Mboard 0: X310
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: UBX RX
>   RX Channel: 1
>     RX DSP: 0
>     RX Dboard: B
>     RX Subdev: UBX RX
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: UBX TX
>   TX Channel: 1
>     TX DSP: 0
>     TX Dboard: B
>     TX Subdev: UBX TX
>
> Setting TX Rate: 10.000000 Msps...
> Actual TX Rate: 10.000000 Msps...
>
> Setting device timestamp to 0...
> tx_stream->get_max_num_samps() =3D 364
>
> Waiting for async burst ACK... success
>
> Done!
>
> I've verified that my interface is using a 9000 byte MTU:
>
> $ ip l show dev p4p2
> 4: p4p2: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc mq state UP mod=
e
> DEFAULT group default qlen 4000
>     link/ether 00:0a:f7:da:6a:e9 brd ff:ff:ff:ff:ff:ff
>
> And that it actually works:
>
> $ ping -I p4p2 -c1 -s 8100 192.168.30.2
> PING 192.168.30.2 (192.168.30.2) from 192.168.30.1 p4p2: 8100(8128) bytes
> of data.
> 8108 bytes from 192.168.30.2: icmp_seq=3D1 ttl=3D32 time=3D23.7 ms
>
> --- 192.168.30.2 ping statistics ---
> 1 packets transmitted, 1 received, 0% packet loss, time 0ms
> rtt min/avg/max/mdev =3D 23.705/23.705/23.705/0.000 ms
>
> Note that the "don't fragment" flag is set:
>
> $ sudo tcpdump -nn -vv -i p4p2 icmp
> tcpdump: listening on p4p2, link-type EN10MB (Ethernet), capture size
> 262144 bytes
> 17:25:12.973794 IP (tos 0x0, ttl 64, id 5942, offset 0, flags [DF], proto
> ICMP (1), length 8128)
>     192.168.30.1 > 192.168.30.2: ICMP echo request, id 47608, seq 1,
> length 8108
> 17:25:12.997481 IP (tos 0x0, ttl 32, id 0, offset 0, flags [DF], proto
> ICMP (1), length 8128)
>     192.168.30.2 > 192.168.30.1: ICMP echo reply, id 47608, seq 1, length
> 8108
>
>
> Strangely though using a slightly larger packet (8300 bytes) my USRP seem=
s
> to not respond:
>
> $ ping -I p4p2 -c1 -s 8300 192.168.30.2
> PING 192.168.30.2 (192.168.30.2) from 192.168.30.1 p4p2: 8300(8328) bytes
> of data.
> ^C
> --- 192.168.30.2 ping statistics ---
> 1 packets transmitted, 0 received, 100% packet loss, time 0ms
>
> $ sudo tcpdump -nn -vv -i p4p2 icmp
> tcpdump: listening on p4p2, link-type EN10MB (Ethernet), capture size
> 262144 bytes
> 17:23:03.060789 IP (tos 0x0, ttl 64, id 23157, offset 0, flags [DF], prot=
o
> ICMP (1), length 8328)
>     192.168.30.1 > 192.168.30.2: ICMP echo request, id 47339, seq 1,
> length 8308
>
>
> Do I have to do anything besides simply changing my MTU to get the UHD to
> take advantage of jumbo frames?
>
> Thanks for any help,
> Devin
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

--00000000000073b22a05ab30a8d0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">spp can be changed in the radio block xml file</div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul =
23, 2020 at 9:20 PM Marcus D Leech via USRP-users &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Try us=
ing the Spp parameter in the device ages.=C2=A0<br><br><div dir=3D"ltr">Sen=
t from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jul=
 23, 2020, at 5:50 PM, Devin Kelly via USRP-users &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&g=
t; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"l=
tr">=EF=BB=BF<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I&#39;m =
having an issue where tx_stream-&gt;get_max_num_samps() is returning 364 (f=
or sc16) despite my MTU being set to 9000.</div><div><br></div><div>I modif=
ied tx_timed_samples to print out how many samples I can place in each pack=
et, the number is always 364. </div><div><br></div><div>364 samples makes s=
ense for an MTU of 1500 bytes, 364 * 2 * 2 =3D 1456 bytes.=C2=A0 Two bytes =
per sample, one sample for I and another sample for Q.<br></div><div><br></=
div><div style=3D"margin-left:40px"><span style=3D"font-family:monospace">$=
 ./examples/tx_timed_samples --args=3D&quot;name=3Dnode4&quot; --nsamps 100=
000 --rate 10e6<br><br>Creating the usrp device with: name=3Dnode4...<br>[I=
NFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-39); Boost_=
106900; UHD_3.15.0.heads-v3.15.0.0-0-gaea0e2de<br>[INFO] [X300] X300 initia=
lization sequence...<br>[INFO] [X300] Maximum frame size: 8000 bytes.<br>[I=
NFO] [X300] Radio 1x clock: 200 MHz<br>[INFO] [GPS] Found an internal GPSDO=
: LC_XO, Firmware Rev 0.929b<br>[WARNING] [GPS] update_cache: Malformed GPS=
DO string: EEPROM Write Failed!<br>[WARNING] [GPS] update_cache: Malformed =
GPSDO string: EEPROM Write Failed!<br>[INFO] [0/DmaFIFO_0] Initializing blo=
ck control (NOC ID: 0xF1F0D00000000000)<br>[INFO] [0/DmaFIFO_0] BIST passed=
 (Throughput: 1313 MB/s)<br>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1=
306 MB/s)<br>[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD1=
00000000001)<br>[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12=
AD100000000001)<br>[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xD=
DC0000000000000)<br>[INFO] [0/DDC_1] Initializing block control (NOC ID: 0x=
DDC0000000000000)<br>[INFO] [0/DUC_0] Initializing block control (NOC ID: 0=
xD0C0000000000000)<br>[INFO] [0/DUC_1] Initializing block control (NOC ID: =
0xD0C0000000000000)<br>Using Device: Single USRP:<br>=C2=A0 Device: X-Serie=
s Device<br>=C2=A0 Mboard 0: X310<br>=C2=A0 RX Channel: 0<br>=C2=A0 =C2=A0 =
RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: UBX RX<=
br>=C2=A0 RX Channel: 1<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboa=
rd: B<br>=C2=A0 =C2=A0 RX Subdev: UBX RX<br>=C2=A0 TX Channel: 0<br>=C2=A0 =
=C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: =
UBX TX<br>=C2=A0 TX Channel: 1<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 =
TX Dboard: B<br>=C2=A0 =C2=A0 TX Subdev: UBX TX<br><br>Setting TX Rate: 10.=
000000 Msps...<br>Actual TX Rate: 10.000000 Msps...<br><br>Setting device t=
imestamp to 0...<br>tx_stream-&gt;get_max_num_samps() =3D 364</span></div><=
div style=3D"margin-left:40px"><span style=3D"font-family:monospace"><br>Wa=
iting for async burst ACK... success<br><br>Done!</span></div><div><span st=
yle=3D"font-family:monospace"><br></span></div><div><span style=3D"font-fam=
ily:arial,sans-serif">I&#39;ve verified that my interface is using a 9000 b=
yte MTU:</span></div><div><span style=3D"font-family:monospace"><br></span>=
</div><div style=3D"margin-left:40px"><span style=3D"font-family:monospace"=
>$ ip l show dev p4p2</span><br><span style=3D"font-family:monospace">4: p4=
p2: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 9000 qdisc mq state UP mode=
 DEFAULT group default qlen 4000</span><br><span style=3D"font-family:monos=
pace">=C2=A0 =C2=A0 link/ether 00:0a:f7:da:6a:e9 brd ff:ff:ff:ff:ff:ff</spa=
n></div><div><span style=3D"font-family:arial,sans-serif"><br></span></div>=
<div><span style=3D"font-family:arial,sans-serif">And that it actually work=
s:</span><span style=3D"font-family:monospace"><br></span></div><div><span =
style=3D"font-family:monospace"><br></span><div style=3D"margin-left:40px">=
<span style=3D"font-family:monospace">$ ping -I p4p2 -c1 -s 8100 192.168.30=
.2 </span><br><span style=3D"font-family:monospace">PING 192.168.30.2 (192.=
168.30.2) from 192.168.30.1 p4p2: 8100(8128) bytes of data.</span><br><span=
 style=3D"font-family:monospace">8108 bytes from <a href=3D"http://192.168.=
30.2" target=3D"_blank">192.168.30.2</a>: icmp_seq=3D1 ttl=3D32 time=3D23.7=
 ms</span><br><span style=3D"font-family:monospace"></span><br><span style=
=3D"font-family:monospace">--- 192.168.30.2 ping statistics ---</span><br><=
span style=3D"font-family:monospace">1 packets transmitted, 1 received, 0% =
packet loss, time 0ms</span><br><span style=3D"font-family:monospace">rtt m=
in/avg/max/mdev =3D 23.705/23.705/23.705/0.000 ms</span></div></div><div><s=
pan style=3D"font-family:arial,sans-serif"><br></span></div><div><span styl=
e=3D"font-family:arial,sans-serif">Note that the &quot;don&#39;t fragment&q=
uot; flag is set:</span><span style=3D"font-family:monospace"><br></span></=
div><div style=3D"margin-left:40px"><span style=3D"font-family:monospace"><=
br></span></div><div style=3D"margin-left:40px"><span style=3D"font-family:=
monospace">$ sudo tcpdump -nn -vv -i p4p2 icmp<br>tcpdump: listening on p4p=
2, link-type EN10MB (Ethernet), capture size 262144 bytes<br>17:25:12.97379=
4 IP (tos 0x0, ttl 64, id 5942, offset 0, flags [DF], proto ICMP (1), lengt=
h 8128)<br>=C2=A0 =C2=A0 192.168.30.1 &gt; <a href=3D"http://192.168.30.2" =
target=3D"_blank">192.168.30.2</a>: ICMP echo request, id 47608, seq 1, len=
gth 8108<br>17:25:12.997481 IP (tos 0x0, ttl 32, id 0, offset 0, flags [DF]=
, proto ICMP (1), length 8128)<br>=C2=A0 =C2=A0 192.168.30.2 &gt; <a href=
=3D"http://192.168.30.1" target=3D"_blank">192.168.30.1</a>: ICMP echo repl=
y, id 47608, seq 1, length 8108<br></span></div><div><span style=3D"font-fa=
mily:monospace"><br></span></div><div><span style=3D"font-family:arial,sans=
-serif"><br></span></div><div><span style=3D"font-family:arial,sans-serif">=
Strangely though using a slightly larger packet (8300 bytes) my USRP seems =
to not respond:</span><span style=3D"font-family:monospace"><br></span></di=
v><div><span style=3D"font-family:monospace"><br></span></div><div style=3D=
"margin-left:40px"><span style=3D"font-family:monospace">$ ping -I p4p2 -c1=
 -s 8300 192.168.30.2 </span><br><span style=3D"font-family:monospace">PING=
 192.168.30.2 (192.168.30.2) from 192.168.30.1 p4p2: 8300(8328) bytes of da=
ta.</span><br><span style=3D"font-family:monospace">^C</span><br><span styl=
e=3D"font-family:monospace">--- 192.168.30.2 ping statistics ---</span><br>=
<span style=3D"font-family:monospace">1 packets transmitted, 0 received, 10=
0% packet loss, time 0ms</span></div><div><span style=3D"font-family:monosp=
ace"><br></span></div><div style=3D"margin-left:40px"><span style=3D"font-f=
amily:monospace">$ sudo tcpdump -nn -vv -i p4p2 icmp<br>tcpdump: listening =
on p4p2, link-type EN10MB (Ethernet), capture size 262144 bytes<br>17:23:03=
.060789 IP (tos 0x0, ttl 64, id 23157, offset 0, flags [DF], proto ICMP (1)=
, length 8328)<br>=C2=A0 =C2=A0 192.168.30.1 &gt; <a href=3D"http://192.168=
.30.2" target=3D"_blank">192.168.30.2</a>: ICMP echo request, id 47339, seq=
 1, length 8308<br></span></div><div style=3D"margin-left:40px"><br><span s=
tyle=3D"font-family:monospace"></span></div><div style=3D"margin-left:40px"=
><br></div><div><font face=3D"arial,sans-serif">Do I have to do anything be=
sides simply changing my MTU to get the UHD to take advantage of jumbo fram=
es?</font></div><div><font face=3D"arial,sans-serif"><br></font></div><div>=
<font face=3D"arial,sans-serif">Thanks for any help,</font></div><div><font=
 face=3D"arial,sans-serif">Devin<br></font></div></div>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list</span><br><span><a href=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank">USRP-users@lists.ettus.com</a></span><br><span><a h=
ref=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" =
target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.=
ettus.com</a></span><br></div></blockquote></div>__________________________=
_____________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000073b22a05ab30a8d0--


--===============3918419109790136436==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3918419109790136436==--

