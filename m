Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A157222C87A
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jul 2020 16:52:29 +0200 (CEST)
Received: from [::1] (port=44848 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyz3j-0005gI-BA; Fri, 24 Jul 2020 10:52:27 -0400
Received: from mail-ot1-f45.google.com ([209.85.210.45]:35648)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dwwkelly@gmail.com>) id 1jyz3f-0005Yo-QX
 for usrp-users@lists.ettus.com; Fri, 24 Jul 2020 10:52:23 -0400
Received: by mail-ot1-f45.google.com with SMTP id d4so7198246otk.2
 for <usrp-users@lists.ettus.com>; Fri, 24 Jul 2020 07:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=dpvffcsKijB20/IjgqNkE448hpwabBDFfRv0kr6CYfQ=;
 b=mQOy9jprgKB/WYGFtmrbjL6FUy/FuF5Q2ggznT13LfBxerP1sKDNZ08Ai5BlXLTLBm
 LEkvnODt9vIla0vrOsLf+dlC9ajWUGJsu0AW6MzpVYHDgXEzkl1GlNVObSaedECJI8sh
 tUbkpsuCJZBNKxngvXoU25wpfI/C+IRxiS/aY8Vmwv//e21h6SSrls/iWdSx58bgof+2
 NuHhQ+by/osQKcylNR/o0SvX2D0DJ0VFipp6lsOzXtXV7WthV71FIovwKCLBABoXIhkf
 ZCsk8a6me1AijocfUYTGzrYIFLgsbKwoIV7ayvwna41iSlhOpghiZG6w1kLN51ekec4b
 +Zeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=dpvffcsKijB20/IjgqNkE448hpwabBDFfRv0kr6CYfQ=;
 b=QAQBHBHcm00I5m2HOsE6egOAHnqCaLgnYY9v8gNmvo2rr3JJOyjnOrnyZsZ2QIcyLu
 JIvbnQyc13bRkrDch3DqBNdq6EHLRM2y/YSD/QSKObMjVDjmWf6pNlbPYIHAqKMkHAwa
 BOPSxP1YB9ugtY8lZ7nRdAjddzRFbNX+KP98TF7p5WbHNKM4+gmnkxpAyilbCfxqiVT0
 iFf6fjDW/jKxnYsA9uWVnW6k4GPwiHG228cKGYeZY1zorONZO+JknXa2oMdo+lIE8z+b
 /ZdGATnk//2Z2gVBcLMpDMM3IYGph402vS4kx20O/rW70JJY4X7GFhoJ0PvL+3GNY8JD
 Pgsg==
X-Gm-Message-State: AOAM5306aFT76x92jhL+df9iFLnnKb3/lWTryWv/dvJMDGemmmp3Ogh4
 ZNL+LhaQ0p5ZCTCyhozIwiwIrjQ6ePmFE0oHBt+xzg+l
X-Google-Smtp-Source: ABdhPJx3F4wpLc4x5cLS31/afw/ZESNVm3penpRNwWskistCQIUUPsS0xCmpWKFFqNmKv6RDyYZ+ovPcartontRDEOg=
X-Received: by 2002:a9d:5e93:: with SMTP id f19mr8365089otl.175.1595602302661; 
 Fri, 24 Jul 2020 07:51:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAANLyua6xgH+TsH2bqmKLMu4buMm93QqYQ-JPy+vd4F9aB26SA@mail.gmail.com>
 <81D12D30-8BD2-4ED2-906C-E9F7F08B2B82@gmail.com>
 <CAB__hTTc80gTmTWXK2GnsBQpdAj6vZ_=oV_Nc_8oLs0vRzcMGA@mail.gmail.com>
 <CAANLyua3t1JCyUPPopWCjekFm9okhoycbvvFxNwkBNHXN5kgwg@mail.gmail.com>
 <5F1AF0FC.80106@gmail.com>
In-Reply-To: <5F1AF0FC.80106@gmail.com>
Date: Fri, 24 Jul 2020 10:51:31 -0400
Message-ID: <CAANLyuY0Db2CXjRrW9Ht_8AL3RMuRhFde6Zyapq_hvNHm9iHrA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
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
From: Devin Kelly via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Devin Kelly <dwwkelly@gmail.com>
Content-Type: multipart/mixed; boundary="===============6701371990004238582=="
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

--===============6701371990004238582==
Content-Type: multipart/alternative; boundary="00000000000073f7a305ab311cb8"

