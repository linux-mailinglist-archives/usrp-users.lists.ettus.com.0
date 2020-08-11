Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 443C3241F85
	for <lists+usrp-users@lfdr.de>; Tue, 11 Aug 2020 20:07:13 +0200 (CEST)
Received: from [::1] (port=51614 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k5Yg2-0002UK-Mu; Tue, 11 Aug 2020 14:07:10 -0400
Received: from mail-ed1-f54.google.com ([209.85.208.54]:40794)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ejkreinar@gmail.com>) id 1k5Yfy-0002Ni-VD
 for usrp-users@lists.ettus.com; Tue, 11 Aug 2020 14:07:07 -0400
Received: by mail-ed1-f54.google.com with SMTP id a14so9765766edx.7
 for <usrp-users@lists.ettus.com>; Tue, 11 Aug 2020 11:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A9LorqvYYwEmbdrFJMpA0Ve6DK/pDQa4NfahpQhlC3c=;
 b=oDgvz3vDp6LfCg1uPA6X8GGpBMDStlwqhv9F6ISm0OVsWAFKVxjkl86pShAVVHLJZ9
 xwYnefXO3u+NJf7FzJweTxX6yHkrl5oi4+Lpu8uEOS6RS+2flRGjKD4fo880lB0j5Mn2
 lHHZ6TAR07GmbrkeTfcKKcSVFTp6Ew5C/vFk3PhcLvFmqI3koFQY6bPzLKRa/mDLhUFu
 WXuA5wSEz4T/dWiipC6c03nSQ8Ei+hplAbjQrRtPx8bDqrFgelcFn8e7bFMDiMpHVQ55
 zlIScUSWpu4vY6pnUXI/fcL6kbS29hklfrO2tA+wGCG8YFDn+iNuppwL9QP98EjMscPS
 k5NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A9LorqvYYwEmbdrFJMpA0Ve6DK/pDQa4NfahpQhlC3c=;
 b=LO4LNBBJP0HHK3Y7oNRSTr9MqeuNDjkHSRroq4/UaSvxo4D+QzcXGFCY0/oFMNFSC7
 j+dv7dpNrgTjraRaOUtHocCTFAsqYSAJFAe10txLFgR3sa6rzjBQAxQqQzwD/WlOf1FR
 TjC3R50KitvnMUzLOMo5ZlQ0iCGcSBXWIyn+WvXeV1fE0epXBTDaJdWn6CzJZvUaP+Nn
 eC/uhcan4KfSI+7dTqSvg/Zv5g1t6lViNGGj2hAlA/TTkZYDJETOFZ66vRvRCfwgo3SF
 VQ1XqgM9yRzP1OQwOD8tLg/MPlvZYxFCCQIiWsGr8FzjET+62xBO7EFalQZwzrfefDOn
 MkZA==
X-Gm-Message-State: AOAM532ZwO2g1B5NgUUkc9jGZFXtnTG+A7CegDPqMzMKncw5kUFeU8H2
 Xo8L/QA9WiVQECdyRrTQU0+PTG30ajYlt87gGE4=
X-Google-Smtp-Source: ABdhPJxRc0E+3744DkNkTi9hutn/qXBf6t2jvv8GDzWo/cT3wS9evNMIXyv1QQ7cDkSFgFg6n3W34TrddbfQJpjbMpY=
X-Received: by 2002:aa7:cd07:: with SMTP id b7mr28515003edw.172.1597169185779; 
 Tue, 11 Aug 2020 11:06:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAE_Rk55Bde-UiKK93hR-RGU5VpJGS7eoBB_2pe-bMw_Evd=1KQ@mail.gmail.com>
 <CAEXYVK6cxU9WufzXn10i5QQh3-QBSo9UDmDBkt5VpVg=++30Xg@mail.gmail.com>
In-Reply-To: <CAEXYVK6cxU9WufzXn10i5QQh3-QBSo9UDmDBkt5VpVg=++30Xg@mail.gmail.com>
Date: Tue, 11 Aug 2020 14:06:13 -0400
Message-ID: <CADRnH20GdrSjLT6numqLcPNhgsOPtx+hPBuq5cgjx4O7q=FBaA@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Subject: Re: [USRP-users] =?utf-8?b?cmZub2MgcXVlc3Rpb25zOuKAj+KAjw==?=
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
From: EJ Kreinar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: EJ Kreinar <ejkreinar@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0284563965930834406=="
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

