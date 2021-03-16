Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD6433DC81
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 19:22:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9659F3837FC
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 14:22:53 -0400 (EDT)
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	by mm2.emwd.com (Postfix) with ESMTPS id EBCD83837FC
	for <USRP-users@lists.ettus.com>; Tue, 16 Mar 2021 14:21:57 -0400 (EDT)
Received: by mail-oi1-f172.google.com with SMTP id u62so23287178oib.6
        for <USRP-users@lists.ettus.com>; Tue, 16 Mar 2021 11:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qeebZ6w3DyWDsDSkRJ2JuvLiJtzs3zXTprn3uh4gxn4=;
        b=NKzYGGWXs8f2ZZmkvS58Xo0T/jA/vkREMfAvAjCGwYC0bQA3w49JoUMhYttndNLZvF
         92ukkuNt/psTminopYkQderPGgMfYixR8N27njRC5/7DO8LOPUS0iKa5t8V+2rSoaFIi
         PMIVHtMQ3262n8fYdkEVOsvfKUtTgbQrXbWrTM3PkwtMeeSVEaz+hjDHTMPPZocZBr/F
         +QDlEcq1EEsH2nhpeiFgsyD66jFKpaDdh5JlDdBRssuaoDWSI7GMchrz3WLzwH7GEHhH
         JkhwRG6BJsUTdxYkxtZSUPiIxv98UvRcEXkSDLh/SFX0guDrNGHCWIfI0Yk16t5vXMY3
         Qc4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qeebZ6w3DyWDsDSkRJ2JuvLiJtzs3zXTprn3uh4gxn4=;
        b=fzNZUJkRYE5OfZ1grQvdGBqfNhN0QL0dWBDgjQrWFSlEQxjuQ+cRaIqA/o0Lm+kAQ3
         ThaQ5Um1bAszg400KHWz3AOCXLMm5n9P47fAAJ+gBt4pyRIUMovtmMgZBsNO74wzASjb
         8FuyJjrBun8L7jbO3dMlbiTokVj2UsjSQX1lvCotLCQtvDVZQWqOhUkGHa0CSB7yAZKh
         daMeWyKGWB/rEnEJJsekevut/V7aY+rECidtlL2i/EoSlsFewHwybP/5pgED8g+KIaR/
         kmfwe6oMXwfGFbQCqeYYG0iwRT3OZ4r3TIh531NYKVFeqDOCOWP4e1deI0jqOofjOtPs
         NPDA==
X-Gm-Message-State: AOAM531UYyqFstr1rOLO3e7+Ap91dRP88j/SHfzvyAIfAEDbTkPWRlzv
	mKc5x2sGv4F6VS4EVPE9pXY9T2AAa5mecrJdnqXAdA==
X-Google-Smtp-Source: ABdhPJzAblHNJoCkGh5EqyrEWM7gBER3+pjwqsSaJFTcvyyTREScEHaWojradbaVsLT68lBCz/HjV6Y7WzJjJUYXbII=
X-Received: by 2002:aca:1a01:: with SMTP id a1mr1112oia.33.1615918917042; Tue,
 16 Mar 2021 11:21:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTTE0CpXfpKMYgoScWTfZUvgFPHZriEU1FzirHMeYGQ6fQ@mail.gmail.com>
 <528B62B7-C6D7-4B47-B3BC-EED2D45B448F@gmail.com> <15e8047cae194a888ec9ed175a13775a@gmvnsl.com>
In-Reply-To: <15e8047cae194a888ec9ed175a13775a@gmvnsl.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 16 Mar 2021 14:21:46 -0400
Message-ID: <CAB__hTTgTJJFXGgAxuberQeP9PbQ3eMWhNpbJuw7gPaSzVSQug@mail.gmail.com>
To: Oliver Towlson <oliver.towlson@gmvnsl.com>
Message-ID-Hash: DVASLWMOAYSAKAEQK7POWMIKFLSTAFRG
X-Message-ID-Hash: DVASLWMOAYSAKAEQK7POWMIKFLSTAFRG
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>, Tom Stacey <tom.stacey@gmvnsl.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 with dual TwinRX set up
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DVASLWMOAYSAKAEQK7POWMIKFLSTAFRG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0259646257536703775=="

--===============0259646257536703775==
Content-Type: multipart/alternative; boundary="000000000000099bf605bdab713b"

