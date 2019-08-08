Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4685486A8F
	for <lists+usrp-users@lfdr.de>; Thu,  8 Aug 2019 21:27:50 +0200 (CEST)
Received: from [::1] (port=50126 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hvo4i-00028N-4m; Thu, 08 Aug 2019 15:27:48 -0400
Received: from mail-ot1-f52.google.com ([209.85.210.52]:37495)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bistromath@gmail.com>)
 id 1hvo4e-00023P-Io
 for usrp-users@lists.ettus.com; Thu, 08 Aug 2019 15:27:44 -0400
Received: by mail-ot1-f52.google.com with SMTP id s20so57684461otp.4
 for <usrp-users@lists.ettus.com>; Thu, 08 Aug 2019 12:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ETya1IHDZWkeUICqizD9BZSboE75Sieli2IpAPeIaes=;
 b=KAz1ugXsErJ6IB6RihEhCTxqX4UPMiV82yKAtfp/jpuaFVZvUgG8T/uKNa6wZUfIao
 ZzyDh3v054j0LyqrbtZ3Y9HpAGkZBrjQ04mqKx4jvKrR+YTT57o/4Ovx7MBKi60F/I1R
 zxX3uIu0XZFUHchWFvBVmetoFrSsNLRocz2qQB4/SfJhC1gyW234OB4ZE1Kw/x0c46tG
 cnfB1N2v2hgw0cm+0HXN1RxD4lpNXV0WHA02zHVUAmS1GS/KxzBtv8E1CWhaaPz1PLTg
 4UYSU28pTCMNRZy4A0HEPfJJjmMDEujZ0Miq6etDMWR4O13J5Pop16yMzas8bOV6rogu
 1gig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ETya1IHDZWkeUICqizD9BZSboE75Sieli2IpAPeIaes=;
 b=db6rYp/xAvd5XrqXPSvpO08YI4urxaNmZnqCSPFPxnr5ZA1WAhhez+ZMXyBgYI+iNE
 nUWgibY3jzjKPb7aTdx1ycRjMtXvUGRGPC9/XauskxsFyk1taavh/QCLs8LJpoxSjOLH
 aLsNUbftMoe0s+BBDasYGVMpeRbKMzvWAP9k9gVgU8Eg5Payq3NpCoxR5mkQuaS+I0SY
 h+4bunTvIwD+U5JnqvvZfyovjNScHp72neCaqs7SAObNqiZF6DIVXgIA6ph18TAKvpzQ
 0CvplP2nL7z7n50f5e9FQol+pJ0kfM4NHlWdo9FtVd+PqiqtP3f7roOjnjdw+hfjYuqH
 us9Q==
X-Gm-Message-State: APjAAAVeMk2fTlX50FBC1omiMfyvv02FVlAl2MWzgKARGBcVHmkMm9Uv
 s8RFZzaALeQJM6M1HJ9KZF5eobki9ZH59BZjXFE=
X-Google-Smtp-Source: APXvYqya7H6EtQWvY7UCtXWvcDk4j4UjXqi18jeqlFLFS0lB8Qscr1I1kxtp1gBBeS1dSID1lt6FD7C62euG3PFH9U0=
X-Received: by 2002:a5d:9908:: with SMTP id x8mr16169472iol.304.1565292423697; 
 Thu, 08 Aug 2019 12:27:03 -0700 (PDT)
MIME-Version: 1.0
References: <97D6F3B6-019A-41A3-A8D6-06D32C15B528@yahoo.com>
 <CADRnH20Zn3eje8HuKxLV3nJhvKBmPpDkNiGcjX2ojVN80VPdiw@mail.gmail.com>
 <7C7EB5C4-8843-4D92-9E3A-65126048DA13@yahoo.com>
 <CADRnH22cZXxKQ6OhavSOdN+bob520J4rzHSOMooosdQcaeiSsA@mail.gmail.com>
 <4FF2A237-C699-4270-B467-A926FF39F208@yahoo.com>
 <CA+JMMq-x7xhKnsYMuG7WwFR7uGui_Fe8HYscO_RyZLkuD97ecw@mail.gmail.com>
 <CA+JMMq_61dwhz=1nQOYEEaiZ05rKR6TeDxb7a0iWjNX13QGPfg@mail.gmail.com>
 <C6A30D56-27FE-4F13-9778-777B1FF64F5D@yahoo.com>
