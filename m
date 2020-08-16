Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCFF2457CE
	for <lists+usrp-users@lfdr.de>; Sun, 16 Aug 2020 15:36:03 +0200 (CEST)
Received: from [::1] (port=44126 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k7IpM-0003qj-4z; Sun, 16 Aug 2020 09:36:00 -0400
Received: from mail-ed1-f49.google.com ([209.85.208.49]:39276)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <danielozer22@gmail.com>)
 id 1k7IpH-0003dW-Rd
 for usrp-users@lists.ettus.com; Sun, 16 Aug 2020 09:35:56 -0400
Received: by mail-ed1-f49.google.com with SMTP id c10so10246130edk.6
 for <usrp-users@lists.ettus.com>; Sun, 16 Aug 2020 06:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=1Gb6pwE2xOHZVYuHNZxlMhTvKYHywrccdbxWtj5TiTA=;
 b=asHpT0+B5u/9UcEIneIuEqDn0H69ezP0x+UpklLfPoiHZsxX6Iqwp8dPy9o2ALkqwW
 8/42GAa7NCYiyYNxUbC3UKdak0TvCZjLgdVP013lm1KS81vslkAPDGAuwqCbzro8TdEu
 2VpISkdTEVxwpKJXBIyVZb0X66dqtv9xwp8rf9lsYODPSn9s1ePPX53ZoALuDU5ILD1s
 uteFeKRP0C1+h/E+Glb29kKl/m0qg6yAwEqgoAb4WWIToDNClf919FpUZd8ZK/pej49g
 kSSxZtbeQrkf3twsHqXc4Yqu7xzYJ6miytRpuNgx5Uo0m4/dQX7EX18HmVZ2XqLzXuAA
 A4ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=1Gb6pwE2xOHZVYuHNZxlMhTvKYHywrccdbxWtj5TiTA=;
 b=Hz+OWocnN8YzxHImg2D5dYOoeQRF0rkCekxNJ9oZju1hT+QzQsZjF6xrLlsY7hi3Or
 knpxrW6CEJPqI/TO0H73eNOS6yQ6N5pqbb8iLtMqZ7SS/9zoFdPOBd3iU4FtBMswMAf/
 gAkhtR6Nx9CfZMiCIdFaAU/KCPkTMdcLGsIFE/BSBrBfLQYg3ZcEbjRo/svjlah6V7uz
 71wSRHRSYF844svnf4hRrzyv3DZaTKUdOXKOXhv5hEYWYVljEtej2SqEFW4Gp1wWwDiE
 scNIEsgMzWBOYQ2vokwabAG7bvfmZuwKqSeVOhWzzugOAt22c3DWnHT0WBmSMwJciHw/
 M4JA==
X-Gm-Message-State: AOAM532XrMRQl2+n28ldu3XMtPEVeCqx/K3OIj4/X/zjNfqRiUSVQ5lg
 AbdxIMEEECSSEN437nayDwj3yPmSDMVdE7qgppbWywpm
X-Google-Smtp-Source: ABdhPJyIAUZlUSa8WQfgb2+BBRtd17n34P1A8fX7hHmzRDlPjK+smpYi0h85iMbpDHiZZApD7vvDyqEn+G8ETL+u8mM=
X-Received: by 2002:aa7:d293:: with SMTP id w19mr10559640edq.119.1597584914472; 
 Sun, 16 Aug 2020 06:35:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAE_Rk55Bde-UiKK93hR-RGU5VpJGS7eoBB_2pe-bMw_Evd=1KQ@mail.gmail.com>
 <CAEXYVK6cxU9WufzXn10i5QQh3-QBSo9UDmDBkt5VpVg=++30Xg@mail.gmail.com>
 <CADRnH20GdrSjLT6numqLcPNhgsOPtx+hPBuq5cgjx4O7q=FBaA@mail.gmail.com>
 <CAE_Rk57MZ2yzMwhpBnroermOHc4pB459EwCUzsdre6r8H17SMA@mail.gmail.com>
In-Reply-To: <CAE_Rk57MZ2yzMwhpBnroermOHc4pB459EwCUzsdre6r8H17SMA@mail.gmail.com>
Date: Sun, 16 Aug 2020 16:35:02 +0300
Message-ID: <CAE_Rk55oEsZn4eCVHrF0EYZokqrDss8wCDKf9Rt8=SXYJRcyzg@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
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
Content-Type: multipart/mixed; boundary="===============7829486087254293207=="
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