--000000000000099bf605bdab713b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Oliver,
This is with a single X310 with 2 TwinRx?  I noticed in the python you have
addr0 and addr1 both set.  This is the syntax used when there are multiple
X310, not a single x310.  With a single X310, you should use addr=3Dxxx,
second_addr=3Dyyy.  In fact, maybe just try it first without "second_addr" =
as
long as your data rates are at or below 50 MS/s on 4 channels.
Rob

On Tue, Mar 16, 2021 at 2:06 PM Oliver Towlson <oliver.towlson@gmvnsl.com>
wrote:

> Hi
>
>
>
> Thanks so much for your responses. I tried not setting the master clock
> rate, and reducing the sample rate to 500kS/s but still got the same erro=
r
> message. I had an external clock source connected so I disconnected that
> and then also did not specify the clock or time source =E2=80=93 same err=
or
> message. I also tried only grabbing data off a single channel, but got th=
e
> same error.
>
>
>
> I did have some success running the example Python script rx_to_file.py
> though, and that seemed to run ok and produce a binary file without a
> problem. That script isn=E2=80=99t much direct use though as it seems to =
be calling
> the uhd libraries directly so I=E2=80=99m not sure what I could edit
>
>
>
> I=E2=80=99ve attached the Python script we have so far for our X310 data
> collection for 4 channels. Any insight anyone has would be greatly
> appreciated =E2=80=93 have we made an obvious mistake?
>
>
>
> Thanks very much
>
> Oliver
>
>
>
> *From:* Marcus D Leech [mailto:patchvonbraun@gmail.com]
> *Sent:* 12 March 2021 15:22
> *To:* Rob Kossler <rkossler@nd.edu>
> *Cc:* Oliver Towlson <oliver.towlson@gmvnsl.com>;
> USRP-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Re: X310 with dual TwinRX set up
>
>
>
> Also try running at a lower sample rate at first. Just to see that you
> have the logic correct.
>
>
>
> Sent from my iPhone
>
>
>
> On Mar 12, 2021, at 9:18 AM, Rob Kossler <rkossler@nd.edu> wrote:
>
> =EF=BB=BF
>
> Is there any chance that your code is attempting to set the master clock
> rate?  If so, perhaps see what happens if you don't set it in order to le=
t
> it be set automatically.
>
>
>
> On Fri, Mar 12, 2021 at 8:55 AM Oliver Towlson <oliver.towlson@gmvnsl.com=
>
> wrote:
>
> Hi everyone
>
>
>
> Thanks so much for your quick responses. Seems like the thing we were
> missing was that subdev spec =E2=80=93 once that was set it was straightf=
orward to
> generate the code.
>
>
>
> We tried running it and got the following:
>
>
>
> *[INFO] [UHD] linux; GNU C++ version 9.2.1 20200304; Boost_107100;
> UHD_3.15.0.0-2build5*
>
> *[INFO] [X300] X300 initialization sequence...*
>
> *[INFO] [X300] Maximum frame size: 8000 bytes.*
>
> *[INFO] [X300] Maximum frame size: 8000 bytes.*
>
> *[INFO] [X300] Radio 1x clock: 200 MHz*
>
> *[INFO] [X300] Radio 1x clock: 200 MHz*
>
> *[INFO] [1/DmaFIFO_0] Initializing block control (NOC ID:
> 0xF1F0D00000000000)*
>
> *[INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1317 MB/s)*
>
> *[INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1301 MB/s)*
>
> *[INFO] [1/Radio_0] Initializing block control (NOC ID:
> 0x12AD100000000001)*
>
> *[INFO] [1/Radio_1] Initializing block control (NOC ID:
> 0x12AD100000000001)*
>
> *[INFO] [1/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)=
*
>
> *[INFO] [1/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)=
*
>
> *[INFO] [1/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)=
*
>
> *[INFO] [1/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)=
*
>
> *[WARNING] [X300] Cannot update master clock rate! X300 Series does not
> allow changing the clock rate during runtime.*
>
> *terminate called after throwing an instance of 'uhd::io_error'*
>
> *  what():  EnvironmentError: IOError: Block ctrl (CE_00_Port_30) no
> response packet - AssertionError: bool(buff)*
>
> *  in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
> [with uhd::endianness_t _endianness =3D uhd::ENDIANNESS_BIG; uint64_t =3D=
 long
> unsigned int]*
>
> *  at /build/uhd-FRfZNJ/uhd-3.15.0.0/host/lib/rfnoc/ctrl_iface.cpp:151*
>
>
>
> *Aborted (core dumped)*
>
>
>
> Googling didn=E2=80=99t result in any answers beyond resetting the whole =
device.
> But it does seem like a common error. As you say, the 4xRF_in set-up is
> fairly standard so I=E2=80=99m not sure what is causing the issue. The ex=
ample
> rx_samples_to_file script runs fine (although it doesn=E2=80=99t seem to =
write
> anything, but it does seems to stream data fine)
>
>
>
> Let me know if you need any more information.
>
>
>
> Thanks very much
>
>
>
> Oliver
>
>
> P Please consider the environment before printing this e-mail.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> P Please consider the environment before printing this e-mail.
>

