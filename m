Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 780BB376835
	for <lists+usrp-users@lfdr.de>; Fri,  7 May 2021 17:43:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6900038484E
	for <lists+usrp-users@lfdr.de>; Fri,  7 May 2021 11:43:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=umich.edu header.i=@umich.edu header.b="qcdVh4/5";
	dkim-atps=neutral
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 97BBD384603
	for <USRP-users@lists.ettus.com>; Fri,  7 May 2021 11:42:32 -0400 (EDT)
Received: by mail-lf1-f45.google.com with SMTP id t11so13304555lfl.11
        for <USRP-users@lists.ettus.com>; Fri, 07 May 2021 08:42:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=umich.edu; s=google-2016-06-03;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WszLA92yTdZQtwqsDeaM78Lo9liJWanpjgjKiz3podQ=;
        b=qcdVh4/5sRpgpzgPUv0VQhLZIKj8uFvRAtRBfkSgFCNfQDPiBQHK3Rn96qLQFIQ6AI
         IaGspDVHMgZV+nVTqxK2FIMva7jHwjTTnmLvciOjJwtApbw5f7yC7oj0ZEBwz4dL3wTr
         k5e7tiRRHREDhEzLUp4PB/7872BuD6KTW79Jp9nSsvWVie/xOFnNLazA9NmHuzZpgLCZ
         n+LzmmmytHv3dzzpo7vUEcnRN/39YilF6utttUJdHrBgMvSFyywNcR8pEoOpWZrg9x6V
         9bbnMHEtofs6RfK4FoSNNLBxX+te+mfluZbC6hHLZ7mQRkSV7QyzbN5Y6RlCEj2sr6ZX
         hxlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WszLA92yTdZQtwqsDeaM78Lo9liJWanpjgjKiz3podQ=;
        b=ldJAW/mW65u2War9KCaaWlqgDVr2pcDymJjvzo0lxtgqlduH3hZaoMNH3nsya4Gvd3
         7E1p37n1xbS0xj/jwO1pY4/ybGvw0IIFmA9XnPGYWCWGuXF4pSE++saMKd13Nd0feWAr
         Nnotn9tveNie3nBdqyFznop1P210y6IATWGweHIZZYct5gwbCb6fck6tEOqxNEk9D/aN
         L3SF5Mv3wNtKCXRC7C/kxjn03iwMarCUF9KJyRN6n9qqF9hDrkhYMx668w7gPS4JmIBt
         HON6hCsD+umAAGlje4hfhveNB3xdzYcjrn/6gnCWrywZ2vY/+2nqerm/la+XOPM04cNh
         DzCA==
X-Gm-Message-State: AOAM533EK63IRhHGTHeBSE8dDfx/3ujsSNlHvxpHfn/hhxiCtq00AVC7
	VX/P3cDX2d1lksDj1ckOE7JD5Ey06+Fbk8f25sRrRQ==
X-Google-Smtp-Source: ABdhPJxzAWv4exaGWfsJlLrzxasK67SwpIktq58VVTfzDekcblnF7zm7YYKONBC8W09V9tbUAFdZXJH1X+KlQVyIQgk=
X-Received: by 2002:a05:6512:3c95:: with SMTP id h21mr6848880lfv.446.1620402151310;
 Fri, 07 May 2021 08:42:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAErymBh8ud_G-UX50t0Xox12TETNMmgjZcZ8dgmzxJWvMjDxrg@mail.gmail.com>
 <F5105DDC-01C9-4AC1-9341-0B388C37012E@gmail.com>
In-Reply-To: <F5105DDC-01C9-4AC1-9341-0B388C37012E@gmail.com>
From: Achilleas Anastasopoulos <anastas@umich.edu>
Date: Fri, 7 May 2021 11:42:19 -0400
Message-ID: <CAErymBj5L5e9=aD0mNqN6dmkBTC66uBQiTSca07G221ntJiCWw@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: D3DVMJBMNV6SI57PYLICXIGYKGNZT2QW
X-Message-ID-Hash: D3DVMJBMNV6SI57PYLICXIGYKGNZT2QW
X-MailFrom: anastas@umich.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: usrp sink burst transmission
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D3DVMJBMNV6SI57PYLICXIGYKGNZT2QW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5588156234407514618=="

--===============5588156234407514618==
Content-Type: multipart/alternative; boundary="0000000000009f5b1c05c1bf46ca"

