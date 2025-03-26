Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AC82AA71B8D
	for <lists+usrp-users@lfdr.de>; Wed, 26 Mar 2025 17:10:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 81991385625
	for <lists+usrp-users@lfdr.de>; Wed, 26 Mar 2025 12:10:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743005439; bh=8P0OOR2+zo+Mrt1f9GTTIwppnx5a5ApsqLiDKQIb8cU=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=bV6+TtyHaDyd0KQem1hWTlC2p4BRhPsp5gGdYevCccw6rasl5ujlmR1r858vbRPrx
	 5GW44dgjqJ3Y/hb9lsNcLKT/V/S5/k57vEznYhJK8a0JoI6olbjzGs7BL/QKAdSa4o
	 y5ybN8MSYOl28FRmfhOV2BR5nM36BpQ/7GkXhSFobF5WM7hGxW+k0Z2KYNFYr9xKPz
	 FT2tmWFCa/A+0t81o6xeaq8HIroqDZ3RESOmPw3kJYMfuQJDZtEp2QMz3Urr+Bc3Km
	 zkTlzgeOP61vsC2YK9UMpeoDiM8ihqKJ9NbFSLfPXqwGRDJgdnNBuhcLCjo6kVu3yv
	 m1/T+klmRoFxQ==
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 4FC473842B1
	for <usrp-users@lists.ettus.com>; Wed, 26 Mar 2025 12:09:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="DjjMm7ps";
	dkim-atps=neutral
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5e673822f76so11341045a12.2
        for <usrp-users@lists.ettus.com>; Wed, 26 Mar 2025 09:09:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1743005395; x=1743610195; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FLHWaekqVvhhJvuAZEYxG3h34Dvglk9Ew1nIVQH2Ud8=;
        b=DjjMm7pseXY3hpZW+HNinHUG1GA1Sc83yi2bRycFvIDM6ZeOVSedAsaHxsucirHQDL
         IBIOnB8SOPeO41FHjpatgIzz+bbb0QLZ3KwYkiYrmE5veg2cQnWAo/JI17GGvUWZkM27
         0r2Nw19HFa6RijKEOiqeKxHSVfCGdcZI1heW6DZBbtimR8LVszm7gEZsfy2SzCZ/L2JQ
         FLZJcLnUYXXIDlqz+MF45bHH0ym62sxYlaQ8mY5KSlZwQ1CwUK2FbHtlSWz+namkMJrj
         RtmK5sF4zMklykNXl6TtSsnvGWsspS9osAHRUQZoBKPZ+O35oaHiLX18REejejwADInO
         sxig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743005395; x=1743610195;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FLHWaekqVvhhJvuAZEYxG3h34Dvglk9Ew1nIVQH2Ud8=;
        b=Foq3cBib46JHKnx6f6eURDDmb3t9z19rpHzCEg2O5sSzVMl0wYh9Q313MkZPjEUszA
         ywi2yg1X8OdBNdu91EPNDh3gPCoXFIIEnSuPg04LnYCHfCilRpRHD5Ercj6FJ6q9zS04
         39YAEnk7IXcF68/0Sgxq82X8PGj5OyINxUVvedjWYjLCYlz/QggeyZoJDVicdfAtseAo
         vzPOPri+zUIr8tIVk4z5YIXlE0yWckU6peaIzDZeaigfwyRvz0H7Fxa2up2X2Pfx8IZx
         h2E8FboDiPFX+11z5+2HiJY8h8npgCIEGcaCl0MCNCfzUt4cMfAZKBfKmbjUum6R6it0
         CeDw==
X-Gm-Message-State: AOJu0Ywl6DreyVBm8qjTGxjCWOIfH8du/dae6MxXQyG/R3p2JwyLnpNa
	1WH0WO1dxr52ngiEwSjEfeoHnT+nbanPBnINguKZzT6+gpl+7eMHnEyyCUQEhf8I8oZFE8BYoa5
	BjPWadSTeUlf0Io1XHFSKfecn16OZVZINkbcS
X-Gm-Gg: ASbGncsmwkji1iDurfahdjdanZz/Bv4prm5BlOhCbrlorUrC6i9jARIrD+gEEiF+1Mh
	oY3lIqij5oNzdXOBtlXIGB+Zji4H7gvTsFasrbWPjrK/wF8BVQPHPqfMvYaPKGt65sK+ahfGyLq
	apNLmVsr+8Diy6AHF2No87gDjynQ==
X-Google-Smtp-Source: AGHT+IFz3p0GPi3h/QswxpFMEE7I0hxmrbL/I9A/08++PsWzrLHNDxgwVD89nCD4dTi90CTeHxznzihau9uGw5mf4tY=
X-Received: by 2002:a05:6402:278e:b0:5e6:1838:e8c6 with SMTP id
 4fb4d7f45d1cf-5ed8eb16adfmr92667a12.22.1743005395121; Wed, 26 Mar 2025
 09:09:55 -0700 (PDT)
