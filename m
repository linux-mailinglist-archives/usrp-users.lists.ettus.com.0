Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE3737A2AA
	for <lists+usrp-users@lfdr.de>; Tue, 11 May 2021 10:53:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 95C9638430D
	for <lists+usrp-users@lfdr.de>; Tue, 11 May 2021 04:53:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KSezTG/z";
	dkim-atps=neutral
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 636A43842EA
	for <usrp-users@lists.ettus.com>; Tue, 11 May 2021 04:53:00 -0400 (EDT)
Received: by mail-qk1-f174.google.com with SMTP id c20so7019911qkm.3
        for <usrp-users@lists.ettus.com>; Tue, 11 May 2021 01:53:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=db8I7F9DXfEZFhtyyGapXnIEsFSOntd8FDn8V59pJ7c=;
        b=KSezTG/znY6BrWIjoAgP6e2mudibdkF+fpUKLxNxlbrUWh+jwk80aCbXzQVSa9M9VB
         UOqo4rP3eE77nL6FvKyYiea2YNwzQwIJK5e//KpUy1Z4+lh/ca5BP6/4cyoFfElrYryR
         7sR3k1oq9wJwdesiJyjRJ8Aqd0GACO1wPusHG6AZJSEUJGeoYY4HPy4o/0cGewYPxWrz
         SjDbgurijvqp4hj+N6e3tNkgsq0DTuh2A849joz0fDrZuXc9UwfPoX5m51LjGvshiEp3
         8iC+TRMaLUOa18UcDNc/NZW9YFND+Mx40A4exaXueRT+7c3SfN77BV2kXG9Roj4x8uFc
         Hd1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=db8I7F9DXfEZFhtyyGapXnIEsFSOntd8FDn8V59pJ7c=;
        b=Vkdw8IiQC9PhhOb/je6D1pq1JMQalpV9f38SEtclnM7fNSN1p32CI7tA3z8SEApJp7
         DGs3B4kd4Gj6jMFBH54QirQPMqLNyT3AARHqE5D5oJacSfQV506yzf1r14uE5cSUMIbr
         q9XO/vF1zvysbG4bQ6DVZwNQ2GodfTDB3bLSKW70wd8HKVZAkkosozurMvkTkOkhZsxz
         rYVD3B5V2SoH4vQgzRWTcNtLzHZP7EVmrI/oETp6XAUZ0x9CRh9Nh/+reFmrV2YzOZs0
         Z/z95lTvjjAraR8gSWkfebodlzKZlKquTcvRsrtKiHAfsp9+ggGkizKi45yb8zY51nAL
         5X6A==
X-Gm-Message-State: AOAM533c7EiGsYObwJa/jAV0dY/u7LuLkVwsTFWDvYpyQhxqi1ZzntP8
	ocu/O1wQHgzF835jWiLFMnbfjAYeWuGmJQ==
X-Google-Smtp-Source: ABdhPJxUEgtYDq6L59JdhxxUBud4/k+8l2j/KN8F+V84Fgc1fYdiDGKHj9qw+BZdMglCVhrYM2MaPw==
X-Received: by 2002:ae9:ed44:: with SMTP id c65mr26726895qkg.271.1620723179792;
        Tue, 11 May 2021 01:52:59 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id j22sm12911311qkk.58.2021.05.11.01.52.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 01:52:59 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 11 May 2021 04:52:58 -0400
Message-Id: <DA980AC2-9292-4601-82C0-9813BC08FA3D@gmail.com>
References: <CACDReSweJ=Fb7p0BSyF16wxP+wS4acABv2aSkodBF7c0_0N4OA@mail.gmail.com>
In-Reply-To: <CACDReSweJ=Fb7p0BSyF16wxP+wS4acABv2aSkodBF7c0_0N4OA@mail.gmail.com>
To: Ofer Saferman <ofer@navigicom.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: FK3VAEUTAGWZP43PUY36RZS4PVH7TYIM
X-Message-ID-Hash: FK3VAEUTAGWZP43PUY36RZS4PVH7TYIM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 / E320 high bandwith / high datarate two channel RX capture
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FK3VAEUTAGWZP43PUY36RZS4PVH7TYIM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2321909431944215704=="


