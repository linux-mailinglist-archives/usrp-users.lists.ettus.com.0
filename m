Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 37787245725
	for <lists+usrp-users@lfdr.de>; Sun, 16 Aug 2020 11:48:48 +0200 (CEST)
Received: from [::1] (port=42718 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k7FHP-0002y2-Dg; Sun, 16 Aug 2020 05:48:43 -0400
Received: from mail-ed1-f54.google.com ([209.85.208.54]:43676)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <danielozer22@gmail.com>)
 id 1k7FHM-0002uK-54
 for usrp-users@lists.ettus.com; Sun, 16 Aug 2020 05:48:40 -0400
Received: by mail-ed1-f54.google.com with SMTP id cq28so10001668edb.10
 for <usrp-users@lists.ettus.com>; Sun, 16 Aug 2020 02:48:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PTmBh2/VYdxUlsXmjCo29dvb7tuaETAz/cn3nyBDGAM=;
 b=qVNJzsiH+MC8twiHxdyR+s4mS5O0c9TNwgXTMZh7ZtBPAySjzg/rrIsnsD69K+EiiX
 mT3BgH88MQX9ewwDt+6yJmkFS4++oJPo5WdVhPCinGJasbSnXXtSjvaTKq4YohRcc05e
 VxjIWRKpiA3KD0/hUjeCyBj+VjFSOapJ6hJvGMdt7bOTXCT3Sb5FmRsR3mZi6ffazjrw
 h4641YLgv/feSoSMhhVX13bRHZy5+CI2o5QvbAw464Si7IVIv3qpTTWt+YFIWCVZARJF
 hT7lN7C4lg9c1hr33Ga26xpcehdef8VruXQUk5+ramyK7vae9K3v6hG410D3G5ZUJQb1
 3BNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PTmBh2/VYdxUlsXmjCo29dvb7tuaETAz/cn3nyBDGAM=;
 b=PcWZO+JwdTBNvo0bnMZ/dBJhnS0+Hq6fVaCnueCh2b8uTKu7zLt84FE/sEJde2QE88
 vlMad9gG1UEtT09JYg8k7Eqf+Zq9rgRJNJL4eXOr+4FR3S0h3OduxixsXJvaHS8GnZIC
 59yQSpB6rguscQkTeaZD1hdkYJjw3DBm3zTm5KcPxfttB+tvHt51alyd8r/nixKpHX4L
 rRD9E+EyVYA68wn1G+8G0b0b9yZfW96GIzmDOnNbdnwpQDQssHLxSet4f4oOYPoRcRZ0
 17ojHDO9+w7qcEEyQu+fJrz7VBROv3DW/ng3z8B/VofYJJmNYMPlBEqKOSpPkAQPpsem
 PzbA==
X-Gm-Message-State: AOAM531PRkvH7w0fOg6rxawfGF41JuKEFqCUd92bzIBnUnAPTnVGm2z/
 MtiAYZ9K7y6X536/iHLTHJjpWPmC09/DlQsJrAA=
X-Google-Smtp-Source: ABdhPJyAiQRVbnhvjFlJqKS/q3A4alMP+R34IYpfRptp3z0LeuVHxo9LMadWaI+Z2bFaAEm1274QrKmoe553CKuyhg8=
X-Received: by 2002:aa7:c50b:: with SMTP id o11mr9852218edq.59.1597571278812; 
 Sun, 16 Aug 2020 02:47:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAE_Rk55Bde-UiKK93hR-RGU5VpJGS7eoBB_2pe-bMw_Evd=1KQ@mail.gmail.com>
 <CAEXYVK6cxU9WufzXn10i5QQh3-QBSo9UDmDBkt5VpVg=++30Xg@mail.gmail.com>
 <CADRnH20GdrSjLT6numqLcPNhgsOPtx+hPBuq5cgjx4O7q=FBaA@mail.gmail.com>
