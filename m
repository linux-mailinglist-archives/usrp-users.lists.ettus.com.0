Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D76F22C7F2
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jul 2020 16:29:19 +0200 (CEST)
Received: from [::1] (port=44654 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyyhI-0003lP-Jr; Fri, 24 Jul 2020 10:29:16 -0400
Received: from mail-oo1-f47.google.com ([209.85.161.47]:41509)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dwwkelly@gmail.com>) id 1jyyhE-0003aK-CQ
 for usrp-users@lists.ettus.com; Fri, 24 Jul 2020 10:29:12 -0400
Received: by mail-oo1-f47.google.com with SMTP id z23so1844668ood.8
 for <usrp-users@lists.ettus.com>; Fri, 24 Jul 2020 07:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=3c32V6vxKnMSgpRQsnCktNfiiFw5HCkn07Ist19WW40=;
 b=OJsqOpkFuDLxyoo2W5L3hGZxwWYcVBAFztWQE4ikzX1pLfmvkyA7kuitq5MBUra7mj
 PfSsZIb36tojK/5KYs73fj32c/1Fys251jBUVifk/4w0jOSvDVTJGT4Q4oaDgqvII3rn
 jhvRUzi4A0A75IdT5z3nctvzqiEIxjQ+FEL/CwTKPb3R50MxJaARyiweCzWHdUbNiEV+
 hA7EX8UcmGPyeazPS0pOpDEeOve+3AL9YhQ/rRbcA6Huqe/EMIjm0yOvX7Ef4s5eYrjb
 EyJ/U5LUiVgPflHZoOwplllCiCbBxR0neob+sTo7JnOZ57eK5feGBfQ4MctnE8O4ZJc3
 9dfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=3c32V6vxKnMSgpRQsnCktNfiiFw5HCkn07Ist19WW40=;
 b=YxBvtYjkNj5i/z9xZaTPP9v+mV0hFzwAQdJZkTQ1mBDHlVkPfPDa9VBa/9e+LNYL9l
 jJj+Q12Hz49XQBSfsgo7pz1sunqMeD+h98BuKh86FfI+Oe/uUC6rPA1xaulEfrOcs0Fr
 A1uZdArruXR1k1vAqRYZEZjLK3SpbLdw5gT1sOQsmRFrmDZV8KdGx4UVbSA2WNy6n/7r
 lSBxuuwYH9DiO4kGMEe2trCBEbaG5YSZsoTXwjp6N0mJUf2BoJtXnJUA22UhFJvV17Vk
 gSXugHfYCst7YPsN3zu/IguHLt5X7iZrdeMa6XxLbwIvWY/Hgx6WrX9NbastXn7vGOo6
 OSKg==
X-Gm-Message-State: AOAM530nq22fCRWb8dI/6bKG6BO6BprYjsgFkHk/Vd+iqXX8BOl5R15w
 3UsKba2nIkCyp9mqlZfiDIiJOaAmb/FEoodiKqG62Q==
X-Google-Smtp-Source: ABdhPJysRNf3QaOmLyppm+atqj+yEXSTjU392LV1icxlshVspyHri8/iJQqUm2UiXJaz91KaRTdfJrHPBplS4m4as4s=
X-Received: by 2002:a4a:a21d:: with SMTP id m29mr9635189ool.17.1595600911336; 
 Fri, 24 Jul 2020 07:28:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAANLyua6xgH+TsH2bqmKLMu4buMm93QqYQ-JPy+vd4F9aB26SA@mail.gmail.com>
 <81D12D30-8BD2-4ED2-906C-E9F7F08B2B82@gmail.com>
 <CAB__hTTc80gTmTWXK2GnsBQpdAj6vZ_=oV_Nc_8oLs0vRzcMGA@mail.gmail.com>
In-Reply-To: <CAB__hTTc80gTmTWXK2GnsBQpdAj6vZ_=oV_Nc_8oLs0vRzcMGA@mail.gmail.com>
Date: Fri, 24 Jul 2020 10:28:20 -0400
Message-ID: <CAANLyua3t1JCyUPPopWCjekFm9okhoycbvvFxNwkBNHXN5kgwg@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============8075459415428000307=="
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

