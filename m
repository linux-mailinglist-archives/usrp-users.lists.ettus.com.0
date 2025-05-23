Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DE73BAC1D42
	for <lists+usrp-users@lfdr.de>; Fri, 23 May 2025 08:51:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DB7DC385134
	for <lists+usrp-users@lfdr.de>; Fri, 23 May 2025 02:51:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747983102; bh=WHO3jDO3sxgBxJnpK6AqtNNAstEKch9GMPbkE0Wf2QI=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=PDjOXB1ncdcbaX+L+GSLxfOezFCqLvvr7g92EIpxAhkRqNU5HbTFfcfTa7c1oEqOO
	 sRp0T2b2Tm/0jUjL83Vs44cMZ58Jkmw/gV6BTe2jsjtbcQa5yohW72EFw8HYUm2VJ7
	 mNwngQVuH5uYAVUuMdU6WvmvJ7D/M5eilWBil6K+h4jeGxLwuPUZaEmyEkn9AcNYFc
	 Xigks+8eQWtQB+buFM6f6wOLa29/awn1dZ/HctfnI8D//pQSLoQ7+sYntsjzq6e2Ux
	 jGg8xCnHpMbcYHfWZ2SLZt6DOwku0Xfe4olhjgN8shmg9I8jhwH756RgjbidlFnCtB
	 cdMD3RPzUObAA==
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by mm2.emwd.com (Postfix) with ESMTPS id AB9E2385061
	for <usrp-users@lists.ettus.com>; Fri, 23 May 2025 02:51:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="TVZ/USsk";
	dkim-atps=neutral
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-ac2bb7ca40bso1494691766b.3
        for <usrp-users@lists.ettus.com>; Thu, 22 May 2025 23:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1747983085; x=1748587885; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gHzjeZoX124q2nJ503EPAl5Xn46gV+7rwaeoDtzj/Ns=;
        b=TVZ/USskzoo/NFnjIm27f2pksLqzyX4p58H17ZsM/GSj2q/otZyr9P10agKK6u2XBY
         Chv54d84sPqd42qUXDY7VdSDQ/+OTadG6Y0aLzLwEVgRELU+RnoOSb1MO9+Q8SKsmZ6n
         boFY9KtulbO8+8Mr0iAn0mdREE7KdE2dQ0KOZLGI89PXAuiIvMn3ZY7+FL5aMR9DuxDG
         GoECb51mLtReQzHR0t7JPUwwj7ovlgf+jDyRxUBMOEJKX+C+qo4XXLwMHeoe5FuGbsHz
         Nrrbmk3eWuBjv+YzENSu/TNSHBJOYwcGI5EJe2IoolAzBJfYcsQ/GJBMC2C0rE7BjvMH
         lb2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747983085; x=1748587885;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gHzjeZoX124q2nJ503EPAl5Xn46gV+7rwaeoDtzj/Ns=;
        b=bwBeCf2TuCM6qoNQzTrlj/iVSnyL00LORrcS/NNeLGOKYcxxwIl+B0UG8V+RGBBvVW
         Qw0FmVyd26HWVA32jO8ibIl7hDLCMxWnRwCPVNBv1A3IziveymumZ5DvbnZ14GUwwQK9
         mdbxjnkCuavJWgT76K7E3sazvYgrRqq5/nKczY8tUMcORdZ7QV0AYvdHYUXPOcsGtL8e
         EomOUIIEaZMdwEnPr8zm32oBZZOO07BO0ONLgwCGiya2iJq+XH8vLNYe9eacUrF4BY+e
         lVq7OeUfxbZD0nAuzmYzMalei5ZQe+MOUasW3ekXqt5s2x9TDKqn7nwaaxecmm5gbr7A
         Qk6Q==
X-Gm-Message-State: AOJu0YwBs5S7svDEjY0D+ZvHW72cvhaGtraxUIjCpVH79/EvO3yapMun
	HoPWcDsVOiIPQ7g/9WzdQ00hHae4TpRlqwn0H2c7Igj5moWYZYQhUVJIEOdHQ/jHtblf3WV1j+D
	VI+oj1OMDRJ5+vkCcZQnPjdhWiWS7ZfJVtKM9mzG44NSa6OsmhD/iNyM=
