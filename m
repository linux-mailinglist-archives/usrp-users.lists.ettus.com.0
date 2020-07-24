Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1F422BB52
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jul 2020 03:20:51 +0200 (CEST)
Received: from [::1] (port=38932 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jymOC-00084W-Hk; Thu, 23 Jul 2020 21:20:44 -0400
Received: from mail-qk1-f178.google.com ([209.85.222.178]:40627)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jymO8-0007z2-3t
 for usrp-users@lists.ettus.com; Thu, 23 Jul 2020 21:20:40 -0400
Received: by mail-qk1-f178.google.com with SMTP id h7so7308936qkk.7
 for <usrp-users@lists.ettus.com>; Thu, 23 Jul 2020 18:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=yp/xaXYZaDyAAZeSL9mfKNyxya1O2G/0dNEyNkIahEI=;
 b=QVGz6JW11XkHaMRcsMc/SAA75PCKdS7hYZx09nSiBbq2YuMoUgRiX1XoZMQSamjN3u
 rQXqCnnz5ocpydFYxC9MnMZUTBO7sgjpda7b9QzenHMtfBjt3ppbCdyW0SlJ5//L9QpE
 oGbvteik20ju5eZHdETnpWjnCcLr5Yy8B7JnTj7djUeNXd3PWf9fU3LdSFJqZutZsbuu
 mXXHJeH+tBD/4V4Dwpe2mCuNuoNkNTOhstUzbNi/ugTEyIsPPKg0rpvVEwX41J5RDKJZ
 lLqdC4Z4iCMqETsbJ8Cla02d+/357sPgulGyqwGcMcyzatfcKQIEAlC0P6XH6jRiqG3V
 KT6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=yp/xaXYZaDyAAZeSL9mfKNyxya1O2G/0dNEyNkIahEI=;
 b=EMAeDC6TqqW+P5hNq++HM8EKfcGHPXhKie8bp+jUzszkOAaIj3GH939tZlTiC3IaTe
 WqbUNqsVYsWOC1fUdNLQDWeho9LzyBI0LfTkPztXuranH3CG4bAVG/itdJcZUIOp2Ko0
 BswMelH8DQEx9nD3juRSj8+tJVz4hgxPmvf4s5mYKJ1TGpqB2ewMSGHVvOSyl059zupx
 KaKbnl9byLaGcq74r/HwItLFiEYYe+NmYcQQuH6IiAWvS+yUSS9zGprAutwnE0acL0xo
 PKyTtGFy0bNzqvPtOBno1FfqA1eqrUkjuWlciDL7VJSS8fvPkAl4HHU9qzQon47RyF9u
 FbPw==
X-Gm-Message-State: AOAM5335rH4wXHtwreyFjnvcPO2PA2gNRQ6O4xKiRnPV4mRLK+h0Djnn
 LJ+QWQ9hCVlDUwTYzkK9IG0=
X-Google-Smtp-Source: ABdhPJy18C6buWkk5/UF8O99VLwqYhmmiwAWom+HCX8hJqpiytNHBQrMPjmbI5xRm16Yt3bgGTb8KQ==
X-Received: by 2002:a37:5603:: with SMTP id k3mr8071643qkb.90.1595553599388;
 Thu, 23 Jul 2020 18:19:59 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.gmail.com with ESMTPSA id r7sm4087329qtm.66.2020.07.23.18.19.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Jul 2020 18:19:58 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Thu, 23 Jul 2020 21:19:58 -0400
Message-Id: <81D12D30-8BD2-4ED2-906C-E9F7F08B2B82@gmail.com>
References: <CAANLyua6xgH+TsH2bqmKLMu4buMm93QqYQ-JPy+vd4F9aB26SA@mail.gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
In-Reply-To: <CAANLyua6xgH+TsH2bqmKLMu4buMm93QqYQ-JPy+vd4F9aB26SA@mail.gmail.com>
To: Devin Kelly <dwwkelly@gmail.com>
X-Mailer: iPhone Mail (17F80)
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============9069057613995054647=="
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


--===============9069057613995054647==
Content-Type: multipart/alternative; boundary=Apple-Mail-22DF568F-DE5A-4062-9F9F-D85FA49404C2
Content-Transfer-Encoding: 7bit


--Apple-Mail-22DF568F-DE5A-4062-9F9F-D85FA49404C2
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Try using the Spp parameter in the device ages.=20

Sent from my iPhone

> On Jul 23, 2020, at 5:50 PM, Devin Kelly via USRP-users <usrp-users@lists.=
ettus.com> wrote:
>=20
> =EF=BB=BF
> Hello,
>=20
> I'm having an issue where tx_stream->get_max_num_samps() is returning 364 (=
for sc16) despite my MTU being set to 9000.
>=20
> I modified tx_timed_samples to print out how many samples I can place in e=
ach packet, the number is always 364.
>=20
> 364 samples makes sense for an MTU of 1500 bytes, 364 * 2 * 2 =3D 1456 byt=
es.  Two bytes per sample, one sample for I and another sample for Q.
>=20
> $ ./examples/tx_timed_samples --args=3D"name=3Dnode4" --nsamps 100000 --ra=
te 10e6
>=20
> Creating the usrp device with: name=3Dnode4...
> [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-39); Boo=
st_106900; UHD_3.15.0.heads-v3.15.0.0-0-gaea0e2de
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
> [WARNING] [GPS] update_cache: Malformed GPSDO string: EEPROM Write Failed!=

