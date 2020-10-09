Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 362CA289A1A
	for <lists+usrp-users@lfdr.de>; Fri,  9 Oct 2020 23:02:12 +0200 (CEST)
Received: from [::1] (port=35810 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kQzWh-0000cI-Gk; Fri, 09 Oct 2020 17:02:07 -0400
Received: from mail-lj1-f174.google.com ([209.85.208.174]:43076)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <sam.reiter8@gmail.com>)
 id 1kQzWe-0000Sw-0g
 for usrp-users@lists.ettus.com; Fri, 09 Oct 2020 17:02:04 -0400
Received: by mail-lj1-f174.google.com with SMTP id d24so7892021ljg.10
 for <usrp-users@lists.ettus.com>; Fri, 09 Oct 2020 14:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j6lAb7aAEEJU+VKW0CLUu5hySMNFCG4fvHiIXxIpglU=;
 b=g85hfC7oCr3zivFEBBujbNHjnhMzWQSYDu0QHhvbm83Wh+L0t/WoniOdeJjEHFTewv
 LRPtw6GKDZzddPX1KOMSlkDzh3A+fWnlMKyuGDBkOmZWZQ5DLj3Cu9EmCXsGYQEhiXt+
 CS4/diKLzyaqlbii8Ccw9lqzx1k2oBobF0aq7ZSnkEfkIbD2nl5CsreJdEv88iM/RD2u
 XhowWoL/xFPqfqC+5jJdnNiVyGY/6T1P7yQYyFSCFPNFDIOhaDtn+NF1J9JIv9qiBdI3
 HZAaYwLPwe8CHVNVCZ0fdh9fbGUN6RnafSN8ujQKB2/bOoMivjpV9zZlPK+qPPyYm9/X
 kiVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j6lAb7aAEEJU+VKW0CLUu5hySMNFCG4fvHiIXxIpglU=;
 b=ZjH8Kt1z9F1SaFvscYCydyU9VgeHcB3p9/hH6LX6SUj2oCmrJuVM2720YR2GyIJALe
 JkUAASwVmXLf4g5EpnAlDoYnSoWkw8NxJJiXwIPEwQZnrfzKSM286D5QCGXc+dUrBwxY
 wvLIJ7O3peLhutHwDTvzEHHO2GeKmyp6kXOhhC7FaeXy1XiUy2U7nsH+hXXQbgIbCOn/
 1ZDRKsj/2xIOdLHeXYOZgXESFHLCAFp54lo8nEHtcVyL5SU9r1tw5n7xnQh/Ha/FtTw9
 jBRKI3MOv946XipfZxzBusqVUI9n7AL4iGP/DGrQCs7GDA0xe7furkj9qc+iYcrlcrkP
 YBCw==
X-Gm-Message-State: AOAM531Ec/d3LR4ls3NJBFZXXEh98UQXgPA3aP30Vw+DQ4J0B3M9W4DD
 0vpvbSpQbbkvGSYgSe3p+7RpWzhmRbiK5z6bKMs=
X-Google-Smtp-Source: ABdhPJwBKxnuvpBZJquq5C8IBSDyuLh3I2WWa58JdLO9uX8+fOy4M2Fze6ugsNdnkTBmJP2tH9ImuNnlfDD2p37wLl8=
X-Received: by 2002:a2e:84c7:: with SMTP id q7mr310299ljh.415.1602277282524;
 Fri, 09 Oct 2020 14:01:22 -0700 (PDT)
MIME-Version: 1.0
References: <977DB5BC614A438B9066262CBAEDBC75@PC1> <5F7DF8FA.707@gmail.com>
 <1316B17C73CD4E78A29C851758B9424F@PC1> <5F7F603B.3040102@gmail.com>
 <8BDDB039BE74418FA519715D5BB4062B@PC1> <5F7F6B9B.708@gmail.com>
 <6249823C72E244DD9001466CBCA8DA74@PC1>
In-Reply-To: <6249823C72E244DD9001466CBCA8DA74@PC1>
Date: Fri, 9 Oct 2020 16:01:11 -0500
Message-ID: <CADBWrHj=QU-+f_KOKWji8UGSKmWOMVC1KY+KneyRM4A6cox4ig@mail.gmail.com>
To: "David Taylor (manx.net)" <drtaylor@manx.net>
Subject: Re: [USRP-users] B210 USRP object creation
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter8@gmail.com>
Cc: "usrp-users \(usrp-users@lists.ettus.com\)" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8520250252253714610=="
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

