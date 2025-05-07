Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2D9AADF61
	for <lists+usrp-users@lfdr.de>; Wed,  7 May 2025 14:38:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DD13138522E
	for <lists+usrp-users@lfdr.de>; Wed,  7 May 2025 08:38:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746621494; bh=Vd6b+JWeUD8BRsPZruyU/+rKpXBXxuhNbIn22gcaMTg=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=L3xwHPG2RByrpLyXCwJVJuTQnIbLBE0TTqk+RJVUt5uAvSGgQ7kCfzPP1rUnqzC4w
	 tOafKzg56HrcPHLrYQZOlKAcRdnHz1j3RpVJuxfYCKu3xAOzzPSHQY6zF+tP+ALl06
	 U1zbza4+CzOD2kBUboUjP3mRPGcgm9oikYC1DVYBWsBstZJElo0FeWVALIglzz/Y7D
	 8bGcZcfUX5s2Rhz+2fnUD+v+4+yFReSqRcm366C6MuvFHn1K23Q6Kkw0zqLkWbHGYB
	 mjys2MxWViOXgVpBF9pWZ3JE9NtufxJ5Xga+7JmNQ90XUS3l4uxQ/N7HDFc3FJZ15F
	 lklq2g3rwZ7YA==
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 6C54B385C11
	for <usrp-users@lists.ettus.com>; Wed,  7 May 2025 08:37:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="ikKrdUMv";
	dkim-atps=neutral
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ac289147833so1258564066b.2
        for <usrp-users@lists.ettus.com>; Wed, 07 May 2025 05:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1746621439; x=1747226239; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5hCyQQGpmNzFfiWFaqxKDEbKlnUxUTnxPIpPmHYFeH0=;
        b=ikKrdUMvxTsY+aT/9YC8vZAIOMNEL7bocB6csJz259CbMeGyVuZshIXwvO3St7X6fT
         6wMCOjncP3OGyhiUr9xiLCDkZbHXeeqAxmIYjnydLidkg5b75N7bj8/UKyXaChq3wr3U
         2NP903nDo2fiZN8J5fckv38bQSlaR6V31t+Ia6wfxKI4gbHTG0J6SoNFc894RIlh1r7Z
         UWDKVjZEEUmFmxsSBB/04Swv0xUocvOcL39XtJtEiDpuA1et7p8RbbBJDjNZlWogqG9c
         +Hxu0Mln8ZscQm1dTSv3a5pAS72De7cDvttojfVjf3oWETxd91e6brvOJmjFxsKQX33J
         0/FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746621439; x=1747226239;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5hCyQQGpmNzFfiWFaqxKDEbKlnUxUTnxPIpPmHYFeH0=;
        b=nPI3sBViQNvWVdfVz+sBi8WRXLDNPE7O9T6kpsXvOy6MS5yrgop4ZlWvu1pbU87/3r
         oSht/Th+0cNNGl41SQcGX2IhOaIKgCJ+aOkkrfNqrZvohqYfcG1PN3fGYztcR5ADGgAI
         ih04g1EwkM+DNFN8qXx1YqQFW+w/CFIUeJ86H5sPUeVXk1svXLKMDhUedDPlcgeusrt3
         ARlCYBSUy7f6SZmRQSoHNlpdIy7B5NMfOp/say1JqhANaaXAgtlWtj+vJEIWAiKSQztL
         W5wVl0756S07J0YrG1mWt5t6kgwgsepyl7pO+U6Gigm3mg+WD4uGXcs6zCoLEQnMd+nk
         RvOg==
X-Gm-Message-State: AOJu0YwhlIGIMLlEkEcEgDBGul4qf+41a1NDIAg2iP3nH30OXnp2vnXa
	r4IWb3ji5v/qXE4WwM+9JB9F0fYNtd8bkQFVUHWF0qUkNZRoZ1G9bcb7ROO4JvW0bJppvfu9VLX
	3AJM0uzwtpnE8xE6PtIZwQgfSd/8FUvGLGEWVEUfkH67GxIhJPO0=
X-Gm-Gg: ASbGncvPBtUvcoUmkylOa2cpUPU5Bl07bJgtuPu4n2+51+gaY/Isw46IOymUp093YnJ
	btzKMwYyD+l6c4l4yv3PHUVPw8rRUbyqHkC2Xv1932xsjvoMwUPd9u1I4sL2vuq1DhRJV9xv2iz
	hFoIGnIQNOvfZqBenR1dAdPOUqWCEBqlEwAjYXbP1+25ZsXI1166OPig==
X-Google-Smtp-Source: AGHT+IGjj6elhAF94HJwwHyv7luVxLL7Ek5dzCbT7vsfeDe+gX4vB58JCx3m77XWcHfufHcrghD6HqwbvTO0bHcDzuM=
X-Received: by 2002:a17:907:7210:b0:acb:6c92:cbce with SMTP id
 a640c23a62f3a-ad1e8ce47e0mr269265766b.32.1746621439122; Wed, 07 May 2025
 05:37:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQVXsvOTdQfO-RpNO74hqXK+D7vXqeyh=SW8cWsd=ABq+Q@mail.gmail.com>
 <9988148e-995d-4b1f-a531-604236d790a0@gmail.com>