> [WARNING] [GPS] update_cache: Malformed GPSDO string: EEPROM Write Failed!=

> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D0000000000=
0)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1313 MB/s)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)=

> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)=

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
>=20
> Setting TX Rate: 10.000000 Msps...
> Actual TX Rate: 10.000000 Msps...
>=20
> Setting device timestamp to 0...
> tx_stream->get_max_num_samps() =3D 364
>=20
> Waiting for async burst ACK... success
>=20
> Done!
>=20
> I've verified that my interface is using a 9000 byte MTU:
>=20
> $ ip l show dev p4p2
> 4: p4p2: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc mq state UP mode=
 DEFAULT group default qlen 4000
>     link/ether 00:0a:f7:da:6a:e9 brd ff:ff:ff:ff:ff:ff
>=20
> And that it actually works:
>=20
> $ ping -I p4p2 -c1 -s 8100 192.168.30.2=20
> PING 192.168.30.2 (192.168.30.2) from 192.168.30.1 p4p2: 8100(8128) bytes o=
f data.
> 8108 bytes from 192.168.30.2: icmp_seq=3D1 ttl=3D32 time=3D23.7 ms
>=20
> --- 192.168.30.2 ping statistics ---
> 1 packets transmitted, 1 received, 0% packet loss, time 0ms
> rtt min/avg/max/mdev =3D 23.705/23.705/23.705/0.000 ms
>=20
> Note that the "don't fragment" flag is set:
>=20
> $ sudo tcpdump -nn -vv -i p4p2 icmp
> tcpdump: listening on p4p2, link-type EN10MB (Ethernet), capture size 2621=
44 bytes
> 17:25:12.973794 IP (tos 0x0, ttl 64, id 5942, offset 0, flags [DF], proto I=
CMP (1), length 8128)
>     192.168.30.1 > 192.168.30.2: ICMP echo request, id 47608, seq 1, lengt=
h 8108
> 17:25:12.997481 IP (tos 0x0, ttl 32, id 0, offset 0, flags [DF], proto ICM=
P (1), length 8128)
>     192.168.30.2 > 192.168.30.1: ICMP echo reply, id 47608, seq 1, length 8=
108
>=20
>=20
> Strangely though using a slightly larger packet (8300 bytes) my USRP seems=
 to not respond:
>=20
> $ ping -I p4p2 -c1 -s 8300 192.168.30.2=20
> PING 192.168.30.2 (192.168.30.2) from 192.168.30.1 p4p2: 8300(8328) bytes o=
f data.
> ^C
> --- 192.168.30.2 ping statistics ---
> 1 packets transmitted, 0 received, 100% packet loss, time 0ms
>=20
> $ sudo tcpdump -nn -vv -i p4p2 icmp
> tcpdump: listening on p4p2, link-type EN10MB (Ethernet), capture size 2621=
44 bytes
> 17:23:03.060789 IP (tos 0x0, ttl 64, id 23157, offset 0, flags [DF], proto=
 ICMP (1), length 8328)
>     192.168.30.1 > 192.168.30.2: ICMP echo request, id 47339, seq 1, lengt=
h 8308
>=20
>=20
> Do I have to do anything besides simply changing my MTU to get the UHD to t=
ake advantage of jumbo frames?
>=20
> Thanks for any help,
> Devin
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-22DF568F-DE5A-4062-9F9F-D85FA49404C2
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Try using the Spp parameter in the device a=
ges.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"=
><br><blockquote type=3D"cite">On Jul 23, 2020, at 5:50 PM, Devin Kelly via U=
SRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br><br></blockquote></di=
v><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div>=
Hello,</div><div><br></div><div>I'm having an issue where tx_stream-&gt;get_=
max_num_samps() is returning 364 (for sc16) despite my MTU being set to 9000=
.</div><div><br></div><div>I modified tx_timed_samples to print out how many=
 samples I can place in each packet, the number is always 364. </div><div><b=