--===============8520250252253714610==
Content-Type: multipart/alternative; boundary="00000000000041b09405b14340cb"

--00000000000041b09405b14340cb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

David,

To clarify, you used "write-vid" and "write-pid" arguments with
UHD b2xx_fx3_utils  [1] to convert your NI-2901 to a B210 using the VID and
PID values found in the "About the Motherboard and Daughtercard EEPROM on
USRP Devices" KB [2]. Correct? And after changing these values, you are no
longer able to reach the device using uhd_find_devices? Does the behavior
change if you feed in arguments for the unit's serial number? e.g.
uhd_find_devices --args serial=3D<xxxxx>

If memory serves, I'd expect you to still be able to find the device with
uhd_find_devices irrespective of the programmed VID and PID. However, those
values are necessary for basically anything else as they're used to
determine the FPGA image that is loaded onto the unit at runtime.

[1]
https://github.com/EttusResearch/uhd/blob/master/host/utils/b2xx_fx3_utils.=
cpp
[2]
https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPROM_on_USRP_=
Devices#USB_VID.2FPID

On Fri, Oct 9, 2020 at 10:09 AM David Taylor (manx.net) via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Marcus,
>
> Thanks again.
>
> I am using the GRC as a test-bed for writing gr-code as the flow-graph
> method promotes well defined partitioning of the signal processing
> functions, including of course the UHD interface.
>
> The project which I may have mentioned previously is Direct Sequence
> Spread Spectrum based and GRC C++ OOT blocks have been developed. These
> generate PRN sequences for transmission and then acquire and track the
> carrier and PRN code phases in a modular receiver.
> Much of the concept development can therefore be done using the GRC
> stand-alone or using the USRP in RF loopback with a simple BPSK
> modulator/demodulator pair.
>
> I am aware of the GRC scheduler shortcomings particularly in terms of
> throughput timing stability, however for now, some form of primitive acce=
ss
> to the UHD hardware is required for external timing event signalling
> through the GPIO.
>
> I will have look at some of Balint Seeber=E2=80=99s old code and run some=
 of the
> UHD test code as suggested.
>
> Finally to add to my woes, the B210 is no longer =E2=80=9Cfound=E2=80=9D =
after my vid and
> pid experiment.
> USB finds the device with the vid and pid as written, but it can no longe=
r
> be accessed through UHD application. I have tried carefully editing the
> uhd-usrp.rules file to comply with the new pid value, but without success=
.
> Perhaps a cautionary warning should be added to the EEPROM on USRP device=
s
> note!
>
> Regards,
> David
>
>
>
> *From:* Marcus D. Leech via USRP-users
> *Sent:* Thursday, October 8, 2020 8:42 PM
> *To:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] B210 USRP object creation
>
> On 10/08/2020 03:33 PM, David Taylor (manx.net) via USRP-users wrote:
>
> Point taken. - I didn=E2=80=99t actually check the original default value=
s of the
> VID and PID, but they were reset according to the table provided, so that
> they could be tested as arguments in the make statement below.
> =E2=80=9CAbout the Motherboard and Daughtercard EEPROM on USRP Devices (5=
th August
> 2020)=E2=80=9D
>
> The aim is to be able to manipulate some GPIO bits in the block work
> function and to align events using the 1PPS input.
>
> Regards,
> David GD4FMB
>
>
> Ok, so presumably you're using Gnu Radio, since you're talking about
> "block work functions".
>
> So this issue straddles the two universes--UHD/USRP and Gnu Radio.
>
> I'd encourage you to use the UHD test tools to confirm sanity of your
> setup and then move on to a stupid-simple flow-graph with standard
>   blocks.  Once THAT works, then one can think about grabbing the usrp
> source/sink "object" and being able to use it in your own
>   processing "block".   There used to be a way to do this even within GRC
> but I fear that it was a custom block (perhaps from the old
>   gr-balint set of blocks) that would allow you to grab an object handle
> and pass it as a variable into your own functions.
>
> It's something I've wanted to do myself from time to time.   Of course if
> you're coding in "naked" GR, without using GRC, it's easy.
>   But GRC uses a "data flow" model, and is less "procedural", so it gives
> an added layer of abstraction that makes it difficult to do
>   what you want to do.   The gr-uhd module provides GPIO functions:
>
>
> https://www.gnuradio.org/doc/doxygen-v3.7.9.1/classgr_1_1uhd_1_1usrp__blo=
ck.html#ab09502e1c8c43a546616b9a998f137f1
>
> But they aren't exposed in any meaningful way into GRC that I know of.
>
> I'll note that in GR3.9, there is support for something called "code
> snippets" which would let you "dip down into the lower layers" without
>   having to post-facto edit generated Python code.
>
>
> ------------------------------
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