In-Reply-To: <CADRnH20GdrSjLT6numqLcPNhgsOPtx+hPBuq5cgjx4O7q=FBaA@mail.gmail.com>
Date: Sun, 16 Aug 2020 12:47:47 +0300
Message-ID: <CAE_Rk57MZ2yzMwhpBnroermOHc4pB459EwCUzsdre6r8H17SMA@mail.gmail.com>
To: EJ Kreinar <ejkreinar@gmail.com>
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
From: Daniel Ozer via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Daniel Ozer <danielozer22@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2109543148542198929=="
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

--===============2109543148542198929==
Content-Type: multipart/alternative; boundary="00000000000093ba3c05acfb8cb8"

--00000000000093ba3c05acfb8cb8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

first of all thanks for the great answers,
still i have few questions:

> 1. Is the crossbar is capable to transfer data between 2 rfnoc blocks at
> maximum rate of the crossbar clock ?(bus_clk=3D187.5MHZ)
>

"Yes.  Each port can handle 200MHz worth of bandwidth, but it cannot handle
full bandwidth from both radios at the same time.  You'd need multiple
crossbar ports for that."
Why is the crossbar not capable of handling both radio blocks full
bandwidth at the same time? if each radio block is a different instance it
seems like it should work.

3. I have a chain :  rfnoc: signal source -> rfnoc: DUC (1M to 200M) ->
> rfnoc:radio_block.
> how is it possible that the connection between the duc and the radio bloc=
k
> doesn't throw an error because the transfer rate is bigger than the clk
> speed of the crossbar ?
>

"The bus widths are different between the two domains.  Most everything on
ce_clk is 32-bit IQ samples, whereas the bus_clk domain is 64-bits wide."
I tried to find inside the pre-made rfnoc block such as DUC where 2 IQ
32bit samples are coupled to 64bit bus and i didn't find . Are the samples
supposed to be coupled before leaving the rfnoc block or it something that
i should implement in my block?

 "An easy way to decrease the latency, at the expense of more overhead, is
to simply decrease the packet size. (There's some lower limits here... a
packet size of like 4-10 would probably be troublesome, but I've heard
60ish is a reasonable number and should decrease latency down to 300
nanoseconds or so assuming ce_clk 200 MHz)  "
How can i decrease the size of the packet in the noc_shell?




=E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=92=D7=
=B3, 11 =D7=91=D7=90=D7=95=D7=92=D7=B3 2020 =D7=91-21:06 =D7=9E=D7=90=D7=AA=
 =E2=80=AAEJ Kreinar=E2=80=AC=E2=80=8F <=E2=80=AA
ejkreinar@gmail.com=E2=80=AC=E2=80=8F>:=E2=80=AC