--000000000000099bf605bdab713b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Oliver,<div>This is with a single X310=
 with 2 TwinRx?=C2=A0 I noticed in the python you have addr0 and addr1 both=
 set.=C2=A0 This is the syntax used when there are multiple X310, not a sin=
gle x310.=C2=A0 With a single X310, you should use addr=3Dxxx, second_addr=
=3Dyyy.=C2=A0 In fact, maybe just try it first without &quot;second_addr&qu=
ot; as long as your data rates are at or below 50 MS/s on 4 channels.</div>=
<div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Mar 16, 2021 at 2:06 PM Oliver Towlson &lt;<a href=
=3D"mailto:oliver.towlson@gmvnsl.com">oliver.towlson@gmvnsl.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_3616638507264446299WordSection1">
<p><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:black=
">Hi</span><span style=3D"color:black"><u></u><u></u></span></p>
<p><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:black=
">=C2=A0</span><span style=3D"color:black"><u></u><u></u></span></p>
<p><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:black=
">Thanks so much for your responses. I tried not setting the master clock r=
ate, and reducing the sample rate to 500kS/s but still got the same error m=
essage. I had an external clock
 source connected so I disconnected that and then also did not specify the =
clock or time source =E2=80=93 same error message. I also tried only grabbi=
ng data off a single channel, but got the same error.
<u></u><u></u></span></p>
<p><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:black=
"><u></u>=C2=A0<u></u></span></p>
<p><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:black=
">I did have some success running the example Python script rx_to_file.py t=
hough, and that seemed to run ok and produce a binary file without a proble=
m. That script isn=E2=80=99t much direct
 use though as it seems to be calling the uhd libraries directly so I=E2=80=
=99m not sure what I could edit</span><span style=3D"color:black"><u></u><u=
></u></span></p>
<p><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:black=
">=C2=A0</span><span style=3D"color:black"><u></u><u></u></span></p>
<p><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:black=
">I=E2=80=99ve attached the Python script we have so far for our X310 data =
collection for 4 channels. Any insight anyone has would be greatly apprecia=
ted =E2=80=93 have we made an obvious mistake?<u></u><u></u></span></p>
<p><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:black=
"><u></u>=C2=A0<u></u></span></p>
<p><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:black=
">Thanks very much<u></u><u></u></span></p>
<p><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:black=
">Oliver
</span><span style=3D"color:black"><u></u><u></u></span></p>
<p><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:black=
">=C2=A0</span><span style=3D"color:black"><u></u><u></u></span></p>
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0cm 0cm">
<p><b><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:bl=
ack">From:</span></b><span style=3D"font-size:11pt;font-family:Calibri,sans=
-serif;color:black"> Marcus D Leech [mailto:<a href=3D"mailto:patchvonbraun=
@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>]
<br>
<b>Sent:</b> 12 March 2021 15:22<br>
<b>To:</b> Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_bl=
ank">rkossler@nd.edu</a>&gt;<br>
<b>Cc:</b> Oliver Towlson &lt;<a href=3D"mailto:oliver.towlson@gmvnsl.com" =
target=3D"_blank">oliver.towlson@gmvnsl.com</a>&gt;; <a href=3D"mailto:USRP=
-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a><br=
>
<b>Subject:</b> Re: [USRP-users] Re: X310 with dual TwinRX set up</span><sp=
an style=3D"color:black"><u></u><u></u></span></p>
</div>
</div>
<p><span style=3D"color:black">=C2=A0<u></u><u></u></span></p>
<p><span style=3D"color:black">Also try running at a lower sample rate at f=
irst. Just to see that you have the logic correct.=C2=A0<u></u><u></u></spa=
n></p>
<div>
<p><span style=3D"color:black">=C2=A0<u></u><u></u></span></p>
<div>
<p><span style=3D"color:black">Sent from my iPhone<u></u><u></u></span></p>
</div>
<div>
<p style=3D"margin-bottom:12pt"><span style=3D"color:black"><u></u>=C2=A0<u=
></u></span></p>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<p><span style=3D"color:black">On Mar 12, 2021, at 9:18 AM, Rob Kossler &lt=
;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&g=
t; wrote:<u></u><u></u></span></p>
</blockquote>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div>
<p><span style=3D"font-family:Tahoma,sans-serif;color:black">=EF=BB=BF</spa=
n><span style=3D"color:black"><u></u><u></u></span></p>
<div>
<p><span style=3D"color:black">Is there any chance that your code is attemp=
ting to set the master clock rate?=C2=A0 If so, perhaps see what happens if=
 you don&#39;t set it in order to let it be set automatically.<u></u><u></u=