MIME-Version: 1.0
References: <buPmixowFqBNjcHYfLX6r17HUMSoFxZbBs7YZTE1mIg@lists.ettus.com> <ebed1fe1-d487-4bf9-8bab-d7ec29ca910b@gmail.com>
In-Reply-To: <ebed1fe1-d487-4bf9-8bab-d7ec29ca910b@gmail.com>
Date: Wed, 26 Mar 2025 12:09:43 -0400
X-Gm-Features: AQ5f1JrEoZCd-EBQik2PllLuDkPy4jBLR3pyeb6AKxjonPEnkqKIJmBzYb-bhEE
Message-ID: <CAB__hTR-jqCpJvkto9QFfCt1HSeJtU8RuH08tRR_4sjwDuyQWg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: FGUPY4EHOI2H46ULCGJ66R4D6XX6CH7G
X-Message-ID-Hash: FGUPY4EHOI2H46ULCGJ66R4D6XX6CH7G
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [X310] set_command_time introduces unexpected delay dependent on sampling rate.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FGUPY4EHOI2H46ULCGJ66R4D6XX6CH7G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============0366314191286174130=="

--===============0366314191286174130==
Content-Type: multipart/alternative; boundary="0000000000006b1fdc063141112c"

--0000000000006b1fdc063141112c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 26, 2025 at 10:43=E2=80=AFAM Marcus D. Leech <patchvonbraun@gma=
il.com>
wrote:

> On 26/03/2025 06:13, je.amghar@gmail.com wrote:
> >
> > I'm using timed commands to set the RX gain at a precise moment with
> > the following command:
> >
> > set_command_time(md.time_spec + uhd::time_spec_t(0.02), 0);
> >
> > However, I noticed that there is a delay between the specified time
> > and the actual time when the gain is applied. This delay is
> > significantly larger than the component latency responsible for
> > changing the gain and appears to depend on the sampling frequency.
> > Specifically, the delay is approximately 20 samples.
> >
> > I=E2=80=99m trying to understand why this delay is much greater than th=
e
> > expected component latency and why it scales with the sampling
> > frequency. Any insights on this behavior?
> >
> > Regards.
> > Jamaleddine
> >
> >
> A change in signals presented to the head of the DDC chain will take
> some number of sample times to propagate through the
>     finite-length filters in the DDC.  They don't (and, indeed, cannot)
> have zero group delay.
>

Hi Marcus,
I think that the gain is set from the "radio" block which operates at the
master clock rate rather than the downconverted rate.  It doesn't make
sense to me why the latency of the gain setting would be related to the
downconverted sample rate.
Rob

--0000000000006b1fdc063141112c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 26,=
 2025 at 10:43=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbra=
un@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">On 26/03/2025 06:13, <a href=3D"mailto=
:je.amghar@gmail.com" target=3D"_blank">je.amghar@gmail.com</a> wrote:<br>
&gt;<br>
&gt; I&#39;m using timed commands to set the RX gain at a precise moment wi=
th <br>
&gt; the following command:<br>
&gt;<br>
&gt; set_command_time(md.time_spec + uhd::time_spec_t(0.02), 0);<br>
&gt;<br>
&gt; However, I noticed that there is a delay between the specified time <b=
r>
&gt; and the actual time when the gain is applied. This delay is <br>
&gt; significantly larger than the component latency responsible for <br>
&gt; changing the gain and appears to depend on the sampling frequency. <br=
>
&gt; Specifically, the delay is approximately 20 samples.<br>
&gt;<br>
&gt; I=E2=80=99m trying to understand why this delay is much greater than t=
he <br>
&gt; expected component latency and why it scales with the sampling <br>
&gt; frequency. Any insights on this behavior?<br>
&gt;<br>
&gt; Regards.<br>
&gt; Jamaleddine<br>
&gt;<br>
&gt;<br>
A change in signals presented to the head of the DDC chain will take <br>
some number of sample times to propagate through the<br>
=C2=A0=C2=A0=C2=A0 finite-length filters in the DDC.=C2=A0 They don&#39;t (=
and, indeed, cannot) <br>
have zero group delay.<br></blockquote><div><br></div><div>Hi Marcus,</div>=
<div>I think that the gain is set from the &quot;radio&quot; block which op=
erates at the master clock rate rather than the downconverted rate.=C2=A0 I=
t doesn&#39;t make sense to me why the latency of the gain setting would be=
 related to the downconverted sample rate.</div><div>Rob</div><div>=C2=A0</=
div></div></div>

--0000000000006b1fdc063141112c--

--===============0366314191286174130==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0366314191286174130==--
