Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A7756CA7D
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jul 2022 18:04:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F37BD383C69
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jul 2022 12:04:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657382654; bh=YS2oct0eBldIjJLqG3Ymnqazyc147KE9+/eNfsEBW+I=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=rrjJVhdjH61t/twSZdR5VjPuvJ6z3IGiJnXzNfvac1uHEbzZ0aAmcY/H9IW4fSeY+
	 g+iPqyDOMVzjkhYtviY+j+eYDzKgU+1PGAwpVztoSDxwwWTHKLfSKW9fLX/xYh5qwB
	 DThOz/RucsjY6kZusd9VLjsYnyC+C7tCKLa2QnZqnD6UWXtx4hRlKAVrl5URenjdZj
	 ARSHosqxRyDhFV2rUL5UZZTT/4XgQoQW9lvydG4KVHBv+Cr59bB8deckBg0Ck5P36C
	 cGV4xKY234zkhGIemUoGD6/adHLlmYMaJPVi4EqLH8yvjgU1I+EeZrFIlc3FXAOHCr
	 KuAWOOofDXWWw==
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	by mm2.emwd.com (Postfix) with ESMTPS id CC818383FBC
	for <usrp-users@lists.ettus.com>; Sat,  9 Jul 2022 12:01:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CGpUaZiE";
	dkim-atps=neutral
Received: by mail-yb1-f180.google.com with SMTP id g4so2302562ybg.9
        for <usrp-users@lists.ettus.com>; Sat, 09 Jul 2022 09:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dfgnJMQlxSBNNNa/6YwQJfigMhCOchmzmUFPtuyZCBM=;
        b=CGpUaZiEUNSC5+IylolCjHPulKE/x7Msdzi854nlMVn2kasvbIqC8K+PswjLZvKyEX
         FKo8MYDoy+hZQM6XTL35kBEMPyEQac1ZQ3K/f6EeqPbmsg3hpo629hfVD3FVKIT/JXvm
         3XUxDKpIFduLWDxScS/6qm4p2rTy8dAa+iwZroIim/9VF5gxyZ1MqkHH7Eg8ZtChOWWm
         bA2akMR2yFqhIdL2cr+EI7GJb2OMEUam5M4oezBkydAkGplw3Q2ZhNWSiHzSEF/tBm0J
         9KhBov9RTxFdixW6jXXHPB+HKmjG6XAyJxR1fj7hsWH8PxL8lIwOWocR2v4hCExKFZfP
         kVAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dfgnJMQlxSBNNNa/6YwQJfigMhCOchmzmUFPtuyZCBM=;
        b=oQDyv1dc9bxQJi5BeKJf/we4sMfAZg9yGXM3wu8vdtn5gUCAuwkL5t9pF74byuIXcx
         rd51jlvGa+iNuxXxrMLM/6kFcDPM+x38cDT0+hlktP4myGAnjlnEvfDzqqsaF8RGgd4v
         QuRZ2RYbPWqJaM6oTIfteMWpawJDUBPxElkWaPHOIAtKwryUSPQxpOi580lU1jC+9Y8f
         f0Cy4bn0LjLj2GoEST2KlUnVNAu5bwQ+2coIsH/kIXzcudjIBhi+0hoKSEUUD352mEwt
         W8EoCEYVGe2RP6KU1UUMtVd3iYVix5S7zQTh0xUn5y30fIXbSmoh3RH8mpxP7DXADcog
         f2rw==
X-Gm-Message-State: AJIora9clKK+IkUKvvtfgiP4+1/Qh27POo19vNe7Whe5oGwn73VIWFmM
	fj3NQJH6Rmee6WjconYtB3baYHLh4Sk3VzqamKv7MWRKoLi53E9Mjd4=
X-Google-Smtp-Source: AGRyM1tDo5Rzs2qt1scqKe7OES5CA0W6k/h8iIKsE6mCFXjygqQDBysKlBywopOVvUR9mJw50M3A67Lpso3cEyhfft0=
X-Received: by 2002:a25:cf43:0:b0:66e:31fe:2bb9 with SMTP id
 f64-20020a25cf43000000b0066e31fe2bb9mr9111034ybg.148.1657382513223; Sat, 09
 Jul 2022 09:01:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PvfCKbWK0S5eae5hZjQSoVnZPhmAHcs5VLYopU9Uh0GYA@mail.gmail.com>
 <CAAxXO2F7LkXVLBoeUw6-24B50BfyUnMWp7HOWOcGNt9gNrHnog@mail.gmail.com>
 <CAAxXO2EvypwZP2m=45_tLg-tmRdfgQyPf42UARCu1Bbad61jwg@mail.gmail.com> <e0f9bff7-90e0-f57f-ef7b-d3b68b535d52@gmail.com>
