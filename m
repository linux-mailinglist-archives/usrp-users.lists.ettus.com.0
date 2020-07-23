Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 869EA22B8F6
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jul 2020 23:50:25 +0200 (CEST)
Received: from [::1] (port=37452 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyj6e-0001u5-Ck; Thu, 23 Jul 2020 17:50:24 -0400
Received: from mail-oi1-f169.google.com ([209.85.167.169]:46667)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dwwkelly@gmail.com>) id 1jyj6V-000137-TP
 for usrp-users@lists.ettus.com; Thu, 23 Jul 2020 17:50:15 -0400
Received: by mail-oi1-f169.google.com with SMTP id l63so6323418oih.13
 for <usrp-users@lists.ettus.com>; Thu, 23 Jul 2020 14:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=avCjXZc4YsVcSLJKtakPJz7v4qBf/18a7AjZFAYo12U=;
 b=nDvhuKKVMHo6V9n4Kvg/sYsBZvVfnho3ngVFgP6Iu5RwBFgPyzjjDmzQh24i1tj2Xm
 umR/vGNIl48CprS+OtejltNOsZRq3ZlPXVYh5HT9jWCMf9BlPUQYQHgk/RAO+z8IoCDb
 bO+FM44c3IMGvgyWq0MvnzDhCr1O5whmkDes9ujdhUenamnfIrJAArRbuC68dkjyZkWm
 BuxiSfJfFipDV+a0Y4FSN6c6YzruePNZ9Rv2cTU/wXTs2S6PIgh1Ph/Fov/Xof/WEAH4
 YDk74OdEbbx3OkQ2lNVmwoX5a5cLmTrSzbRrkpzpjE2yFaHIYAo/MhWU5JH2NpqzRUpj
 okXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=avCjXZc4YsVcSLJKtakPJz7v4qBf/18a7AjZFAYo12U=;
 b=VNaLGwFYvHZKImzEPy/4JY+DGU8oNVEv1D4Wh3TaF9IaUwRkWRgOeiFevODqS//70F
 5eXkY8MrxUL92kirZRlXt5uarXegRof7CDM+Fks1DnHUNEVok0sjOETdT6AUcwjiF5gS
 +T7cfkYz01XSGtQfUw/9IFW0Yd9mvQ1xRfWUEl1F6JmeYbniPU4pb7Oun1eJTcMGQwCw
 xOYVI9l2EFJ72xrMNzjTag+fe4awsML8/WggbRP3xjLC2bMaSHpkmbREkuBqunr3gDCt
 P1kFcTI2oU9nGzIEwoKCtX5PQIQBCWSS9A04pTZ4saVhPs/2eSWzRbDNet0FNu7L/4ic
 cg0A==
X-Gm-Message-State: AOAM531uEcu4hSRrRsi1yXcVV3JDa8tFuOpKU9EVUPlhAVzaXzFpIkyW
 4icn13oYwpu9ahIHqr+p0Uv+2bs8444H/TrY9vm/8Kve
X-Google-Smtp-Source: ABdhPJwpQXNu0anR0JhXXH1VtXj9wGVEn1I1re/zhgeJk5H+F+C1HrQF3OCap0tCGerSrezMifianBjQFNHn+lsXEOw=
X-Received: by 2002:aca:d60c:: with SMTP id n12mr5355255oig.167.1595540974684; 
 Thu, 23 Jul 2020 14:49:34 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 23 Jul 2020 17:49:23 -0400
Message-ID: <CAANLyua6xgH+TsH2bqmKLMu4buMm93QqYQ-JPy+vd4F9aB26SA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] tx_stream->get_max_num_samps() too low
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
From: Devin Kelly via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Devin Kelly <dwwkelly@gmail.com>
Content-Type: multipart/mixed; boundary="===============4897616090500424133=="
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

--===============4897616090500424133==
Content-Type: multipart/alternative; boundary="000000000000054d5f05ab22d5e0"

--000000000000054d5f05ab22d5e0
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm having an issue where tx_stream->get_max_num_samps() is returning 364
(for sc16) despite my MTU being set to 9000.

I modified tx_timed_samples to print out how many samples I can place in
each packet, the number is always 364.