r></div><div>364 samples makes sense for an MTU of 1500 bytes, 364 * 2 * 2 =3D=
 1456 bytes.&nbsp; Two bytes per sample, one sample for I and another sample=
 for Q.<br></div><div><br></div><div style=3D"margin-left:40px"><span style=3D=
"font-family:monospace">$ ./examples/tx_timed_samples --args=3D"name=3Dnode4=
" --nsamps 100000 --rate 10e6<br><br>Creating the usrp device with: name=3Dn=
ode4...<br>[INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5=
-39); Boost_106900; UHD_3.15.0.heads-v3.15.0.0-0-gaea0e2de<br>[INFO] [X300] X=
300 initialization sequence...<br>[INFO] [X300] Maximum frame size: 8000 byt=
es.<br>[INFO] [X300] Radio 1x clock: 200 MHz<br>[INFO] [GPS] Found an intern=
al GPSDO: LC_XO, Firmware Rev 0.929b<br>[WARNING] [GPS] update_cache: Malfor=
med GPSDO string: EEPROM Write Failed!<br>[WARNING] [GPS] update_cache: Malf=
ormed GPSDO string: EEPROM Write Failed!<br>[INFO] [0/DmaFIFO_0] Initializin=
g block control (NOC ID: 0xF1F0D00000000000)<br>[INFO] [0/DmaFIFO_0] BIST pa=
ssed (Throughput: 1313 MB/s)<br>[INFO] [0/DmaFIFO_0] BIST passed (Throughput=
: 1306 MB/s)<br>[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12A=
D100000000001)<br>[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x1=
2AD100000000001)<br>[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xD=
DC0000000000000)<br>[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xD=
DC0000000000000)<br>[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD=
0C0000000000000)<br>[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD=
0C0000000000000)<br>Using Device: Single USRP:<br>&nbsp; Device: X-Series De=
vice<br>&nbsp; Mboard 0: X310<br>&nbsp; RX Channel: 0<br>&nbsp; &nbsp; RX DS=
P: 0<br>&nbsp; &nbsp; RX Dboard: A<br>&nbsp; &nbsp; RX Subdev: UBX RX<br>&nb=
sp; RX Channel: 1<br>&nbsp; &nbsp; RX DSP: 0<br>&nbsp; &nbsp; RX Dboard: B<b=
r>&nbsp; &nbsp; RX Subdev: UBX RX<br>&nbsp; TX Channel: 0<br>&nbsp; &nbsp; T=
X DSP: 0<br>&nbsp; &nbsp; TX Dboard: A<br>&nbsp; &nbsp; TX Subdev: UBX TX<br=
>&nbsp; TX Channel: 1<br>&nbsp; &nbsp; TX DSP: 0<br>&nbsp; &nbsp; TX Dboard:=
 B<br>&nbsp; &nbsp; TX Subdev: UBX TX<br><br>Setting TX Rate: 10.000000 Msps=
...<br>Actual TX Rate: 10.000000 Msps...<br><br>Setting device timestamp to 0=
...<br>tx_stream-&gt;get_max_num_samps() =3D 364</span></div><div style=3D"m=
argin-left:40px"><span style=3D"font-family:monospace"><br>Waiting for async=
 burst ACK... success<br><br>Done!</span></div><div><span style=3D"font-fami=
ly:monospace"><br></span></div><div><span style=3D"font-family:arial,sans-se=
rif">I've verified that my interface is using a 9000 byte MTU:</span></div><=
div><span style=3D"font-family:monospace"><br></span></div><div style=3D"mar=
gin-left:40px"><span style=3D"font-family:monospace">$ ip l show dev p4p2</s=
pan><br><span style=3D"font-family:monospace">4: p4p2: &lt;BROADCAST,MULTICA=
ST,UP,LOWER_UP&gt; mtu 9000 qdisc mq state UP mode DEFAULT group default qle=
n 4000</span><br><span style=3D"font-family:monospace">&nbsp; &nbsp; link/et=
her 00:0a:f7:da:6a:e9 brd ff:ff:ff:ff:ff:ff</span></div><div><span style=3D"=
font-family:arial,sans-serif"><br></span></div><div><span style=3D"font-fami=
ly:arial,sans-serif">And that it actually works:</span><span style=3D"font-f=
amily:monospace"><br></span></div><div><span style=3D"font-family:monospace"=
><br></span><div style=3D"margin-left:40px"><span style=3D"font-family:monos=
pace">$ ping -I p4p2 -c1 -s 8100 192.168.30.2 </span><br><span style=3D"font=
-family:monospace">PING 192.168.30.2 (192.168.30.2) from 192.168.30.1 p4p2: 8=
100(8128) bytes of data.</span><br><span style=3D"font-family:monospace">810=
8 bytes from <a href=3D"http://192.168.30.2">192.168.30.2</a>: icmp_seq=3D1 t=
tl=3D32 time=3D23.7 ms</span><br><span style=3D"font-family:monospace"></spa=
n><br><span style=3D"font-family:monospace">--- 192.168.30.2 ping statistics=
 ---</span><br><span style=3D"font-family:monospace">1 packets transmitted, 1=
 received, 0% packet loss, time 0ms</span><br><span style=3D"font-family:mon=