--00000000000073f7a305ab311cb8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm confused.  The documentation says SPP applies for receiving, I'm
transmitting.

spp: (samples per packet) controls the size of RX packets. When not
specified, the packets are always maximum frame size. Users should specify
this option to request smaller than default packets, probably with the
intention of reducing packet latency.

I also set my tx streamer to this:

    // create a transmit streamer


    uhd::stream_args_t stream_args("fc32", wire); // complex floats


    stream_args.args["spp"] =3D "2000";   // Also tried 200 and 365 here


    uhd::tx_streamer::sptr tx_stream =3D usrp->get_tx_stream(stream_args);

Without any luck.  I also tried setting SPP to 200 and that worked,
tx_stream->get_max_num_samps() returned 200.  Even setting SPP to 365 I
still got 364.

$ ./examples/tx_timed_samples --args=3D"name=3Dnode4" --nsamps 100000 --rat=
e
10e6

Creating the usrp device with: name=3Dnode4...
[INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-39);
Boost_106900; UHD_3.15.0.heads-v3.15.0.0-0-gaea0e2de
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
[WARNING] [GPS] update_cache: Malformed GPSDO string:
EEPN,07116.0483,W,0.0,0.0,240720,,*28
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000=
)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1291 MB/s)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1311 MB/s)
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
tx_stream->get_max_num_samps() =3D 364
...

Devin



