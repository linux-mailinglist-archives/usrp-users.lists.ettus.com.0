Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FD87231C
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jul 2019 01:35:01 +0200 (CEST)
Received: from [::1] (port=57514 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hq4J9-0008FB-Iw; Tue, 23 Jul 2019 19:34:59 -0400
Received: from mail-qt1-f171.google.com ([209.85.160.171]:36294)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hq4J5-00088P-Nf
 for usrp-users@lists.ettus.com; Tue, 23 Jul 2019 19:34:55 -0400
Received: by mail-qt1-f171.google.com with SMTP id z4so43709474qtc.3
 for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2019 16:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=MCJ6z6UtsvEtZw+7Ifvbd/zLgYN0bHBhh/ZbYiB9+rs=;
 b=ibjZh5e/pG0QLIOLHoXgUdq73c6SOYNCJmkQIyyMe7VgMGQSH0/+EOdI37D2p5VYnW
 TCHono33vkkolZ7XmIQD+rd9ecHG8LjowKDLwrZHlYS6MrnXTvlPaFGp60LzJOcEkqUs
 KLRNCu4xxNC1DFF8ycIIT24BxNl7adY4DSz41563ZntiwlIZwtypbi2dxYtChEQZhoJn
 jRwiMNbjUjdIisNxylW9j4dKea8THZgWQC6kbrVc0ExuDdEHbtViHAUZzlAsYHiKNX6N
 DnRb4RwtRfN9qYADPMXQYrkUuUmaMEp9aYoPVm3MB7Rw8NLps7gRTFxw0ly6/j7ehiR9
 IsdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=MCJ6z6UtsvEtZw+7Ifvbd/zLgYN0bHBhh/ZbYiB9+rs=;
 b=Mb/jnpssponyorsY6O0o6k4bo4ZP69nk+/hIh4cBpFweGyfXuej7EcHKRZ5dJktE8/
 JuXYkFk2vRWy/LNuZkzoeIAf+51BmjhXCbqSQBcC1I+FDZ3jcVk2C0r2ZEmh3I/aUxQO
 igTKa8XnH2mhxAR2JJ0+j7A4p3XNZPQZLEmHsHyJI4kpaDu/kEdmkrv9Hwt2JliQHLk+
 P/SOQYHOZ56CvZk381PlvP/9S0CRMeU0HprnVErZ2ecbepibFMXxFfqUZkkpCs3Lk3yh
 9is2RL+xHjTXQ9GfVRCyPE3usctLNQY85whA7elSd+kckur+OwDlsndCQk9dejJ+GnJZ
 E/mQ==
X-Gm-Message-State: APjAAAU3/Rucc+fJyw4fs6Igzd0mlRX/+tsuEw/aLC6D7Ws87Fe7KbHN
 D7ENopiZeTYwKTcmD3LVkL0=
X-Google-Smtp-Source: APXvYqxMakuMllIXyYRTCV2CHqvUwULYK7I9EQT9Y5Idwq2g8F9jGcJhKwgGiqfKN6BEfgxdsLAbqQ==
X-Received: by 2002:ad4:5283:: with SMTP id v3mr56421208qvr.207.1563924854990; 
 Tue, 23 Jul 2019 16:34:14 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.gmail.com with ESMTPSA id j6sm1547440qtl.85.2019.07.23.16.34.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 16:34:14 -0700 (PDT)
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (16F203)
In-Reply-To: <HK0PR01MB28356667C6C50BC7C37C7153F3C70@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
Date: Tue, 23 Jul 2019 19:34:13 -0400
Message-Id: <06CA772E-8BE6-4BFF-880B-30B7F97492B9@gmail.com>
References: <HK0PR01MB2835921DB0A5915C119C4BE5F3CB0@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
 <CANf970Zt=7PJEOS5a6GsCichToKx=jFOp3o2kGcZQv3zYt8Csg@mail.gmail.com>
 <HK0PR01MB28356667C6C50BC7C37C7153F3C70@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
To: =?utf-8?B?5rGkIOmjng==?= <retina999@hotmail.com>
Subject: Re: [USRP-users] 
 =?utf-8?b?562U5aSNOiAgTjMxMCAiQmFkIENIRFIgb3IgcGFj?=
 =?utf-8?q?ket_fragment=22_Problem?=
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0864083292695618333=="
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


--===============0864083292695618333==
Content-Type: multipart/alternative;
	boundary=Apple-Mail-95C04E48-14E4-4ED2-9392-E7072631F1C8
Content-Transfer-Encoding: 7bit


--Apple-Mail-95C04E48-14E4-4ED2-9392-E7072631F1C8
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Some Ethernet 1g controllers won=E2=80=99t actually do MTUs greater than 150=
0 despite ethnology telling them to. Some Realtek for example.=20

If it=E2=80=99s just 1G try default MTU of 1500 and work your way up to see w=
here it fails.=20

Sent from my iPhone

> On Jul 23, 2019, at 7:15 PM, =E6=B1=A4 =E9=A3=9E via USRP-users <usrp-user=
s@lists.ettus.com> wrote:
>=20
> It=E2=80=99s a  1g SFP0 link. I set MTU  to 8000 according to the Applicat=
ion Note.
> =20
> =E5=8F=91=E4=BB=B6=E4=BA=BA: Sam Reiter <sam.reiter@ettus.com>
> =E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4: Wednesday, July 24, 2019 4:56:21 AM
> =E6=94=B6=E4=BB=B6=E4=BA=BA: =E6=B1=A4 =E9=A3=9E <retina999@hotmail.com>
> =E6=8A=84=E9=80=81: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com=
>
> =E4=B8=BB=E9=A2=98: Re: [USRP-users] N310 "Bad CHDR or packet fragment" Pr=
oblem
> =20
> If you're connected over a 10GbE link, make sure to set your host's MTU ap=
propriately. I set mine to 9000.
>=20
> Sam Reiter=20
> SDR Support Engineer
> Ettus Research
>=20
>=20
>> On Fri, Jul 19, 2019 at 2:21 AM =E6=B1=A4 =E9=A3=9E via USRP-users <usrp-=
users@lists.ettus.com> wrote:
>> Hi, all,
>>=20
>> When benchmarking my N310, I keep getting such [RX FLOW CTRL] errors.=20
>> What causes this and how to solve it?
>>=20
>> Thanks in advance!
>>=20
>> FT
>>=20
>>=20
>> /usr/local/lib/uhd/examples/benchmark_rate  \
>> >    --args "type=3Dn3xx,mgmt_addr=3D192.168.10.2,addr=3D192.168.10.2,mas=
ter_clock_rate=3D122.88e6" \
>> >    --duration 60 \
>> >    --channels "0" \
>> >    --rx_rate 3.84e6 \
>> >    --rx_subdev "A:0" \
>> >    --tx_rate 3.84e6 \
>> >    --tx_subdev "A:0"
>>=20
>> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.14.1.HEAD-=
0-gbfb9c1c7
>> [00:00:00.000014] Creating the usrp device with: type=3Dn3xx,mgmt_addr=3D=
192.168.10.2,addr=3D192.168.10.2,master_clock_rate=3D122.88e6...
>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D=
192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3182B09,claimed=3DFalse,add=
r=3D192.168.10.2,master_clock_rate=3D122.88e6
>> [INFO] [MPM.PeriphManager] init() called with device args `master_clock_r=
ate=3D122.88e6,time_source=3Dinternal,clock_source=3Dinternal,mgmt_addr=3D19=
2.168.10.2,product=3Dn310'.
>> [INFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A0000000000=
4)
>> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000011312=
)
>> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000011312=
)
>> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
>> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
>> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)
>> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000002)
>> [INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)=

>> [INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)=

>> [INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F0000000000000)=

>> [INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)=

>> Using Device: Single USRP:
>>   Device: N300-Series Device
>>   Mboard 0: ni-n3xx-3182B09
>>   RX Channel: 0
>>     RX DSP: 0
>>     RX Dboard: A
>>     RX Subdev: Magnesium
>>   TX Channel: 0
>>     TX DSP: 0
>>     TX Dboard: A
>>     TX Subdev: Magnesium
>>=20
>> [00:00:17.353184] Setting device timestamp to 0...
>> [00:00:17.412187] Testing receive rate 3.840000 Msps on 1 channels
>> [00:00:17.414164] Receiver error: ERROR_CODE_BAD_PACKET
>> [[ERROR] [RX FLOW CTRL] Error unpacking packet: ValueError: Bad CHDR or p=
acket fragment
>>=20
>> [ERROR] [STREAMER] The receive packet handler caught a value exception.
>> ValueError: Bad CHDR or packet fragment
>> 00:00:17.414180] Unexpected error on recv, continuing...
>> [00:00:17.514258] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>> [00:00:17.514312] Receiver error: ERROR_CODE_BAD_PACKET
>> [00:00:17.514317] Unexpected error on recv, continuing...
>> [ERROR] [RX FLOW CTRL] Error unpacking packet: ValueError: Bad CHDR or pa=
cket fragment
>>=20
>> [ERROR] [STREAMER] The receive packet handler caught a value exception.
>> ValueError: Bad CHDR or packet fragment
>> [00:00:17.532991] Testing transmit rate 3.840000 Msps on 1 channels
>> [00:00:17.614329] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>> [00:00:17.614372] Receiver error: ERROR_CODE_BAD_PACKET
>> [00:00:17.614377] Unexpected error on recv, continuing...
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-95C04E48-14E4-4ED2-9392-E7072631F1C8
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Some Ethernet 1g controllers won=E2=80=99t a=
ctually do MTUs greater than 1500 despite ethnology telling them to. Some Re=
altek for example.&nbsp;<div><br></div><div>If it=E2=80=99s just 1G try defa=
ult MTU of 1500 and work your way up to see where it fails.&nbsp;<br><br><di=
v id=3D"AppleMailSignature" dir=3D"ltr">Sent from my iPhone</div><div dir=3D=
"ltr"><br>On Jul 23, 2019, at 7:15 PM, =E6=B1=A4 =E9=A3=9E via USRP-users &l=
t;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</=
a>&gt; wrote:<br><br></div><blockquote type=3D"cite"><div dir=3D"ltr">

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">


<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:DengXian;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML \9884\8BBE\683C\5F0F \5B57\7B26";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:SimSun;}
span.HTML
	{mso-style-name:"HTML \9884\8BBE\683C\5F0F \5B57\7B26";
	mso-style-priority:99;
	mso-style-link:"HTML \9884\8BBE\683C\5F0F";
	font-family:SimSun;}
.MsoChpDefault
	{mso-style-type:export-only;}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">It</span>=E2=80=99<span lang=3D"=
EN-US">s a&nbsp; 1g SFP0 link. I set MTU&nbsp; to 8000 according to the Appl=
ication Note.
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" sty=
le=3D"font-size:11pt" color=3D"#000000"><b>=E5=8F=91=E4=BB=B6=E4=BA=BA:</b> S=
am Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com">sam.reiter@ettus.com</=
a>&gt;<br>
<b>=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4:</b> Wednesday, July 24, 2019 4:56:2=
1 AM<br>
<b>=E6=94=B6=E4=BB=B6=E4=BA=BA:</b> =E6=B1=A4 =E9=A3=9E &lt;<a href=3D"mailt=
o:retina999@hotmail.com">retina999@hotmail.com</a>&gt;<br>
<b>=E6=8A=84=E9=80=81:</b> <a href=3D"mailto:usrp-users@lists.ettus.com">usr=
p-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
">usrp-users@lists.ettus.com</a>&gt;<br>
<b>=E4=B8=BB=E9=A2=98:</b> Re: [USRP-users] N310 "Bad CHDR or packet fragmen=
t" Problem</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">If you're connected over a 10GbE link, make sure to set you=
r host's MTU appropriately. I set mine to 9000.
<div><br clear=3D"all">
<div>
<div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature=
">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">Sam Reiter&nbsp;
<div>SDR Support Engineer</div>
<div>Ettus Research<br>
</div>
</div>
</div>
</div>
</div>
</div>
<br>
</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jul 19, 2019 at 2:21 AM =E6=B1=
=A4 =E9=A3=9E via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">
<div bgcolor=3D"#FFFFFF">
<pre>Hi, all,

When benchmarking my N310, I keep getting such <font color=3D"#CC0000">[RX FL=
OW CTRL]</font> errors.=20
What causes this and how to solve it?

Thanks in advance!

FT


/usr/local/lib/uhd/examples/benchmark_rate  \
&gt;    --args "type=3Dn3xx,mgmt_addr=3D192.168.10.2,addr=3D192.168.10.2,mas=
ter_clock_rate=3D122.88e6" \
&gt;    --duration 60 \
&gt;    --channels "0" \
&gt;    --rx_rate 3.84e6 \
&gt;    --rx_subdev "A:0" \
&gt;    --tx_rate 3.84e6 \
&gt;    --tx_subdev "A:0"

<font color=3D"#4E9A06">[INFO] [UHD] </font>linux; GNU C++ version 7.4.0; Bo=
ost_106501; UHD_3.14.1.HEAD-0-gbfb9c1c7
[00:00:00.000014] Creating the usrp device with: type=3Dn3xx,mgmt_addr=3D192=
.168.10.2,addr=3D192.168.10.2,master_clock_rate=3D122.88e6...
<font color=3D"#4E9A06">[INFO] [MPMD] </font>Initializing 1 device(s) in par=
allel with args: mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D=
3182B09,claimed=3DFalse,addr=3D192.168.10.2,master_clock_rate=3D122.88e6
<font color=3D"#4E9A06">[INFO] [MPM.PeriphManager] </font>init() called with=
 device args `master_clock_rate=3D122.88e6,time_source=3Dinternal,clock_sour=
ce=3Dinternal,mgmt_addr=3D192.168.10.2,product=3Dn310'.
<font color=3D"#4E9A06">[INFO] [0/Replay_0] </font>Initializing block contro=
l (NOC ID: 0x4E91A00000000004)
<font color=3D"#4E9A06">[INFO] [0/Radio_0] </font>Initializing block control=
 (NOC ID: 0x12AD100000011312)
<font color=3D"#4E9A06">[INFO] [0/Radio_1] </font>Initializing block control=
 (NOC ID: 0x12AD100000011312)
<font color=3D"#4E9A06">[INFO] [0/DDC_0] </font>Initializing block control (=
NOC ID: 0xDDC0000000000000)
<font color=3D"#4E9A06">[INFO] [0/DDC_1] </font>Initializing block control (=
NOC ID: 0xDDC0000000000000)
<font color=3D"#4E9A06">[INFO] [0/DUC_0] </font>Initializing block control (=
NOC ID: 0xD0C0000000000002)
<font color=3D"#4E9A06">[INFO] [0/DUC_1] </font>Initializing block control (=
NOC ID: 0xD0C0000000000002)
<font color=3D"#4E9A06">[INFO] [0/FIFO_0] </font>Initializing block control (=
NOC ID: 0xF1F0000000000000)
<font color=3D"#4E9A06">[INFO] [0/FIFO_1] </font>Initializing block control (=
NOC ID: 0xF1F0000000000000)
<font color=3D"#4E9A06">[INFO] [0/FIFO_2] </font>Initializing block control (=
NOC ID: 0xF1F0000000000000)
<font color=3D"#4E9A06">[INFO] [0/FIFO_3] </font>Initializing block control (=
NOC ID: 0xF1F0000000000000)
Using Device: Single USRP:
  Device: N300-Series Device
  Mboard 0: ni-n3xx-3182B09
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: Magnesium
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: Magnesium

[00:00:17.353184] Setting device timestamp to 0...
[00:00:17.412187] Testing receive rate 3.840000 Msps on 1 channels
[00:00:17.414164] Receiver error: ERROR_CODE_BAD_PACKET
[<font color=3D"#CC0000">[ERROR] [RX FLOW CTRL] </font>Error unpacking packe=
t: ValueError: Bad CHDR or packet fragment

<font color=3D"#CC0000">[ERROR] [STREAMER] </font>The receive packet handler=
 caught a value exception.
ValueError: Bad CHDR or packet fragment
00:00:17.414180] Unexpected error on recv, continuing...
[00:00:17.514258] Receiver error: ERROR_CODE_TIMEOUT, continuing...
[00:00:17.514312] Receiver error: ERROR_CODE_BAD_PACKET
[00:00:17.514317] Unexpected error on recv, continuing...
<font color=3D"#CC0000">[ERROR] [RX FLOW CTRL] </font>Error unpacking packet=
: ValueError: Bad CHDR or packet fragment

<font color=3D"#CC0000">[ERROR] [STREAMER] </font>The receive packet handler=
 caught a value exception.
ValueError: Bad CHDR or packet fragment
[00:00:17.532991] Testing transmit rate 3.840000 Msps on 1 channels
[00:00:17.614329] Receiver error: ERROR_CODE_TIMEOUT, continuing...
[00:00:17.614372] Receiver error: ERROR_CODE_BAD_PACKET
[00:00:17.614377] Unexpected error on recv, continuing...
</pre>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>


</div></blockquote><blockquote type=3D"cite"><div dir=3D"ltr"><span>________=
_______________________________________</span><br><span>USRP-users mailing l=
ist</span><br><span><a href=3D"mailto:USRP-users@lists.ettus.com">USRP-users=
@lists.ettus.com</a></span><br><span><a href=3D"http://lists.ettus.com/mailm=
an/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a></span><br></div></blockquote></div></body=
></html>=

--Apple-Mail-95C04E48-14E4-4ED2-9392-E7072631F1C8--


--===============0864083292695618333==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0864083292695618333==--