--===============0284563965930834406==
Content-Type: multipart/alternative; boundary="000000000000f6f44305ac9dedea"

--000000000000f6f44305ac9dedea
Content-Type: text/plain; charset="UTF-8"

Agree on all points.

A few further thoughts:

> I saw in the article (" Measured Latency Introduced by RFNoC
Architecture" )that the nocshell and the axi wrapper have a big latency
(100nanosec and 1.7microsec) . There is a way to drop down the latency ?

First, I probably would not classify 100 me as "high latency"-- if your ce
clock is at 200 MHz that's just 20 clock cycles! Not too bad.

Second, the root cause of the large latency from the cited paper is because
the crossbar is fundamentally a N-to-N "packetized" switch.... Before any
data goes onto the crossbar, the noc_shell accumulates a full packet of
data within a fifo in the noc_shell and then the entire packet is sent to
the crossbar at the bus_clk rate. An easy way to decrease the latency, at
the expense of more overhead, is to simply decrease the packet size.
(There's some lower limits here... a packet size of like 4-10 would
probably be troublesome, but I've heard 60ish is a reasonable number and
should decrease latency down to 300 nanoseconds or so assuming ce_clk 200
MHz)

If you would like to fully AVOID the overhead of the packetized crossbar
because you need absolute minimal latency, you could theoretically add
side-channels between rfnoc blocks, or insert your logic into a different
part of the design (like the radio block, perhaps). I have heard of these
strategies working for some people, but I really wouldn't recommend that
for a beginner rfnoc user since you would effectively break all the helpful
utilities that come along with rfnoc as-is (automatic builds,
reusability/modularity of rfnoc blocks, etc).

EJ



On Tue, Aug 11, 2020, 9:32 AM Brian Padalino via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On Tue, Aug 11, 2020 at 6:18 AM Daniel Ozer via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi everyone,
>> Im just started  developing on the usrp X310 platform and i have some
>> questions :
>>
>> 1. Is the crossbar is capable to transfer data between 2 rfnoc blocks at
>> maximum rate of the crossbar clock ?(bus_clk=187.5MHZ)
>>
>
> Yes.  Each port can handle 200MHz worth of bandwidth, but it cannot handle
> full bandwidth from both radios at the same time.  You'd need multiple
> crossbar ports for that.
>
>>
>> 2. if i have this theoretical chain : rfnoc: block1 ->  rfnoc: block2 ->
>> rfnoc: block3 ->  rfnoc: block4
>>  Is every block can send data to the next block at the maximum rate of
>> the crossbar clk ?
>>
>
> Yes.  The crossbar acts as a switch.
>
>
>>
>> 3. I have a chain :  rfnoc: signal source -> rfnoc: DUC (1M to 200M) ->
>> rfnoc:radio_block.
>> how is it possible that the connection between the duc and the radio
>> block doesn't throw an error because the transfer rate is bigger than the
>> clk speed of the crossbar ?
>>
>
> The bus widths are different between the two domains.  Most everything on
> ce_clk is 32-bit IQ samples, whereas the bus_clk domain is 64-bits wide.
>
>
>>
>> 4. Is it possible to change the crossbar clk to ce_clk=214MHZ instead of
>> bus clk ?
>>
>
> Maybe, but what would be the point?  You'll probably end up not being able
> to close timing on the design, but that's just a guess.
>
>
>>
>> 5. I saw in the article (" Measured Latency Introduced by RFNoC
>> Architecture" )that the nocshell and the axi wrapper have a big latency
>> (100nanosec and 1.7microsec) . There is a way to drop down the latency ?
>>
>
> I don't know how to address this.  Maybe a link to the article and to
> figure out where the "large" latencies are?  What is your target latency?
>
> Brian
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000f6f44305ac9dedea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Agree on all points.</div><div dir=3D"auto"><br></di=
v><div dir=3D"auto">A few further thoughts:</div><div dir=3D"auto"><br></di=
v><div dir=3D"auto">&gt;=C2=A0I saw in the article (&quot; Measured Latency=
 Introduced by RFNoC Architecture&quot; )that the nocshell=C2=A0and the axi=
 wrapper have a big latency (100nanosec and 1.7microsec) . There is a way t=
o drop down the latency ?</div><div dir=3D"auto"><br></div><div dir=3D"auto=
">First, I probably would not classify 100 me as &quot;high latency&quot;--=
 if your ce clock is at 200 MHz that&#39;s just 20 clock cycles! Not too ba=
d.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Second, the root caus=
e of the large latency from the cited paper is because the crossbar is fund=
amentally a N-to-N &quot;packetized&quot; switch.... Before any data goes o=
nto the crossbar, the noc_shell accumulates a full packet of data within a =
fifo in the noc_shell and then the entire packet is sent to the crossbar at=
 the bus_clk rate. An easy way to decrease the latency, at the expense of m=
ore overhead, is to simply decrease the packet size. (There&#39;s some lowe=
r limits here... a packet size of like 4-10 would probably be troublesome, =
but I&#39;ve heard 60ish is a reasonable number and should decrease latency=
 down to 300 nanoseconds or so assuming ce_clk 200 MHz)</div><div dir=3D"au=
to"><br></div><div dir=3D"auto">If you would like to fully AVOID the overhe=
ad of the packetized crossbar because you need absolute minimal latency, yo=
u could theoretically add side-channels between rfnoc blocks, or insert you=
r logic into a different part of the design (like the radio block, perhaps)=
. I have heard of these strategies working for some people, but I really wo=
uldn&#39;t recommend that for a beginner rfnoc user since you would effecti=
vely break all the helpful utilities that come along with rfnoc as-is (auto=
matic builds, reusability/modularity of rfnoc blocks, etc).</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">EJ</div><div dir=3D"auto"><br></div><=
div dir=3D"auto"><br><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Aug 11, 2020, 9:32 AM Brian Padalino =
via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users=
@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><di=
v dir=3D"ltr"><div dir=3D"ltr">On Tue, Aug 11, 2020 at 6:18 AM Daniel Ozer =
via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"=
_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt; wrote:<br></d=
iv><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"rtl"><div id=3D"m_1776218710449712846gmail-m_6464190070413=
3377gmail-m_5740917156441633232gmail-:17g" style=3D"font-size:0.875rem;dire=
ction:rtl;margin:8px 0px 0px;padding:0px"><div id=3D"m_1776218710449712846g=
mail-m_64641900704133377gmail-m_5740917156441633232gmail-:17f" style=3D"ove=
rflow:hidden;font-variant-numeric:normal;font-variant-east-asian:normal;fon=
t-stretch:normal;font-size:small;line-height:1.5"><div dir=3D"rtl"><div dir=
=3D"ltr"><div dir=3D"ltr">Hi everyone,</div><div dir=3D"ltr">Im just starte=
d=C2=A0=C2=A0developing=C2=A0on the usrp X310 platform=C2=A0and i have some=
 questions :<br><br></div><div dir=3D"ltr">1. Is the crossbar is capable to=
 transfer data between 2 rfnoc blocks=C2=A0at maximum rate of the crossbar =
clock ?(bus_clk=3D187.5MHZ)=C2=A0</div></div></div></div></div></div></bloc=
kquote><div><br></div><div>Yes.=C2=A0 Each port can handle 200MHz worth of =
bandwidth, but it cannot handle full bandwidth from both radios at the same=
 time.=C2=A0 You&#39;d need multiple crossbar ports for that.</div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"rtl"><div id=3D"m_177=
6218710449712846gmail-m_64641900704133377gmail-m_5740917156441633232gmail-:=
17g" style=3D"font-size:0.875rem;direction:rtl;margin:8px 0px 0px;padding:0=
px"><div id=3D"m_1776218710449712846gmail-m_64641900704133377gmail-m_574091=
7156441633232gmail-:17f" style=3D"overflow:hidden;font-variant-numeric:norm=
al;font-variant-east-asian:normal;font-stretch:normal;font-size:small;line-=
height:1.5"><div dir=3D"rtl"><div dir=3D"ltr"><div dir=3D"ltr"><br></div><d=
iv dir=3D"ltr">2. if i have this theoretical chain : rfnoc: block1 -&gt;=C2=
=A0 rfnoc: block2 -&gt;=C2=A0 rfnoc: block3 -&gt;=C2=A0 rfnoc: block4</div>=
<div dir=3D"ltr">=C2=A0Is every block can send data to the next block at th=
e maximum rate of the crossbar clk ?</div></div></div></div></div></div></b=
lockquote><div><br></div><div>Yes.=C2=A0 The crossbar acts as a switch.</di=
v><div>=C2=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"rtl"><div id=3D"m_1776218710449712846gmail-m_64641900704133377gma=
il-m_5740917156441633232gmail-:17g" style=3D"font-size:0.875rem;direction:r=
tl;margin:8px 0px 0px;padding:0px"><div id=3D"m_1776218710449712846gmail-m_=
64641900704133377gmail-m_5740917156441633232gmail-:17f" style=3D"overflow:h=
idden;font-variant-numeric:normal;font-variant-east-asian:normal;font-stret=
ch:normal;font-size:small;line-height:1.5"><div dir=3D"rtl"><div dir=3D"ltr=
"><div dir=3D"ltr"><br></div><div dir=3D"ltr">3. I have a chain :=C2=A0 rfn=
oc: signal source=C2=A0-&gt; rfnoc: DUC (1M to 200M) -&gt; rfnoc:radio_bloc=
k.</div><div dir=3D"ltr">how is it possible that the connection between the=
 duc and the radio block doesn&#39;t=C2=A0throw an error because the transf=
er rate is bigger than the clk speed of the crossbar ?<br></div></div></div=
></div></div></div></blockquote><div><br></div><div>The bus widths are diff=
erent between the two domains.=C2=A0 Most everything on ce_clk is 32-bit IQ=
 samples, whereas the bus_clk domain is 64-bits wide.</div><div>=C2=A0</div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"rtl"><div id=
=3D"m_1776218710449712846gmail-m_64641900704133377gmail-m_57409171564416332=
32gmail-:17g" style=3D"font-size:0.875rem;direction:rtl;margin:8px 0px 0px;=
padding:0px"><div id=3D"m_1776218710449712846gmail-m_64641900704133377gmail=
-m_5740917156441633232gmail-:17f" style=3D"overflow:hidden;font-variant-num=
eric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:sm=
all;line-height:1.5"><div dir=3D"rtl"><div dir=3D"ltr"><div dir=3D"ltr"><br=
></div><div dir=3D"ltr">4. Is it possible to change=C2=A0the crossbar clk t=
o ce_clk=3D214MHZ instead=C2=A0of bus clk ?</div></div></div></div></div></=
div></blockquote><div><br></div><div>Maybe, but what would be the point?=C2=
=A0 You&#39;ll probably end up not being able to close timing on the design=
, but that&#39;s just a guess.</div><div>=C2=A0</div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"rtl"><div id=3D"m_17762187104497128=
46gmail-m_64641900704133377gmail-m_5740917156441633232gmail-:17g" style=3D"=
font-size:0.875rem;direction:rtl;margin:8px 0px 0px;padding:0px"><div id=3D=
"m_1776218710449712846gmail-m_64641900704133377gmail-m_5740917156441633232g=
mail-:17f" style=3D"overflow:hidden;font-variant-numeric:normal;font-varian=
t-east-asian:normal;font-stretch:normal;font-size:small;line-height:1.5"><d=
iv dir=3D"rtl"><div dir=3D"ltr"><div dir=3D"ltr"><br></div><div dir=3D"ltr"=
>5. I saw in the article (&quot; Measured Latency Introduced by
RFNoC Architecture&quot; )that the nocshell=C2=A0and the axi wrapper have a=
 big latency (100nanosec and 1.7microsec) . There is a way to drop down the=
 latency ?</div></div></div></div></div></div></blockquote><div><br></div><=
div>I don&#39;t know how to address this.=C2=A0 Maybe a link to the article=
 and to figure out where the &quot;large&quot; latencies are?=C2=A0 What is=
 your target latency?</div><div><br></div><div>Brian</div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div></div>

--000000000000f6f44305ac9dedea--


--===============0284563965930834406==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0284563965930834406==--

