Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 087C3B332A9
	for <lists+usrp-users@lfdr.de>; Sun, 24 Aug 2025 22:50:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C40093866D3
	for <lists+usrp-users@lfdr.de>; Sun, 24 Aug 2025 16:50:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1756068623; bh=rkoDUoa2mFazT1REZkxV3ztah6UVAtvvjVXFN6yJ5P4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=mN8JcgKEMTtmUioEvoI9t0eENkRw4p0BS5gZAQM6BOHccoGNd+h0Lo9A4ETPvVefk
	 GZVZnY0lgbkiNJsuf/m3VlZUfZdFLL7a/OGSPfWGIYLXDNr0ZR3lCFE1NX/FaFjsMG
	 n3Cge1pvPzOjGWKg/kz3qq7WPhP06Uj4oZnoiIS/KdRriKpmqQ7gSrsgLbEsKWHb5k
	 MRDRHRku95Zsc5ibwqD6wf0vXJYeFcORHTu0Zt5huAP5Ib29z/DdOcnhnLU+8s3uQn
	 VRasPY7Z53r+xVy6SppFX/XNFKdgT2b+M2SdbcuQCMSx3KjMS+6AjbYjopef2Ge1+A
	 nrBceb4TWU3oQ==
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	by mm2.emwd.com (Postfix) with ESMTPS id C2B7C386602
	for <usrp-users@lists.ettus.com>; Sun, 24 Aug 2025 16:49:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iJ02YliU";
	dkim-atps=neutral
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-55ce521f77bso4121458e87.1
        for <usrp-users@lists.ettus.com>; Sun, 24 Aug 2025 13:49:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756068581; x=1756673381; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=z7vJcsB9PB1WALd/+w2MjLWJLuGpxQLMZMhVGoqeUZc=;
        b=iJ02YliUVQeN2kdUcA9x+9hUDWbzt9SHpKua44hSC9W7M6BDy3A1qdPM1h5paMFk+0
         SnoKIhSLoxurbRZ2J9p+jmTuRHTZaft1HmoqTY7NDvGtqfrdILFQ0rhBqYtfwELffNn9
         ILZ8xbkgleTDI99yhQ+uBNGHddYoi4piKGQloWde9eIx6dUWQRCP+rwGtXxP4euaIdad
         zOFtCPI5X1noJWeQK75ukzBdaNu5/V7lrsThm7LOoYu4SqoEhoFTVz76k+OUbR+QebB+
         2cK31y1/wqQqjPSr6A8uIhdN2iv25mtn7Lmy9DIf4A7BLRVVnj/7xblwZGFW8HfY+1qv
         5gYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756068581; x=1756673381;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z7vJcsB9PB1WALd/+w2MjLWJLuGpxQLMZMhVGoqeUZc=;
        b=SVURCOXiPySpaMOB+dacv/WVh0c6m04303JRFeHCrcR7P/6A1b9rd4qJp4xFYoInUD
         r47elro51iohon6nlSpDsGgWJBoJ7qSm2VnTtk5e/14O1u40KZmcbMAceGcgghZFudF0
         rcK/If52EGIexVfYNWNT+fA5H4m40PFZvncaOH8pK1Fgjv07IQo3DU4RVlYUVwMDLMCZ
         M1k56OggGHthrlvHilVDQq/qRMhO9e8WrX0V8ASJT6HL2n3ENctR6vml1W5UgYbDSCW2
         /djLV2h6BGKSjuxBYVO+foK2ST1V18J5fxUh2fQefqI0OcAzHad4XZ0/mT+2twUB7bWs
         8CnQ==
X-Gm-Message-State: AOJu0YwJgrEhW6rMR7TmTG/RV2+ZG5PDbP6V4m6DuGIG/53j7iYTNYgN
	B/3SAWuhgYqKKHTrsdgLgfZbVF+xQvvznBDO9nwppeClKVbN6ZU12jeiS5qtee82jodcQC05pr+
	XTGYVphbzljMMr6nVD1d65Z0mhS7rSZ8E0yg2
X-Gm-Gg: ASbGncuHQ8Zr0FlUMNWXQau/KBR7Pt3p71VZ9bq2c+E5FVqIjEIUzQe2Koqlthypclk
	9C9ja69jlYz0cjE1cUbHI95sHSUIAqR6aptAOrqytlMkmxihbkvcyqXER3QCgm9vUXbPxDc/4h8
	W1qTu8RajiVWmUGtsG0zcwa2FgimoIbbtzi6AIFJ5Pa87Myx/WTH7ydcudFLC0bIzWxXACLG1NB
	aIJJ7xmCw==