--===============2321909431944215704==
Content-Type: multipart/alternative; boundary=Apple-Mail-567924FE-F8B0-45C2-B558-5E55854CB1AC
Content-Transfer-Encoding: 7bit


--Apple-Mail-567924FE-F8B0-45C2-B558-5E55854CB1AC
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

It turns out that the e320 uses LVDS mode and should be capable of 2 x 61.44=
Mspsa

Sent from my iPhone

> On May 9, 2021, at 2:31 PM, Ofer Saferman <ofer@navigicom.com> wrote:
>=20
> =EF=BB=BF
> Hello,
>=20
> It is not a limitation of the AD9361 chip but rather of its implementation=
.
> The AD9361 can be implemented using a CMOS data interface which limits the=
 data rate as described. It can also be implemented with an LVDS data interf=
ace that allows full rate of 61.44 Mbps for both Rx channels.
> Since the chosen implementation for the E310 (I guess from the answers, th=
at it is the same  for the E320 as well, although curious) is CMOS data inte=
rface hence the data rate limitation.
>=20
> I know my answer does not help you because you can't change the hardware d=
esign but I thought you would like to know.
>=20
> Regards,
> Ofer Saferman
>=20
>=20
>> On Sun, May 9, 2021 at 10:30 AM <usrp-users-request@lists.ettus.com> wrot=
e:
>> Send USRP-users mailing list submissions to
>>         usrp-users@lists.ettus.com
>>=20
>> To subscribe or unsubscribe via email, send a message with subject or
>> body 'help' to
>>         usrp-users-request@lists.ettus.com
>>=20
>> You can reach the person managing the list at
>>         usrp-users-owner@lists.ettus.com
>>=20
>> When replying, please edit your Subject line so it is more specific
>> than "Re: Contents of USRP-users digest..."Today's Topics:
>>=20
>>    1. Re: E310 / E320 high bandwith / high datarate two channel RX captur=
e
>>       (Martin)
>>=20
>>=20
>>=20
>> ---------- Forwarded message ----------
>> From: Martin <usrp-users-list@olifantasia.com>
>> To: Marcus D Leech <patchvonbraun@gmail.com>, Rob Kossler <rkossler@nd.ed=
u>
>> Cc: USRP-users@lists.ettus.com
>> Bcc:=20
>> Date: Sat, 8 May 2021 12:13:04 +0200
>> Subject: [USRP-users] Re: E310 / E320 high bandwith / high datarate two c=
hannel RX capture
>> So it's a hardware limitation of the AD9361 chip?
>> That is very unfortunate.
>>=20
>> We were also looking at an option to build our own device based on a=20
>> AD9361 + some Zync FPGA/ARM processor.
>> But if it is a hardware limitation of the AD9361 then that would not=20
>> work either.
>>=20
>> Thanks for the info.
>>=20
>> Best regards,
>> Martin
>>=20
>>=20
>> On 07-05-2021 17:23, Marcus D Leech wrote:
>> > The E320 uses the same RFFE as the E310 so would have the same bandwidt=
h=20
>> > restrictions.
>> >=20
>> > Sent from my iPhone
>> >=20
>> >> On May 7, 2021, at 10:50 AM, Marcus D Leech <patchvonbraun@gmail.com>=20=

>> >> wrote:
>> >>
>> >> =EF=BB=BFIndeed the E310 RFFE chip has clocking restrictions so that t=
wo=20
>> >> channels are limited to less than 32MHz.
>> >>
>> >> I=E2=80=99m not certain about the E320.
>> >>
>> >> Sent from my iPhone
>> >>
>> >>> On May 7, 2021, at 10:45 AM, Rob Kossler <rkossler@nd.edu> wrote:
>> >>>
>> >>> =EF=BB=BF
>> >>> Hi Martin,
>> >>> I am concerned that these devices, E3xx, cannot handle 2 channels at=20=