></span></p>
</div>
<p><span style=3D"color:black">=C2=A0<u></u><u></u></span></p>
<div>
<div>
<p><span style=3D"color:black">On Fri, Mar 12, 2021 at 8:55 AM Oliver Towls=
on &lt;<a href=3D"mailto:oliver.towlson@gmvnsl.com" target=3D"_blank">olive=
r.towlson@gmvnsl.com</a>&gt; wrote:<u></u><u></u></span></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0cm 0cm 0cm 6pt;margin:5pt 0c=
m 5pt 4.8pt">
<div>
<div>
<p><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:black=
">Hi everyone
</span><span style=3D"color:black"><u></u><u></u></span></p>
<p><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:black=
">=C2=A0</span><span style=3D"color:black"><u></u><u></u></span></p>
<p><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:black=
">Thanks so much for your quick responses. Seems like the thing we were mis=
sing was that subdev spec =E2=80=93 once that was set it was straightforwar=
d to generate the code.</span><span style=3D"color:black"><u></u><u></u></s=
pan></p>
<p><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:black=
">=C2=A0</span><span style=3D"color:black"><u></u><u></u></span></p>
<p><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:black=
">We tried running it and got the following:</span><span style=3D"color:bla=
ck"><u></u><u></u></span></p>
<p><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:black=
">=C2=A0</span><span style=3D"color:black"><u></u><u></u></span></p>
<p><i><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:bl=
ack">[INFO] [UHD] linux; GNU C++ version 9.2.1 20200304; Boost_107100; UHD_=
3.15.0.0-2build5</span></i><span style=3D"color:black"><u></u><u></u></span=
></p>
<p><i><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:bl=
ack">[INFO] [X300] X300 initialization sequence...</span></i><span style=3D=
"color:black"><u></u><u></u></span></p>
<p><i><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:bl=
ack">[INFO] [X300] Maximum frame size: 8000 bytes.</span></i><span style=3D=
"color:black"><u></u><u></u></span></p>
<p><i><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:bl=
ack">[INFO] [X300] Maximum frame size: 8000 bytes.</span></i><span style=3D=
"color:black"><u></u><u></u></span></p>
<p><i><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:bl=
ack">[INFO] [X300] Radio 1x clock: 200 MHz</span></i><span style=3D"color:b=
lack"><u></u><u></u></span></p>
<p><i><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:bl=
ack">[INFO] [X300] Radio 1x clock: 200 MHz</span></i><span style=3D"color:b=
lack"><u></u><u></u></span></p>
<p><i><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:bl=
ack">[INFO] [1/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D000000=
00000)</span></i><span style=3D"color:black"><u></u><u></u></span></p>
<p><i><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:bl=
ack">[INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1317 MB/s)</span></i><sp=
an style=3D"color:black"><u></u><u></u></span></p>
<p><i><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:bl=
ack">[INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1301 MB/s)</span></i><sp=
an style=3D"color:black"><u></u><u></u></span></p>
<p><i><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:bl=
ack">[INFO] [1/Radio_0] Initializing block control (NOC ID: 0x12AD100000000=
001)</span></i><span style=3D"color:black"><u></u><u></u></span></p>
<p><i><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:bl=
ack">[INFO] [1/Radio_1] Initializing block control (NOC ID: 0x12AD100000000=
001)</span></i><span style=3D"color:black"><u></u><u></u></span></p>
<p><i><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:bl=
ack">[INFO] [1/DDC_0] Initializing block control (NOC ID: 0xDDC000000000000=
0)</span></i><span style=3D"color:black"><u></u><u></u></span></p>
<p><i><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:bl=
ack">[INFO] [1/DDC_1] Initializing block control (NOC ID: 0xDDC000000000000=
0)</span></i><span style=3D"color:black"><u></u><u></u></span></p>
<p><i><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:bl=
ack">[INFO] [1/DUC_0] Initializing block control (NOC ID: 0xD0C000000000000=
0)</span></i><span style=3D"color:black"><u></u><u></u></span></p>
<p><i><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:bl=
ack">[INFO] [1/DUC_1] Initializing block control (NOC ID: 0xD0C000000000000=
0)</span></i><span style=3D"color:black"><u></u><u></u></span></p>
<p><i><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:bl=
ack">[WARNING] [X300] Cannot update master clock rate! X300 Series does not=
 allow changing the clock rate during runtime.</span></i><span style=3D"col=