In-Reply-To: <e0f9bff7-90e0-f57f-ef7b-d3b68b535d52@gmail.com>
From: sp <stackprogramer@gmail.com>
Date: Sat, 9 Jul 2022 20:31:42 +0430
Message-ID: <CAA=S3PsgydFNOz8wnFxCxRBC+poK-0LYMjqWOrcHUae+3dJmTA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, Nikos Balkanas <nbalkanas@gmail.com>
Message-ID-Hash: JMTUYIBU6BXSJJN2IKLYHPFYBMS67KQ2
X-Message-ID-Hash: JMTUYIBU6BXSJJN2IKLYHPFYBMS67KQ2
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How use convert class in UHD to convert complex float to complex sint16?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JMTUYIBU6BXSJJN2IKLYHPFYBMS67KQ2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6552318692704996959=="

--===============6552318692704996959==
Content-Type: multipart/alternative; boundary="000000000000f52e0705e3616f0d"

--000000000000f52e0705e3616f0d
Content-Type: text/plain; charset="UTF-8"

>
> I assume this already does ceil or floor, so your data needs to be
> already in the right scale:)
>
But all of my problems are related to scaling...
 want to use the converted class in USRP that can solve my scaling problem
and I am sure that my data is converted correctly..
So I want to use only the converter class not the c function on volk
functions...


On Sat, Jul 9, 2022 at 8:01 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-07-09 11:02, Nikos Balkanas wrote:
> > Correction> These functions work on integers.
> >
> > So they go as:
> > int16 data = htobe16(le32toh(int32 data))
> > Or the associate functions,
> > htonl, htons
> >
> > So you need to already have converted your floats to ints...
> > If in doubt, test them first on a single data...
> > Sorry about the confusion.
> >
> > Nikos
> >
> >
> My question would be--why?
>
> UHD and Gnu Radio already do these conversions for you.
>
> The *single* case where being able to send sample data as big-endian
> SC16 without any intervening conversions is from a file.   Anything that
> involves computation-with-samples
>    on the host requires, necessarily, that those samples be in a format
> understood by the CPU on the host.
>
> Further, if there are bottlenecks, I would want to absolutely confirm
> that the major bottleneck in the UHD driver is in doing conversion to
> big-endian wire format before
>    venturing down the road of making that available "directly".     I
> have lost track of this thread, but my recollection is that this file
> originates in a capture from a HackRF
>    whose absolute-maximum sample-rate is 20e6SPS.   That's a rate that
> is *easily* handled by the existing UHD "stack" without resorting to
> this type of optimization, IMHO.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f52e0705e3616f0d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">I assume=
 this already does ceil or floor, so your data needs to be<br>already in th=
e right scale:)<br></blockquote><div>But all of my problems are related to =
scaling...</div><div>=C2=A0want to use the converted class in USRP that can=
 solve my scaling=C2=A0problem and I am sure that my data is converted corr=
ectly..</div><div>So I want to use only the converter class not=C2=A0the=C2=
=A0c function on volk functions...</div><div><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Jul 9, 2022 =
at 8:01 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">p=
atchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">On 2022-07-09 11:02, Nikos Balkanas wrote:<br>
&gt; Correction&gt; These functions work on integers.<br>
&gt;<br>
&gt; So they go as:<br>
&gt; int16 data =3D htobe16(le32toh(int32 data))<br>
&gt; Or the associate functions,<br>
&gt; htonl, htons<br>
&gt;<br>
&gt; So you need to already have converted your floats to ints...<br>
&gt; If in doubt, test them first on a single data...<br>
&gt; Sorry about the confusion.<br>
&gt;<br>
&gt; Nikos<br>
&gt;<br>
&gt;<br>
My question would be--why?<br>
<br>
UHD and Gnu Radio already do these conversions for you.<br>
<br>
The *single* case where being able to send sample data as big-endian <br>
SC16 without any intervening conversions is from a file.=C2=A0=C2=A0 Anythi=
ng that <br>
involves computation-with-samples<br>
=C2=A0=C2=A0 on the host requires, necessarily, that those samples be in a =
format <br>
understood by the CPU on the host.<br>
<br>
Further, if there are bottlenecks, I would want to absolutely confirm <br>
that the major bottleneck in the UHD driver is in doing conversion to <br>
big-endian wire format before<br>
=C2=A0=C2=A0 venturing down the road of making that available &quot;directl=
y&quot;.=C2=A0=C2=A0=C2=A0=C2=A0 I <br>
have lost track of this thread, but my recollection is that this file <br>
originates in a capture from a HackRF<br>
=C2=A0=C2=A0 whose absolute-maximum sample-rate is 20e6SPS.=C2=A0=C2=A0 Tha=
t&#39;s a rate that <br>
is *easily* handled by the existing UHD &quot;stack&quot; without resorting=
 to <br>
this type of optimization, IMHO.<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000f52e0705e3616f0d--

--===============6552318692704996959==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6552318692704996959==--