In-Reply-To: <C6A30D56-27FE-4F13-9778-777B1FF64F5D@yahoo.com>
Date: Thu, 8 Aug 2019 12:22:54 -0700
Message-ID: <CA+JMMq_orb37MWM12-1ScE6fKZEZp57VxJD7fi-_MpXTuDg1zQ@mail.gmail.com>
To: Royce Connerley <royceconnerley@yahoo.com>
Subject: Re: [USRP-users] RFNoC Polyphase Channelizer updates
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
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3327291524320613787=="
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

--===============3327291524320613787==
Content-Type: multipart/alternative; boundary="000000000000e25b73058fa00ae0"

--000000000000e25b73058fa00ae0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Last ditch, does your application permit aliasing? I.e., do you need to be
able to receive all four channels simultaneously? It would be
computationally cheap to sample at 5Msps and alias to 1Msps, then filter in
the CPU. You'd have to rotate two of the carriers down to baseband but the
sample rate would be ~20kHz at that point, easily done.

Nick

On Thu, Aug 8, 2019 at 11:55 AM Royce Connerley <royceconnerley@yahoo.com>
wrote:

> Nick:
>
> That was my first approach, but I can=E2=80=99t even fit two DDCs in the =
E310 FPGA.
>
> Royce
>
> On Aug 8, 2019, at 1:36 PM, Nick Foster <bistromath@gmail.com> wrote:
>
> Nevermind, I just saw you're doing it in an E310. Reading is fundamental.
>
> You might consider splitting the problem into a pair of DDCs instead.
>
> Nick
>
> On Thu, Aug 8, 2019 at 11:35 AM Nick Foster <bistromath@gmail.com> wrote:
>
>> Royce,
>>
>> Is there a reason you absolutely need it to be done in RFNoC? This is
>> only 5MHz of bandwidth, and any commodity PC should be able to handle
>> channelizing it in software.
>>
>> Nick
>>
>> On Thu, Aug 8, 2019 at 11:19 AM Royce Connerley via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> EJ:
>>>
>>> I=E2=80=99m currently wanting to receive a total of four channels that =
are 12.5
>>> kHz wide.  The channels are not equally spaced.
>>>
>>> F2 =3D F1 + 1 MHz
>>> F3 =3D F1 + 3.99375 MHz
>>> F4 =3D F3 + 1 MHz
>>>
>>> For this type of system, I typically have a number of channel pairs
>>> (repeater output and input separated by 1 MHz) that I need to monitor.
>>>
>>> Royce
>>>
>>> On Aug 8, 2019, at 8:51 AM, EJ Kreinar <ejkreinar@gmail.com> wrote:
>>>
>>> Hi Royce,
>>>
>>> Can you walk me through your use case real quick?
>>>
>>> - How many channels?
>>> - How wide is each channel?
>>> - Are the channels equally spaced?
>>>
>>> The polyphase channelizer in theseus-cores currently has a static numbe=
r
>>> of "max channels" that get instantiated.... which is not insignificant.
>>> We've discussed exposing a build-time parameter that could scale down t=
he
>>> max number of channels to save some resources, but 1) that hasn't been
>>> implemented yet and 2) I'm not totally confident it would fit in the e3=
10
>>> anyway.
>>>
>>> But lets think through your scenario and we can discuss where we'd need
>>> the channelizer to go for it to work... for example, you probably also =
need
>>> the FPGA-based channel downselection in the channelizer -- the E310 won=
t be
>>> able to return all channels in real time! Or, we could consider other
>>> approaches -- the DDC channelizer in theseus-cores might be workable if=
 you