X-Gm-Gg: ASbGncscX4txVFlat+eHh+m5FkvKE3Gy45LgBl5MN6xCrWF9JflBRvhw/CqpcqTP4gf
	ZZ/MvTR1dl5goll7lMbfd+65Ri0jiPWzrifW7Uq4K7tq1hpplFc4Uh6xEBellNXhBgdXcWc52Fv
	QiPBuz+QPTnEeZWpVULaza12RgZp/Tpvm4WTjRK7Ne5HB2uw9cPcxExWlYYPvx7hxk
X-Google-Smtp-Source: AGHT+IH8DfKnoR51S6Qc5zqjQW8qk/nG2LzkEUqoq13fmTiCEgi7L7XaxvmFG2nbBx6WIYKH2aQdLYjnXhjAv47TjrI=
X-Received: by 2002:a17:907:3ea2:b0:ad5:63e0:b721 with SMTP id
 a640c23a62f3a-ad563e0bedcmr2118734966b.31.1747983085025; Thu, 22 May 2025
 23:51:25 -0700 (PDT)
MIME-Version: 1.0
References: <06fc5d04db3c4177904569150e0e304f@vastech.co.za> <CAB__hTSsONuCyQnpOMbSviitzzquiCP-r1evSbYg14cA1kLE-g@mail.gmail.com>
In-Reply-To: <CAB__hTSsONuCyQnpOMbSviitzzquiCP-r1evSbYg14cA1kLE-g@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 23 May 2025 08:51:14 +0200
X-Gm-Features: AX0GCFveb5CWLERc-jX806nTW3hxvZDd2Ah_h2nDQEIpdc12FXpgbUUhxkVTTjU
Message-ID: <CAFOi1A7-TjVcBPKPijcXEk4hUzgix7VNQp+yCYg3r_myOWw6ug@mail.gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: QRIMFKBLPTJVNRI5ZMH4KCO7UNI23LJ2
X-Message-ID-Hash: QRIMFKBLPTJVNRI5ZMH4KCO7UNI23LJ2
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc loopback to tx ports, and other warnings
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QRIMFKBLPTJVNRI5ZMH4KCO7UNI23LJ2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3207237492581201947=="

--===============3207237492581201947==
Content-Type: multipart/alternative; boundary="000000000000db50710635c806b5"

--000000000000db50710635c806b5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Did you, by any chance, set the action forwarding policy to ONE_TO_ALL? I
sketched your RFNoC flow graph and there's a loopback going from Radio ->
PolConverter -> Split Stream 0 -> DUC -> Radio. (Loopbacks are fine in
RFNoC!).

If you have the action forwarding to ONE_TO_ALL, then the PolConverter will
forward the stream command to its output ports, and Split-Stream/DUC will
forward them to the radio input ports. But those don't accept stream
commands, hence the warning. It seems ONE_TO_FAN would be the right choice.

--M