--00000000000041b09405b14340cb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">David,<div><br></div><div>To clarify, you used &quot;write=
-vid&quot; and &quot;write-pid&quot; arguments with UHD=C2=A0b2xx_fx3_utils=
 =C2=A0[1] to convert your NI-2901 to a B210 using the VID and PID values f=
ound in the &quot;About the Motherboard and Daughtercard EEPROM on USRP Dev=
ices&quot; KB [2]. Correct? And after changing=C2=A0these values, you are n=
o longer able to reach the device using uhd_find_devices? Does the behavior=
 change if you feed in arguments for the unit&#39;s serial number? e.g. uhd=
_find_devices --args serial=3D&lt;xxxxx&gt;</div><div><br></div><div>If mem=
ory serves, I&#39;d expect you to still be able to find the device with uhd=
_find_devices irrespective of the programmed VID and PID. However, those va=
lues are necessary for basically anything else as they&#39;re used to deter=
mine the FPGA image that is loaded onto the unit at runtime.</div><div><br>=
</div><div>[1]=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/blob/ma=
ster/host/utils/b2xx_fx3_utils.cpp">https://github.com/EttusResearch/uhd/bl=
ob/master/host/utils/b2xx_fx3_utils.cpp</a></div><div>[2]=C2=A0<a href=3D"h=
ttps://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPROM_on_USRP_D=
evices#USB_VID.2FPID">https://kb.ettus.com/About_the_Motherboard_and_Daught=
ercard_EEPROM_on_USRP_Devices#USB_VID.2FPID</a></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 9, 2020 =
at 10:09 AM David Taylor (<a href=3D"http://manx.net">manx.net</a>) via USR=
P-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.=
ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">

<div dir=3D"ltr" bgcolor=3D"#ffffff">
<div dir=3D"ltr">
<div style=3D"font-size:12pt;font-family:Calibri;color:rgb(0,0,0)">
<div>Marcus,</div>
<div>=C2=A0</div>
<div>Thanks again.</div>
<div>=C2=A0</div>
<div>I am using the GRC as a test-bed for writing gr-code as the flow-graph=
=20
method promotes well defined partitioning of the signal processing function=
s,=20
including of course the UHD interface.</div>
<div>=C2=A0</div>
<div>The project which I may have mentioned previously is Direct Sequence S=
pread=20
Spectrum based and GRC C++ OOT blocks have been developed. These generate P=
RN=20
sequences for transmission and then acquire and track the carrier and PRN c=
ode=20
phases in a modular receiver.</div>
<div>Much of the concept development can therefore be done using the GRC=20
stand-alone or using the USRP in RF loopback with a simple BPSK=20
modulator/demodulator pair.</div>
<div>=C2=A0</div>
<div>I am aware of the GRC scheduler shortcomings particularly in terms of=
=20
throughput timing stability, however for now, some form of primitive access=
 to=20
the UHD hardware is required for external timing event signalling through t=
he=20
GPIO.</div>
<div>=C2=A0</div>
<div>I will have look at some of Balint Seeber=E2=80=99s old code and run s=
ome of the=20
UHD test code as suggested.</div>
<div>=C2=A0</div>
<div>Finally to add to my woes, the B210 is no longer =E2=80=9Cfound=E2=80=
=9D after my vid and=20
pid experiment.</div>
<div>USB finds the device with the vid and pid as written, but it can no lo=
nger=20
be accessed through UHD application. I have tried carefully editing the=20
uhd-usrp.rules file to comply with the new pid value, but without success.<=
/div>
<div>Perhaps a cautionary warning should be added to the EEPROM on USRP dev=
ices=20
note!</div>
<div>=C2=A0</div>
<div>Regards,</div>
<div>David</div>
<div>=C2=A0</div>
<div>=C2=A0</div>
<div style=3D"font-size:small;text-decoration:none;font-family:Calibri;font=
-weight:normal;color:rgb(0,0,0);font-style:normal;display:inline">
<div style=3D"font:10pt tahoma">
<div>=C2=A0</div>
<div style=3D"background:rgb(245,245,245)">
<div><b>From:</b> <a title=3D"usrp-users@lists.ettus.com">Marcus D. Leech v=
ia USRP-users</a> </div>
<div><b>Sent:</b> Thursday, October 8, 2020 8:42 PM</div>
<div><b>To:</b> <a title=3D"usrp-users@lists.ettus.com">usrp-users@lists.et=
tus.com</a> </div>
<div><b>Subject:</b> Re: [USRP-users] B210 USRP object=20
creation</div></div></div>
<div>=C2=A0</div></div>
<div style=3D"font-size:small;text-decoration:none;font-family:Calibri;font=
-weight:normal;color:rgb(0,0,0);font-style:normal;display:inline">
<div>On 10/08/2020 03:33 PM, David Taylor (<a href=3D"http://manx.net" targ=
et=3D"_blank">manx.net</a>) via=20
USRP-users wrote:<br></div>
<blockquote type=3D"cite">
  <div dir=3D"ltr">
  <div style=3D"font-size:12pt;font-family:Calibri;color:rgb(0,0,0)">
  <div>Point taken. - I didn=E2=80=99t actually check the original default =