On Fri, Jul 24, 2020 at 10:33 AM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 07/24/2020 10:28 AM, Devin Kelly via USRP-users wrote:
>
> OK, I'm not sure what SPP is but I'll find it.
>
> I'm also not using GNU Radio if that's what you mean by "radio block XML
> file".
>
> Thanks again,
> Devin
>
> The "spp" parameter is "samples per packet".  It's a stream argument:
>
> https://files.ettus.com/manual/structuhd_1_1stream__args__t.html
>
>
> On Fri, Jul 24, 2020 at 10:19 AM Rob Kossler <rkossler@nd.edu> wrote:
>
>> spp can be changed in the radio block xml file
>>
>> On Thu, Jul 23, 2020 at 9:20 PM Marcus D Leech via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Try using the Spp parameter in the device ages.
>>>
>>> Sent from my iPhone
>>>
>>> On Jul 23, 2020, at 5:50 PM, Devin Kelly via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>> =EF=BB=BF
>>> Hello,
>>>
>>> I'm having an issue where tx_stream->get_max_num_samps() is returning
>>> 364 (for sc16) despite my MTU being set to 9000.
>>>
>>> I modified tx_timed_samples to print out how many samples I can place i=
n
>>> each packet, the number is always 364.
>>>
>>> 364 samples makes sense for an MTU of 1500 bytes, 364 * 2 * 2 =3D 1456
>>> bytes.  Two bytes per sample, one sample for I and another sample for Q=
.
>>>
>>> $ ./examples/tx_timed_samples --args=3D"name=3Dnode4" --nsamps 100000 -=
-rate
>>> 10e6
>>>
>>> Creating the usrp device with: name=3Dnode4...
>>> [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-39);
>>> Boost_106900; UHD_3.15.0.heads-v3.15.0.0-0-gaea0e2de
>>> [INFO] [X300] X300 initialization sequence...
>>> [INFO] [X300] Maximum frame size: 8000 bytes.
>>> [INFO] [X300] Radio 1x clock: 200 MHz
>>> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
>>> [WARNING] [GPS] update_cache: Malformed GPSDO string: EEPROM Write
>>> Failed!
>>> [WARNING] [GPS] update_cache: Malformed GPSDO string: EEPROM Write
>>> Failed!
>>> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
>>> 0xF1F0D00000000000)
>>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1313 MB/s)
>>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)
>>> [INFO] [0/Radio_0] Initializing block control (NOC ID:
>>> 0x12AD100000000001)
>>> [INFO] [0/Radio_1] Initializing block control (NOC ID:
>>> 0x12AD100000000001)
>>> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000=
)
>>> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000=
)
>>> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000=
)
>>> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000=
)
>>> Using Device: Single USRP:
>>>   Device: X-Series Device
>>>   Mboard 0: X310
>>>   RX Channel: 0
>>>     RX DSP: 0
>>>     RX Dboard: A
>>>     RX Subdev: UBX RX
>>>   RX Channel: 1
>>>     RX DSP: 0
>>>     RX Dboard: B
>>>     RX Subdev: UBX RX
>>>   TX Channel: 0
>>>     TX DSP: 0
>>>     TX Dboard: A
>>>     TX Subdev: UBX TX
>>>   TX Channel: 1
>>>     TX DSP: 0
>>>     TX Dboard: B
>>>     TX Subdev: UBX TX
>>>
>>> Setting TX Rate: 10.000000 Msps...
>>> Actual TX Rate: 10.000000 Msps...
>>>
>>> Setting device timestamp to 0...
>>> tx_stream->get_max_num_samps() =3D 364
>>>
>>> Waiting for async burst ACK... success
>>>
>>> Done!
>>>
>>> I've verified that my interface is using a 9000 byte MTU:
>>>
>>> $ ip l show dev p4p2
>>> 4: p4p2: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc mq state UP
>>> mode DEFAULT group default qlen 4000
>>>     link/ether 00:0a:f7:da:6a:e9 brd ff:ff:ff:ff:ff:ff
>>>
>>> And that it actually works:
>>>
>>> $ ping -I p4p2 -c1 -s 8100 192.168.30.2
>>> PING 192.168.30.2 (192.168.30.2) from 192.168.30.1 p4p2: 8100(8128)
>>> bytes of data.
>>> 8108 bytes from 192.168.30.2: icmp_seq=3D1 ttl=3D32 time=3D23.7 ms
>>>
>>> --- 192.168.30.2 ping statistics ---
>>> 1 packets transmitted, 1 received, 0% packet loss, time 0ms
>>> rtt min/avg/max/mdev =3D 23.705/23.705/23.705/0.000 ms
>>>
>>> Note that the "don't fragment" flag is set:
>>>
>>> $ sudo tcpdump -nn -vv -i p4p2 icmp
>>> tcpdump: listening on p4p2, link-type EN10MB (Ethernet), capture size
>>> 262144 bytes
>>> 17:25:12.973794 IP (tos 0x0, ttl 64, id 5942, offset 0, flags [DF],
>>> proto ICMP (1), length 8128)
>>>     192.168.30.1 > 192.168.30.2: ICMP echo request, id 47608, seq 1,
>>> length 8108
>>> 17:25:12.997481 IP (tos 0x0, ttl 32, id 0, offset 0, flags [DF], proto
>>> ICMP (1), length 8128)
>>>     192.168.30.2 > 192.168.30.1: ICMP echo reply, id 47608, seq 1,
>>> length 8108
>>>
>>>
>>> Strangely though using a slightly larger packet (8300 bytes) my USRP
>>> seems to not respond:
>>>
>>> $ ping -I p4p2 -c1 -s 8300 192.168.30.2
>>> PING 192.168.30.2 (192.168.30.2) from 192.168.30.1 p4p2: 8300(8328)
>>> bytes of data.
>>> ^C
>>> --- 192.168.30.2 ping statistics ---
>>> 1 packets transmitted, 0 received, 100% packet loss, time 0ms
>>>
>>> $ sudo tcpdump -nn -vv -i p4p2 icmp
>>> tcpdump: listening on p4p2, link-type EN10MB (Ethernet), capture size
>>> 262144 bytes
>>> 17:23:03.060789 IP (tos 0x0, ttl 64, id 23157, offset 0, flags [DF],
>>> proto ICMP (1), length 8328)
>>>     192.168.30.1 > 192.168.30.2: ICMP echo request, id 47339, seq 1,
>>> length 8308
>>>
>>>
>>> Do I have to do anything besides simply changing my MTU to get the UHD
>>> to take advantage of jumbo frames?
>>>
>>> Thanks for any help,
>>> Devin
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000073f7a305ab311cb8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m confused.=C2=A0 The documentation says SPP ap=
plies for receiving, I&#39;m transmitting.</div><br><div style=3D"margin-le=
ft:40px">spp: (samples per packet) controls the size of RX packets. When no=
t=20
specified, the packets are always maximum frame size. Users should=20
specify this option to request smaller than default packets, probably=20
with the intention of reducing packet latency.<br></div><div style=3D"margi=
n-left:40px"><br></div><div>I also set my tx streamer to this:</div><div st=
yle=3D"margin-left:40px"><br></div><div style=3D"margin-left:40px"><span st=
yle=3D"font-family:monospace">=C2=A0 =C2=A0 // create a transmit streamer =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<b=
r>=C2=A0 =C2=A0 uhd::stream_args_t stream_args(&quot;fc32&quot;, wire); // =
complex floats =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>=C2=A0 =C2=A0 stream_args.args=
[&quot;spp&quot;] =3D &quot;2000&quot;; =C2=A0 // Also tried 200 and 365 he=
re=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 <br>=C2=A0 =C2=A0 uhd::=
tx_streamer::sptr tx_stream =3D usrp-&gt;get_tx_stream(stream_args); </span=
><br></div><div style=3D"margin-left:40px"><br></div><div>Without any luck.=
=C2=A0 I also tried setting SPP to 200 and that worked, tx_stream-&gt;get_m=
ax_num_samps() returned 200.=C2=A0 Even setting SPP to 365 I still got 364.=
<br></div><div><br></div><div style=3D"margin-left:40px"><span style=3D"fon=
t-family:monospace">$ ./examples/tx_timed_samples --args=3D&quot;name=3Dnod=
e4&quot; --nsamps 100000 --rate 10e6 <br><br>Creating the usrp device with:=
 name=3Dnode4...<br>[INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red=
 Hat 4.8.5-39); Boost_106900; UHD_3.15.0.heads-v3.15.0.0-0-gaea0e2de<br>[IN=
FO] [X300] X300 initialization sequence...<br>[INFO] [X300] Maximum frame s=
ize: 8000 bytes.<br>[INFO] [X300] Radio 1x clock: 200 MHz<br>[INFO] [GPS] F=
ound an internal GPSDO: LC_XO, Firmware Rev 0.929b<br>[WARNING] [GPS] updat=
e_cache: Malformed GPSDO string: EEPN,07116.0483,W,0.0,0.0,240720,,*28<br>[=
INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000)=
<br>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1291 MB/s)<br>[INFO] [0/D=
maFIFO_0] BIST passed (Throughput: 1311 MB/s)<br>[INFO] [0/Radio_0] Initial=
izing block control (NOC ID: 0x12AD100000000001)<br>[INFO] [0/Radio_1] Init=
ializing block control (NOC ID: 0x12AD100000000001)<br>[INFO] [0/DDC_0] Ini=
tializing block control (NOC ID: 0xDDC0000000000000)<br>[INFO] [0/DDC_1] In=
itializing block control (NOC ID: 0xDDC0000000000000)<br>[INFO] [0/DUC_0] I=
nitializing block control (NOC ID: 0xD0C0000000000000)<br>[INFO] [0/DUC_1] =
Initializing block control (NOC ID: 0xD0C0000000000000)<br>Using Device: Si=
ngle USRP:<br>=C2=A0 Device: X-Series Device<br>=C2=A0 Mboard 0: X310<br>=
=C2=A0 RX Channel: 0<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard:=
 A<br>=C2=A0 =C2=A0 RX Subdev: UBX RX<br>=C2=A0 RX Channel: 1<br>=C2=A0 =C2=