X-Google-Smtp-Source: AGHT+IGrrMGFmRXLo8qzo3dFgDn0RovoHenRDFaZWWBg/nZwisuq/K4+7LJ+XA/bNOf4FetdlbnI+FdSVYt2CHoE96U=
X-Received: by 2002:a05:6512:2283:b0:55f:3f85:529d with SMTP id
 2adb3069b0e04-55f3f855611mr1229253e87.3.1756068580708; Sun, 24 Aug 2025
 13:49:40 -0700 (PDT)
MIME-Version: 1.0
References: <2x1B7T1biy0eBDR75DKIlbwBCQVLf50ocVDicZ3ziM@lists.ettus.com>
In-Reply-To: <2x1B7T1biy0eBDR75DKIlbwBCQVLf50ocVDicZ3ziM@lists.ettus.com>
From: Jons <jonsdeburn@gmail.com>
Date: Sun, 24 Aug 2025 22:49:28 +0200
X-Gm-Features: Ac12FXxaZLnk9y6YIdFFJFicU977qdq9tEBMUPVwL4E0vMHddN8062y1chbNqnY
Message-ID: <CAB-=5jZOSTYdbpUYqcMtYzoK=f1LJHWQU5uhyXVC26KGBFg2iw@mail.gmail.com>
To: niels.steffen.garibaldi@emerson.com
Content-Type: multipart/mixed; boundary="000000000000f4b278063d229347"
Message-ID-Hash: U5GUPTUMHLJBDZQZRMQB5NMK5DBBUIRZ
X-Message-ID-Hash: U5GUPTUMHLJBDZQZRMQB5NMK5DBBUIRZ
X-MailFrom: jonsdeburn@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tlast in the CHDR packet
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U5GUPTUMHLJBDZQZRMQB5NMK5DBBUIRZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--000000000000f4b278063d229347
Content-Type: multipart/alternative; boundary="000000000000f4b277063d229345"

--000000000000f4b277063d229345
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Niels,
Thank you so much for the detailed reply, I think I understand it well now.
As you mentioned I am expecting 16 x sc16 items to process at once in my
block and I configured the CHDR_W to 128 bits. In the example from the link
you shared I see that the spp param is passed as a string key, value pair.
After going through the code I can see that there is an input field '*args*=
'
for TX streamer in GNU Radio and I think that is where I have to enter the
parameter and I think in my case it should be "spp=3D16".