364 samples makes sense for an MTU of 1500 bytes, 364 * 2 * 2 = 1456
bytes.  Two bytes per sample, one sample for I and another sample for Q.

$ ./examples/tx_timed_samples --args="name=node4" --nsamps 100000 --rate
10e6

Creating the usrp device with: name=node4...
[INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-39);
Boost_106900; UHD_3.15.0.heads-v3.15.0.0-0-gaea0e2de
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
[WARNING] [GPS] update_cache: Malformed GPSDO string: EEPROM Write Failed!
[WARNING] [GPS] update_cache: Malformed GPSDO string: EEPROM Write Failed!
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1313 MB/s)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
Using Device: Single USRP:
  Device: X-Series Device
  Mboard 0: X310
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: UBX RX
  RX Channel: 1
    RX DSP: 0
    RX Dboard: B
    RX Subdev: UBX RX
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: UBX TX
  TX Channel: 1
    TX DSP: 0
    TX Dboard: B
    TX Subdev: UBX TX

Setting TX Rate: 10.000000 Msps...
Actual TX Rate: 10.000000 Msps...

Setting device timestamp to 0...
tx_stream->get_max_num_samps() = 364

Waiting for async burst ACK... success

Done!

I've verified that my interface is using a 9000 byte MTU:

$ ip l show dev p4p2
4: p4p2: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc mq state UP mode
DEFAULT group default qlen 4000
    link/ether 00:0a:f7:da:6a:e9 brd ff:ff:ff:ff:ff:ff

And that it actually works:

$ ping -I p4p2 -c1 -s 8100 192.168.30.2
PING 192.168.30.2 (192.168.30.2) from 192.168.30.1 p4p2: 8100(8128) bytes
of data.
8108 bytes from 192.168.30.2: icmp_seq=1 ttl=32 time=23.7 ms

--- 192.168.30.2 ping statistics ---
1 packets transmitted, 1 received, 0% packet loss, time 0ms
rtt min/avg/max/mdev = 23.705/23.705/23.705/0.000 ms

Note that the "don't fragment" flag is set:

$ sudo tcpdump -nn -vv -i p4p2 icmp
tcpdump: listening on p4p2, link-type EN10MB (Ethernet), capture size
262144 bytes
17:25:12.973794 IP (tos 0x0, ttl 64, id 5942, offset 0, flags [DF], proto
ICMP (1), length 8128)
    192.168.30.1 > 192.168.30.2: ICMP echo request, id 47608, seq 1, length
8108
17:25:12.997481 IP (tos 0x0, ttl 32, id 0, offset 0, flags [DF], proto ICMP
(1), length 8128)
    192.168.30.2 > 192.168.30.1: ICMP echo reply, id 47608, seq 1, length
8108


Strangely though using a slightly larger packet (8300 bytes) my USRP seems
to not respond:

$ ping -I p4p2 -c1 -s 8300 192.168.30.2
PING 192.168.30.2 (192.168.30.2) from 192.168.30.1 p4p2: 8300(8328) bytes
of data.
^C
--- 192.168.30.2 ping statistics ---
1 packets transmitted, 0 received, 100% packet loss, time 0ms

$ sudo tcpdump -nn -vv -i p4p2 icmp
tcpdump: listening on p4p2, link-type EN10MB (Ethernet), capture size
262144 bytes
17:23:03.060789 IP (tos 0x0, ttl 64, id 23157, offset 0, flags [DF], proto
ICMP (1), length 8328)
    192.168.30.1 > 192.168.30.2: ICMP echo request, id 47339, seq 1, length
8308


Do I have to do anything besides simply changing my MTU to get the UHD to
take advantage of jumbo frames?

Thanks for any help,
Devin