--===============8075459415428000307==
Content-Type: multipart/alternative; boundary="00000000000086091605ab30c955"

--00000000000086091605ab30c955
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

OK, I'm not sure what SPP is but I'll find it.

I'm also not using GNU Radio if that's what you mean by "radio block XML
file".

Thanks again,
Devin

On Fri, Jul 24, 2020 at 10:19 AM Rob Kossler <rkossler@nd.edu> wrote:

> spp can be changed in the radio block xml file
>
> On Thu, Jul 23, 2020 at 9:20 PM Marcus D Leech via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Try using the Spp parameter in the device ages.
>>
>> Sent from my iPhone
>>
>> On Jul 23, 2020, at 5:50 PM, Devin Kelly via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>> =EF=BB=BF
>> Hello,
>>
>> I'm having an issue where tx_stream->get_max_num_samps() is returning 36=
4
>> (for sc16) despite my MTU being set to 9000.
>>
>> I modified tx_timed_samples to print out how many samples I can place in
>> each packet, the number is always 364.
>>
>> 364 samples makes sense for an MTU of 1500 bytes, 364 * 2 * 2 =3D 1456
>> bytes.  Two bytes per sample, one sample for I and another sample for Q.
>>
>> $ ./examples/tx_timed_samples --args=3D"name=3Dnode4" --nsamps 100000 --=
rate
>> 10e6
>>
>> Creating the usrp device with: name=3Dnode4...
>> [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-39);
>> Boost_106900; UHD_3.15.0.heads-v3.15.0.0-0-gaea0e2de
>> [INFO] [X300] X300 initialization sequence...
>> [INFO] [X300] Maximum frame size: 8000 bytes.
>> [INFO] [X300] Radio 1x clock: 200 MHz
>> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
>> [WARNING] [GPS] update_cache: Malformed GPSDO string: EEPROM Write Faile=
d!
>> [WARNING] [GPS] update_cache: Malformed GPSDO string: EEPROM Write Faile=
d!
>> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
>> 0xF1F0D00000000000)
>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1313 MB/s)
>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)
>> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD10000000000=
1)
>> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD10000000000=
1)
>> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
>> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
>> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
>> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
>> Using Device: Single USRP:
>>   Device: X-Series Device
>>   Mboard 0: X310
>>   RX Channel: 0
>>     RX DSP: 0
>>     RX Dboard: A
>>     RX Subdev: UBX RX
>>   RX Channel: 1
>>     RX DSP: 0
>>     RX Dboard: B
>>     RX Subdev: UBX RX
>>   TX Channel: 0
>>     TX DSP: 0
>>     TX Dboard: A
>>     TX Subdev: UBX TX
>>   TX Channel: 1
>>     TX DSP: 0
>>     TX Dboard: B
>>     TX Subdev: UBX TX
>>
>> Setting TX Rate: 10.000000 Msps...
>> Actual TX Rate: 10.000000 Msps...
>>
>> Setting device timestamp to 0...
>> tx_stream->get_max_num_samps() =3D 364
>>
>> Waiting for async burst ACK... success
>>
>> Done!
>>
>> I've verified that my interface is using a 9000 byte MTU:
>>
>> $ ip l show dev p4p2
>> 4: p4p2: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc mq state UP
>> mode DEFAULT group default qlen 4000
>>     link/ether 00:0a:f7:da:6a:e9 brd ff:ff:ff:ff:ff:ff
>>
>> And that it actually works:
>>
>> $ ping -I p4p2 -c1 -s 8100 192.168.30.2
>> PING 192.168.30.2 (192.168.30.2) from 192.168.30.1 p4p2: 8100(8128) byte=
s
>> of data.
>> 8108 bytes from 192.168.30.2: icmp_seq=3D1 ttl=3D32 time=3D23.7 ms
>>
>> --- 192.168.30.2 ping statistics ---
>> 1 packets transmitted, 1 received, 0% packet loss, time 0ms
>> rtt min/avg/max/mdev =3D 23.705/23.705/23.705/0.000 ms
>>
>> Note that the "don't fragment" flag is set:
>>
>> $ sudo tcpdump -nn -vv -i p4p2 icmp
>> tcpdump: listening on p4p2, link-type EN10MB (Ethernet), capture size
>> 262144 bytes
>> 17:25:12.973794 IP (tos 0x0, ttl 64, id 5942, offset 0, flags [DF], prot=
o
>> ICMP (1), length 8128)
>>     192.168.30.1 > 192.168.30.2: ICMP echo request, id 47608, seq 1,
>> length 8108
>> 17:25:12.997481 IP (tos 0x0, ttl 32, id 0, offset 0, flags [DF], proto
>> ICMP (1), length 8128)
>>     192.168.30.2 > 192.168.30.1: ICMP echo reply, id 47608, seq 1,
>> length 8108
>>
>>
>> Strangely though using a slightly larger packet (8300 bytes) my USRP
>> seems to not respond:
>>
>> $ ping -I p4p2 -c1 -s 8300 192.168.30.2
>> PING 192.168.30.2 (192.168.30.2) from 192.168.30.1 p4p2: 8300(8328) byte=
s
>> of data.
>> ^C
>> --- 192.168.30.2 ping statistics ---
>> 1 packets transmitted, 0 received, 100% packet loss, time 0ms
>>
>> $ sudo tcpdump -nn -vv -i p4p2 icmp
>> tcpdump: listening on p4p2, link-type EN10MB (Ethernet), capture size
>> 262144 bytes
>> 17:23:03.060789 IP (tos 0x0, ttl 64, id 23157, offset 0, flags [DF],
>> proto ICMP (1), length 8328)
>>     192.168.30.1 > 192.168.30.2: ICMP echo request, id 47339, seq 1,
>> length 8308
>>
>>
>> Do I have to do anything besides simply changing my MTU to get the UHD t=
o
>> take advantage of jumbo frames?
>>
>> Thanks for any help,
>> Devin
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--00000000000086091605ab30c955
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>OK, I&#39;m not sure what SPP is but I&#39;ll find it=
.</div><div><br></div><div>I&#39;m also not using GNU Radio if that&#39;s w=
hat you mean by &quot;radio block XML file&quot;.</div><div><br></div><div>=
Thanks again,</div><div>Devin<br></div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jul 24, 2020 at 10:19 AM Rob=
 Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr">spp can be changed in the radio block xml file</div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 23, 2020 at =