--===============7829486087254293207==
Content-Type: multipart/alternative; boundary="00000000000053629f05acfeb980"

--00000000000053629f05acfeb980
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

first of all thanks for the great answers,
still i have few questions:

1. Is the crossbar is capable to transfer data between 2 rfnoc blocks at
maximum rate of the crossbar clock ?(bus_clk=3D187.5MHZ)


"Yes.  Each port can handle 200MHz worth of bandwidth, but it cannot handle
full bandwidth from both radios at the same time.  You'd need multiple
crossbar ports for that."
Why is the crossbar not capable of handling both radio blocks full
bandwidth at the same time? if each radio block is a different instance it
seems like it should work.

3. I have a chain :  rfnoc: signal source -> rfnoc: DUC (1M to 200M) ->
rfnoc:radio_block.
how is it possible that the connection between the duc and the radio block
doesn't throw an error because the transfer rate is bigger than the clk
speed of the crossbar ?


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

=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=90=D7=B3, 16 =
=D7=91=D7=90=D7=95=D7=92=D7=B3 2020, 12:47, =D7=9E=D7=90=D7=AA Daniel Ozer =
=E2=80=8F<
danielozer22@gmail.com>:

> first of all thanks for the great answers,
> still i have few questions:
>
>> 1. Is the crossbar is capable to transfer data between 2 rfnoc blocks at
>> maximum rate of the crossbar clock ?(bus_clk=3D187.5MHZ)
>>
>
> "Yes.  Each port can handle 200MHz worth of bandwidth, but it cannot
> handle full bandwidth from both radios at the same time.  You'd need
> multiple crossbar ports for that."
> Why is the crossbar not capable of handling both radio blocks full
> bandwidth at the same time? if each radio block is a different instance i=
t
> seems like it should work.
>
> 3. I have a chain :  rfnoc: signal source -> rfnoc: DUC (1M to 200M) ->
>> rfnoc:radio_block.
>> how is it possible that the connection between the duc and the radio
>> block doesn't throw an error because the transfer rate is bigger than th=
e
>> clk speed of the crossbar ?
>>
>
> "The bus widths are different between the two domains.  Most everything o=
n
> ce_clk is 32-bit IQ samples, whereas the bus_clk domain is 64-bits wide."
> I tried to find inside the pre-made rfnoc block such as DUC where 2 IQ
> 32bit samples are coupled to 64bit bus and i didn't find . Are the sample=
s
> supposed to be coupled before leaving the rfnoc block or it something tha=
t
> i should implement in my block?
>
>  "An easy way to decrease the latency, at the expense of more overhead, i=
s
> to simply decrease the packet size. (There's some lower limits here... a
> packet size of like 4-10 would probably be troublesome, but I've heard
> 60ish is a reasonable number and should decrease latency down to 300
> nanoseconds or so assuming ce_clk 200 MHz)  "
> How can i decrease the size of the packet in the noc_shell?
>
>
>
>
> =E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=92=
=D7=B3, 11 =D7=91=D7=90=D7=95=D7=92=D7=B3 2020 =D7=91-21:06 =D7=9E=D7=90=D7=
=AA =E2=80=AAEJ Kreinar=E2=80=AC=E2=80=8F <=E2=80=AA
> ejkreinar@gmail.com=E2=80=AC=E2=80=8F>:=E2=80=AC
>
>> Agree on all points.
>>
>> A few further thoughts:
>>
>> > I saw in the article (" Measured Latency Introduced by RFNoC
>> Architecture" )that the nocshell and the axi wrapper have a big latency
>> (100nanosec and 1.7microsec) . There is a way to drop down the latency ?
>>
>> First, I probably would not classify 100 me as "high latency"-- if your
>> ce clock is at 200 MHz that's just 20 clock cycles! Not too bad.
>>
>> Second, the root cause of the large latency from the cited paper is
>> because the crossbar is fundamentally a N-to-N "packetized" switch....
>> Before any data goes onto the crossbar, the noc_shell accumulates a full
>> packet of data within a fifo in the noc_shell and then the entire packet=
 is
>> sent to the crossbar at the bus_clk rate. An easy way to decrease the
>> latency, at the expense of more overhead, is to simply decrease the pack=
et
>> size. (There's some lower limits here... a packet size of like 4-10 woul=
d
>> probably be troublesome, but I've heard 60ish is a reasonable number and
>> should decrease latency down to 300 nanoseconds or so assuming ce_clk 20=
0
>> MHz)
>>
>> If you would like to fully AVOID the overhead of the packetized crossbar
>> because you need absolute minimal latency, you could theoretically add
>> side-channels between rfnoc blocks, or insert your logic into a differen=
t
>> part of the design (like the radio block, perhaps). I have heard of thes=
e
>> strategies working for some people, but I really wouldn't recommend that
>> for a beginner rfnoc user since you would effectively break all the help=
ful
>> utilities that come along with rfnoc as-is (automatic builds,
>> reusability/modularity of rfnoc blocks, etc).
>>
>> EJ
>>
>>
>>
>> On Tue, Aug 11, 2020, 9:32 AM Brian Padalino via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> On Tue, Aug 11, 2020 at 6:18 AM Daniel Ozer via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Hi everyone,
>>>> Im just started  developing on the usrp X310 platform and i have some
>>>> questions :
>>>>
>>>> 1. Is the crossbar is capable to transfer data between 2 rfnoc
>>>> blocks at maximum rate of the crossbar clock ?(bus_clk=3D187.5MHZ)
>>>>
>>>
>>> Yes.  Each port can handle 200MHz worth of bandwidth, but it cannot
>>> handle full bandwidth from both radios at the same time.  You'd need
>>> multiple crossbar ports for that.
>>>
>>>>
>>>> 2. if i have this theoretical chain : rfnoc: block1 ->  rfnoc: block2
>>>> ->  rfnoc: block3 ->  rfnoc: block4
>>>>  Is every block can send data to the next block at the maximum rate of
>>>> the crossbar clk ?
>>>>
>>>
>>> Yes.  The crossbar acts as a switch.
>>>
>>>
>>>>
>>>> 3. I have a chain :  rfnoc: signal source -> rfnoc: DUC (1M to 200M) -=
>
>>>> rfnoc:radio_block.
>>>> how is it possible that the connection between the duc and the radio
>>>> block doesn't throw an error because the transfer rate is bigger than =
the
>>>> clk speed of the crossbar ?
>>>>
>>>
>>> The bus widths are different between the two domains.  Most everything
>>> on ce_clk is 32-bit IQ samples, whereas the bus_clk domain is 64-bits w=
ide.
>>>
>>>
>>>>
>>>> 4. Is it possible to change the crossbar clk to ce_clk=3D214MHZ
>>>> instead of bus clk ?
>>>>
>>>
>>> Maybe, but what would be the point?  You'll probably end up not being
>>> able to close timing on the design, but that's just a guess.
>>>
>>>
>>>>
>>>> 5. I saw in the article (" Measured Latency Introduced by RFNoC
>>>> Architecture" )that the nocshell and the axi wrapper have a big latenc=
y
>>>> (100nanosec and 1.7microsec) . There is a way to drop down the latency=
 ?
>>>>
>>>
>>> I don't know how to address this.  Maybe a link to the article and to
>>> figure out where the "large" latencies are?  What is your target latenc=
y?
>>>
>>> Brian
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--00000000000053629f05acfeb980
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"auto"></div><div dir=3D"ltr">first of all tha=
nks for the great answers,</div><div dir=3D"ltr">still i have few questions=
:</div><div dir=3D"ltr"><div style=3D"color:rgb(80,0,80)"><blockquote style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"rtl"><div style=3D"font-size:0.875rem;direction:rtl;=
margin:8px 0px 0px;padding:0px"><div style=3D"font-stretch:normal;font-size=
:small;line-height:1.5"><div dir=3D"rtl"><div dir=3D"ltr"><div dir=3D"ltr">=
1. Is the crossbar is capable to transfer data between 2 rfnoc blocks=C2=A0=
at maximum rate of the crossbar clock ?(bus_clk=3D187.5MHZ)=C2=A0</div></di=
v></div></div></div></div></blockquote><div dir=3D"auto"><br></div><div>&qu=
ot;Yes.=C2=A0 Each port can handle 200MHz worth of bandwidth, but it cannot=
 handle full bandwidth from both radios at the same time.=C2=A0 You&#39;d n=
eed multiple crossbar ports for that.&quot;</div></div><div>Why is the cros=
sbar not capable of handling both radio blocks full bandwidth at the same t=
ime? if each radio block is a different instance it seems like it should wo=
rk.</div><div style=3D"color:rgb(80,0,80)"><div><br></div><div><blockquote =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"rtl"><div style=3D"font-size:0.875rem;direction=
:rtl;margin:8px 0px 0px;padding:0px"><div style=3D"font-stretch:normal;font=
-size:small;line-height:1.5"><div dir=3D"rtl"><div dir=3D"ltr"><div dir=3D"=
ltr">3. I have a chain :=C2=A0 rfnoc: signal source=C2=A0-&gt; rfnoc: DUC (=
1M to 200M) -&gt; rfnoc:radio_block.</div><div dir=3D"ltr">how is it possib=
le that the connection between the duc and the radio block doesn&#39;t=C2=
=A0throw an error because the transfer rate is bigger than the clk speed of=
 the crossbar ?<br></div></div></div></div></div></div></blockquote><div di=
r=3D"auto"><br></div><div>&quot;The bus widths are different between the tw=
o domains.=C2=A0 Most everything on ce_clk is 32-bit IQ samples, whereas th=
e bus_clk domain is 64-bits wide.&quot;</div></div></div><div>I tried to fi=
nd inside the pre-made rfnoc block such as DUC where 2 IQ 32bit samples are=
 coupled to 64bit bus and i didn&#39;t find . Are the samples supposed to b=
e coupled before leaving the rfnoc block or it something that i should impl=
ement in my block?=C2=A0</div><div><br></div><div><div style=3D"color:rgb(8=
0,0,80)">=C2=A0&quot;An easy way to decrease the latency, at the expense of=
 more overhead, is to simply decrease the packet size. (There&#39;s some lo=
wer limits here... a packet size of like 4-10 would probably be troublesome=
, but I&#39;ve heard 60ish is a reasonable number and should decrease laten=
cy down to 300 nanoseconds or so assuming ce_clk 200 MHz)=C2=A0 &quot;<br><=
/div>How can i decrease the size of the packet in the noc_shell?</div><div>=
<br style=3D"font-family:sans-serif;font-size:12.8px"></div></div><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=D7=91=D7=AA=D7=90=
=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=90=D7=B3, 16 =D7=91=D7=90=D7=95=
=D7=92=D7=B3 2020, 12:47, =D7=9E=D7=90=D7=AA Daniel Ozer =E2=80=8F&lt;<a hr=
ef=3D"mailto:danielozer22@gmail.com" target=3D"_blank" rel=3D"noreferrer">d=
anielozer22@gmail.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div=
 dir=3D"rtl"><div dir=3D"ltr">first of all thanks for the great answers,</d=
