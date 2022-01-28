Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C280D49FE14
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jan 2022 17:32:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ACEEE38542E
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jan 2022 11:32:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="M/BFWHtp";
	dkim-atps=neutral
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 676D13852EB
	for <usrp-users@lists.ettus.com>; Fri, 28 Jan 2022 11:31:23 -0500 (EST)
Received: by mail-lf1-f52.google.com with SMTP id z4so12876603lft.3
        for <usrp-users@lists.ettus.com>; Fri, 28 Jan 2022 08:31:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dSSSfvkKM1ZvtCOefxxshSuOBDGrtEkRL7gvIsALkNA=;
        b=M/BFWHtp6Q2jtkIYGjsy7RPzT379fiKRZ/1FlOUPpVs3u+nuk0JG4w28hw3wc/b9So
         seHww7Y+GNXIo8yWwbUWp70+njl/T4/srcXyTuLyVi8dOfihpbPLkDaf7ieg/WB0Tb/G
         fEmXW5DxlIJcdJKi85CuO4y8emC5fyvGEW2ijrjbmL9CyCvfkCufpnmadVWgkVW2hR3+
         TD9WV3WKFEJyVxldfCVncvte5CgbdqwRvvwwWeiObjyz4+sl8Al4UzWHlgmcrpsDsyy+
         3uHnyVWLsIUBcMCVMZyrXltAWXVk/wEBBQXSqv19u1GX+He1/vbh8+F/UurmGKDbLBWL
         WxUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dSSSfvkKM1ZvtCOefxxshSuOBDGrtEkRL7gvIsALkNA=;
        b=fD/HGfqwTxqaYloFh+7/RTIAaZeSx2MFCVT0uap6xFneGiq7qcmWDpkiO5XXDQ8pJj
         Zzs9Z/N+bR9v0m6t0P1O0DsBuAd3w+eN9a21tPlJ2svhWSfTLXwU6bVt34biwpRNIjdj
         3ePSyI92pnXMgkhSwxWpboWEr7PCpXVF9/1f7+rZrfbIIpl4N0jLGeDwBeGqPodv+9Su
         ZxCxjztdqY2H3dlW8/M9WSTv9Dsn5kXqDmYPBHwkrnBlBDH9bsabnsK72568X1AjSqFQ
         RiybKd/XnGAHR4HZ84dvWk8+r3lYGfy3tKeDFJMh2iAgutaH1n3j3PdZJ614CL10e6sb
         IeVA==
X-Gm-Message-State: AOAM532mFU1sWbn65hqSpkgDHkSse6P7e0NHmP0wuSJJKmTKOuIvJYpe
	jCE+Y0H3LK/aXoV00wzruwisKKKB3fqdVixelEw=
X-Google-Smtp-Source: ABdhPJz6whD/+jp0VAy0JLOYJ/foI+93wwvnmTX0Xhr1Td/brywUlnnqqy9mYoJAO2febVxe+i8zvLjDOEecnYWVw6s=
X-Received: by 2002:a05:6512:e82:: with SMTP id bi2mr1439899lfb.590.1643387481898;
 Fri, 28 Jan 2022 08:31:21 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTSjMbfUXf+AmMKWTBP_m2S28iaAnhQdvfi++qPGXPctdg@mail.gmail.com>
 <5C259DE5-E60B-4750-BBBC-EFAF0CAE2E96@gmail.com> <4f3e2ba0-24d4-1a42-9705-6fc97e2c7260@gmail.com>
In-Reply-To: <4f3e2ba0-24d4-1a42-9705-6fc97e2c7260@gmail.com>
From: Paul Atreides <maud.dib1984@gmail.com>
Date: Fri, 28 Jan 2022 11:31:10 -0500
Message-ID: <CACwKM9L7diK5CqHjzBpKWSf0E4P-YCTaQzrqHshKRHK-b10vmA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: PGAXKVI4YQ43NXN6JLCWKBERS4AJERIF
X-Message-ID-Hash: PGAXKVI4YQ43NXN6JLCWKBERS4AJERIF
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PGAXKVI4YQ43NXN6JLCWKBERS4AJERIF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1184011099694716692=="

--===============1184011099694716692==
Content-Type: multipart/alternative; boundary="0000000000001640d405d6a6f71b"

--0000000000001640d405d6a6f71b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

single

On Fri, Jan 28, 2022 at 11:18 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-01-28 10:38, Paul Atreides wrote:
>
> Rob, I=E2=80=99ve been able to extend the functionality of gr-uhd to incl=
ude the
> enable switch for each LO distribution port. Thank you for the informatio=
n.
>
> I am now having synchronization issues with the transmit stream in the
> GNURadio. It appears as though the radio channels are not starting at the
> same time. Are you aware of any commands that you=E2=80=99ve had to run f=
rom
> external applications that ensure the start time for both transmitters is
> the same?
>
> <end transmission>
>
> WHen specifying a "start time" in the GRC UHD Sink block of anything >=3D
> 0.0, this code is inserted into the generated Python:
>
> self.uhd_usrp_sink_0.set_start_time(uhd.time_spec(0.5))
>
> Are you using a single 10GiGe link, or using dual links?
>
>
>
>
>

--0000000000001640d405d6a6f71b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">single<br></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Fri, Jan 28, 2022 at 11:18 AM Marcus D. Leech=
 &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2022-01-28 10:38, Paul Atreides
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      Rob, I=E2=80=99ve been able to extend the functionality of gr-uhd to
      include the enable switch for each LO distribution port. Thank you
      for the information.
      <div><br>
      </div>
      <div>I am now having synchronization issues with the transmit
        stream in the GNURadio. It appears as though the radio channels
        are not starting at the same time. Are you aware of any commands
        that you=E2=80=99ve had to run from external applications that ensu=
re
        the start time for both transmitters is the same?</div>
      <div><br>
      </div>
      <div>&lt;<span>end
          transmission&gt;</span></div>
      <br>
    </blockquote>
    WHen specifying a &quot;start time&quot; in the GRC UHD Sink block of a=
nything
    &gt;=3D 0.0, this code is inserted into the generated Python:<br>
    <br>
    self.uhd_usrp_sink_0.set_start_time(uhd.time_spec(0.5))<br>
    <br>
    Are you using a single 10GiGe link, or using dual links?<br>
    <br>
    <br>
    <br>
    <br>
  </div>

</blockquote></div>

--0000000000001640d405d6a6f71b--

--===============1184011099694716692==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1184011099694716692==--