ospace">rtt min/avg/max/mdev =3D 23.705/23.705/23.705/0.000 ms</span></div><=
/div><div><span style=3D"font-family:arial,sans-serif"><br></span></div><div=
><span style=3D"font-family:arial,sans-serif">Note that the "don't fragment"=
 flag is set:</span><span style=3D"font-family:monospace"><br></span></div><=
div style=3D"margin-left:40px"><span style=3D"font-family:monospace"><br></s=
pan></div><div style=3D"margin-left:40px"><span style=3D"font-family:monospa=
ce">$ sudo tcpdump -nn -vv -i p4p2 icmp<br>tcpdump: listening on p4p2, link-=
type EN10MB (Ethernet), capture size 262144 bytes<br>17:25:12.973794 IP (tos=
 0x0, ttl 64, id 5942, offset 0, flags [DF], proto ICMP (1), length 8128)<br=
>&nbsp; &nbsp; 192.168.30.1 &gt; <a href=3D"http://192.168.30.2">192.168.30.=
2</a>: ICMP echo request, id 47608, seq 1, length 8108<br>17:25:12.997481 IP=
 (tos 0x0, ttl 32, id 0, offset 0, flags [DF], proto ICMP (1), length 8128)<=
br>&nbsp; &nbsp; 192.168.30.2 &gt; <a href=3D"http://192.168.30.1">192.168.3=
0.1</a>: ICMP echo reply, id 47608, seq 1, length 8108<br></span></div><div>=
<span style=3D"font-family:monospace"><br></span></div><div><span style=3D"f=
ont-family:arial,sans-serif"><br></span></div><div><span style=3D"font-famil=
y:arial,sans-serif">Strangely though using a slightly larger packet (8300 by=
tes) my USRP seems to not respond:</span><span style=3D"font-family:monospac=
e"><br></span></div><div><span style=3D"font-family:monospace"><br></span></=
div><div style=3D"margin-left:40px"><span style=3D"font-family:monospace">$ p=
ing -I p4p2 -c1 -s 8300 192.168.30.2 </span><br><span style=3D"font-family:m=
onospace">PING 192.168.30.2 (192.168.30.2) from 192.168.30.1 p4p2: 8300(8328=
) bytes of data.</span><br><span style=3D"font-family:monospace">^C</span><b=
r><span style=3D"font-family:monospace">--- 192.168.30.2 ping statistics ---=
</span><br><span style=3D"font-family:monospace">1 packets transmitted, 0 re=
ceived, 100% packet loss, time 0ms</span></div><div><span style=3D"font-fami=
ly:monospace"><br></span></div><div style=3D"margin-left:40px"><span style=3D=
"font-family:monospace">$ sudo tcpdump -nn -vv -i p4p2 icmp<br>tcpdump: list=
ening on p4p2, link-type EN10MB (Ethernet), capture size 262144 bytes<br>17:=
23:03.060789 IP (tos 0x0, ttl 64, id 23157, offset 0, flags [DF], proto ICMP=
 (1), length 8328)<br>&nbsp; &nbsp; 192.168.30.1 &gt; <a href=3D"http://192.=
168.30.2">192.168.30.2</a>: ICMP echo request, id 47339, seq 1, length 8308<=
br></span></div><div style=3D"margin-left:40px"><br><span style=3D"font-fami=
ly:monospace"></span></div><div style=3D"margin-left:40px"><br></div><div><f=
ont face=3D"arial,sans-serif">Do I have to do anything besides simply changi=
ng my MTU to get the UHD to take advantage of jumbo frames?</font></div><div=
><font face=3D"arial,sans-serif"><br></font></div><div><font face=3D"arial,s=
ans-serif">Thanks for any help,</font></div><div><font face=3D"arial,sans-se=
rif">Devin<br></font></div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></body></html>=

--Apple-Mail-22DF568F-DE5A-4062-9F9F-D85FA49404C2--


--===============9069057613995054647==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9069057613995054647==--

