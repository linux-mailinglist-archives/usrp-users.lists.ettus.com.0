Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CE4727509
	for <lists+usrp-users@lfdr.de>; Thu,  8 Jun 2023 04:36:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7633C384A1E
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jun 2023 22:36:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686191761; bh=oICwZK90MShSpQZ3qd0l3Nh6io3nA/mEU4aTEcRljrs=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Zt018BvU5DUm+Wkyos5zecCAt5b9O6Bm+VYB4wY8nUELWkCg67o3ntJ9a4LGKrm3O
	 CDsKtkJXI+f7kOO1X5GHYJtG+Rl7MxZF0KLbjqslLy6Lqa4k46c53meRR/gguX94gj
	 LKpVDS/nZqH9wyjvgiDK1u6OoQKHycd62oV2K4iMF2WUnNbfXI0sFnaYCnoc4v0In6
	 f8VfnHvjvvflMKyewzLPFFWV2FgZOl4X7dTIUDBlaT4QswSGPnOOSOaOjbmFEaV1oq
	 OFzl2nreRpEiTsmFddbOIVJJ/8pXbVI3W0V34IzRrYr841WVFNiTP2hLkugEOL+vhT
	 U7YFkstNuVU4Q==
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 8B68D3849EF
	for <usrp-users@lists.ettus.com>; Wed,  7 Jun 2023 22:35:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="V9yG+P2T";
	dkim-atps=neutral
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-977d6aa3758so29604766b.0
        for <usrp-users@lists.ettus.com>; Wed, 07 Jun 2023 19:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1686191705; x=1688783705;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uaiUIp9R1K9xbeyKEFH75W32+thshEqc7HmHdew/8iU=;
        b=V9yG+P2TEuyAZf+AeRJc4FIeRM3IAREkQkZ6fu8jsICTGvGfjMHOP6cGG9SHT3o5L9
         JmGelx6SqS5lJEahwMz0jOwa4zz3lxOe4SoaVgDnIqqSpldZumdlNk634ESHA0/9EKj6
         3k7Imiqv8TQdS4ld5173/66hX+pCYecwqiprrtMLkygDoMURITMTEaIYtgMH+ikpA29M
         lt7nyusBlx6yuKwB0jULgyT2JejLHOvYT9ZUtDwC4NQYDjL2v66S96FMDDH7hA0XwOMg
         zhkeL06DfbhCgJ67jpWH+BY8KYlxmTSArpFWhfIHypq4HlZVct5EYOIHNPa7jbgyZH41
         uS5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686191705; x=1688783705;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uaiUIp9R1K9xbeyKEFH75W32+thshEqc7HmHdew/8iU=;
        b=dgjuBz+XG7IwUfyy11mrsRwn52dv+n62bzwQuziE5fhfIup7/24ZDqvX55ackGp7om
         u/e/+pYI4i0sNg9bNBhd5mWiZetdujlSj8Gq5PIs7onCqeVOGCX9F6G4vekhF/AZDNre
         DRqarGkfPOicI2eovnqmDbYefCfgmA9FDwK3gsvLa8mDY/sZ6ePmGAMYxS+xztN9DjvG
         klTymjGJmYisbJ/YKlFBBUIgMxR9qqmzK79FJHYVqC06hFKg0IzeyTRibQj8jml/Ppee
         mIC49SnXrvuNSWVDAlGAcKGrVv2WnRGL5CGlrsoF0jezFDgxPo375lPsKL2N/TEmOSh4
         YKYQ==
X-Gm-Message-State: AC+VfDxmZRxzHdtFBCftc9ux6KwZRb1QHWFnxAs8fQ8qcnrBw1YmucLI
	tyt4lHRy0L5aZlieMJ8tN1RAi31IsHdRVX3G/k75xIen
X-Google-Smtp-Source: ACHHUZ4w4Oa3vYFY1yDC2d+GysIrpCJSFKT0Tm7KqB8OP3DtJ5k9fChYB4ks3ZbXjryCen5CAqaQxKovGe2Eo1hLkMw=
X-Received: by 2002:a17:907:628c:b0:978:a01c:3693 with SMTP id
 nd12-20020a170907628c00b00978a01c3693mr360107ejc.64.1686191705301; Wed, 07
 Jun 2023 19:35:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAJhOL6eLOqG8m8DP8wwMm4DRa8Yq2i_wS7fMPXJJJZws6nLSSQ@mail.gmail.com>
 <8e363c7d-8294-1add-7c59-3d449a7e4de2@gmail.com> <CAJhOL6f3kz+nN7Vuq6oERjntV5z_7x+ruoXmfrJ7pj0AuzBP5A@mail.gmail.com>
