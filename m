Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E5261868F1
	for <lists+usrp-users@lfdr.de>; Thu,  8 Aug 2019 20:41:41 +0200 (CEST)
Received: from [::1] (port=40176 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hvnM2-0007bK-3q; Thu, 08 Aug 2019 14:41:38 -0400
Received: from mail-ot1-f46.google.com ([209.85.210.46]:34746)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bistromath@gmail.com>)
 id 1hvnLx-0007Ty-Rh
 for usrp-users@lists.ettus.com; Thu, 08 Aug 2019 14:41:33 -0400
Received: by mail-ot1-f46.google.com with SMTP id n5so122725683otk.1
 for <usrp-users@lists.ettus.com>; Thu, 08 Aug 2019 11:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nqHT8WV94oSwpR73w8BiLsQnTPZONPUdZ1LBNzwGjDg=;
 b=beRD9N9Hbqjr8/aN9IupUQKj8WuobtzcigjY0rEO1rLx09f08K3VyvNOz5b5ayLAHU
 To1Tq2MgMX5i6BIAxHeZTjuhG3jivBWBmZoz9TwJAASdjGhGEsp1wZPI101tqVuLr74A
 1X9e+Tp5saoqSvPv3ldGsBV8PAaTjdaAqphc0/G8BC8MS+mzQ1khUUDmzlJmRtJLQJuO
 ECeGvOAfWfyZ7Zck9Wy/vqI4wSKuhtn/MKcxDrZ5PbBCCOmgNOb7xHHZGNKozaJalU19
 jmiJIWNGXLpPLXCBuQ2ReiG/gcThIJMGJMcg6O1eGBjEm5cu3FaaZSFKBrhpCI6f/5Sk
 NtwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nqHT8WV94oSwpR73w8BiLsQnTPZONPUdZ1LBNzwGjDg=;
 b=P4f4D8ZM1jd0XS5pA/Iyv2HPXtS3Df2N+ZvtV8MXtEvAfQHrK45HyQaInqgVCA4QzZ
 fNTipUgd7aH5GBMSU4h0quKN4/26U1Xpt9rzsoXVjRLtXq2a33PF1BIrcbXWs9oFJyHq
 OSK1EAYhID+AO/iuMl0SLWeummnNCUfzxtjmt+E+DK8hP3Qqw5kqS2dTVcf6I+Fe4jDT
 TbZNhLOJndz7lAFF9h8eKA2TF9s2Cur7knglHDy3AaflA9QPz/nr2wA0sgLOFIffZ14N
 t+KxmHL4de9/xSinIZGzPjdAOCInLK52MK5DfrsTBhiLvWIIS12a7nWyiWHWD9xHts5g
 NzyA==
X-Gm-Message-State: APjAAAVR8CUSj3NTNQ5d2YpXhG3bbD36fndk052eDCkKteEbWxBa/46N
 60OtlhVBW3kUJQP5aRusLauao8doY67wgTMZXceNtw==
X-Google-Smtp-Source: APXvYqxW8J2P8yDHt9mZzHAbOxV+MmsAteo2Cfxlz6FojQ+kXwuWsl8dAEaRKvgBLXzbF4WFXhLwYxTrdvsXHJKQtok=
X-Received: by 2002:a5e:c914:: with SMTP id z20mr11533717iol.272.1565289653074; 
 Thu, 08 Aug 2019 11:40:53 -0700 (PDT)
MIME-Version: 1.0
References: <97D6F3B6-019A-41A3-A8D6-06D32C15B528@yahoo.com>
 <CADRnH20Zn3eje8HuKxLV3nJhvKBmPpDkNiGcjX2ojVN80VPdiw@mail.gmail.com>
 <7C7EB5C4-8843-4D92-9E3A-65126048DA13@yahoo.com>
 <CADRnH22cZXxKQ6OhavSOdN+bob520J4rzHSOMooosdQcaeiSsA@mail.gmail.com>
 <4FF2A237-C699-4270-B467-A926FF39F208@yahoo.com>
 <CA+JMMq-x7xhKnsYMuG7WwFR7uGui_Fe8HYscO_RyZLkuD97ecw@mail.gmail.com>