--000000000000054d5f05ab22d5e0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I&#39;m having an iss=
ue where tx_stream-&gt;get_max_num_samps() is returning 364 (for sc16) desp=
ite my MTU being set to 9000.</div><div><br></div><div>I modified tx_timed_=
samples to print out how many samples I can place in each packet, the numbe=
r is always 364. </div><div><br></div><div>364 samples makes sense for an M=
TU of 1500 bytes, 364 * 2 * 2 =3D 1456 bytes.=C2=A0 Two bytes per sample, o=
ne sample for I and another sample for Q.<br></div><div><br></div><div styl=
e=3D"margin-left:40px"><span style=3D"font-family:monospace">$ ./examples/t=
x_timed_samples --args=3D&quot;name=3Dnode4&quot; --nsamps 100000 --rate 10=
e6<br><br>Creating the usrp device with: name=3Dnode4...<br>[INFO] [UHD] li=
nux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-39); Boost_106900; UHD_3=
.15.0.heads-v3.15.0.0-0-gaea0e2de<br>[INFO] [X300] X300 initialization sequ=
ence...<br>[INFO] [X300] Maximum frame size: 8000 bytes.<br>[INFO] [X300] R=
adio 1x clock: 200 MHz<br>[INFO] [GPS] Found an internal GPSDO: LC_XO, Firm=
ware Rev 0.929b<br>[WARNING] [GPS] update_cache: Malformed GPSDO string: EE=
PROM Write Failed!<br>[WARNING] [GPS] update_cache: Malformed GPSDO string:=
 EEPROM Write Failed!<br>[INFO] [0/DmaFIFO_0] Initializing block control (N=
OC ID: 0xF1F0D00000000000)<br>[INFO] [0/DmaFIFO_0] BIST passed (Throughput:=
 1313 MB/s)<br>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)<br>=
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)<=
br>[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD10000000000=
1)<br>[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC00000000000=
00)<br>[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000=
000)<br>[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C000000000=
0000)<br>[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C00000000=
00000)<br>Using Device: Single USRP:<br>=C2=A0 Device: X-Series Device<br>=
=C2=A0 Mboard 0: X310<br>=C2=A0 RX Channel: 0<br>=C2=A0 =C2=A0 RX DSP: 0<br=
>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: UBX RX<br>=C2=A0 RX=
 Channel: 1<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: B<br>=C2=
=A0 =C2=A0 RX Subdev: UBX RX<br>=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0 TX DS=
P: 0<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: UBX TX<br>=
=C2=A0 TX Channel: 1<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard:=
 B<br>=C2=A0 =C2=A0 TX Subdev: UBX TX<br><br>Setting TX Rate: 10.000000 Msp=
s...<br>Actual TX Rate: 10.000000 Msps...<br><br>Setting device timestamp t=
o 0...<br>tx_stream-&gt;get_max_num_samps() =3D 364</span></div><div style=
=3D"margin-left:40px"><span style=3D"font-family:monospace"><br>Waiting for=
 async burst ACK... success<br><br>Done!</span></div><div><span style=3D"fo=
nt-family:monospace"><br></span></div><div><span style=3D"font-family:arial=
,sans-serif">I&#39;ve verified that my interface is using a 9000 byte MTU:<=
/span></div><div><span style=3D"font-family:monospace"><br></span></div><di=
v style=3D"margin-left:40px"><span style=3D"font-family:monospace">$ ip l s=
how dev p4p2</span><br><span style=3D"font-family:monospace">4: p4p2: &lt;B=
ROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 9000 qdisc mq state UP mode DEFAULT =
group default qlen 4000</span><br><span style=3D"font-family:monospace">=C2=
=A0 =C2=A0 link/ether 00:0a:f7:da:6a:e9 brd ff:ff:ff:ff:ff:ff</span></div><=
div><span style=3D"font-family:arial,sans-serif"><br></span></div><div><spa=
n style=3D"font-family:arial,sans-serif">And that it actually works:</span>=
<span style=3D"font-family:monospace"><br></span></div><div><span style=3D"=
font-family:monospace"><br></span><div style=3D"margin-left:40px"><span sty=
le=3D"font-family:monospace">$ ping -I p4p2 -c1 -s 8100 192.168.30.2 </span=
><br><span style=3D"font-family:monospace">PING 192.168.30.2 (192.168.30.2)=
 from 192.168.30.1 p4p2: 8100(8128) bytes of data.</span><br><span style=3D=