>> >>> 56 MS/s (or 61MS/s).  My understanding (but I am not 100% sure) is=20=

>> >>> that these devices can handle 1 channel at those rates, but that the=20=

>> >>> max rate for 2 channels is 30.72 MS/s.
>> >>> Rob
>> >>>
>> >>> On Fri, May 7, 2021 at 9:41 AM Martin=20
>> >>> <usrp-users-list@olifantasia.com=20
>> >>> <mailto:usrp-users-list@olifantasia.com>> wrote:
>> >>>
>> >>>     Hi,
>> >>>
>> >>>     Do you have experience with high bandwidth capture on E310 or E32=
0?
>> >>>
>> >>>     We want to use an E310 or E320 for 56 MSPS (or 61.44 MSPS) dual
>> >>>     channel
>> >>>     RX captures.
>> >>>     We want to capture into a circular buffer and after a certain sig=
nal
>> >>>     signal level is observed set a time to stop capturing after 0.3
>> >>>     seconds.
>> >>>     So we only use the last 0.3 second of captured data.
>> >>>
>> >>>     We are thinking of using a E320. This has a high speed SFP+ 10
>> >>>     gbit port.
>> >>>     Can it stream 2 channel 56 MSPS data to a host-PC continuously to=
 a
>> >>>     host-PC? Or is the ARM processor a bottleneck, like on the E310,
>> >>>     which
>> >>>     seems to be limited to max 16MSPS due to the limited arm
>> >>>     processor speed.
>> >>>     And can it stream that fast with its default FPGA firmware image,=
 so
>> >>>     there would be no need for RFNoc work and expensive Vivado licens=
e.
>> >>>
>> >>>     And if we do need the Xilinx vivado license. Which version do we
>> >>>     need?
>> >>>
>> >>>     Alternatively we could try to use the E310 which has a smaller
>> >>>     FPGA that
>> >>>     is supported by the free webpack of vivado.
>> >>>     Because it does not have a 10 gbit ethernet we would have to
>> >>>     capture to
>> >>>     memory.
>> >>>     I have read that the E310 arm processing is not able to keep up w=
ith
>> >>>     more then 16 MSPS captures. So just streaming to the ARM memory
>> >>>     in the
>> >>>     E310 would not work.
>> >>>     But if we could someway capture to the 512 MB DDR ram on the FPGA=

>> >>>     side
>> >>>     (use it as a circular buffer) and afterwards slowly move it to
>> >>>     the arm
>> >>>     and from there to the host-PC then that would be fine.
>> >>>
>> >>>     Alternatively I heard that high datarate (56 MSPS) capture on
>> >>>     E310 is
>> >>>     possible in some way using RFNoc. Is that true? How would that wo=
rk.
>> >>>
>> >>>     It would help me a lot if you give me some hints or tell me about=

>> >>>     your
>> >>>     experience of high bandwidth capturing on E3XX devices.. Even if
>> >>>     you do
>> >>>     not know all the answers.
>> >>>
>> >>>     With best regards,
>> >>>
>> >>>     Martin Dudok van Heel
>> >>>
>> >>>     _______________________________________________
>> >>>     USRP-users mailing list -- usrp-users@lists.ettus.com
>> >>>     <mailto:usrp-users@lists.ettus.com>
>> >>>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>> >>>     <mailto:usrp-users-leave@lists.ettus.com>
>> >>>
>> >>> _______________________________________________
>> >>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> >>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>=20
> --=20
> This message has been scanned for viruses and=20
> dangerous content by MailScanner, and is=20
> believed to be clean. _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-567924FE-F8B0-45C2-B558-5E55854CB1AC
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">It turns out that the e320 uses LVDS mode a=
nd should be capable of 2 x 61.44Mspsa<div><br><div dir=3D"ltr">Sent from my=
 iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On May 9, 2021, a=