--0000000000009f5b1c05c1bf46ca
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

thanks for the reply.
So if I don't want this function (precisely timed bursts) but i only want
bursty transmission, I should only use the length tag, right?

My understanding of bursty transmission is that the USRP does not wait for
the buffers to fill up: when it sees the length tag, it waits for
appropriate number of samples  (value of length tag) to arrive and
transmits this burst immediately (sends it to DAC).

Furthermore, this mode of transmission will eliminate long delays (order of
5-10 seconds depending on the sampling rate) that I see when i change some
aspect of my tx-ed signal to appear on the RX side. The way I explain these
long delays is that the USRP TX buffer should fill up before actual
transmission occurs.

Is my understanding correct?

thanks again,
Achilleas





On Fri, May 7, 2021 at 11:19 AM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> I can answer at least one of your questions.
>
> The tx_time tag is used for TDMA type applications where the burst
> *timing* is critical.
>
> You send the burst a little in advance with the time tag, and the USRP
> won=E2=80=99t commence transmission until that time.
>
> Sent from my iPhone
>
> On May 7, 2021, at 10:19 AM, Achilleas Anastasopoulos <anastas@umich.edu>
> wrote:
>
> =EF=BB=BF
> I posted the following on discuss gnuradio list but I am also posting her=
e
> in case this is more appropriate.
> ---------------------------------------------------------
> Hi all,
>
> I am reading from here:
>
> https://wiki.gnuradio.org/index.php/USRP_Sink
>
> how to do burt transmission with the usrp_sink.
> My questions have to do with the second option:
>
> ----
> Using tagged streams (See Tagged Stream Blocks
> <https://wiki.gnuradio.org/index.php/Tagged_Stream_Blocks>). To use this
> capability, you must specify which string the usrp_sink block should be
> looking for to denote the length of the next PDU to be transmitted. Set t=
he
> "tsb_tag_name" parameter in the usrp_sink to whatever string your radio
> application uses to denote your PDU length. A commonly used string for th=
is
> purpose is simply "tx_pkt_len". If using Tagged Streams for timed bursts,
> you must include your "tx_pkt_len" tag and a "tx_time" tag on the first
> sample of a tx burst. If your first "tx_pkt_len" tag has an offset of 0,
> and your packet length is 1000 items, your next "tx_pkt_len" and "tx_time=
"
> tags must appear with an offset of 1000. TX bursts should not overlap, an=
d
> there should not be gaps in samples between bursts.
> ----
>
> Q1: why do we need two tags to make this happen? I would think that
> "tx_pkt_len" tag would be sufficient: when a tag like this is found by th=
e
> usrp sink then it waits for that many samples to come in and then it
> transmits them in burst mode. Then it waits for the next such tag and so =
on.
> What is the meaning/use of the second tag  "tx_time"?
>
> Q2: Does the "tx_time" tag have to be exactly that name (as opposed to th=
e
> "tx_pkt_len" tag which can be user defined?)
>
> Q3: The text above is talking about PDU's but my understanding is that a
> PDU is a special type of a PMT, while the USRP sink input has to be a
> tagged stream, not a PMT/PDU. Should the input be a PDU (to a message
> port?) or should it be a tagged stream?
>
> thanks
> Achilleas
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--0000000000009f5b1c05c1bf46ca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0Marcus,<div><br></div><div>thanks for the reply.</=
div><div>So if I don&#39;t want this function (precisely timed bursts) but =
i only want bursty transmission, I should only use the length tag, right?</=
div><div><br></div><div>My understanding of bursty transmission is that the=
 USRP does not wait for the buffers=C2=A0to fill up: when it sees the lengt=
h tag, it waits for appropriate number of samples=C2=A0

(value of length tag)

 to arrive  and transmits this burst immediately (sends it to DAC).</div><d=
iv><br></div><div>Furthermore, this mode of transmission will eliminate lon=
g delays (order of 5-10 seconds depending on the sampling=C2=A0rate) that I=
 see when i change some aspect of my tx-ed signal to appear on the RX side.=
 The way I explain these long delays is that the USRP TX buffer should fill=
 up before actual transmission occurs.</div><div><br></div><div>Is my under=
standing correct?</div><div><br></div><div>thanks again,</div><div>Achillea=
s</div><div><br></div><div><br></div><div><br></div><div><br></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, =
May 7, 2021 at 11:19 AM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@=
gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"auto">I can answer at least o=
ne of your questions.=C2=A0<div><br></div><div>The tx_time tag is used for =
TDMA type applications where the burst *timing* is critical.=C2=A0</div><di=
v><br></div><div>You send the burst a little in advance with the time tag, =
and the USRP won=E2=80=99t commence transmission until that time.=C2=A0<br>=
<br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockqu=
ote type=3D"cite">On May 7, 2021, at 10:19 AM, Achilleas Anastasopoulos &lt=
;<a href=3D"mailto:anastas@umich.edu" target=3D"_blank">anastas@umich.edu</=
a>&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=
=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div>I posted the following on discuss g=
nuradio list but I am also posting here in case this is more appropriate.</=
div><div>---------------------------------------------------------</div>Hi =
all,<div><br></div><div>I am reading from here:</div><div><br></div><div><a=
 href=3D"https://wiki.gnuradio.org/index.php/USRP_Sink" target=3D"_blank">h=
ttps://wiki.gnuradio.org/index.php/USRP_Sink</a><br></div><div><br></div><d=
iv>how to do burt transmission with the usrp_sink.</div><div>My questions h=
ave to do with the second option:</div><div><span style=3D"color:rgb(37,37,=
37);font-family:sans-serif;font-size:14px"><br></span></div><div><span styl=
e=3D"color:rgb(37,37,37);font-family:sans-serif;font-size:14px">----</span>=
</div><div><span style=3D"color:rgb(37,37,37);font-family:sans-serif;font-s=
ize:14px">Using tagged streams (See=C2=A0</span><a href=3D"https://wiki.gnu=
radio.org/index.php/Tagged_Stream_Blocks" title=3D"Tagged Stream Blocks" st=
yle=3D"color:rgb(6,69,173);font-family:sans-serif;font-size:14px;background=
:none;text-decoration-line:none" target=3D"_blank">Tagged Stream Blocks</a>=
<span style=3D"color:rgb(37,37,37);font-family:sans-serif;font-size:14px">)=
. To use this capability, you must specify which string the usrp_sink block=
 should be looking for to denote the length of the next PDU to be transmitt=