In-Reply-To: <CA+JMMq-x7xhKnsYMuG7WwFR7uGui_Fe8HYscO_RyZLkuD97ecw@mail.gmail.com>
Date: Thu, 8 Aug 2019 11:36:43 -0700
Message-ID: <CA+JMMq_61dwhz=1nQOYEEaiZ05rKR6TeDxb7a0iWjNX13QGPfg@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============4667424519420547692=="
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

--===============4667424519420547692==
Content-Type: multipart/alternative; boundary="000000000000be0336058f9f65e9"

--000000000000be0336058f9f65e9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Nevermind, I just saw you're doing it in an E310. Reading is fundamental.

You might consider splitting the problem into a pair of DDCs instead.

Nick

On Thu, Aug 8, 2019 at 11:35 AM Nick Foster <bistromath@gmail.com> wrote:

> Royce,
>
> Is there a reason you absolutely need it to be done in RFNoC? This is onl=
y
> 5MHz of bandwidth, and any commodity PC should be able to handle
> channelizing it in software.
>
> Nick
>
> On Thu, Aug 8, 2019 at 11:19 AM Royce Connerley via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> EJ:
>>
>> I=E2=80=99m currently wanting to receive a total of four channels that a=
re 12.5
>> kHz wide.  The channels are not equally spaced.
>>
>> F2 =3D F1 + 1 MHz
>> F3 =3D F1 + 3.99375 MHz
>> F4 =3D F3 + 1 MHz
>>
>> For this type of system, I typically have a number of channel pairs
>> (repeater output and input separated by 1 MHz) that I need to monitor.
>>
>> Royce
>>
>> On Aug 8, 2019, at 8:51 AM, EJ Kreinar <ejkreinar@gmail.com> wrote:
>>
>> Hi Royce,
>>
>> Can you walk me through your use case real quick?
>>
>> - How many channels?
>> - How wide is each channel?
>> - Are the channels equally spaced?
>>
>> The polyphase channelizer in theseus-cores currently has a static number
>> of "max channels" that get instantiated.... which is not insignificant.
>> We've discussed exposing a build-time parameter that could scale down th=
e
>> max number of channels to save some resources, but 1) that hasn't been
>> implemented yet and 2) I'm not totally confident it would fit in the e31=
0
>> anyway.
>>
>> But lets think through your scenario and we can discuss where we'd need
>> the channelizer to go for it to work... for example, you probably also n=
eed
>> the FPGA-based channel downselection in the channelizer -- the E310 wont=
 be
>> able to return all channels in real time! Or, we could consider other
>> approaches -- the DDC channelizer in theseus-cores might be workable if =
you
>> have just small number of channels and you need arbitrary spacing/channe=
l
>> widths.
>>
>> EJ
>>
>> On Thu, Aug 8, 2019, 8:52 AM Royce Connerley <royceconnerley@yahoo.com>
>> wrote:
>>
>>> EJ:
>>>
>>> I want to pick a few narrowband channels scattered over about 5 MHz.  I
>>> would like to be able to use your channelizer in an E310.  Do you think=
 it
>>> could fit in the E310=E2=80=99s FPGA?  When I run uhd_image_builder wit=
h just the
>>> channelizer and a FIFO, I=E2=80=99m seeing the following errors:
>>>
>>> ERROR: [Place 30-640] Place Check : This design requires more
>>> RAMB36/FIFO cells than are available in the target device. This design
>>> requires 324 of such cell types but only 140 compatible sites are avail=
able
>>> in the target device. Please analyze your synthesis results and constra=
ints
>>> to ensure the design is mapped to Xilinx primitives as expected. If so,
>>> please consider targeting a larger device.
>>> ERROR: [Place 30-640] Place Check : This design requires more RAMB18 an=
d
>>> RAMB36/FIFO cells than are available in the target device. This design
>>> requires 703 of such cell types but only 280 compatible sites are avail=
able
>>> in the target device. Please analyze your synthesis results and constra=
ints
>>> to ensure the design is mapped to Xilinx primitives as expected. If so,
>>> please consider targeting a larger device.
>>> ERROR: [Place 30-640] Place Check : This design requires more RAMB36E1
>>> cells than are available in the target device. This design requires 324=
 of
>>> such cell types but only 140 compatible sites are available in the targ=
et
>>> device. Please analyze your synthesis results and constraints to ensure=
 the