>>> have just small number of channels and you need arbitrary spacing/chann=
el
>>> widths.
>>>
>>> EJ
>>>
>>> On Thu, Aug 8, 2019, 8:52 AM Royce Connerley <royceconnerley@yahoo.com>
>>> wrote:
>>>
>>>> EJ:
>>>>
>>>> I want to pick a few narrowband channels scattered over about 5 MHz.  =
I
>>>> would like to be able to use your channelizer in an E310.  Do you thin=
k it
>>>> could fit in the E310=E2=80=99s FPGA?  When I run uhd_image_builder wi=
th just the
>>>> channelizer and a FIFO, I=E2=80=99m seeing the following errors:
>>>>
>>>> ERROR: [Place 30-640] Place Check : This design requires more
>>>> RAMB36/FIFO cells than are available in the target device. This design
>>>> requires 324 of such cell types but only 140 compatible sites are avai=
lable
>>>> in the target device. Please analyze your synthesis results and constr=
aints
>>>> to ensure the design is mapped to Xilinx primitives as expected. If so=
,
>>>> please consider targeting a larger device.
>>>> ERROR: [Place 30-640] Place Check : This design requires more RAMB18
>>>> and RAMB36/FIFO cells than are available in the target device. This de=
sign
>>>> requires 703 of such cell types but only 280 compatible sites are avai=
lable
>>>> in the target device. Please analyze your synthesis results and constr=
aints
>>>> to ensure the design is mapped to Xilinx primitives as expected. If so=
,
>>>> please consider targeting a larger device.
>>>> ERROR: [Place 30-640] Place Check : This design requires more RAMB36E1
>>>> cells than are available in the target device. This design requires 32=
4 of
>>>> such cell types but only 140 compatible sites are available in the tar=
get
>>>> device. Please analyze your synthesis results and constraints to ensur=
e the
>>>> design is mapped to Xilinx primitives as expected. If so, please consi=
der
>>>> targeting a larger device.
>>>>
>>>> Royce Connerley
>>>>
>>>> On Jul 24, 2019, at 6:34 PM, EJ Kreinar <ejkreinar@gmail.com> wrote:
>>>>
>>>> Hi Royce,
>>>>
>>>> Phil and I have been working on the channelizer in the theseus-cores
>>>> repo here: gitlab.com/theseus-cores/theseus-cores
>>>>
>>>> The master branch has a (potentially) working channelizer, at least
>>>> according to my recent tests on the x310, as long as the network inter=
face
>>>> supports the desired output rate.
>>>>
>>>> There's also an fpga solution for channel downselection in a branch
>>>> that Phil put together. The ball is in my court to turn the crank and =
merge
>>>> to master with supporting software, but I haven't gotten much of a cha=
nce
>>>> recently.
>>>>
>>>> If you're interested in testing we could definitely use some more
>>>> people to give it a shot :D Let me know if you need a sample bitstream=
 or
>>>> if you can build one yourself.
>>>>
>>>> EJ
>>>>
>>>> On Wed, Jul 24, 2019, 4:39 PM Royce Connerley via USRP-users <
>>>> usrp-users@lists.ettus.com> wrote:
>>>>
>>>>> At the 2018 GRCon, EJ Kreinar spoke about improvements to the RFNoC
>>>>> polyphase channelizer.  Has there been any activity on this?
>>>>>
>>>>> Royce Connerley
>>>>> _______________________________________________
>>>>> USRP-users mailing list
>>>>> USRP-users@lists.ettus.com
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>
>>>>
>>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>

--000000000000e25b73058fa00ae0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Last ditch, does your application permit aliasing? I.=
e., do you need to be able to receive all four channels simultaneously? It =
would be computationally cheap to sample at 5Msps and alias to 1Msps, then =
filter in the CPU. You&#39;d have to rotate two of the carriers down to bas=
eband but the sample rate would be ~20kHz at that point, easily done.</div>=
<div><br></div><div>Nick<br></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Thu, Aug 8, 2019 at 11:55 AM Royce Con=
nerley &lt;<a href=3D"mailto:royceconnerley@yahoo.com">royceconnerley@yahoo=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div style=3D"overflow-wrap: break-word;">Nick:<div><br></div><div>That=
 was my first approach, but I can=E2=80=99t even fit two DDCs in the E310 F=