> Agree on all points.
>
> A few further thoughts:
>
> > I saw in the article (" Measured Latency Introduced by RFNoC
> Architecture" )that the nocshell and the axi wrapper have a big latency
> (100nanosec and 1.7microsec) . There is a way to drop down the latency ?
>
> First, I probably would not classify 100 me as "high latency"-- if your c=
e
> clock is at 200 MHz that's just 20 clock cycles! Not too bad.
>
> Second, the root cause of the large latency from the cited paper is
> because the crossbar is fundamentally a N-to-N "packetized" switch....
> Before any data goes onto the crossbar, the noc_shell accumulates a full
> packet of data within a fifo in the noc_shell and then the entire packet =
is
> sent to the crossbar at the bus_clk rate. An easy way to decrease the
> latency, at the expense of more overhead, is to simply decrease the packe=
t
> size. (There's some lower limits here... a packet size of like 4-10 would
> probably be troublesome, but I've heard 60ish is a reasonable number and
> should decrease latency down to 300 nanoseconds or so assuming ce_clk 200
> MHz)
>
> If you would like to fully AVOID the overhead of the packetized crossbar
> because you need absolute minimal latency, you could theoretically add
> side-channels between rfnoc blocks, or insert your logic into a different
> part of the design (like the radio block, perhaps). I have heard of these
> strategies working for some people, but I really wouldn't recommend that
> for a beginner rfnoc user since you would effectively break all the helpf=
ul
> utilities that come along with rfnoc as-is (automatic builds,
> reusability/modularity of rfnoc blocks, etc).
>
> EJ
>
>
>
> On Tue, Aug 11, 2020, 9:32 AM Brian Padalino via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> On Tue, Aug 11, 2020 at 6:18 AM Daniel Ozer via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi everyone,
>>> Im just started  developing on the usrp X310 platform and i have some
>>> questions :
>>>
>>> 1. Is the crossbar is capable to transfer data between 2 rfnoc blocks a=
t
>>> maximum rate of the crossbar clock ?(bus_clk=3D187.5MHZ)
>>>
>>
>> Yes.  Each port can handle 200MHz worth of bandwidth, but it cannot
>> handle full bandwidth from both radios at the same time.  You'd need
>> multiple crossbar ports for that.
>>
>>>
>>> 2. if i have this theoretical chain : rfnoc: block1 ->  rfnoc: block2
>>> ->  rfnoc: block3 ->  rfnoc: block4
>>>  Is every block can send data to the next block at the maximum rate of
>>> the crossbar clk ?
>>>
>>
>> Yes.  The crossbar acts as a switch.
>>
>>
>>>
>>> 3. I have a chain :  rfnoc: signal source -> rfnoc: DUC (1M to 200M) ->
>>> rfnoc:radio_block.
>>> how is it possible that the connection between the duc and the radio
>>> block doesn't throw an error because the transfer rate is bigger than t=
he
>>> clk speed of the crossbar ?
>>>
>>
>> The bus widths are different between the two domains.  Most everything o=
n
>> ce_clk is 32-bit IQ samples, whereas the bus_clk domain is 64-bits wide.
>>
>>
>>>
>>> 4. Is it possible to change the crossbar clk to ce_clk=3D214MHZ instead=
 of
>>> bus clk ?
>>>
>>
>> Maybe, but what would be the point?  You'll probably end up not being
>> able to close timing on the design, but that's just a guess.
>>
>>
>>>
>>> 5. I saw in the article (" Measured Latency Introduced by RFNoC
>>> Architecture" )that the nocshell and the axi wrapper have a big latency
>>> (100nanosec and 1.7microsec) . There is a way to drop down the latency =
?
>>>
>>
>> I don't know how to address this.  Maybe a link to the article and to
>> figure out where the "large" latencies are?  What is your target latency=
?
>>
>> Brian
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--00000000000093ba3c05acfb8cb8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"rtl"><div style=3D"" dir=3D"ltr">first of all thanks for the gr=
eat answers,</div><div style=3D"" dir=3D"ltr">still i have few questions:</=
div><div style=3D"" dir=3D"ltr"><span class=3D"gmail-im" style=3D"color:rgb=
(80,0,80)"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"rt=
l"><div id=3D"gmail-m_-4242532801197281712gmail-m_64641900704133377gmail-m_=
5740917156441633232gmail-:17g" style=3D"font-size:0.875rem;direction:rtl;ma=
rgin:8px 0px 0px;padding:0px"><div id=3D"gmail-m_-4242532801197281712gmail-=
m_64641900704133377gmail-m_5740917156441633232gmail-:17f" style=3D"overflow=
:hidden;font-variant-numeric:normal;font-variant-east-asian:normal;font-str=
etch:normal;font-size:small;line-height:1.5"><div dir=3D"rtl"><div dir=3D"l=
tr"><div dir=3D"ltr">1. Is the crossbar is capable to transfer data between=
 2 rfnoc blocks=C2=A0at maximum rate of the crossbar clock ?(bus_clk=3D187.=
5MHZ)=C2=A0</div></div></div></div></div></div></blockquote><div><br></div>=
</span><div>&quot;Yes.=C2=A0 Each port can handle 200MHz worth of bandwidth=
, but it cannot handle full bandwidth from both radios at the same time.=C2=
=A0 You&#39;d need multiple crossbar ports for that.&quot;</div><div>Why is=
 the crossbar not capable of handling both radio blocks full bandwidth at t=
he same time? if each radio block is a different instance it seems like it =
should work.</div><div><br></div><div><span class=3D"gmail-im" style=3D"col=
or:rgb(80,0,80)"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"rtl"><div id=3D"gmail-m_-4242532801197281712gmail-m_64641900704133377gm=
ail-m_5740917156441633232gmail-:17g" style=3D"font-size:0.875rem;direction:=
rtl;margin:8px 0px 0px;padding:0px"><div id=3D"gmail-m_-4242532801197281712=
gmail-m_64641900704133377gmail-m_5740917156441633232gmail-:17f" style=3D"ov=
erflow:hidden;font-variant-numeric:normal;font-variant-east-asian:normal;fo=
nt-stretch:normal;font-size:small;line-height:1.5"><div dir=3D"rtl"><div di=
r=3D"ltr"><div dir=3D"ltr">3. I have a chain :=C2=A0 rfnoc: signal source=
=C2=A0-&gt; rfnoc: DUC (1M to 200M) -&gt; rfnoc:radio_block.</div><div dir=
=3D"ltr">how is it possible that the connection between the duc and the rad=
io block doesn&#39;t=C2=A0throw an error because the transfer rate is bigge=
r than the clk speed of the crossbar ?<br></div></div></div></div></div></d=
iv></blockquote><div><br></div></span><div>&quot;The bus widths are differe=
nt between the two domains.=C2=A0 Most everything on ce_clk is 32-bit IQ sa=
mples, whereas the bus_clk domain is 64-bits wide.&quot;</div></div><div>I =
tried to find inside the pre-made rfnoc block such as DUC where 2 IQ 32bit =
samples are coupled to 64bit bus and i didn&#39;t find . Are the samples su=
pposed to be coupled before leaving the rfnoc block or it something that i =
should implement in my block?=C2=A0</div><div><br></div><div>=C2=A0&quot;An=
 easy way to decrease the latency, at the expense of more overhead, is to s=
imply decrease the packet size. (There&#39;s some lower limits here... a pa=
cket size of like 4-10 would probably be troublesome, but I&#39;ve heard 60=
ish is a reasonable number and should decrease latency down to 300 nanoseco=
nds or so assuming ce_clk 200 MHz)=C2=A0 &quot;<br>How can i decrease the s=
ize of the packet in the noc_shell?</div><div><br></div><div>=C2=A0</div><d=
iv><br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"rtl" cl=
ass=3D"gmail_attr">=E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=
=95=D7=9D =D7=92=D7=B3, 11 =D7=91=D7=90=D7=95=D7=92=D7=B3 2020 =D7=91-21:06=
 =D7=9E=D7=90=D7=AA =E2=80=AAEJ Kreinar=E2=80=AC=E2=80=8F &lt;=E2=80=AA<a h=
ref=3D"mailto:ejkreinar@gmail.com">ejkreinar@gmail.com</a>=E2=80=AC=E2=80=
=8F&gt;:=E2=80=AC<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"auto"><div>Agree on all points.</div><div dir=3D"auto"><br></=
div><div dir=3D"auto">A few further thoughts:</div><div dir=3D"auto"><br></=
div><div dir=3D"auto">&gt;=C2=A0I saw in the article (&quot; Measured Laten=
cy Introduced by RFNoC Architecture&quot; )that the nocshell=C2=A0and the a=
xi wrapper have a big latency (100nanosec and 1.7microsec) . There is a way=
 to drop down the latency ?</div><div dir=3D"auto"><br></div><div dir=3D"au=
to">First, I probably would not classify 100 me as &quot;high latency&quot;=
-- if your ce clock is at 200 MHz that&#39;s just 20 clock cycles! Not too =
bad.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Second, the root ca=
use of the large latency from the cited paper is because the crossbar is fu=
ndamentally a N-to-N &quot;packetized&quot; switch.... Before any data goes=
 onto the crossbar, the noc_shell accumulates a full packet of data within =
a fifo in the noc_shell and then the entire packet is sent to the crossbar =
at the bus_clk rate. An easy way to decrease the latency, at the expense of=
 more overhead, is to simply decrease the packet size. (There&#39;s some lo=
wer limits here... a packet size of like 4-10 would probably be troublesome=
, but I&#39;ve heard 60ish is a reasonable number and should decrease laten=
cy down to 300 nanoseconds or so assuming ce_clk 200 MHz)</div><div dir=3D"=
auto"><br></div><div dir=3D"auto">If you would like to fully AVOID the over=
head of the packetized crossbar because you need absolute minimal latency, =
you could theoretically add side-channels between rfnoc blocks, or insert y=
our logic into a different part of the design (like the radio block, perhap=
s). I have heard of these strategies working for some people, but I really =
wouldn&#39;t recommend that for a beginner rfnoc user since you would effec=
tively break all the helpful utilities that come along with rfnoc as-is (au=
tomatic builds, reusability/modularity of rfnoc blocks, etc).</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">EJ</div><div dir=3D"auto"><br></div><=
div dir=3D"auto"><br><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Aug 11, 2020, 9:32 AM Brian Padalino =
via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"=
_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Tue,=
 Aug 11, 2020 at 6:18 AM Daniel Ozer via USRP-users &lt;<a href=3D"mailto:u=
srp-users@lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">usrp-users@=
lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"rtl"><div id=3D"gmail=
-m_4992061688076029904m_1776218710449712846gmail-m_64641900704133377gmail-m=
_5740917156441633232gmail-:17g" style=3D"font-size:0.875rem;direction:rtl;m=
argin:8px 0px 0px;padding:0px"><div id=3D"gmail-m_4992061688076029904m_1776=
218710449712846gmail-m_64641900704133377gmail-m_5740917156441633232gmail-:1=
7f" style=3D"overflow:hidden;font-variant-numeric:normal;font-variant-east-=
asian:normal;font-stretch:normal;font-size:small;line-height:1.5"><div dir=
=3D"rtl"><div dir=3D"ltr"><div dir=3D"ltr">Hi everyone,</div><div dir=3D"lt=
r">Im just started=C2=A0=C2=A0developing=C2=A0on the usrp X310 platform=C2=
=A0and i have some questions :<br><br></div><div dir=3D"ltr">1. Is the cros=
sbar is capable to transfer data between 2 rfnoc blocks=C2=A0at maximum rat=
e of the crossbar clock ?(bus_clk=3D187.5MHZ)=C2=A0</div></div></div></div>=
</div></div></blockquote><div><br></div><div>Yes.=C2=A0 Each port can handl=
e 200MHz worth of bandwidth, but it cannot handle full bandwidth from both =
radios at the same time.=C2=A0 You&#39;d need multiple crossbar ports for t=
hat.</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"rtl=
"><div id=3D"gmail-m_4992061688076029904m_1776218710449712846gmail-m_646419=
00704133377gmail-m_5740917156441633232gmail-:17g" style=3D"font-size:0.875r=
em;direction:rtl;margin:8px 0px 0px;padding:0px"><div id=3D"gmail-m_4992061=
688076029904m_1776218710449712846gmail-m_64641900704133377gmail-m_574091715=
6441633232gmail-:17f" style=3D"overflow:hidden;font-variant-numeric:normal;=
font-variant-east-asian:normal;font-stretch:normal;font-size:small;line-hei=
ght:1.5"><div dir=3D"rtl"><div dir=3D"ltr"><div dir=3D"ltr"><br></div><div =
dir=3D"ltr">2. if i have this theoretical chain : rfnoc: block1 -&gt;=C2=A0=
 rfnoc: block2 -&gt;=C2=A0 rfnoc: block3 -&gt;=C2=A0 rfnoc: block4</div><di=
v dir=3D"ltr">=C2=A0Is every block can send data to the next block at the m=
aximum rate of the crossbar clk ?</div></div></div></div></div></div></bloc=
kquote><div><br></div><div>Yes.=C2=A0 The crossbar acts as a switch.</div><=
div>=C2=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"rtl"><div id=3D"gmail-m_4992061688076029904m_1776218710449712846gmai=
l-m_64641900704133377gmail-m_5740917156441633232gmail-:17g" style=3D"font-s=
ize:0.875rem;direction:rtl;margin:8px 0px 0px;padding:0px"><div id=3D"gmail=
-m_4992061688076029904m_1776218710449712846gmail-m_64641900704133377gmail-m=
_5740917156441633232gmail-:17f" style=3D"overflow:hidden;font-variant-numer=
ic:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:smal=
l;line-height:1.5"><div dir=3D"rtl"><div dir=3D"ltr"><div dir=3D"ltr"><br><=
/div><div dir=3D"ltr">3. I have a chain :=C2=A0 rfnoc: signal source=C2=A0-=
&gt; rfnoc: DUC (1M to 200M) -&gt; rfnoc:radio_block.</div><div dir=3D"ltr"=
>how is it possible that the connection between the duc and the radio block=
 doesn&#39;t=C2=A0throw an error because the transfer rate is bigger than t=
he clk speed of the crossbar ?<br></div></div></div></div></div></div></blo=
ckquote><div><br></div><div>The bus widths are different between the two do=
mains.=C2=A0 Most everything on ce_clk is 32-bit IQ samples, whereas the bu=
s_clk domain is 64-bits wide.</div><div>=C2=A0</div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"rtl"><div id=3D"gmail-m_499206168807=
6029904m_1776218710449712846gmail-m_64641900704133377gmail-m_57409171564416=
33232gmail-:17g" style=3D"font-size:0.875rem;direction:rtl;margin:8px 0px 0=
px;padding:0px"><div id=3D"gmail-m_4992061688076029904m_1776218710449712846=
gmail-m_64641900704133377gmail-m_5740917156441633232gmail-:17f" style=3D"ov=
erflow:hidden;font-variant-numeric:normal;font-variant-east-asian:normal;fo=
nt-stretch:normal;font-size:small;line-height:1.5"><div dir=3D"rtl"><div di=
r=3D"ltr"><div dir=3D"ltr"><br></div><div dir=3D"ltr">4. Is it possible to =
change=C2=A0the crossbar clk to ce_clk=3D214MHZ instead=C2=A0of bus clk ?</=
div></div></div></div></div></div></blockquote><div><br></div><div>Maybe, b=
ut what would be the point?=C2=A0 You&#39;ll probably end up not being able=
 to close timing on the design, but that&#39;s just a guess.</div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"rtl"=
><div id=3D"gmail-m_4992061688076029904m_1776218710449712846gmail-m_6464190=
0704133377gmail-m_5740917156441633232gmail-:17g" style=3D"font-size:0.875re=
m;direction:rtl;margin:8px 0px 0px;padding:0px"><div id=3D"gmail-m_49920616=
88076029904m_1776218710449712846gmail-m_64641900704133377gmail-m_5740917156=
441633232gmail-:17f" style=3D"overflow:hidden;font-variant-numeric:normal;f=
ont-variant-east-asian:normal;font-stretch:normal;font-size:small;line-heig=
ht:1.5"><div dir=3D"rtl"><div dir=3D"ltr"><div dir=3D"ltr"><br></div><div d=
ir=3D"ltr">5. I saw in the article (&quot; Measured Latency Introduced by
RFNoC Architecture&quot; )that the nocshell=C2=A0and the axi wrapper have a=
 big latency (100nanosec and 1.7microsec) . There is a way to drop down the=
 latency ?</div></div></div></div></div></div></blockquote><div><br></div><=
div>I don&#39;t know how to address this.=C2=A0 Maybe a link to the article=
 and to figure out where the &quot;large&quot; latencies are?=C2=A0 What is=
 your target latency?</div><div><br></div><div>Brian</div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer" target=3D"=
_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div></div>
</blockquote></div>

--00000000000093ba3c05acfb8cb8--


--===============2109543148542198929==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2109543148542198929==--