>>> design is mapped to Xilinx primitives as expected. If so, please consid=
er
>>> targeting a larger device.
>>>
>>> Royce Connerley
>>>
>>> On Jul 24, 2019, at 6:34 PM, EJ Kreinar <ejkreinar@gmail.com> wrote:
>>>
>>> Hi Royce,
>>>
>>> Phil and I have been working on the channelizer in the theseus-cores
>>> repo here: gitlab.com/theseus-cores/theseus-cores
>>>
>>> The master branch has a (potentially) working channelizer, at least
>>> according to my recent tests on the x310, as long as the network interf=
ace
>>> supports the desired output rate.
>>>
>>> There's also an fpga solution for channel downselection in a branch tha=
t
>>> Phil put together. The ball is in my court to turn the crank and merge =
to
>>> master with supporting software, but I haven't gotten much of a chance
>>> recently.
>>>
>>> If you're interested in testing we could definitely use some more peopl=
e
>>> to give it a shot :D Let me know if you need a sample bitstream or if y=
ou
>>> can build one yourself.
>>>
>>> EJ
>>>
>>> On Wed, Jul 24, 2019, 4:39 PM Royce Connerley via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> At the 2018 GRCon, EJ Kreinar spoke about improvements to the RFNoC
>>>> polyphase channelizer.  Has there been any activity on this?
>>>>
>>>> Royce Connerley
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>
>>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000be0336058f9f65e9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Nevermind, I just saw you&#39;re doing it in an E310.=
 Reading is fundamental.</div><div><br></div><div>You might consider splitt=
ing the problem into a pair of DDCs instead.<br></div><div><br></div><div>N=
ick<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Thu, Aug 8, 2019 at 11:35 AM Nick Foster &lt;<a href=3D"mai=
lto:bistromath@gmail.com">bistromath@gmail.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Royce,<=
/div><div><br></div><div>Is there a reason you absolutely need it to be don=
e in RFNoC? This is only 5MHz of bandwidth, and any commodity PC should be =
able to handle channelizing it in software.</div><div><br></div><div>Nick<b=
r></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Thu, Aug 8, 2019 at 11:19 AM Royce Connerley via USRP-users &lt;=
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div>EJ:<div><br></div><div>I=E2=80=99m currently wanting to=
 receive a total of four channels that are 12.5 kHz wide.=C2=A0 The channel=
s are not equally spaced.</div><div><br></div><div>F2 =3D F1 + 1 MHz</div><=
div>F3 =3D F1 + 3.99375 MHz</div><div>F4 =3D F3 + 1 MHz</div><div><br></div=
><div>For this type of system, I typically have a number of channel pairs (=
repeater output and input separated by 1 MHz) that I need to monitor.<br><d=
iv><br></div><div>Royce</div><div><br><blockquote type=3D"cite"><div>On Aug=
 8, 2019, at 8:51 AM, EJ Kreinar &lt;<a href=3D"mailto:ejkreinar@gmail.com"=
 target=3D"_blank">ejkreinar@gmail.com</a>&gt; wrote:</div><br class=3D"gma=
il-m_-7263944204764884790gmail-m_-7668041020443800314Apple-interchange-newl=
ine"><div><div dir=3D"ltr"><div dir=3D"auto">Hi Royce,<div dir=3D"auto"><br=
></div><div dir=3D"auto">Can you walk me through your use case real quick?<=
/div><div dir=3D"auto"><br></div><div dir=3D"auto">- How many channels?</di=
v><div dir=3D"auto">- How wide is each channel?</div><div dir=3D"auto">- Ar=
e the channels equally spaced?</div><div dir=3D"auto"><br></div><div dir=3D=
"auto">The polyphase channelizer in theseus-cores currently has a static nu=
mber of &quot;max channels&quot; that get instantiated.... which is not ins=
ignificant. We&#39;ve discussed exposing a build-time parameter that could =
scale down the max number of channels to save some resources, but 1) that h=
asn&#39;t been implemented yet and 2) I&#39;m not totally confident it woul=
d fit in the e310 anyway.=C2=A0</div><div dir=3D"auto"><br></div><div>But l=
ets think through your scenario and we can discuss where we&#39;d need the =
channelizer to go for it to work... for example, you probably also need the=
 FPGA-based channel downselection in the channelizer -- the E310 wont be ab=