values of the=20
  VID and PID, but they were reset according to the table provided, so that=
 they=20
  could be tested as arguments in the make statement below.</div>
  <div>=E2=80=9CAbout the Motherboard and Daughtercard EEPROM on USRP Devic=
es (5th=20
  August 2020)=E2=80=9D</div>
  <div>=C2=A0</div>
  <div>The aim is to be able to manipulate some GPIO bits in the block work=
=20
  function and to align events using the 1PPS input.</div>
  <div>=C2=A0</div>
  <div>Regards,</div>
  <div>David GD4FMB</div>
  <div>=C2=A0</div></div></div></blockquote>Ok, so presumably you&#39;re us=
ing Gnu=20
Radio, since you&#39;re talking about &quot;block work functions&quot;.<br>=
<br>So this issue=20
straddles the two universes--UHD/USRP and Gnu Radio.<br><br>I&#39;d encoura=
ge you to=20
use the UHD test tools to confirm sanity of your setup and then move on to =
a=20
stupid-simple flow-graph with standard<br>=C2=A0 blocks.=C2=A0 Once THAT wo=
rks,=20
then one can think about grabbing the usrp source/sink &quot;object&quot; a=
nd being able=20
to use it in your own<br>=C2=A0 processing &quot;block&quot;.=C2=A0=C2=A0 T=
here used to be=20
a way to do this even within GRC but I fear that it was a custom block (per=
haps=20
from the old<br>=C2=A0 gr-balint set of blocks) that would allow you to gra=
b an=20
object handle and pass it as a variable into your own functions.<br><br>It&=
#39;s=20
something I&#39;ve wanted to do myself from time to time.=C2=A0=C2=A0 Of co=
urse if=20
you&#39;re coding in &quot;naked&quot; GR, without using GRC, it&#39;s easy=
.<br>=C2=A0 But GRC=20
uses a &quot;data flow&quot; model, and is less &quot;procedural&quot;, so =
it gives an added layer=20
of abstraction that makes it difficult to do<br>=C2=A0 what you want to=20
do.=C2=A0=C2=A0 The gr-uhd module provides GPIO functions:<br><br><a href=
=3D"https://www.gnuradio.org/doc/doxygen-v3.7.9.1/classgr_1_1uhd_1_1usrp__b=
lock.html#ab09502e1c8c43a546616b9a998f137f1" target=3D"_blank">https://www.=
gnuradio.org/doc/doxygen-v3.7.9.1/classgr_1_1uhd_1_1usrp__block.html#ab0950=
2e1c8c43a546616b9a998f137f1</a><br><br>But=20
they aren&#39;t exposed in any meaningful way into GRC that I know of.<br><=
br>I&#39;ll=20
note that in GR3.9, there is support for something called &quot;code snippe=
ts&quot; which=20
would let you &quot;dip down into the lower layers&quot; without<br>=C2=A0 =
having to=20
post-facto edit generated Python code.<br><br><br>
<p>
</p><hr>
_______________________________________________<br>USRP-users mailing=20
list<br><a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USR=
P-users@lists.ettus.com</a><br><a href=3D"http://lists.ettus.com/mailman/li=
stinfo/usrp-users_lists.ettus.com" target=3D"_blank">http://lists.ettus.com=
/mailman/listinfo/usrp-users_lists.ettus.com</a><br><p></p></div></div></di=
v></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000041b09405b14340cb--


--===============8520250252253714610==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8520250252253714610==--