From your explanation and code I assume that 1 sample will be of size
32bits if the output-type/otw_format is sc16? (because of the conversion I
see in the connect_channel() in
https://github.com/EttusResearch/uhd/blob/master/host/lib/rfnoc/rfnoc_tx_st=
reamer.cpp
.

Sorry, it was a typo in the processing chain from the last message.

-J

On Thu, 21 Aug 2025 at 14:32, niels.steffen.garibaldi--- via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Jons,
>
> TL;DR: If you configure the packet size of your (TX) streamer by
> specifying the SPP parameter of your stream_args, inside of your RFNoC
> block you can assume that every time tlast is asserted, have received a
> full packet consisting of 32 samples.
>
>
> Technically you can make your packets whatever size you like, especially
> if you are not interfacing with any other data processing RFNoC blocks.
>
> Some blocks have special requirements on the packet size, for example the
> fft block. This block takes the full packet and then processes it as a
> whole, similar to how it seems your custom block is operating. If you are
> doing using an FFT size of 1024, the fft block expects every packet to
> consist of exactly 1024 (sc16) samples.
>
> In RFNoC, you can specify the size of the TX or RX streamer packet sample
> payload by specifying the SPP(Samples Per Packet) parameter in the
> stream_args.
> See https://uhd.readthedocs.io/en/latest/page_stream.html#stream_intro
> example code on a basic way to do that.
>
> When it comes to the FPGA side and tlast, it gets slightly more
> complicated:
>
> RFNoC blocks communicate with each other using CHDR packets, that are
> transmitted over the CHDR data bus connections between them.
>
> The width of this bus is determined by the `CHDR_W` parameter of the bit
> file variant you are using your block in. A packet is split into data wor=
ds
> of width `CHDR_W` and then forwarded one word per clock cycle of the data
> clock `chdr_clk`.
>
> This means that if you are using a `CHDR_W` of 64 as used in the 200MHz B=
W
> variant bitfile, the =E2=80=9CSPP=3D32=E2=80=9D packet you have sent from=
 the host will be
> resized, and tlast will be asserted after 1 CHDR header word + 16 payload
> Data words each containing two samples (equivalent to =E2=80=9CNIPC=3D2=
=E2=80=9D with your
> sample width of sc16 being =E2=80=9CITEM_W=3D32=E2=80=9D).
>
> I=E2=80=99m not as familiar with gnuradio but i am assuming that if you a=
re
> setting the spp for your streamer your block should be fine.
>
> The size of the return packet is you depends on what the output of your
> custom RFNoC block is, and whenever you assert tlast inside of your block=
.
>
> By the way, I am assuming there is a typo in your processing chain:
>
> GNU Radio block A --> TX streamer --> custom RFNoC block --> *RX*
> streamer
> --> GNU Radio block B
>
> Regards,
> Niels
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f4b277063d229345
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear Niels,</div><div>Thank you so much for the detai=
led reply, I think I understand it well now. As you mentioned I am expectin=
g 16 x sc16 items to process at once in my block and I configured the CHDR_=
W to 128 bits. In the example from the link you shared I see that the spp p=
aram is passed as a string key, value pair. After going through the code I =
can see that there is an input field &#39;<i>args</i>&#39; for TX streamer =
in GNU Radio and I think that is where I have to enter the parameter and I =
think in my case it should be &quot;spp=3D16&quot;.</div><div><br>From your=
 explanation and code I assume that 1 sample will be of size 32bits if the =
output-type/otw_format is sc16? (because of the conversion I see in the con=
nect_channel() in <a href=3D"https://github.com/EttusResearch/uhd/blob/mast=
er/host/lib/rfnoc/rfnoc_tx_streamer.cpp">https://github.com/EttusResearch/u=
hd/blob/master/host/lib/rfnoc/rfnoc_tx_streamer.cpp</a> .</div><div><br></d=
iv><div> Sorry, it was a typo in the processing chain from the last message=
.</div><div><br></div><div>-J</div></div><br><div class=3D"gmail_quote gmai=
l_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 21 Aug 202=
5 at 14:32, niels.steffen.garibaldi--- via USRP-users &lt;<a href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi Jons,</p><p>TL=
;DR: If you configure the packet size of your (TX) streamer by specifying t=
he SPP parameter of your stream_args, inside of your RFNoC block you can as=
sume that every time tlast is asserted, have received a full packet consist=
ing of 32 samples.<br><br><br>Technically you can make your packets whateve=
r size you like, especially if you are not interfacing with any other data =
processing RFNoC blocks.<br><br>Some blocks have special requirements on th=
e packet size, for example the fft block. This block takes the full packet =
and then processes it as a whole, similar to how it seems your custom block=
 is operating. If you are doing using an FFT size of 1024, the fft block ex=
pects every packet to consist of exactly 1024 (sc16) samples.</p><p>In RFNo=
C, you can specify the size of the TX or RX streamer packet sample payload =
by specifying the SPP(Samples Per Packet) parameter in the stream_args.<br>=
See <a href=3D"https://uhd.readthedocs.io/en/latest/page_stream.html#stream=
_intro" title=3D"" target=3D"_blank">https://uhd.readthedocs.io/en/latest/p=
age_stream.html#stream_intro</a> example code on a basic way to do that.</p=
><p>When it comes to the FPGA side and tlast, it gets slightly more complic=
ated:</p><p>RFNoC blocks communicate with each other using CHDR packets, th=
at are transmitted over the CHDR data bus connections between them. </p><p>=
The width of this bus is determined by the `CHDR_W` parameter of the bit fi=
le variant you are using your block in. A packet is split into data words o=
f width `CHDR_W` and then forwarded one word per clock cycle of the data cl=
ock `chdr_clk`. </p><p>This means that if you are using a `CHDR_W` of 64 as=
 used in the 200MHz BW variant bitfile, the =E2=80=9CSPP=3D32=E2=80=9D pack=
et you have sent from the host will be resized, and tlast will be asserted =
after 1 CHDR header word + 16 payload Data words each containing two sample=
s (equivalent to =E2=80=9CNIPC=3D2=E2=80=9D with your sample width of sc16 =
being =E2=80=9CITEM_W=3D32=E2=80=9D).<br><br>I=E2=80=99m not as familiar wi=
th gnuradio but i am assuming that if you are setting the spp for your stre=
amer your block should be fine.</p><p>The size of the return packet is you =
depends on what the output of your custom RFNoC block is, and whenever you =
assert tlast inside of your block.<br><br>By the way, I am assuming there i=
s a typo in your processing chain:<br><br>GNU Radio block A --&gt; TX strea=
mer --&gt; custom RFNoC block --&gt; <strong>RX</strong> streamer <br>--&gt=
; GNU Radio block B<br><br>Regards,<br>Niels</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000f4b277063d229345--

--000000000000f4b278063d229347
Content-Type: image/png; name="gr_tx_streamer.png"
Content-Disposition: attachment; filename="gr_tx_streamer.png"
Content-Transfer-Encoding: base64
Content-ID: <f_meq5up0m0>
X-Attachment-Id: f_meq5up0m0

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
--000000000000f4b278063d229347
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--000000000000f4b278063d229347--