=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: B<br>=C2=A0 =C2=A0 RX Subdev: UBX=
 RX<br>=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX =
Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: UBX TX<br>=C2=A0 TX Channel: 1<br>=C2=
=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: B<br>=C2=A0 =C2=A0 TX Subd=
ev: UBX TX<br><br>Setting TX Rate: 10.000000 Msps...<br>Actual TX Rate: 10.=
000000 Msps...<br><br>Setting device timestamp to 0...<br>tx_stream-&gt;get=
_max_num_samps() =3D 364</span></div><div style=3D"margin-left:40px"><span =
style=3D"font-family:monospace">...</span><br></div><div><div><div><div><br=
></div><div>Devin<br></div><div><br></div><div><br></div></div></div></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Fri, Jul 24, 2020 at 10:33 AM Marcus D. Leech via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 07/24/2020 10:28 AM, Devin Kelly via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>OK, I&#39;m not sure what SPP is but I&#39;ll find it.</div>
        <div><br>
        </div>
        <div>I&#39;m also not using GNU Radio if that&#39;s what you mean b=
y
          &quot;radio block XML file&quot;.</div>
        <div><br>
        </div>
        <div>Thanks again,</div>
        <div>Devin<br>
        </div>
      </div>
      <br>
    </blockquote>
    The &quot;spp&quot; parameter is &quot;samples per packet&quot;.=C2=A0 =