9:20 PM Marcus D Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@list=
s.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">=
Try using the Spp parameter in the device ages.=C2=A0<br><br><div dir=3D"lt=
r">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">=
On Jul 23, 2020, at 5:50 PM, Devin Kelly via USRP-users &lt;<a href=3D"mail=
to:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com=
</a>&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div di=
r=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I&=
#39;m having an issue where tx_stream-&gt;get_max_num_samps() is returning =
364 (for sc16) despite my MTU being set to 9000.</div><div><br></div><div>I=
 modified tx_timed_samples to print out how many samples I can place in eac=
h packet, the number is always 364. </div><div><br></div><div>364 samples m=
akes sense for an MTU of 1500 bytes, 364 * 2 * 2 =3D 1456 bytes.=C2=A0 Two =
bytes per sample, one sample for I and another sample for Q.<br></div><div>=
<br></div><div style=3D"margin-left:40px"><span style=3D"font-family:monosp=
ace">$ ./examples/tx_timed_samples --args=3D&quot;name=3Dnode4&quot; --nsam=
ps 100000 --rate 10e6<br><br>Creating the usrp device with: name=3Dnode4...=
<br>[INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-39); =
Boost_106900; UHD_3.15.0.heads-v3.15.0.0-0-gaea0e2de<br>[INFO] [X300] X300 =
initialization sequence...<br>[INFO] [X300] Maximum frame size: 8000 bytes.=
<br>[INFO] [X300] Radio 1x clock: 200 MHz<br>[INFO] [GPS] Found an internal=
 GPSDO: LC_XO, Firmware Rev 0.929b<br>[WARNING] [GPS] update_cache: Malform=
