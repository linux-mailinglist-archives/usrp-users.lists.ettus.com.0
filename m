Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8192E2E8DF6
	for <lists+usrp-users@lfdr.de>; Sun,  3 Jan 2021 21:00:05 +0100 (CET)
Received: from [::1] (port=59602 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kw9Xm-0007UB-6Q; Sun, 03 Jan 2021 15:00:02 -0500
Received: from mail-qt1-f181.google.com ([209.85.160.181]:36265)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kw9Xi-0007Ob-HW
 for usrp-users@lists.ettus.com; Sun, 03 Jan 2021 14:59:58 -0500
Received: by mail-qt1-f181.google.com with SMTP id z20so17210386qtq.3
 for <usrp-users@lists.ettus.com>; Sun, 03 Jan 2021 11:59:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=MoUpJSZaSclGV3N2a1JbjMWp/XOWoX6z4YYOFGh136U=;
 b=fYslcuFz/LQBMqx3vTJV72GoEI3j4H2Q3xSs764G1AVa8fnP/VtGp2s3NwhY5f/5Lv
 hfKmWduHBGN6ngttTSWeB82VDIM39G58nKCwdF4fyV4vOqH6O8xWEBHaEcWkxfHaiBVZ
 t7PtCGjsqtdKUNMeyINMqN73dLvLTTXoNUqaNk1IZ8RSkoW6yWAvLRrRj+sqo97nWUtw
 qpeFzH3rLiDRruFhZ1PDf4GzkuIKnS8Dt8kf6nWGdRCHo/7oqFPn+onBuyHeOwj12kjd
 WGCI4QkW4cZDC2zkmm+CDv3J8jPBoTovRcIxRvo9XF1wA04YAr17H0MvZXUdpbr0/THc
 xvUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=MoUpJSZaSclGV3N2a1JbjMWp/XOWoX6z4YYOFGh136U=;
 b=IFlBt54rwZWFyqsqNT3IwEWVGrAdKHe9kw7TFvqCpUVGulAqyyq+GWLbZpS/7mBxtc
 t79Jp8gZi56uCsNwfO+rvnj5xSFZFul5pSIKsNtOwgYjWDiHWBTKcEeNDi0wp3ek3oad
 uNxpaRMmQhBaTQeWULE1R8lcOMTM27j9uNxjyLMZEHmyaZ/F7vTZ9oakjT1QmvCe0l+k
 e/8ufXiv536/Gnzvfpps3gso4AggkjNWE8MASf1ppO4xEWUsU7kx4ZfvJx1X0PGjPe94
 X8+IOZ0q0InKlDl/2e9V4YOM7v0FIOP+NwMc8ccuhSYeKnDBpL54IXLK1yAZHJ8vwsIp
 NYXA==
X-Gm-Message-State: AOAM531SZbIFCCgv8+RUBgtr3TqBz8iCUQeU/ZtkLzbleEAap66pXYke
 41/Qdgb2V1rd7rDBG0hL+kMH7iRMWuc=
X-Google-Smtp-Source: ABdhPJyI3zz2yEjoxuydZS3n4lrPkEwsohxxt+ebfHUp3SdQzvq2r0hiaj1tuQC8zUX23US6SJcdOA==
X-Received: by 2002:ac8:488e:: with SMTP id i14mr67731108qtq.372.1609703957850; 
 Sun, 03 Jan 2021 11:59:17 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id y9sm36707527qtm.96.2021.01.03.11.59.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 03 Jan 2021 11:59:17 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Sun, 3 Jan 2021 14:59:16 -0500
Message-Id: <0444A4AE-41E2-4FF9-9ED7-ED1A9A9FE4AA@gmail.com>
References: <CACDReSyX4EEtLfu2uViVwFTU_J=XhP4=_TM_MT1fwBihi5LEqw@mail.gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
In-Reply-To: <CACDReSyX4EEtLfu2uViVwFTU_J=XhP4=_TM_MT1fwBihi5LEqw@mail.gmail.com>
To: Ofer Saferman <ofer@navigicom.com>
X-Mailer: iPhone Mail (18B92)
Subject: Re: [USRP-users] Hacking E310 units for synchronization
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
Content-Type: multipart/mixed; boundary="===============0953657478170927182=="
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


--===============0953657478170927182==
Content-Type: multipart/alternative; boundary=Apple-Mail-EF4FBB8E-76DF-41D2-8FEC-1073D9A797F0
Content-Transfer-Encoding: 7bit


--Apple-Mail-EF4FBB8E-76DF-41D2-8FEC-1073D9A797F0
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

UHD has always been a very generic device API=E2=80=94necessarily so due to t=
he large variety of hardware types in the USRP =E2=80=9Cline up=E2=80=9D.=20=


Having said that there=E2=80=99s nothing that prevents you from diving into t=
he code on both the software and FPGA side to create and expose whatever you=
 want.=20

Sent from my iPhone

> On Jan 3, 2021, at 1:23 PM, Ofer Saferman via USRP-users <usrp-users@lists=
.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hello Marcus,
>=20
> Thank you for your reply.
>=20
> Is there support today in software for direct register writes to the AD936=
1 device for the E310?
> If there is, I think I can use SYNC and a modified firmware to implement M=
ulti-chip synchronization.
>=20
> Regards,
> Ofer Saferman
>=20
>> On Sun, Jan 3, 2021 at 7:00 PM <usrp-users-request@lists.ettus.com> wrote=
:
>> ---------- Forwarded message ----------
>> From: "Marcus D. Leech" <patchvonbraun@gmail.com>
>> To: usrp-users@lists.ettus.com
>> Cc:=20
>> Bcc:=20
>> Date: Sat, 02 Jan 2021 15:18:06 -0500
>> Subject: Re: [USRP-users] Hacking E310 units for synchronization
>> On 01/02/2021 02:44 AM, Ofer Saferman via USRP-users wrote:
>> > Hello,
>> >
>> > I must say that I am a bit frustrated.
>> > When I purchased multiple E310 units it was with the hope I will be=20
>> > able to synchronize them mainly based on:=20
>> > https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devi=
ces,=20
>> > it shows the E310 as MIMO capable and having a reference clock input.
>> > Of course, now I know that not to be true. At least the reference=20
>> > clock part. It seems that the MIMO part might be incorrect as well.
>> >
>> > If I hack the clock and patch an external clock connector to be used=20=

>> > instead of the internal TCXO will I be able, using existing UHD=20
>> > software and firmware, to synchronize multiple E310 units?
>> >
>> > I will be able to provide a common clock to multiple units and I will=20=

>> > be able to provide a 1-PPS signal through the SYNC pins of multiple=20
>> > units that is generated from the same common clock.
>> > I need these E310 to transmit and have their base-band samples=20
>> > perfectly time aligned.
>> >
>> > How is multi-chip synchronization of the AD9361 devices being done by=20=

>> > UHD? By using the SYNC pin and setting=20
>> > usrp->set_time_source("external")? Is it enough? Do I need to handle=20=

>> > it on my own? How?
>> >
>> > I figured the internal TCXO frequency of E310 is 40 MHz. Can I provide=20=

>> > an external clock of different frequency? Maybe 10 MHz? Or does it=20
>> > require a major change in software or firmware?
>> >
>> > Does anybody have a different idea how to get E310 units synchronized=20=

>> > at sample level without voiding the warranty and hacking an external=20=

>> > clock?
>> >
>> > Please help.
>> >
>> > Regards,
>> > Ofer Saferman
>> >
>> >
>> The E310 was never designed for multi-unit MIMO, although it does 2x2=20
>> MIMO just fine, and there are plenty of folks using it for that,
>>    including stacks for various wireless protocols.  The AD9361=20
>> inherently supports 2x2 MIMO due to the shared LO architecture between
>>    the two TX and two RX channels.
>>=20
>> The AD9361 SYNC_IN pin does get tied to the Zynq FPGA, but the UHD=20
>> code-base doesn't use it.    I'll note that for most telecom-type
>>    MIMO implementations, zero-phase-offset is NOT a requirement, just=20
>> ongoing phase coherence.
>>=20
>> Similarly the B2xx series does 2x2 MIMO just fine, but it was never=20
>> designed for multi-unit MIMO, although due to the clocking architecture,
>>    the B2xx could likely (no guarantees) be made to do a multi-unit MIMO=20=

>> implementation.
>>=20
>> The SYNC input connector on the E310 is designed to:
>>=20
>>    (A) Provide a higher longer-term quality than the on-board clock.
>>    (B) Allow for TDM synchronization on system deployments where that is=20=

>> important.
>>=20
>> Due to the high residual phase-noise of the DPLL implementation on the=20=

>> SYNC input on the E310, it cannot be used to produce a working
>>    multi-unit MIMO (or any other kind of phase-coherent) application.
> =20
>=20
> --=20
> This message has been scanned for viruses and=20
> dangerous content by MailScanner, and is=20
> believed to be clean. _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-EF4FBB8E-76DF-41D2-8FEC-1073D9A797F0
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">UHD has always been a very generic device A=
PI=E2=80=94necessarily so due to the large variety of hardware types in the U=
SRP =E2=80=9Cline up=E2=80=9D.&nbsp;<div><br></div><div>Having said that the=
re=E2=80=99s nothing that prevents you from diving into the code on both the=
 software and FPGA side to create and expose whatever you want.&nbsp;<br><br=
><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote t=
ype=3D"cite">On Jan 3, 2021, at 1:23 PM, Ofer Saferman via USRP-users &lt;us=
rp-users@lists.ettus.com&gt; wrote:<br><br></blockquote></div><blockquote ty=
pe=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div dir=3D"ltr">Hell=
o Marcus,</div><div dir=3D"ltr"><br></div><div>Thank you for your reply.</di=
v><div><br></div><div>Is there support today in software for direct register=
 writes to the AD9361 device for the E310?</div><div>If there is, I think I c=
an use SYNC and a modified firmware to implement Multi-chip synchronization.=
<br></div><div><br></div><div>Regards,</div><div>Ofer Saferman<br></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Jan=
 3, 2021 at 7:00 PM &lt;<a href=3D"mailto:usrp-users-request@lists.ettus.com=
">usrp-users-request@lists.ettus.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">---------- Forwarded message ----------<br=
>From:&nbsp;"Marcus D. Leech" &lt;<a href=3D"mailto:patchvonbraun@gmail.com"=
 target=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>To:&nbsp;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.co=
m</a><br>Cc:&nbsp;<br>Bcc:&nbsp;<br>Date:&nbsp;Sat, 02 Jan 2021 15:18:06 -05=
00<br>Subject:&nbsp;Re: [USRP-users] Hacking E310 units for synchronization<=
br>On 01/02/2021 02:44 AM, Ofer Saferman via USRP-users wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I must say that I am a bit frustrated.<br>
&gt; When I purchased multiple E310 units it was with the hope I will be <br=
>
&gt; able to synchronize them mainly based on: <br>
&gt; <a href=3D"https://kb.ettus.com/Synchronization_and_MIMO_Capability_wit=
h_USRP_Devices" rel=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/Sy=
nchronization_and_MIMO_Capability_with_USRP_Devices</a>, <br>
&gt; it shows the E310 as MIMO capable and having a reference clock input.<b=
r>
&gt; Of course, now I know that not to be true. At least the reference <br>
&gt; clock part. It seems that the MIMO part might be incorrect as well.<br>=

&gt;<br>
&gt; If I hack the clock and patch an external clock connector to be used <b=
r>
&gt; instead of the internal TCXO will I be able, using existing UHD <br>
&gt; software and firmware, to synchronize multiple E310 units?<br>
&gt;<br>
&gt; I will be able to provide a common clock to multiple units and I will <=
br>
&gt; be able to provide a 1-PPS signal through the SYNC pins of multiple <br=
>
&gt; units that is generated from the same common clock.<br>
&gt; I need these E310 to transmit and have their base-band samples <br>
&gt; perfectly time aligned.<br>
&gt;<br>
&gt; How is multi-chip synchronization of the AD9361 devices being done by <=
br>
&gt; UHD? By using the SYNC pin and setting <br>
&gt; usrp-&gt;set_time_source("external")? Is it enough? Do I need to handle=
 <br>
&gt; it on my own? How?<br>
&gt;<br>
&gt; I figured the internal TCXO frequency of E310 is 40 MHz. Can I provide <=
br>
&gt; an external clock of different frequency? Maybe 10 MHz? Or does it <br>=

&gt; require a major change in software or firmware?<br>
&gt;<br>
&gt; Does anybody have a different idea how to get E310 units synchronized <=
br>
&gt; at sample level without voiding the warranty and hacking an external <b=
r>
&gt; clock?<br>
&gt;<br>
&gt; Please help.<br>
&gt;<br>
&gt; Regards,<br>
&gt; Ofer Saferman<br>
&gt;<br>
&gt;<br>
The E310 was never designed for multi-unit MIMO, although it does 2x2 <br>
MIMO just fine, and there are plenty of folks using it for that,<br>
&nbsp; &nbsp;including stacks for various wireless protocols.&nbsp; The AD93=
61 <br>
inherently supports 2x2 MIMO due to the shared LO architecture between<br>
&nbsp; &nbsp;the two TX and two RX channels.<br>
<br>
The AD9361 SYNC_IN pin does get tied to the Zynq FPGA, but the UHD <br>
code-base doesn't use it.&nbsp; &nbsp; I'll note that for most telecom-type<=
br>
&nbsp; &nbsp;MIMO implementations, zero-phase-offset is NOT a requirement, j=
ust <br>
ongoing phase coherence.<br>
<br>
Similarly the B2xx series does 2x2 MIMO just fine, but it was never <br>
designed for multi-unit MIMO, although due to the clocking architecture,<br>=

&nbsp; &nbsp;the B2xx could likely (no guarantees) be made to do a multi-uni=
t MIMO <br>
implementation.<br>
<br>
The SYNC input connector on the E310 is designed to:<br>
<br>
&nbsp; &nbsp;(A) Provide a higher longer-term quality than the on-board cloc=
k.<br>
&nbsp; &nbsp;(B) Allow for TDM synchronization on system deployments where t=
hat is <br>
important.<br>
<br>
Due to the high residual phase-noise of the DPLL implementation on the <br>
SYNC input on the E310, it cannot be used to produce a working<br>
&nbsp; &nbsp;multi-unit MIMO (or any other kind of phase-coherent) applicati=
on.<br>
</blockquote><div>&nbsp;</div></div></div>
<br>--=20
<br>This message has been scanned for viruses and
<br>dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br>believed to be clean.

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></body></html>=

--Apple-Mail-EF4FBB8E-76DF-41D2-8FEC-1073D9A797F0--


--===============0953657478170927182==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0953657478170927182==--