iv><div dir=3D"ltr">still i have few questions:</div><div dir=3D"ltr"><span=
 style=3D"color:rgb(80,0,80)"><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"rtl"><div id=3D"m_2701816518642105001m_7607755943306506939=
gmail-m_-4242532801197281712gmail-m_64641900704133377gmail-m_57409171564416=
33232gmail-:17g" style=3D"font-size:0.875rem;direction:rtl;margin:8px 0px 0=
px;padding:0px"><div id=3D"m_2701816518642105001m_7607755943306506939gmail-=
m_-4242532801197281712gmail-m_64641900704133377gmail-m_5740917156441633232g=
mail-:17f" style=3D"overflow:hidden;font-variant-numeric:normal;font-varian=
t-east-asian:normal;font-stretch:normal;font-size:small;line-height:1.5"><d=
iv dir=3D"rtl"><div dir=3D"ltr"><div dir=3D"ltr">1. Is the crossbar is capa=
ble to transfer data between 2 rfnoc blocks=C2=A0at maximum rate of the cro=
ssbar clock ?(bus_clk=3D187.5MHZ)=C2=A0</div></div></div></div></div></div>=
</blockquote><div><br></div></span><div>&quot;Yes.=C2=A0 Each port can hand=
le 200MHz worth of bandwidth, but it cannot handle full bandwidth from both=
 radios at the same time.=C2=A0 You&#39;d need multiple crossbar ports for =