PGA.</div><div><br></div><div>Royce<br><div><br><blockquote type=3D"cite"><=
div>On Aug 8, 2019, at 1:36 PM, Nick Foster &lt;<a href=3D"mailto:bistromat=
h@gmail.com" target=3D"_blank">bistromath@gmail.com</a>&gt; wrote:</div><br=
 class=3D"gmail-m_-7958931144169970575Apple-interchange-newline"><div><div =
dir=3D"ltr"><div>Nevermind, I just saw you&#39;re doing it in an E310. Read=
ing is fundamental.</div><div><br></div><div>You might consider splitting t=
he problem into a pair of DDCs instead.<br></div><div><br></div><div>Nick<b=
r></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Thu, Aug 8, 2019 at 11:35 AM Nick Foster &lt;<a href=3D"mailto:b=
istromath@gmail.com" target=3D"_blank">bistromath@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div>Royce,</div><div><br></div><div>Is there a reason you absolutely need=
 it to be done in RFNoC? This is only 5MHz of bandwidth, and any commodity =
PC should be able to handle channelizing it in software.</div><div><br></di=
v><div>Nick<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Thu, Aug 8, 2019 at 11:19 AM Royce Connerley via US=
RP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div>EJ:<div><br></div><div>I=E2=80=99m current=
ly wanting to receive a total of four channels that are 12.5 kHz wide.=C2=
=A0 The channels are not equally spaced.</div><div><br></div><div>F2 =3D F1=
 + 1 MHz</div><div>F3 =3D F1 + 3.99375 MHz</div><div>F4 =3D F3 + 1 MHz</div=
><div><br></div><div>For this type of system, I typically have a number of =
channel pairs (repeater output and input separated by 1 MHz) that I need to=
 monitor.<br><div><br></div><div>Royce</div><div><br><blockquote type=3D"ci=
te"><div>On Aug 8, 2019, at 8:51 AM, EJ Kreinar &lt;<a href=3D"mailto:ejkre=
inar@gmail.com" target=3D"_blank">ejkreinar@gmail.com</a>&gt; wrote:</div><=
br class=3D"gmail-m_-7958931144169970575gmail-m_-7263944204764884790gmail-m=
_-7668041020443800314Apple-interchange-newline"><div><div dir=3D"ltr"><div =
dir=3D"auto">Hi Royce,<div dir=3D"auto"><br></div><div dir=3D"auto">Can you=
 walk me through your use case real quick?</div><div dir=3D"auto"><br></div=
><div dir=3D"auto">- How many channels?</div><div dir=3D"auto">- How wide i=
s each channel?</div><div dir=3D"auto">- Are the channels equally spaced?</=
div><div dir=3D"auto"><br></div><div dir=3D"auto">The polyphase channelizer=
 in theseus-cores currently has a static number of &quot;max channels&quot;=
 that get instantiated.... which is not insignificant. We&#39;ve discussed =
exposing a build-time parameter that could scale down the max number of cha=
nnels to save some resources, but 1) that hasn&#39;t been implemented yet a=
nd 2) I&#39;m not totally confident it would fit in the e310 anyway.=C2=A0<=
/div><div dir=3D"auto"><br></div><div>But lets think through your scenario =
and we can discuss where we&#39;d need the channelizer to go for it to work=
... for example, you probably also need the FPGA-based channel downselectio=
n in the channelizer -- the E310 wont be able to return all channels in rea=
l time! Or, we could consider other approaches -- the DDC channelizer in th=
eseus-cores might be workable if you have just small number of channels and=
 you need arbitrary spacing/channel widths.</div><div><br></div><div>EJ</di=