It&#39;s a stream
    argument:<br>
    <br>
    <a href=3D"https://files.ettus.com/manual/structuhd_1_1stream__args__t.=
html" target=3D"_blank">https://files.ettus.com/manual/structuhd_1_1stream_=
_args__t.html</a><br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jul 24, 2020 at 10:19
          AM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_=
blank">rkossler@nd.edu</a>&gt; wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">spp can be changed in the radio block xml file</=
div>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 23, 2020 at
              9:20 PM Marcus D Leech via USRP-users &lt;<a href=3D"mailto:u=
srp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>=
&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
              <div dir=3D"auto">Try using the Spp parameter in the device
                ages.=C2=A0<br>
                <br>
                <div dir=3D"ltr">Sent from my iPhone</div>
                <div dir=3D"ltr"><br>
                  <blockquote type=3D"cite">On Jul 23, 2020, at 5:50 PM,
                    Devin Kelly via USRP-users &lt;<a href=3D"mailto:usrp-u=
sers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
                    wrote:<br>
                    <br>
                  </blockquote>
                </div>
                <blockquote type=3D"cite">
                  <div dir=3D"ltr">=EF=BB=BF
                    <div dir=3D"ltr">
                      <div>Hello,</div>
                      <div><br>
                      </div>
                      <div>I&#39;m having an issue where
                        tx_stream-&gt;get_max_num_samps() is returning
                        364 (for sc16) despite my MTU being set to 9000.</d=
iv>
                      <div><br>
                      </div>
                      <div>I modified tx_timed_samples to print out how
                        many samples I can place in each packet, the
                        number is always 364. </div>
                      <div><br>
                      </div>
                      <div>364 samples makes sense for an MTU of 1500
                        bytes, 364 * 2 * 2 =3D 1456 bytes.=C2=A0 Two bytes =
per
                        sample, one sample for I and another sample for
                        Q.<br>
                      </div>
                      <div><br>
                      </div>
                      <div style=3D"margin-left:40px"><span style=3D"font-f=
amily:monospace">$
                          ./examples/tx_timed_samples
                          --args=3D&quot;name=3Dnode4&quot; --nsamps 100000=
 --rate
                          10e6<br>
                          <br>
                          Creating the usrp device with: name=3Dnode4...<br=
>
                          [INFO] [UHD] linux; GNU C++ version 4.8.5
                          20150623 (Red Hat 4.8.5-39); Boost_106900;
                          UHD_3.15.0.heads-v3.15.0.0-0-gaea0e2de<br>
                          [INFO] [X300] X300 initialization sequence...<br>
                          [INFO] [X300] Maximum frame size: 8000 bytes.<br>
                          [INFO] [X300] Radio 1x clock: 200 MHz<br>
                          [INFO] [GPS] Found an internal GPSDO: LC_XO,
                          Firmware Rev 0.929b<br>
                          [WARNING] [GPS] update_cache: Malformed GPSDO
                          string: EEPROM Write Failed!<br>
                          [WARNING] [GPS] update_cache: Malformed GPSDO
                          string: EEPROM Write Failed!<br>
                          [INFO] [0/DmaFIFO_0] Initializing block
                          control (NOC ID: 0xF1F0D00000000000)<br>
                          [INFO] [0/DmaFIFO_0] BIST passed (Throughput:
                          1313 MB/s)<br>
                          [INFO] [0/DmaFIFO_0] BIST passed (Throughput:
                          1306 MB/s)<br>
                          [INFO] [0/Radio_0] Initializing block control
                          (NOC ID: 0x12AD100000000001)<br>
                          [INFO] [0/Radio_1] Initializing block control
                          (NOC ID: 0x12AD100000000001)<br>
                          [INFO] [0/DDC_0] Initializing block control
                          (NOC ID: 0xDDC0000000000000)<br>
                          [INFO] [0/DDC_1] Initializing block control
                          (NOC ID: 0xDDC0000000000000)<br>
                          [INFO] [0/DUC_0] Initializing block control
                          (NOC ID: 0xD0C0000000000000)<br>
                          [INFO] [0/DUC_1] Initializing block control
                          (NOC ID: 0xD0C0000000000000)<br>
                          Using Device: Single USRP:<br>
                          =C2=A0 Device: X-Series Device<br>
                          =C2=A0 Mboard 0: X310<br>
                          =C2=A0 RX Channel: 0<br>
                          =C2=A0 =C2=A0 RX DSP: 0<br>
                          =C2=A0 =C2=A0 RX Dboard: A<br>
                          =C2=A0 =C2=A0 RX Subdev: UBX RX<br>
                          =C2=A0 RX Channel: 1<br>
                          =C2=A0 =C2=A0 RX DSP: 0<br>
                          =C2=A0 =C2=A0 RX Dboard: B<br>
                          =C2=A0 =C2=A0 RX Subdev: UBX RX<br>
                          =C2=A0 TX Channel: 0<br>
                          =C2=A0 =C2=A0 TX DSP: 0<br>
                          =C2=A0 =C2=A0 TX Dboard: A<br>
                          =C2=A0 =C2=A0 TX Subdev: UBX TX<br>
                          =C2=A0 TX Channel: 1<br>
                          =C2=A0 =C2=A0 TX DSP: 0<br>
                          =C2=A0 =C2=A0 TX Dboard: B<br>
                          =C2=A0 =C2=A0 TX Subdev: UBX TX<br>
                          <br>
                          Setting TX Rate: 10.000000 Msps...<br>
                          Actual TX Rate: 10.000000 Msps...<br>
                          <br>
                          Setting device timestamp to 0...<br>
                          tx_stream-&gt;get_max_num_samps() =3D 364</span><=