ed GPSDO string: EEPROM Write Failed!<br>[WARNING] [GPS] update_cache: Malf=
ormed GPSDO string: EEPROM Write Failed!<br>[INFO] [0/DmaFIFO_0] Initializi=
ng block control (NOC ID: 0xF1F0D00000000000)<br>[INFO] [0/DmaFIFO_0] BIST =
passed (Throughput: 1313 MB/s)<br>[INFO] [0/DmaFIFO_0] BIST passed (Through=
put: 1306 MB/s)<br>[INFO] [0/Radio_0] Initializing block control (NOC ID: 0=
x12AD100000000001)<br>[INFO] [0/Radio_1] Initializing block control (NOC ID=
: 0x12AD100000000001)<br>[INFO] [0/DDC_0] Initializing block control (NOC I=
D: 0xDDC0000000000000)<br>[INFO] [0/DDC_1] Initializing block control (NOC =
ID: 0xDDC0000000000000)<br>[INFO] [0/DUC_0] Initializing block control (NOC=
 ID: 0xD0C0000000000000)<br>[INFO] [0/DUC_1] Initializing block control (NO=
C ID: 0xD0C0000000000000)<br>Using Device: Single USRP:<br>=C2=A0 Device: X=
-Series Device<br>=C2=A0 Mboard 0: X310<br>=C2=A0 RX Channel: 0<br>=C2=A0 =
=C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: =
UBX RX<br>=C2=A0 RX Channel: 1<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 =
RX Dboard: B<br>=C2=A0 =C2=A0 RX Subdev: UBX RX<br>=C2=A0 TX Channel: 0<br>=
=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX S=
ubdev: UBX TX<br>=C2=A0 TX Channel: 1<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =
=C2=A0 TX Dboard: B<br>=C2=A0 =C2=A0 TX Subdev: UBX TX<br><br>Setting TX Ra=
te: 10.000000 Msps...<br>Actual TX Rate: 10.000000 Msps...<br><br>Setting d=
evice timestamp to 0...<br>tx_stream-&gt;get_max_num_samps() =3D 364</span>=
</div><div style=3D"margin-left:40px"><span style=3D"font-family:monospace"=
><br>Waiting for async burst ACK... success<br><br>Done!</span></div><div><=
span style=3D"font-family:monospace"><br></span></div><div><span style=3D"f=
ont-family:arial,sans-serif">I&#39;ve verified that my interface is using a=
 9000 byte MTU:</span></div><div><span style=3D"font-family:monospace"><br>=
</span></div><div style=3D"margin-left:40px"><span style=3D"font-family:mon=
ospace">$ ip l show dev p4p2</span><br><span style=3D"font-family:monospace=
">4: p4p2: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 9000 qdisc mq state =
UP mode DEFAULT group default qlen 4000</span><br><span style=3D"font-famil=
y:monospace">=C2=A0 =C2=A0 link/ether 00:0a:f7:da:6a:e9 brd ff:ff:ff:ff:ff:=
ff</span></div><div><span style=3D"font-family:arial,sans-serif"><br></span=
></div><div><span style=3D"font-family:arial,sans-serif">And that it actual=
ly works:</span><span style=3D"font-family:monospace"><br></span></div><div=
><span style=3D"font-family:monospace"><br></span><div style=3D"margin-left=
:40px"><span style=3D"font-family:monospace">$ ping -I p4p2 -c1 -s 8100 192=
.168.30.2 </span><br><span style=3D"font-family:monospace">PING 192.168.30.=
2 (192.168.30.2) from 192.168.30.1 p4p2: 8100(8128) bytes of data.</span><b=
r><span style=3D"font-family:monospace">8108 bytes from <a href=3D"http://1=
92.168.30.2" target=3D"_blank">192.168.30.2</a>: icmp_seq=3D1 ttl=3D32 time=
=3D23.7 ms</span><br><span style=3D"font-family:monospace"></span><br><span=
 style=3D"font-family:monospace">--- 192.168.30.2 ping statistics ---</span=