v></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Thu, Aug 8, 2019, 8:52 AM Royce Connerley &lt;<a href=3D"mailto:=
royceconnerley@yahoo.com" target=3D"_blank">royceconnerley@yahoo.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>EJ=
:<div><br></div><div>I want to pick a few narrowband channels scattered ove=
r about 5 MHz.=C2=A0 I would like to be able to use your channelizer in an =
E310.=C2=A0 Do you think it could fit in the E310=E2=80=99s FPGA?=C2=A0 Whe=
n I run uhd_image_builder with just the channelizer and a FIFO, I=E2=80=99m=
 seeing the following errors:</div><div><br></div><div><div>ERROR: [Place 3=
0-640] Place Check : This design requires more RAMB36/FIFO cells than are a=
vailable in the target device. This design requires 324 of such cell types =
but only 140 compatible sites are available in the target device. Please an=
alyze your synthesis results and constraints to ensure the design is mapped=
 to Xilinx primitives as expected. If so, please consider targeting a large=
r device.</div><div>ERROR: [Place 30-640] Place Check : This design require=
s more RAMB18 and RAMB36/FIFO cells than are available in the target device=
. This design requires 703 of such cell types but only 280 compatible sites=
 are available in the target device. Please analyze your synthesis results =
and constraints to ensure the design is mapped to Xilinx primitives as expe=
cted. If so, please consider targeting a larger device.</div><div>ERROR: [P=
lace 30-640] Place Check : This design requires more RAMB36E1 cells than ar=
e available in the target device. This design requires 324 of such cell typ=
es but only 140 compatible sites are available in the target device. Please=
 analyze your synthesis results and constraints to ensure the design is map=
ped to Xilinx primitives as expected. If so, please consider targeting a la=
rger device.</div></div><div><br></div><div>Royce Connerley</div><div><br><=
blockquote type=3D"cite"><div>On Jul 24, 2019, at 6:34 PM, EJ Kreinar &lt;<=
a href=3D"mailto:ejkreinar@gmail.com" rel=3D"noreferrer" target=3D"_blank">=
ejkreinar@gmail.com</a>&gt; wrote:</div><br class=3D"gmail-m_-7958931144169=
970575gmail-m_-7263944204764884790gmail-m_-7668041020443800314gmail-m_-7955=
918035240629135m_-4832231494987881177Apple-interchange-newline"><div><div d=
ir=3D"auto">Hi Royce,<div dir=3D"auto"><br></div><div dir=3D"auto">Phil and=
 I have been working on the channelizer in the theseus-cores repo here: <a =
href=3D"http://gitlab.com/theseus-cores/theseus-cores" rel=3D"noreferrer" t=
arget=3D"_blank">gitlab.com/theseus-cores/theseus-cores</a></div><div dir=
=3D"auto"><br></div><div dir=3D"auto">The master branch has a (potentially)=
 working channelizer, at least according to my recent tests on the x310, as=
 long as the network interface supports the desired output rate.</div><div =
dir=3D"auto"><br></div><div dir=3D"auto">There&#39;s also an fpga solution =
for channel downselection in a branch that Phil put together. The ball is i=
n my court to turn the crank and merge to master with supporting software, =
but I haven&#39;t gotten much of a chance recently.=C2=A0</div><div dir=3D"=
auto"><br></div><div dir=3D"auto">If you&#39;re interested in testing we co=
uld definitely use some more people to give it a shot :D Let me know if you=
 need a sample bitstream or if you can build one yourself.</div><div dir=3D=
"auto"><br></div><div dir=3D"auto">EJ</div><div dir=3D"auto"></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, =
Jul 24, 2019, 4:39 PM Royce Connerley via USRP-users &lt;<a href=3D"mailto:=
usrp-users@lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">usrp-users=
@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">At the 2018 GRCon, EJ Kreinar spoke about improvements to t=
he RFNoC polyphase channelizer.=C2=A0 Has there been any activity on this?<=
br>
<br>
Royce Connerley<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">http://lists=
.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div><br></div></blockquote></div>
</div></blockquote></div><br></div></div>__________________________________=
_____________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</div></blockquote></div><br></div></div></blockquote></div>

--000000000000e25b73058fa00ae0--


--===============3327291524320613787==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3327291524320613787==--

