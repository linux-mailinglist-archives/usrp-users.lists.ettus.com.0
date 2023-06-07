Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D0F726127
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jun 2023 15:22:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 830AC380E39
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jun 2023 09:22:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686144121; bh=2U7qxZBsSXnsuI1MzRNKoXOT7pT4GAMme63cvxqegDY=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=qzvZ1n7yFD1pWBdjnhVNbeGODbGSGShmkjrd5Ndf3o8HqxabPgXYdbzgq/U3M2Pd4
	 bmfwz0/AK1n39G4Xxuu7Gvq8P2PP3DzACZ2nwPiLQcJYASt8Vjh6SOA76yy0d5A/Y3
	 vQClqOfdkBvKSwm8xjgl4j+YgaSO3z8zv0it2FNnbdTGbosqh60GwWJUTWMdOD9Hz3
	 dOcGYUQ0Fm03pC1Fv9Xhw9CJ6u8E3DXa6HfZ01cADIF947I+3QR7bUdHoO7OmhXgmD
	 tEVKpdfuVybDOmKqMLz7Q6oKK1lSoE4q8xpSZRDAKGIT0zImnBByaIh00riFnGmipX
	 zTt26DysYiI6Q==
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by mm2.emwd.com (Postfix) with ESMTPS id AB4483837DE
	for <usrp-users@lists.ettus.com>; Wed,  7 Jun 2023 09:20:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iSMqWLmj";
	dkim-atps=neutral
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-977d3292be0so112790366b.1
        for <usrp-users@lists.ettus.com>; Wed, 07 Jun 2023 06:20:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686144034; x=1688736034;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lx54/gJ7LDacv+YaCdv3vItQbhqWx4UHKufwHDpydm4=;
        b=iSMqWLmjtKopTtdMoDHSjdO6wOzhTXLAWNF/VeSDSUCsKhav2z2mM+i8jfdflJ8OFL
         7S8PQJiBZVNEZgC+V3Gsw2+sSyBVO2gEW6CZkanTZWou6mMASP4vyRSULT3VLz7N/KyV
         BGDoOXa3PB8f6ozvCUSKZCm+HvtU1RXLsB53Q2ya47Oa+maU7auh/YdHKSBIGRQkXbqF
         L2dkT9PJo6YRUL6ia5ngVJSg0C1iFne/0a140tlKp4fC6KF42/RjOP71stJ/m0CbYmF4
         ImTQa8W2rwKOZVgxiGIUQt44FAH7ti4mA17Di4wiOegCww+V/jzyhzA/xjuj1Dz7UI2Z
         GbjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686144034; x=1688736034;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lx54/gJ7LDacv+YaCdv3vItQbhqWx4UHKufwHDpydm4=;
        b=IZ5c8Z79Zrros1/sXuiLhR0/FiEYI500oWSoF8iY3/cBxRw2W1DSnWNoNXbl2Fcvwt
         XMzPR+Zpw3Y0zHHYETo20AG1YDYViComo/xuq9QtxX8wO+KkSWbWIFXmaFjPIynS3xSa
         hF2LMNhYINcu1vmMO9TEBey0oiw9rKCYdv9fcCsxQBiNtnYNtNnkjlFMeegXTAsrXLXI
         SArcLBwiNptOmAItxi2bg1nDPq1IZyrp3GBkMm6/UVuVXIcbjA7AH3fNdEWu5Ys4zH2V
         Su7g84uwiY3wvfNFPd8bJQxZA0KwWwKGMqDha1hMDGQZY91eSY5SbJU/7N0oc8xo/CT6
         GueQ==
X-Gm-Message-State: AC+VfDz3x95KfDX/s3qEUzNZQHzagOFeDdfS7mqjsSwxS4NPvsqMB6XR
	mwcO9s2wWrFrJ2V90yNo7h8euvZDa6a+C3iix0MahKFC8tQ=
X-Google-Smtp-Source: ACHHUZ7Q8ZbSAHgj/OVE/jcx31rl0AqVytZM/TR12r8Deb+QRRCk2pc7iNoIJkseqg7IJpPH8yqFHAJIEfeM6cwzjI0=
X-Received: by 2002:a17:906:1c:b0:975:942b:ee43 with SMTP id
 28-20020a170906001c00b00975942bee43mr1938654eja.5.1686144033668; Wed, 07 Jun
 2023 06:20:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAJhOL6eLOqG8m8DP8wwMm4DRa8Yq2i_wS7fMPXJJJZws6nLSSQ@mail.gmail.com>
 <8e363c7d-8294-1add-7c59-3d449a7e4de2@gmail.com>
In-Reply-To: <8e363c7d-8294-1add-7c59-3d449a7e4de2@gmail.com>
From: Kevin Williams <zs1kwa@gmail.com>
Date: Wed, 7 Jun 2023 15:19:56 +0200
Message-ID: <CAJhOL6f3kz+nN7Vuq6oERjntV5z_7x+ruoXmfrJ7pj0AuzBP5A@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: EB4PRYC4LS7SVO4BSBJEPYCDILQXVDIW
X-Message-ID-Hash: EB4PRYC4LS7SVO4BSBJEPYCDILQXVDIW
X-MailFrom: zs1kwa@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N2rt13HDRTExceptionE in Vivado 2021.1
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EB4PRYC4LS7SVO4BSBJEPYCDILQXVDIW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3082313437783534249=="

--===============3082313437783534249==
Content-Type: multipart/alternative; boundary="0000000000002ac2d905fd8a0090"

--0000000000002ac2d905fd8a0090
Content-Type: text/plain; charset="UTF-8"

Thanks. Yes, just want to move to a version of Vivado that does not have
this known fault.

On Wed, 7 Jun 2023 at 15:17, Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 07/06/2023 06:20, Kevin Williams wrote:
>
> Hi,
>
> Why can't this be fixed in the USRP builds by upgrading to 2021.2 which
> apparently has addressed this fault?
>
> I have added a trivial delay and my image now builds in 2021.1 after many
> failures while trying to develop. It is random, and I waste an hour or two
> almost every day because of this.
>
> I do not have time for this random approach to building firmware.
>
> Not addressing this particular issue, but FPGA place-and-route is an
> inherently random process that uses
>   random placement and then tries to successively optimize that placement
> to make timing "work".  That is
>   why it takes so long, and why sometimes, when I've worked with FPGA
> folks, when timing won't close, they
>   just ran the build again, hoping for a different random outcome.
>
> This is one of the reasons I never got much into FPGA design myself--the
> build process is non-deterministic.
>
>
>
> Regards, Kevin
>
> --
> Kevin Williams, Ph.D.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>


-- 
Kevin Williams

--0000000000002ac2d905fd8a0090
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks. Yes, just want to move to a version of Vivado that=
 does not have this known fault.</div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Wed, 7 Jun 2023 at 15:17, Marcus D. Leec=
h &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
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

--0000000000002ac2d905fd8a0090--

--===============3082313437783534249==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3082313437783534249==--