><br><span style=3D"font-family:monospace">1 packets transmitted, 1 receive=
d, 0% packet loss, time 0ms</span><br><span style=3D"font-family:monospace"=
>rtt min/avg/max/mdev =3D 23.705/23.705/23.705/0.000 ms</span></div></div><=
div><span style=3D"font-family:arial,sans-serif"><br></span></div><div><spa=
n style=3D"font-family:arial,sans-serif">Note that the &quot;don&#39;t frag=
ment&quot; flag is set:</span><span style=3D"font-family:monospace"><br></s=
pan></div><div style=3D"margin-left:40px"><span style=3D"font-family:monosp=
ace"><br></span></div><div style=3D"margin-left:40px"><span style=3D"font-f=
amily:monospace">$ sudo tcpdump -nn -vv -i p4p2 icmp<br>tcpdump: listening =
on p4p2, link-type EN10MB (Ethernet), capture size 262144 bytes<br>17:25:12=
.973794 IP (tos 0x0, ttl 64, id 5942, offset 0, flags [DF], proto ICMP (1),=
 length 8128)<br>=C2=A0 =C2=A0 192.168.30.1 &gt; <a href=3D"http://192.168.=
30.2" target=3D"_blank">192.168.30.2</a>: ICMP echo request, id 47608, seq =
1, length 8108<br>17:25:12.997481 IP (tos 0x0, ttl 32, id 0, offset 0, flag=
s [DF], proto ICMP (1), length 8128)<br>=C2=A0 =C2=A0 192.168.30.2 &gt; <a =
href=3D"http://192.168.30.1" target=3D"_blank">192.168.30.1</a>: ICMP echo =
reply, id 47608, seq 1, length 8108<br></span></div><div><span style=3D"fon=
t-family:monospace"><br></span></div><div><span style=3D"font-family:arial,=
sans-serif"><br></span></div><div><span style=3D"font-family:arial,sans-ser=
if">Strangely though using a slightly larger packet (8300 bytes) my USRP se=
ems to not respond:</span><span style=3D"font-family:monospace"><br></span>=
</div><div><span style=3D"font-family:monospace"><br></span></div><div styl=
e=3D"margin-left:40px"><span style=3D"font-family:monospace">$ ping -I p4p2=
 -c1 -s 8300 192.168.30.2 </span><br><span style=3D"font-family:monospace">=
PING 192.168.30.2 (192.168.30.2) from 192.168.30.1 p4p2: 8300(8328) bytes o=
f data.</span><br><span style=3D"font-family:monospace">^C</span><br><span =
style=3D"font-family:monospace">--- 192.168.30.2 ping statistics ---</span>=
<br><span style=3D"font-family:monospace">1 packets transmitted, 0 received=
, 100% packet loss, time 0ms</span></div><div><span style=3D"font-family:mo=
nospace"><br></span></div><div style=3D"margin-left:40px"><span style=3D"fo=
nt-family:monospace">$ sudo tcpdump -nn -vv -i p4p2 icmp<br>tcpdump: listen=
ing on p4p2, link-type EN10MB (Ethernet), capture size 262144 bytes<br>17:2=
3:03.060789 IP (tos 0x0, ttl 64, id 23157, offset 0, flags [DF], proto ICMP=
 (1), length 8328)<br>=C2=A0 =C2=A0 192.168.30.1 &gt; <a href=3D"http://192=
.168.30.2" target=3D"_blank">192.168.30.2</a>: ICMP echo request, id 47339,=
 seq 1, length 8308<br></span></div><div style=3D"margin-left:40px"><br><sp=
an style=3D"font-family:monospace"></span></div><div style=3D"margin-left:4=
0px"><br></div><div><font face=3D"arial,sans-serif">Do I have to do anythin=
g besides simply changing my MTU to get the UHD to take advantage of jumbo =
frames?</font></div><div><font face=3D"arial,sans-serif"><br></font></div><=
div><font face=3D"arial,sans-serif">Thanks for any help,</font></div><div><=
font face=3D"arial,sans-serif">Devin<br></font></div></div>
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
</blockquote></div>

--00000000000086091605ab30c955--


--===============8075459415428000307==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8075459415428000307==--