/div>
                      <div style=3D"margin-left:40px"><span style=3D"font-f=
amily:monospace"><br>
                          Waiting for async burst ACK... success<br>
                          <br>
                          Done!</span></div>
                      <div><span style=3D"font-family:monospace"><br>
                        </span></div>
                      <div><span style=3D"font-family:arial,sans-serif">I&#=
39;ve
                          verified that my interface is using a 9000
                          byte MTU:</span></div>
                      <div><span style=3D"font-family:monospace"><br>
                        </span></div>
                      <div style=3D"margin-left:40px"><span style=3D"font-f=
amily:monospace">$ ip l show dev
                          p4p2</span><br>
                        <span style=3D"font-family:monospace">4: p4p2:
                          &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu
                          9000 qdisc mq state UP mode DEFAULT group
                          default qlen 4000</span><br>
                        <span style=3D"font-family:monospace">=C2=A0 =C2=A0
                          link/ether 00:0a:f7:da:6a:e9 brd
                          ff:ff:ff:ff:ff:ff</span></div>
                      <div><span style=3D"font-family:arial,sans-serif"><br=
>
                        </span></div>
                      <div><span style=3D"font-family:arial,sans-serif">And
                          that it actually works:</span><span style=3D"font=
-family:monospace"><br>
                        </span></div>
                      <div><span style=3D"font-family:monospace"><br>
                        </span>
                        <div style=3D"margin-left:40px"><span style=3D"font=
-family:monospace">$ ping -I p4p2
                            -c1 -s 8100 192.168.30.2 </span><br>
                          <span style=3D"font-family:monospace">PING
                            192.168.30.2 (192.168.30.2) from
                            192.168.30.1 p4p2: 8100(8128) bytes of data.</s=
pan><br>
                          <span style=3D"font-family:monospace">8108 bytes
                            from <a href=3D"http://192.168.30.2" target=3D"=
_blank">192.168.30.2</a>:
                            icmp_seq=3D1 ttl=3D32 time=3D23.7 ms</span><br>
                          <span style=3D"font-family:monospace"></span><br>
                          <span style=3D"font-family:monospace">---
                            192.168.30.2 ping statistics ---</span><br>
                          <span style=3D"font-family:monospace">1 packets
                            transmitted, 1 received, 0% packet loss,
                            time 0ms</span><br>
                          <span style=3D"font-family:monospace">rtt
                            min/avg/max/mdev =3D
                            23.705/23.705/23.705/0.000 ms</span></div>
                      </div>
                      <div><span style=3D"font-family:arial,sans-serif"><br=
>
                        </span></div>
                      <div><span style=3D"font-family:arial,sans-serif">Not=
e
                          that the &quot;don&#39;t fragment&quot; flag is s=
et:</span><span style=3D"font-family:monospace"><br>
                        </span></div>
                      <div style=3D"margin-left:40px"><span style=3D"font-f=
amily:monospace"><br>
                        </span></div>
                      <div style=3D"margin-left:40px"><span style=3D"font-f=