le to return all channels in real time! Or, we could consider other approac=
hes -- the DDC channelizer in theseus-cores might be workable if you have j=
ust small number of channels and you need arbitrary spacing/channel widths.=
</div><div><br></div><div>EJ</div></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Aug 8, 2019, 8:52 AM Royce =
Connerley &lt;<a href=3D"mailto:royceconnerley@yahoo.com" target=3D"_blank"=
>royceconnerley@yahoo.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div>EJ:<div><br></div><div>I want to pick a few n=
arrowband channels scattered over about 5 MHz.=C2=A0 I would like to be abl=
e to use your channelizer in an E310.=C2=A0 Do you think it could fit in th=
e E310=E2=80=99s FPGA?=C2=A0 When I run uhd_image_builder with just the cha=
nnelizer and a FIFO, I=E2=80=99m seeing the following errors:</div><div><br=
></div><div><div>ERROR: [Place 30-640] Place Check : This design requires m=
ore RAMB36/FIFO cells than are available in the target device. This design =
requires 324 of such cell types but only 140 compatible sites are available=
 in the target device. Please analyze your synthesis results and constraint=
s to ensure the design is mapped to Xilinx primitives as expected. If so, p=
lease consider targeting a larger device.</div><div>ERROR: [Place 30-640] P=
lace Check : This design requires more RAMB18 and RAMB36/FIFO cells than ar=
e available in the target device. This design requires 703 of such cell typ=
es but only 280 compatible sites are available in the target device. Please=
 analyze your synthesis results and constraints to ensure the design is map=
ped to Xilinx primitives as expected. If so, please consider targeting a la=
rger device.</div><div>ERROR: [Place 30-640] Place Check : This design requ=
ires more RAMB36E1 cells than are available in the target device. This desi=
gn requires 324 of such cell types but only 140 compatible sites are availa=
ble in the target device. Please analyze your synthesis results and constra=
ints to ensure the design is mapped to Xilinx primitives as expected. If so=
, please consider targeting a larger device.</div></div><div><br></div><div=
>Royce Connerley</div><div><br><blockquote type=3D"cite"><div>On Jul 24, 20=
19, at 6:34 PM, EJ Kreinar &lt;<a href=3D"mailto:ejkreinar@gmail.com" rel=
=3D"noreferrer" target=3D"_blank">ejkreinar@gmail.com</a>&gt; wrote:</div><=
br class=3D"gmail-m_-7263944204764884790gmail-m_-7668041020443800314gmail-m=
_-7955918035240629135m_-4832231494987881177Apple-interchange-newline"><div>=
<div dir=3D"auto">Hi Royce,<div dir=3D"auto"><br></div><div dir=3D"auto">Ph=
il and I have been working on the channelizer in the theseus-cores repo her=
e: <a href=3D"http://gitlab.com/theseus-cores/theseus-cores" rel=3D"norefer=
rer" target=3D"_blank">gitlab.com/theseus-cores/theseus-cores</a></div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">The master branch has a (potentia=
lly) working channelizer, at least according to my recent tests on the x310=
, as long as the network interface supports the desired output rate.</div><=
div dir=3D"auto"><br></div><div dir=3D"auto">There&#39;s also an fpga solut=
ion for channel downselection in a branch that Phil put together. The ball =
is in my court to turn the crank and merge to master with supporting softwa=
re, but I haven&#39;t gotten much of a chance recently.=C2=A0</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">If you&#39;re interested in testing w=
e could definitely use some more people to give it a shot :D Let me know if=
 you need a sample bitstream or if you can build one yourself.</div><div di=
r=3D"auto"><br></div><div dir=3D"auto">EJ</div><div dir=3D"auto"></div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On W=
ed, Jul 24, 2019, 4:39 PM Royce Connerley via USRP-users &lt;<a href=3D"mai=
lto:usrp-users@lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">At the 2018 GRCon, EJ Kreinar spoke about improvements =
to the RFNoC polyphase channelizer.=C2=A0 Has there been any activity on th=
is?<br>
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

--000000000000be0336058f9f65e9--


--===============4667424519420547692==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4667424519420547692==--