t 2:31 PM, Ofer Saferman &lt;ofer@navigicom.com&gt; wrote:<br><br></blockquo=
te></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr=
"><div dir=3D"ltr">Hello,</div><div dir=3D"ltr"><br></div><div>It is not a l=
imitation of the AD9361 chip but rather of its implementation.</div><div>The=
 AD9361 can be implemented using a CMOS data interface which limits the data=
 rate as described. It can also be implemented with an LVDS data interface t=
hat allows full rate of 61.44 Mbps for both Rx channels.</div><div>Since the=
 chosen implementation for the E310 (I guess from the answers, that it is th=
e same&nbsp; for the E320 as well, although curious) is CMOS data interface h=
ence the data rate limitation.</div><div><br></div><div>I know my answer doe=
s not help you because you can't change the hardware design but I thought yo=
u would like to know.</div><div><br></div><div>Regards,</div><div>Ofer Safer=
man<br></div><div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Sun, May 9, 2021 at 10:30 AM &lt;<a href=3D"mailto:us=
rp-users-request@lists.ettus.com">usrp-users-request@lists.ettus.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Send USRP-=
users mailing list submissions to<br>
&nbsp; &nbsp; &nbsp; &nbsp; <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
<br>
To subscribe or unsubscribe via email, send a message with subject or<br>
body 'help' to<br>
&nbsp; &nbsp; &nbsp; &nbsp; <a href=3D"mailto:usrp-users-request@lists.ettus=
.com" target=3D"_blank">usrp-users-request@lists.ettus.com</a><br>
<br>
You can reach the person managing the list at<br>
&nbsp; &nbsp; &nbsp; &nbsp; <a href=3D"mailto:usrp-users-owner@lists.ettus.c=
om" target=3D"_blank">usrp-users-owner@lists.ettus.com</a><br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than "Re: Contents of USRP-users digest..."Today's Topics:<br>
<br>
&nbsp; &nbsp;1. Re: E310 / E320 high bandwith / high datarate two channel RX=
 capture<br>
&nbsp; &nbsp; &nbsp; (Martin)<br>
<br><br><br>---------- Forwarded message ----------<br>From:&nbsp;Martin &lt=
;<a href=3D"mailto:usrp-users-list@olifantasia.com" target=3D"_blank">usrp-u=
sers-list@olifantasia.com</a>&gt;<br>To:&nbsp;Marcus D Leech &lt;<a href=3D"=
mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a=
>&gt;, Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">=
rkossler@nd.edu</a>&gt;<br>Cc:&nbsp;<a href=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank">USRP-users@lists.ettus.com</a><br>Bcc:&nbsp;<br>Date=
:&nbsp;Sat, 8 May 2021 12:13:04 +0200<br>Subject:&nbsp;[USRP-users] Re: E310=
 / E320 high bandwith / high datarate two channel RX capture<br>So it's a ha=