that.&quot;</div><div>Why is the crossbar not capable of handling both radi=
o blocks full bandwidth at the same time? if each radio block is a differen=
t instance it seems like it should work.</div><div><br></div><div><span sty=
le=3D"color:rgb(80,0,80)"><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"rtl"><div id=3D"m_2701816518642105001m_7607755943306506939gmai=
l-m_-4242532801197281712gmail-m_64641900704133377gmail-m_574091715644163323=
2gmail-:17g" style=3D"font-size:0.875rem;direction:rtl;margin:8px 0px 0px;p=
adding:0px"><div id=3D"m_2701816518642105001m_7607755943306506939gmail-m_-4=
242532801197281712gmail-m_64641900704133377gmail-m_5740917156441633232gmail=
-:17f" style=3D"overflow:hidden;font-variant-numeric:normal;font-variant-ea=
st-asian:normal;font-stretch:normal;font-size:small;line-height:1.5"><div d=
ir=3D"rtl"><div dir=3D"ltr"><div dir=3D"ltr">3. I have a chain :=C2=A0 rfno=
c: signal source=C2=A0-&gt; rfnoc: DUC (1M to 200M) -&gt; rfnoc:radio_block=
.</div><div dir=3D"ltr">how is it possible that the connection between the =
duc and the radio block doesn&#39;t=C2=A0throw an error because the transfe=
r rate is bigger than the clk speed of the crossbar ?<br></div></div></div>=
</div></div></div></blockquote><div><br></div></span><div>&quot;The bus wid=
ths are different between the two domains.=C2=A0 Most everything on ce_clk =
is 32-bit IQ samples, whereas the bus_clk domain is 64-bits wide.&quot;</di=
v></div><div>I tried to find inside the pre-made rfnoc block such as DUC wh=
ere 2 IQ 32bit samples are coupled to 64bit bus and i didn&#39;t find . Are=
 the samples supposed to be coupled before leaving the rfnoc block or it so=