amily:monospace">$ sudo tcpdump
                          -nn -vv -i p4p2 icmp<br>
                          tcpdump: listening on p4p2, link-type EN10MB
                          (Ethernet), capture size 262144 bytes<br>
                          17:25:12.973794 IP (tos 0x0, ttl 64, id 5942,
                          offset 0, flags [DF], proto ICMP (1), length
                          8128)<br>
                          =C2=A0 =C2=A0 192.168.30.1 &gt; <a href=3D"http:/=
/192.168.30.2" target=3D"_blank">192.168.30.2</a>:
                          ICMP echo request, id 47608, seq 1, length
                          8108<br>
                          17:25:12.997481 IP (tos 0x0, ttl 32, id 0,
                          offset 0, flags [DF], proto ICMP (1), length
                          8128)<br>
                          =C2=A0 =C2=A0 192.168.30.2 &gt; <a href=3D"http:/=
/192.168.30.1" target=3D"_blank">192.168.30.1</a>:
                          ICMP echo reply, id 47608, seq 1, length 8108<br>
                        </span></div>
                      <div><span style=3D"font-family:monospace"><br>
                        </span></div>
                      <div><span style=3D"font-family:arial,sans-serif"><br=
>
                        </span></div>
                      <div><span style=3D"font-family:arial,sans-serif">Str=
angely
                          though using a slightly larger packet (8300
                          bytes) my USRP seems to not respond:</span><span =
style=3D"font-family:monospace"><br>
                        </span></div>
                      <div><span style=3D"font-family:monospace"><br>
                        </span></div>
                      <div style=3D"margin-left:40px"><span style=3D"font-f=
amily:monospace">$ ping -I p4p2
                          -c1 -s 8300 192.168.30.2 </span><br>
                        <span style=3D"font-family:monospace">PING
                          192.168.30.2 (192.168.30.2) from 192.168.30.1
                          p4p2: 8300(8328) bytes of data.</span><br>
                        <span style=3D"font-family:monospace">^C</span><br>
                        <span style=3D"font-family:monospace">---
                          192.168.30.2 ping statistics ---</span><br>
                        <span style=3D"font-family:monospace">1 packets
                          transmitted, 0 received, 100% packet loss,
                          time 0ms</span></div>
                      <div><span style=3D"font-family:monospace"><br>
                        </span></div>
                      <div style=3D"margin-left:40px"><span style=3D"font-f=
amily:monospace">$ sudo tcpdump
                          -nn -vv -i p4p2 icmp<br>
                          tcpdump: listening on p4p2, link-type EN10MB
                          (Ethernet), capture size 262144 bytes<br>
                          17:23:03.060789 IP (tos 0x0, ttl 64, id 23157,
                          offset 0, flags [DF], proto ICMP (1), length
                          8328)<br>
                          =C2=A0 =C2=A0 192.168.30.1 &gt; <a href=3D"http:/=
/192.168.30.2" target=3D"_blank">192.168.30.2</a>:
                          ICMP echo request, id 47339, seq 1, length
                          8308<br>
                        </span></div>
                      <div style=3D"margin-left:40px"><br>
                        <span style=3D"font-family:monospace"></span></div>
                      <div style=3D"margin-left:40px"><br>
                      </div>
                      <div><font face=3D"arial,sans-serif">Do I have to do
                          anything besides simply changing my MTU to get
                          the UHD to take advantage of jumbo frames?</font>=
</div>
                      <div><font face=3D"arial,sans-serif"><br>
                        </font></div>
                      <div><font face=3D"arial,sans-serif">Thanks for any
                          help,</font></div>
                      <div><font face=3D"arial,sans-serif">Devin<br>
                        </font></div>
                    </div>
                    <span>_______________________________________________</=
span><br>
                    <span>USRP-users mailing list</span><br>
                    <span><a href=3D"mailto:USRP-users@lists.ettus.com" tar=
get=3D"_blank">USRP-users@lists.ettus.com</a></span><br>
                    <span><a href=3D"http://lists.ettus.com/mailman/listinf=
o/usrp-users_lists.ettus.com" target=3D"_blank">http://lists.ettus.com/mail=
man/listinfo/usrp-users_lists.ettus.com</a></span><br>
                  </div>
                </blockquote>
              </div>
              _______________________________________________<br>
              USRP-users mailing list<br>
              <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blan=
k">USRP-users@lists.ettus.com</a><br>
              <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users=
_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.c=
om/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
            </blockquote>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset></fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000073f7a305ab311cb8--


--===============6701371990004238582==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6701371990004238582==--