rdware limitation of the AD9361 chip?<br>
That is very unfortunate.<br>
<br>
We were also looking at an option to build our own device based on a <br>
AD9361 + some Zync FPGA/ARM processor.<br>
But if it is a hardware limitation of the AD9361 then that would not <br>
work either.<br>
<br>
Thanks for the info.<br>
<br>
Best regards,<br>
Martin<br>
<br>
<br>
On 07-05-2021 17:23, Marcus D Leech wrote:<br>
&gt; The E320 uses the same RFFE as the E310 so would have the same bandwidt=
h <br>
&gt; restrictions.<br>
&gt; <br>
&gt; Sent from my iPhone<br>
&gt; <br>
&gt;&gt; On May 7, 2021, at 10:50 AM, Marcus D Leech &lt;<a href=3D"mailto:p=
atchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; <b=
r>
&gt;&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; =EF=BB=BFIndeed the E310 RFFE chip has clocking restrictions so tha=
t two <br>
&gt;&gt; channels are limited to less than 32MHz.<br>
&gt;&gt;<br>
&gt;&gt; I=E2=80=99m not certain about the E320.<br>
&gt;&gt;<br>
&gt;&gt; Sent from my iPhone<br>
&gt;&gt;<br>
&gt;&gt;&gt; On May 7, 2021, at 10:45 AM, Rob Kossler &lt;<a href=3D"mailto:=
rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; =EF=BB=BF<br>
&gt;&gt;&gt; Hi Martin,<br>
&gt;&gt;&gt; I am concerned that these devices, E3xx, cannot handle 2 channe=
ls at <br>
&gt;&gt;&gt; 56 MS/s (or 61MS/s).&nbsp; My understanding (but I am not 100% s=
ure) is <br>
&gt;&gt;&gt; that these devices can handle 1 channel at those rates, but tha=
t the <br>
&gt;&gt;&gt; max rate for 2 channels is 30.72 MS/s.<br>
&gt;&gt;&gt; Rob<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Fri, May 7, 2021 at 9:41 AM Martin <br>
&gt;&gt;&gt; &lt;<a href=3D"mailto:usrp-users-list@olifantasia.com" target=3D=
"_blank">usrp-users-list@olifantasia.com</a> <br>
&gt;&gt;&gt; &lt;mailto:<a href=3D"mailto:usrp-users-list@olifantasia.com" t=
arget=3D"_blank">usrp-users-list@olifantasia.com</a>&gt;&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;Hi,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;Do you have experience with high bandwidth c=
apture on E310 or E320?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;We want to use an E310 or E320 for 56 MSPS (=
or 61.44 MSPS) dual<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;channel<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;RX captures.<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;We want to capture into a circular buffer an=
d after a certain signal<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;signal level is observed set a time to stop c=
apturing after 0.3<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;seconds.<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;So we only use the last 0.3 second of captur=
ed data.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;We are thinking of using a E320. This has a h=
igh speed SFP+ 10<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;gbit port.<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;Can it stream 2 channel 56 MSPS data to a ho=
st-PC continuously to a<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;host-PC? Or is the ARM processor a bottlenec=
k, like on the E310,<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;which<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;seems to be limited to max 16MSPS due to the=
 limited arm<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;processor speed.<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;And can it stream that fast with its default=
 FPGA firmware image, so<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;there would be no need for RFNoc work and ex=
pensive Vivado license.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;And if we do need the Xilinx vivado license.=
 Which version do we<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;need?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;Alternatively we could try to use the E310 w=
hich has a smaller<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;FPGA that<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;is supported by the free webpack of vivado.<=
br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;Because it does not have a 10 gbit ethernet w=
e would have to<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;capture to<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;memory.<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;I have read that the E310 arm processing is n=
ot able to keep up with<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;more then 16 MSPS captures. So just streamin=
g to the ARM memory<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;in the<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;E310 would not work.<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;But if we could someway capture to the 512 M=
B DDR ram on the FPGA<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;side<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;(use it as a circular buffer) and afterwards=
 slowly move it to<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;the arm<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;and from there to the host-PC then that woul=
d be fine.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;Alternatively I heard that high datarate (56=
 MSPS) capture on<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;E310 is<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;possible in some way using RFNoc. Is that tr=
ue? How would that work.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;It would help me a lot if you give me some h=
ints or tell me about<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;your<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;experience of high bandwidth capturing on E3=
XX devices.. Even if<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;you do<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;not know all the answers.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;With best regards,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;Martin Dudok van Heel<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;____________________________________________=
___<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;USRP-users mailing list -- <a href=3D"mailto=
:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a=
><br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:usrp-users@list=
s.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;To unsubscribe send an email to <a href=3D"m=
ailto:usrp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@l=
ists.ettus.com</a><br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp;&lt;mailto:<a href=3D"mailto:usrp-users-leav=
e@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>&gt=
;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.e=
ttus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&gt;&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-le=
ave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><=
br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
<br>--=20
<br>This message has been scanned for viruses and
<br>dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br>believed to be clean.

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-567924FE-F8B0-45C2-B558-5E55854CB1AC--

--===============2321909431944215704==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2321909431944215704==--