"font-family:monospace">8108 bytes from <a href=3D"http://192.168.30.2">192=
.168.30.2</a>: icmp_seq=3D1 ttl=3D32 time=3D23.7 ms</span><br><span style=
=3D"font-family:monospace"></span><br><span style=3D"font-family:monospace"=
>--- 192.168.30.2 ping statistics ---</span><br><span style=3D"font-family:=
monospace">1 packets transmitted, 1 received, 0% packet loss, time 0ms</spa=
n><br><span style=3D"font-family:monospace">rtt min/avg/max/mdev =3D 23.705=
/23.705/23.705/0.000 ms</span></div></div><div><span style=3D"font-family:a=
rial,sans-serif"><br></span></div><div><span style=3D"font-family:arial,san=
s-serif">Note that the &quot;don&#39;t fragment&quot; flag is set:</span><s=
pan style=3D"font-family:monospace"><br></span></div><div style=3D"margin-l=
eft:40px"><span style=3D"font-family:monospace"><br></span></div><div style=
=3D"margin-left:40px"><span style=3D"font-family:monospace">$ sudo tcpdump =
-nn -vv -i p4p2 icmp<br>tcpdump: listening on p4p2, link-type EN10MB (Ether=
net), capture size 262144 bytes<br>17:25:12.973794 IP (tos 0x0, ttl 64, id =
5942, offset 0, flags [DF], proto ICMP (1), length 8128)<br>=C2=A0 =C2=A0 1=
92.168.30.1 &gt; <a href=3D"http://192.168.30.2">192.168.30.2</a>: ICMP ech=
o request, id 47608, seq 1, length 8108<br>17:25:12.997481 IP (tos 0x0, ttl=
 32, id 0, offset 0, flags [DF], proto ICMP (1), length 8128)<br>=C2=A0 =C2=
=A0 192.168.30.2 &gt; <a href=3D"http://192.168.30.1">192.168.30.1</a>: ICM=
P echo reply, id 47608, seq 1, length 8108<br></span></div><div><span style=
=3D"font-family:monospace"><br></span></div><div><span style=3D"font-family=
:arial,sans-serif"><br></span></div><div><span style=3D"font-family:arial,s=
ans-serif">Strangely though using a slightly larger packet (8300 bytes) my =
USRP seems to not respond:</span><span style=3D"font-family:monospace"><br>=
</span></div><div><span style=3D"font-family:monospace"><br></span></div><d=
iv style=3D"margin-left:40px"><span style=3D"font-family:monospace">$ ping =
-I p4p2 -c1 -s 8300 192.168.30.2 </span><br><span style=3D"font-family:mono=
space">PING 192.168.30.2 (192.168.30.2) from 192.168.30.1 p4p2: 8300(8328) =
bytes of data.</span><br><span style=3D"font-family:monospace">^C</span><br=
><span style=3D"font-family:monospace">--- 192.168.30.2 ping statistics ---=
</span><br><span style=3D"font-family:monospace">1 packets transmitted, 0 r=
eceived, 100% packet loss, time 0ms</span></div><div><span style=3D"font-fa=
mily:monospace"><br></span></div><div style=3D"margin-left:40px"><span styl=
e=3D"font-family:monospace">$ sudo tcpdump -nn -vv -i p4p2 icmp<br>tcpdump:=
 listening on p4p2, link-type EN10MB (Ethernet), capture size 262144 bytes<=
br>17:23:03.060789 IP (tos 0x0, ttl 64, id 23157, offset 0, flags [DF], pro=
to ICMP (1), length 8328)<br>=C2=A0 =C2=A0 192.168.30.1 &gt; <a href=3D"htt=
p://192.168.30.2">192.168.30.2</a>: ICMP echo request, id 47339, seq 1, len=
gth 8308<br></span></div><div style=3D"margin-left:40px"><br><span style=3D=
"font-family:monospace"></span></div><div style=3D"margin-left:40px"><br></=
div><div><font face=3D"arial,sans-serif">Do I have to do anything besides s=
imply changing my MTU to get the UHD to take advantage of jumbo frames?</fo=
nt></div><div><font face=3D"arial,sans-serif"><br></font></div><div><font f=
ace=3D"arial,sans-serif">Thanks for any help,</font></div><div><font face=
=3D"arial,sans-serif">Devin<br></font></div></div>

--000000000000054d5f05ab22d5e0--


--===============4897616090500424133==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4897616090500424133==--