or:black"><u></u><u></u></span></p>
<p><i><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:bl=
ack">terminate called after throwing an instance of &#39;uhd::io_error&#39;=
</span></i><span style=3D"color:black"><u></u><u></u></span></p>
<p><i><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:bl=
ack">=C2=A0 what():=C2=A0 EnvironmentError: IOError: Block ctrl (CE_00_Port=
_30) no response packet - AssertionError: bool(buff)</span></i><span style=
=3D"color:black"><u></u><u></u></span></p>
<p><i><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:bl=
ack">=C2=A0 in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bo=
ol, double) [with uhd::endianness_t _endianness =3D uhd::ENDIANNESS_BIG; ui=
nt64_t =3D long unsigned int]</span></i><span style=3D"color:black"><u></u>=
<u></u></span></p>
<p><i><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:bl=
ack">=C2=A0 at /build/uhd-FRfZNJ/uhd-3.15.0.0/host/lib/rfnoc/ctrl_iface.cpp=
:151</span></i><span style=3D"color:black"><u></u><u></u></span></p>
<p><i><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:bl=
ack">=C2=A0</span></i><span style=3D"color:black"><u></u><u></u></span></p>
<p><i><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:bl=
ack">Aborted (core dumped)</span></i><span style=3D"color:black"><u></u><u>=
</u></span></p>
<p><span style=3D"color:black">=C2=A0<u></u><u></u></span></p>
<p><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:black=
">Googling didn=E2=80=99t result in any answers beyond resetting the whole =
device. But it does seem like a common error. As you say, the 4xRF_in set-u=
p is fairly standard so I=E2=80=99m not sure what
 is causing the issue. The example rx_samples_to_file script runs fine (alt=
hough it doesn=E2=80=99t seem to write anything, but it does seems to strea=
m data fine)</span><span style=3D"color:black"><u></u><u></u></span></p>
<p><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:black=
">=C2=A0</span><span style=3D"color:black"><u></u><u></u></span></p>
<p><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:black=
">Let me know if you need any more information.</span><span style=3D"color:=
black"><u></u><u></u></span></p>
<p><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:black=
">=C2=A0</span><span style=3D"color:black"><u></u><u></u></span></p>
<p><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:black=
">Thanks very much</span><span style=3D"color:black"><u></u><u></u></span><=
/p>
<p><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:black=
">=C2=A0</span><span style=3D"color:black"><u></u><u></u></span></p>
<p><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:black=
">Oliver</span><span style=3D"color:black"><u></u><u></u></span></p>
</div>
<p><span style=3D"color:black"><br>
</span><span style=3D"font-size:18pt;font-family:Webdings;color:green">P </=
span><span style=3D"font-size:7pt;font-family:Arial,sans-serif;color:green"=
>Please consider the environment before printing this e-mail.</span><span s=
tyle=3D"color:black">
<u></u><u></u></span></p>
</div>
<p><span style=3D"color:black">____________________________________________=
___<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><u></u><u></u></span></p>
</blockquote>
</div>
<p><span style=3D"color:black">____________________________________________=
___<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><u></u><u></u></span></p>
</div>
</blockquote>
</div>
</div>
<span><br>
</span><span style=3D"font-size:18pt;line-height:125%;font-family:Webdings;=
color:green">P<span></span>
<span style=3D"font-size:7pt;line-height:125%;font-family:Arial,sans-serif;=
color:green">
Please consider the environment before printing this e-mail.</span></span><=
span></span>
</div>

</blockquote></div></div>

--000000000000099bf605bdab713b--

--===============0259646257536703775==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0259646257536703775==--