mething that i should implement in my block?=C2=A0</div><div><br></div><div=
>=C2=A0&quot;An easy way to decrease the latency, at the expense of more ov=
erhead, is to simply decrease the packet size. (There&#39;s some lower limi=
ts here... a packet size of like 4-10 would probably be troublesome, but I&=
#39;ve heard 60ish is a reasonable number and should decrease latency down =
to 300 nanoseconds or so assuming ce_clk 200 MHz)=C2=A0 &quot;<br>How can i=
 decrease the size of the packet in the noc_shell?</div><div><br></div><div=
>=C2=A0</div><div><br></div></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"rtl" class=3D"gmail_attr">=E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=
=D7=9A =D7=99=D7=95=D7=9D =D7=92=D7=B3, 11 =D7=91=D7=90=D7=95=D7=92=D7=B3 2=
020 =D7=91-21:06 =D7=9E=D7=90=D7=AA =E2=80=AAEJ Kreinar=E2=80=AC=E2=80=8F &=
lt;=E2=80=AA<a href=3D"mailto:ejkreinar@gmail.com" rel=3D"noreferrer norefe=
rrer" target=3D"_blank">ejkreinar@gmail.com</a>=E2=80=AC=E2=80=8F&gt;:=E2=
=80=AC<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"auto"><div>Agree on all points.</div><div dir=3D"auto"><br></div><div d=
ir=3D"auto">A few further thoughts:</div><div dir=3D"auto"><br></div><div d=
ir=3D"auto">&gt;=C2=A0I saw in the article (&quot; Measured Latency Introdu=
ced by RFNoC Architecture&quot; )that the nocshell=C2=A0and the axi wrapper=
 have a big latency (100nanosec and 1.7microsec) . There is a way to drop d=
own the latency ?</div><div dir=3D"auto"><br></div><div dir=3D"auto">First,=
 I probably would not classify 100 me as &quot;high latency&quot;-- if your=
 ce clock is at 200 MHz that&#39;s just 20 clock cycles! Not too bad.</div>=
<div dir=3D"auto"><br></div><div dir=3D"auto">Second, the root cause of the=
 large latency from the cited paper is because the crossbar is fundamentall=