On Thu, May 22, 2025 at 3:28=E2=80=AFPM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Kevin,
> Try issuing the stream command directly on the Radio block rather than th=
e
> rx_streamer.  I don't know why you are getting the warnings you are
> getting, but trying this step might produce a different result.
>
> On another note, since you are using timed commands, there will be a time
> stamp in your received data stream. When this stream arrives at the Tx
> Radio after passing through the loopback path, it will be considered "Lat=
e"
> at the Tx Radio because the time stamp has passed.  Your block will need =
to
> add an offset to the time stamp (or remove it) so that it won't be late
> when arriving at the Tx Radio.
> Rob
>
> On Thu, May 22, 2025 at 4:45=E2=80=AFAM Kevin Williams <
> kevin.williams@vastech.co.za> wrote:
>
>> Hi,
>>
>>
>>
>> I have an rfnoc block with two output ports which is feeding the splitte=
r
>> block to duplicate each port.
>>
>>
>>
>> One pair is used to stream to the host, and the other is looped back to
>> the radio via the DUC block.
>>
>>
>>
>> The active connections are reported as:
>>
>>
>>
>> Active connections:
>>
>> * 0/Radio#0:0=3D=3D>0/PolConverter#0:0
>>
>> * 0/Radio#0:1=3D=3D>0/PolConverter#0:1
>>
>> * 0/PolConverter#0:0=3D=3D>0/SplitStream#0:0
>>
>> * 0/SplitStream#0:0-->0/DUC#0:0
>>
>> * 0/PolConverter#0:1=3D=3D>0/SplitStream#0:1
>>
>> * 0/SplitStream#0:1-->0/DUC#0:1
>>
>> * 0/DUC#0:0=3D=3D>0/Radio#0:0
>>
>> * 0/DUC#0:1=3D=3D>0/Radio#0:1
>>
>> * 0/SplitStream#0:2-->RxStreamer#0:0
>>
>> * 0/SplitStream#0:3-->RxStreamer#0:1
>>
>>
>>
>> I=E2=80=99m getting this warning when trying to stream (to the host and =
the TX):
>>
>>
>>
>> [WARNING] [0/Radio#0] Received stream command, but not to output port!
>> Ignoring.
>>
>>
>>
>> Along with debug info:
>>
>>
>>
>> [DEBUG] [RxStreamer#0] Received overrun message on port 0
>>
>> [DEBUG] [RxStreamer#0] Received overrun message on port 1
>>
>> L[DEBUG] [RxStreamer#0] Received late command message on port 0
>>
>> [DEBUG] [RxStreamer#0] Received late command message on port 1
>>
>> D
>>
>>
>>
>> I start the streaming with a timed command to the RX streamer like:
>>
>>
>>
>> rx_stream->issue_stream_cmd(stream_cmd);
>>
>>
>>
>> I=E2=80=99m not getting the red =E2=80=9CTX=E2=80=9D led illuminated on =
the N300, and I don=E2=80=99t
>> understand where or why these warnings are being created?
>>
>>
>>
>> Previous posts have mentioned this link (
>> https://corvid.io/2017/04/22/stupid-rfnoc-tricks-loopback/) has helped
>> but it seems to be down.
>>
>>
>>
>> How does one get a loopback in the fpga from rfnoc blocks to the radio T=
X?
>>
>>
>>
>> BTW: in the firmware I tie TEOV and TEOB to my TLAST in my custom block.
>>
>>
>>
>> Many thanks, Kevin
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000db50710635c806b5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Did you, by any chance, set the action forwarding pol=
icy to ONE_TO_ALL? I sketched your RFNoC flow graph and there&#39;s a loopb=
ack going from Radio -&gt; PolConverter -&gt; Split Stream 0 -&gt; DUC -&gt=
; Radio. (Loopbacks are fine in RFNoC!).</div><div><br></div><div>If you ha=
ve the action forwarding to ONE_TO_ALL, then the PolConverter will forward =
the stream command to its output ports, and Split-Stream/DUC will forward t=
hem to the radio input ports. But those don&#39;t accept stream commands, h=
ence the warning. It seems ONE_TO_FAN would be the right choice.</div><div>=
<br></div><div>--M</div></div><br><div class=3D"gmail_quote gmail_quote_con=
tainer"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 22, 2025 at 3:28=
=E2=80=AFPM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@lis=
ts.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">H=
i Kevin,<div>Try issuing the stream command directly on the Radio block rat=
her than the rx_streamer.=C2=A0 I don&#39;t know why you are getting the wa=
rnings you are getting, but trying this step might produce a different resu=
lt.=C2=A0</div><div><br></div><div>On another note, since you are using tim=
ed commands, there will be a time stamp in your received data stream. When =
this stream arrives at the Tx Radio after passing through the loopback path=
, it will be considered &quot;Late&quot; at the Tx Radio because the time s=
tamp has passed.=C2=A0 Your block will need to add an offset to the time st=
amp (or remove it) so that it won&#39;t be late when arriving at the Tx Rad=
io.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Thu, May 22, 2025 at 4:45=E2=80=AFAM Kevin Willia=
ms &lt;<a href=3D"mailto:kevin.williams@vastech.co.za" target=3D"_blank">ke=
vin.williams@vastech.co.za</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div><div lang=3D"EN-ZA"><div><p class=3D"MsoNorm=
al"><span lang=3D"EN-US">Hi,<u></u><u></u></span></p><p class=3D"MsoNormal"=
><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"=
><span lang=3D"EN-US">I have an rfnoc block with two output ports which is =
feeding the splitter block to duplicate each port.<u></u><u></u></span></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">One pair is used to stream to t=
he host, and the other is looped back to the radio via the DUC block.<u></u=
><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=
=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">The active=
 connections are reported as:<u></u><u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US" style=3D"font-family:&quot;Courier New&quot;">Active=
 connections:<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"=
EN-US" style=3D"font-family:&quot;Courier New&quot;">* 0/Radio#0:0=3D=3D&gt=
;0/PolConverter#0:0<u></u><u></u></span></p><p class=3D"MsoNormal"><span la=
ng=3D"EN-US" style=3D"font-family:&quot;Courier New&quot;">* 0/Radio#0:1=3D=
=3D&gt;0/PolConverter#0:1<u></u><u></u></span></p><p class=3D"MsoNormal"><s=
pan lang=3D"EN-US" style=3D"font-family:&quot;Courier New&quot;">* 0/PolCon=
verter#0:0=3D=3D&gt;0/SplitStream#0:0<u></u><u></u></span></p><p class=3D"M=
soNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Courier New&quot;=
">* 0/SplitStream#0:0--&gt;0/DUC#0:0<u></u><u></u></span></p><p class=3D"Ms=
oNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Courier New&quot;"=
>* 0/PolConverter#0:1=3D=3D&gt;0/SplitStream#0:1<u></u><u></u></span></p><p=
 class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Courie=
r New&quot;">* 0/SplitStream#0:1--&gt;0/DUC#0:1<u></u><u></u></span></p><p =
class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Courier=
 New&quot;">* 0/DUC#0:0=3D=3D&gt;0/Radio#0:0<u></u><u></u></span></p><p cla=
ss=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Courier Ne=
w&quot;">* 0/DUC#0:1=3D=3D&gt;0/Radio#0:1<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Courier New&=
quot;">* 0/SplitStream#0:2--&gt;RxStreamer#0:0<u></u><u></u></span></p><p c=
lass=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Courier =
New&quot;">* 0/SplitStream#0:3--&gt;RxStreamer#0:1<u></u><u></u></span></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">I=E2=80=99m getting this warnin=
g when trying to stream (to the host and the TX):<u></u><u></u></span></p><=
p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><=
p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Couri=
er New&quot;">[WARNING] [0/Radio#0] Received stream command, but not to out=
put port! <span style=3D"color:red">Ignoring</span>.<u></u><u></u></span></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US">Along with debug info:<u></u>=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font=
-family:&quot;Courier New&quot;">[DEBUG] [RxStreamer#0] Received overrun me=
ssage on port 0<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US" style=3D"font-family:&quot;Courier New&quot;">[DEBUG] [RxStreame=
r#0] Received overrun message on port 1<u></u><u></u></span></p><p class=3D=
"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Courier New&quo=
t;">L[DEBUG] [RxStreamer#0] Received late command message on port 0<u></u><=
u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-=
family:&quot;Courier New&quot;">[DEBUG] [RxStreamer#0] Received late comman=
d message on port 1<u></u><u></u></span></p><p class=3D"MsoNormal"><span la=
ng=3D"EN-US" style=3D"font-family:&quot;Courier New&quot;">D</span><span la=
ng=3D"EN-US"><u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"=
EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"=
EN-US">I start the streaming with a timed command to the RX streamer like:<=
u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=
=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US" style=
=3D"font-family:&quot;Courier New&quot;">rx_stream-&gt;issue_stream_cmd(str=
eam_cmd);<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-U=
S"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-U=
S">I=E2=80=99m not getting the red =E2=80=9CTX=E2=80=9D led illuminated on =
the N300, and I don=E2=80=99t understand where or why these warnings are be=
ing created?<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"E=
N-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"E=
N-US">Previous posts have mentioned this link (<a href=3D"https://corvid.io=
/2017/04/22/stupid-rfnoc-tricks-loopback/" target=3D"_blank">https://corvid=
.io/2017/04/22/stupid-rfnoc-tricks-loopback/</a>) has helped but it seems t=
o be down.<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US">How does one get a loopback in the fpga from rfnoc blocks to the radio =
TX?<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u>=
</u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">BTW=
: in the firmware I tie TEOV and TEOB to my TLAST in my custom block.<u></u=
><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=
=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Many thank=
s, Kevin<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
"><u></u>=C2=A0<u></u></span></p></div></div>______________________________=
_________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000db50710635c806b5--

--===============3207237492581201947==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3207237492581201947==--