In-Reply-To: <9988148e-995d-4b1f-a531-604236d790a0@gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 7 May 2025 14:37:07 +0200
X-Gm-Features: ATxdqUEEe9nQsDnMUCGG4K-izSI9PdmFROhHDmZA8vkBp5ys5nMEKYMZQXyENTA
Message-ID: <CAFOi1A6Np5v0gt6rLB0-keXmcuQRfUP=xJzUF-3upQ2AWPHXEg@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: 5WIUB3LR6FMIBYQXYLIN4EECLLAVXYLL
X-Message-ID-Hash: 5WIUB3LR6FMIBYQXYLIN4EECLLAVXYLL
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Sampling rate in E320 with RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5WIUB3LR6FMIBYQXYLIN4EECLLAVXYLL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6249256900274019424=="

--===============6249256900274019424==
Content-Type: multipart/alternative; boundary="0000000000006fb5b006348afeaa"

--0000000000006fb5b006348afeaa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This is correct! The simplest way for you to deal with this is to set the
RFNoC Radio Block rate to something larger (like 10 Msps), and the output
rate of the DDC to 25 kHz. RFNoC will take care of configuring the
resampling accordingly.

--M

On Wed, May 7, 2025 at 12:05=E2=80=AFAM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 06/05/2025 10:12, Maria Mu=C3=B1oz wrote:
> > Hi all,
> >
> > We observe different behaviour using the E320 radio with the UHD:
> > USRP_SOURCE block and the RFNoC Radio block with a low sampling rate.
> > We are attempting to set the sampling rate to 25 kHz for both blocks.
> > In the UHD block, we achieve this by configuring the sampling rate to
> > 25 kHz. Similarly, in the RFNoC block, we set the sampling rate of the
> > RFNoC radio block to 25 kHz and the output rate of the DDC to 25 kHz.
> > When we look at the output of the blocks, we effectively observe a
> > signal of 25 kHz in the UHD block, while in the RFNoC radio block, we
> > observe a larger bandwidth of approximately 250 kHz.
> > How can we correctly configure both the Radio and DDC blocks in RFNoC
> > to have an output of 25 KHz? Is it possible?
> >
> > Kind Regards,
> >
> > Maria
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> Since the lowest master clock rate in the E320 is 250kHz, a *POSSIBLE*
> configuration is to run the radio at that master-clock,
>    and the DDC block with an appropriate decimation factor.
>
> What you might be able to do is to run your ordinary "multi_usrp" UHD
> code with the logging level turned up, so that it
>    *might* tell how it is configuring the RFNoC blocks inside the
> radio.  Remember it has been the case for quite some time
>    that multi-usrp now lives *ON TOP* of RFNoC, and simply configures
> RFNoC blocks in the USRP hardware appropriately.
>
> https://kb.ettus.com/The_UHD_logging_facility
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006fb5b006348afeaa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This is correct! The simplest way for you to deal wit=
h this is to set the RFNoC Radio Block rate to something larger (like 10 Ms=
ps), and the output rate of the DDC to 25 kHz. RFNoC will take care of conf=
iguring the resampling accordingly.</div><div><br></div><div>--M</div></div=
><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Wed, May 7, 2025 at 12:05=E2=80=AFAM Marcus D. Leech &l=
t;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 06/0=
5/2025 10:12, Maria Mu=C3=B1oz wrote:<br>
&gt; Hi all,<br>
&gt;<br>
&gt; We observe different behaviour using the E320 radio with the UHD: <br>
&gt; USRP_SOURCE block and the RFNoC Radio block with a low sampling rate.<=
br>
&gt; We are attempting to set the sampling rate to 25 kHz for both blocks. =
<br>
&gt; In the UHD block, we achieve this by configuring the sampling rate to =
<br>
&gt; 25 kHz. Similarly, in the RFNoC block, we set the sampling rate of the=
 <br>
&gt; RFNoC radio block to 25 kHz and the output rate of the DDC to 25 kHz.<=
br>
&gt; When we look at the output of the blocks, we effectively observe a <br=
>
&gt; signal of 25 kHz in the UHD block, while in the RFNoC radio block, we =
<br>
&gt; observe a larger bandwidth of approximately 250 kHz.<br>
&gt; How can we correctly configure both the Radio and DDC blocks in RFNoC =
<br>
&gt; to have an output of 25 KHz? Is it possible?<br>
&gt;<br>
&gt; Kind Regards,<br>
&gt;<br>
&gt; Maria<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
Since the lowest master clock rate in the E320 is 250kHz, a *POSSIBLE* <br>
configuration is to run the radio at that master-clock,<br>
=C2=A0=C2=A0 and the DDC block with an appropriate decimation factor.<br>
<br>
What you might be able to do is to run your ordinary &quot;multi_usrp&quot;=
 UHD <br>
code with the logging level turned up, so that it<br>
=C2=A0=C2=A0 *might* tell how it is configuring the RFNoC blocks inside the=
 <br>
radio.=C2=A0 Remember it has been the case for quite some time<br>
=C2=A0=C2=A0 that multi-usrp now lives *ON TOP* of RFNoC, and simply config=
ures <br>
RFNoC blocks in the USRP hardware appropriately.<br>
<br>
<a href=3D"https://kb.ettus.com/The_UHD_logging_facility" rel=3D"noreferrer=
" target=3D"_blank">https://kb.ettus.com/The_UHD_logging_facility</a><br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006fb5b006348afeaa--

--===============6249256900274019424==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6249256900274019424==--