y a N-to-N &quot;packetized&quot; switch.... Before any data goes onto the =
crossbar, the noc_shell accumulates a full packet of data within a fifo in =
the noc_shell and then the entire packet is sent to the crossbar at the bus=
_clk rate. An easy way to decrease the latency, at the expense of more over=
head, is to simply decrease the packet size. (There&#39;s some lower limits=
 here... a packet size of like 4-10 would probably be troublesome, but I&#3=
9;ve heard 60ish is a reasonable number and should decrease latency down to=
 300 nanoseconds or so assuming ce_clk 200 MHz)</div><div dir=3D"auto"><br>=
</div><div dir=3D"auto">If you would like to fully AVOID the overhead of th=
e packetized crossbar because you need absolute minimal latency, you could =
theoretically add side-channels between rfnoc blocks, or insert your logic =
into a different part of the design (like the radio block, perhaps). I have=
 heard of these strategies working for some people, but I really wouldn&#39=
;t recommend that for a beginner rfnoc user since you would effectively bre=
ak all the helpful utilities that come along with rfnoc as-is (automatic bu=
ilds, reusability/modularity of rfnoc blocks, etc).</div><div dir=3D"auto">=
<br></div><div dir=3D"auto">EJ</div><div dir=3D"auto"><br></div><div dir=3D=
"auto"><br><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Tue, Aug 11, 2020, 9:32 AM Brian Padalino via USRP-use=
rs &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer nore=
ferrer" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div d=
ir=3D"ltr">On Tue, Aug 11, 2020 at 6:18 AM Daniel Ozer via USRP-users &lt;<=
a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer noreferrer n=
oreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br><=
/div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"rtl"><div id=3D"m_2701816518642105001m_76077559433065069=
39gmail-m_4992061688076029904m_1776218710449712846gmail-m_64641900704133377=
gmail-m_5740917156441633232gmail-:17g" style=3D"font-size:0.875rem;directio=
n:rtl;margin:8px 0px 0px;padding:0px"><div id=3D"m_2701816518642105001m_760=
7755943306506939gmail-m_4992061688076029904m_1776218710449712846gmail-m_646=
41900704133377gmail-m_5740917156441633232gmail-:17f" style=3D"overflow:hidd=
en;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:=
normal;font-size:small;line-height:1.5"><div dir=3D"rtl"><div dir=3D"ltr"><=
div dir=3D"ltr">Hi everyone,</div><div dir=3D"ltr">Im just started=C2=A0=C2=
=A0developing=C2=A0on the usrp X310 platform=C2=A0and i have some questions=
 :<br><br></div><div dir=3D"ltr">1. Is the crossbar is capable to transfer =
data between 2 rfnoc blocks=C2=A0at maximum rate of the crossbar clock ?(bu=
s_clk=3D187.5MHZ)=C2=A0</div></div></div></div></div></div></blockquote><di=
v><br></div><div>Yes.=C2=A0 Each port can handle 200MHz worth of bandwidth,=
 but it cannot handle full bandwidth from both radios at the same time.=C2=
=A0 You&#39;d need multiple crossbar ports for that.</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"rtl"><div id=3D"m_270181651864=
2105001m_7607755943306506939gmail-m_4992061688076029904m_177621871044971284=
6gmail-m_64641900704133377gmail-m_5740917156441633232gmail-:17g" style=3D"f=
ont-size:0.875rem;direction:rtl;margin:8px 0px 0px;padding:0px"><div id=3D"=
m_2701816518642105001m_7607755943306506939gmail-m_4992061688076029904m_1776=
218710449712846gmail-m_64641900704133377gmail-m_5740917156441633232gmail-:1=
7f" style=3D"overflow:hidden;font-variant-numeric:normal;font-variant-east-=
asian:normal;font-stretch:normal;font-size:small;line-height:1.5"><div dir=
=3D"rtl"><div dir=3D"ltr"><div dir=3D"ltr"><br></div><div dir=3D"ltr">2. if=
 i have this theoretical chain : rfnoc: block1 -&gt;=C2=A0 rfnoc: block2 -&=