In-Reply-To: <CAJhOL6f3kz+nN7Vuq6oERjntV5z_7x+ruoXmfrJ7pj0AuzBP5A@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 7 Jun 2023 21:34:49 -0500
Message-ID: <CAFche=gY4y930wrz4Wu6GOV-vsm9xt6ymBPF2zChpnSzU9GqRA@mail.gmail.com>
To: Kevin Williams <zs1kwa@gmail.com>
Message-ID-Hash: ASK5ETZ5XQEIFGBGAUJF6WGQGABGRG5C
X-Message-ID-Hash: ASK5ETZ5XQEIFGBGAUJF6WGQGABGRG5C
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N2rt13HDRTExceptionE in Vivado 2021.1
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ASK5ETZ5XQEIFGBGAUJF6WGQGABGRG5C/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7842192284936929774=="

--===============7842192284936929774==
Content-Type: multipart/alternative; boundary="0000000000009e377b05fd9519fb"

--0000000000009e377b05fd9519fb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It depends on the target, but normally if you repeat the same build you
will get exactly the same results. I suggest you try the build seed option
I mentioned in your other thread. This feature is intended to give you a
different build result when you want one.

I'm curious to know what target you're seeing this with and how often you
see it with a unique seed? I know we've seen it in our regression suite,
but it's been pretty rare for us.

Thanks,

Wade

On Wed, Jun 7, 2023 at 8:22=E2=80=AFAM Kevin Williams <zs1kwa@gmail.com> wr=
ote:

> Thanks. Yes, just want to move to a version of Vivado that does not have
> this known fault.
>
> On Wed, 7 Jun 2023 at 15:17, Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 07/06/2023 06:20, Kevin Williams wrote:
>>
>> Hi,
>>
>> Why can't this be fixed in the USRP builds by upgrading to 2021.2 which
>> apparently has addressed this fault?
>>
>> I have added a trivial delay and my image now builds in 2021.1 after man=
y
>> failures while trying to develop. It is random, and I waste an hour or t=
wo
>> almost every day because of this.
>>
>> I do not have time for this random approach to building firmware.
>>
>> Not addressing this particular issue, but FPGA place-and-route is an
>> inherently random process that uses
>>   random placement and then tries to successively optimize that placemen=
t
>> to make timing "work".  That is
>>   why it takes so long, and why sometimes, when I've worked with FPGA
>> folks, when timing won't close, they
>>   just ran the build again, hoping for a different random outcome.
>>
>> This is one of the reasons I never got much into FPGA design myself--the
>> build process is non-deterministic.
>>
>>
>>
>> Regards, Kevin
>>
>> --
>> Kevin Williams, Ph.D.
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
>
> --
> Kevin Williams
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009e377b05fd9519fb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>It depends on the target, but normally if you repeat =
the same build you will get exactly the same results. I suggest you try the=
 build seed option I mentioned in your other thread. This feature is intend=
ed to give you a different build result when you want one.</div><div><br></=
div><div>I&#39;m curious to know what target you&#39;re seeing this with an=
d how often you see it with a unique seed? I know we&#39;ve seen it in our =
regression suite, but it&#39;s been pretty rare for us.<br></div><div><br><=
/div><div>Thanks,</div><div><br></div><div>Wade<br></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 7, 202=
3 at 8:22=E2=80=AFAM Kevin Williams &lt;<a href=3D"mailto:zs1kwa@gmail.com"=
 target=3D"_blank">zs1kwa@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Thanks. Yes, just want =
to move to a version of Vivado that does not have this known fault.</div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, =
7 Jun 2023 at 15:17, Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gm=
ail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 07/06/2023 06:20, Kevin Williams
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hi,
        <div><br>
        </div>
        <div>Why can&#39;t this be fixed in the USRP builds by upgrading to
          2021.2 which apparently has addressed this fault?</div>
        <div><br>
        </div>
        <div>I have added a trivial delay and my image now builds in
          2021.1 after many failures while trying to develop. It is
          random, and I waste=C2=A0an hour or two almost every day because =
of
          this.</div>
        <div><br>
        </div>
        <div>I do not have time for this random approach to building
          firmware.</div>
      </div>
    </blockquote>
    Not addressing this particular issue, but FPGA place-and-route is an
    inherently random process that uses <br>
    =C2=A0 random placement and then tries to successively optimize that
    placement to make timing &quot;work&quot;.=C2=A0 That is<br>
    =C2=A0 why it takes so long, and why sometimes, when I&#39;ve worked wi=
th
    FPGA folks, when timing won&#39;t close, they<br>
    =C2=A0 just ran the build again, hoping for a different random outcome.=
<br>
    <br>
    This is one of the reasons I never got much into FPGA design
    myself--the build process is non-deterministic.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>Regards, Kevin<br clear=3D"all">
          <div><br>
          </div>
          <span class=3D"gmail_signature_prefix">-- </span><br>
          <div dir=3D"ltr" class=3D"gmail_signature">Kevin Williams, Ph.D.<=
/div>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature">Ke=
vin Williams</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000009e377b05fd9519fb--

--===============7842192284936929774==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7842192284936929774==--