ed. Set the &quot;tsb_tag_name&quot; parameter in the usrp_sink to whatever=
 string your radio application uses to denote your PDU length. A commonly u=
sed string for this purpose is simply &quot;tx_pkt_len&quot;. If using Tagg=
ed Streams for timed bursts, you must include your &quot;tx_pkt_len&quot; t=
ag and a &quot;tx_time&quot; tag on the first sample of a tx burst. If your=
 first &quot;tx_pkt_len&quot; tag has an offset of 0, and your packet lengt=
h is 1000 items, your next &quot;tx_pkt_len&quot; and &quot;tx_time&quot; t=
ags must appear with an offset of 1000. TX bursts should not overlap, and t=
here should not be gaps in samples between bursts.=C2=A0</span></div><div><=
span style=3D"color:rgb(37,37,37);font-family:sans-serif;font-size:14px">--=
--</span></div><div><span style=3D"color:rgb(37,37,37);font-family:sans-ser=
if;font-size:14px"><br></span></div><div>Q1: why do we need two tags to mak=
e this happen? I would think that=C2=A0 &quot;tx_pkt_len&quot; tag would be=
 sufficient: when a tag like this is found by the usrp sink then it waits f=
or that many samples to come in and then it transmits them in burst mode. T=
hen it waits for the next such tag and so on.</div><div>What is the meaning=
/use of the second tag=C2=A0 &quot;tx_time&quot;?</div><div><br></div><div>=
Q2: Does the &quot;tx_time&quot; tag have to be exactly that name (as oppos=
ed to the &quot;tx_pkt_len&quot; tag which can be user defined?)</div><div>=
<br></div><div>Q3: The text above is talking about PDU&#39;s=C2=A0but my un=
derstanding is that a PDU is a special type of a PMT, while the USRP sink i=
nput has to be a tagged stream, not a PMT/PDU. Should the input be a PDU (t=
o a message port?) or should it be a tagged stream?</div><div><br></div><di=
v>thanks</div><font color=3D"#888888"><div>Achilleas</div><div><br></div></=
font></div>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a></span><br><span>To unsubscribe s=
end an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a></span><br></div></blockquo=
te></div></div></blockquote></div>

--0000000000009f5b1c05c1bf46ca--

--===============5588156234407514618==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5588156234407514618==--