gt;=C2=A0 rfnoc: block3 -&gt;=C2=A0 rfnoc: block4</div><div dir=3D"ltr">=C2=
=A0Is every block can send data to the next block at the maximum rate of th=
e crossbar clk ?</div></div></div></div></div></div></blockquote><div><br><=
/div><div>Yes.=C2=A0 The crossbar acts as a switch.</div><div>=C2=A0<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"rtl"><div =
id=3D"m_2701816518642105001m_7607755943306506939gmail-m_4992061688076029904=
m_1776218710449712846gmail-m_64641900704133377gmail-m_5740917156441633232gm=
ail-:17g" style=3D"font-size:0.875rem;direction:rtl;margin:8px 0px 0px;padd=
ing:0px"><div id=3D"m_2701816518642105001m_7607755943306506939gmail-m_49920=
61688076029904m_1776218710449712846gmail-m_64641900704133377gmail-m_5740917=
156441633232gmail-:17f" style=3D"overflow:hidden;font-variant-numeric:norma=
l;font-variant-east-asian:normal;font-stretch:normal;font-size:small;line-h=
eight:1.5"><div dir=3D"rtl"><div dir=3D"ltr"><div dir=3D"ltr"><br></div><di=
v dir=3D"ltr">3. I have a chain :=C2=A0 rfnoc: signal source=C2=A0-&gt; rfn=
oc: DUC (1M to 200M) -&gt; rfnoc:radio_block.</div><div dir=3D"ltr">how is =
it possible that the connection between the duc and the radio block doesn&#=
39;t=C2=A0throw an error because the transfer rate is bigger than the clk s=
peed of the crossbar ?<br></div></div></div></div></div></div></blockquote>=
<div><br></div><div>The bus widths are different between the two domains.=
=C2=A0 Most everything on ce_clk is 32-bit IQ samples, whereas the bus_clk =
domain is 64-bits wide.</div><div>=C2=A0</div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"rtl"><div id=3D"m_2701816518642105001m_760=
7755943306506939gmail-m_4992061688076029904m_1776218710449712846gmail-m_646=
41900704133377gmail-m_5740917156441633232gmail-:17g" style=3D"font-size:0.8=
75rem;direction:rtl;margin:8px 0px 0px;padding:0px"><div id=3D"m_2701816518=
642105001m_7607755943306506939gmail-m_4992061688076029904m_1776218710449712=
846gmail-m_64641900704133377gmail-m_5740917156441633232gmail-:17f" style=3D=
"overflow:hidden;font-variant-numeric:normal;font-variant-east-asian:normal=
;font-stretch:normal;font-size:small;line-height:1.5"><div dir=3D"rtl"><div=
 dir=3D"ltr"><div dir=3D"ltr"><br></div><div dir=3D"ltr">4. Is it possible =
to change=C2=A0the crossbar clk to ce_clk=3D214MHZ instead=C2=A0of bus clk =
?</div></div></div></div></div></div></blockquote><div><br></div><div>Maybe=
, but what would be the point?=C2=A0 You&#39;ll probably end up not being a=
ble to close timing on the design, but that&#39;s just a guess.</div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"r=
tl"><div id=3D"m_2701816518642105001m_7607755943306506939gmail-m_4992061688=
076029904m_1776218710449712846gmail-m_64641900704133377gmail-m_574091715644=
1633232gmail-:17g" style=3D"font-size:0.875rem;direction:rtl;margin:8px 0px=
 0px;padding:0px"><div id=3D"m_2701816518642105001m_7607755943306506939gmai=
l-m_4992061688076029904m_1776218710449712846gmail-m_64641900704133377gmail-=
m_5740917156441633232gmail-:17f" style=3D"overflow:hidden;font-variant-nume=
ric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:sma=
ll;line-height:1.5"><div dir=3D"rtl"><div dir=3D"ltr"><div dir=3D"ltr"><br>=
</div><div dir=3D"ltr">5. I saw in the article (&quot; Measured Latency Int=
roduced by
RFNoC Architecture&quot; )that the nocshell=C2=A0and the axi wrapper have a=
 big latency (100nanosec and 1.7microsec) . There is a way to drop down the=
 latency ?</div></div></div></div></div></div></blockquote><div><br></div><=
div>I don&#39;t know how to address this.=C2=A0 Maybe a link to the article=
 and to figure out where the &quot;large&quot; latencies are?=C2=A0 What is=
 your target latency?</div><div><br></div><div>Brian</div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer noreferrer =
noreferrer" target=3D"_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank">h=
ttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div></div>
</blockquote></div>
</blockquote></div></div>

--00000000000053629f05acfeb980--


--===============7829486087254293207==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7829486087254293207==--

