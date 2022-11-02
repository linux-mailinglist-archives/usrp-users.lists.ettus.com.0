Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3052D616DEC
	for <lists+usrp-users@lfdr.de>; Wed,  2 Nov 2022 20:42:40 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 25F0B38429B
	for <lists+usrp-users@lfdr.de>; Wed,  2 Nov 2022 15:42:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667418159; bh=eVMDYpMzIZA/J4duspXB/YTLZqo0pEfQAETUNACROQ8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=cgGhqVYJhzVYCjn5fz4A1flWhL33AYgxr25VcgWBJau3WZqevutu57xabJT0YkA9e
	 zdbpX7sGaVw5KCkfbp2uSgGSiBjskpAzmQ2Mimh/gpo9BUfhsis6bVRYUlC33YHYVY
	 /58HbgzInt4e5mwkwlPnU1UGt/WMXtPiN2C0zjRQCUXffYWoHBwqEferJkJD+2wokY
	 AVs8uvuMfnQxCPMEkcxsFAZ0RruxMzbdekZYG6nhZXfHDp58fcWCSfqFLAJuHNnHS9
	 tmo33vOIVpu4xDAZAoOgY6evHiiaFqclfCnfnW7w3TWejX19bWnJ0X7v4qq9f/SzL8
	 6t5zeSC5cbnhg==
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 78C663841D7
	for <usrp-users@lists.ettus.com>; Wed,  2 Nov 2022 15:41:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mj1gQkR5";
	dkim-atps=neutral
Received: by mail-qt1-f174.google.com with SMTP id fz10so6328260qtb.3
        for <usrp-users@lists.ettus.com>; Wed, 02 Nov 2022 12:41:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z48osMtfkv2wUPeo36gPora31Xm12EsLSrmxXuUs5yk=;
        b=mj1gQkR5mik+Su/dK+oK8sNg3qoButhXXVLpwJmPmkPU+lGfrB1L5SKfL2eBTmCTJZ
         6rCYSETGtU1bJNwi7ggzqOuF/GOr5Vj/U1kmaB0GIydRZ3qwkOjUc2MbBPyOTc+a+x+h
         EnekC0TbQY0/nJwU8Yr37bzhYZfNleSkMyaKd6pAoTAfiB2lCcwta9WwFd7r3VTe6WBy
         XPUNDPvkYBjaQWRcHJlIde5+xu+8h0MwbdL4hK5ax+/UqHpEiigc+eUgMJEGwXGnhzhE
         TSuv7d42iPF7L9H9r5Lbxi5Eu0ey1i7b8kmMipW/p13twFyB+WOp7LnLncRkJmZc9oE6
         u7Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=z48osMtfkv2wUPeo36gPora31Xm12EsLSrmxXuUs5yk=;
        b=7nfJTOoYVkRDCqoYEpN5MbaBIsmBFU7jVUBIFA57HZP3jaIaabAEPC4L/Xitmt2Xxv
         +ZneToPsAj4DY/vuL+lNRNbL0jXDF+AEcQ5gfFm6uuDeRznMs3/uVyjXVJ88s06Nld+H
         WkF9I4DPGoo56gpE1eOygiU0jZc5jxdNn/Ep8nkEt1Q98l5uDTU0Y3i/FXVG9EPyLCYD
         Szg6e9KGc3NqZigHSpYM0FLnnpdoaAd2UCgHofW3PU3rAfj+JaAf/SxnhHNxZhK4BAjR
         pSUotrXVbNQ/NVkpQ2/T35d750i/G0DIXEMVuVhXFG/VkRvSD4QWyAlJgRX6ZxRq8v06
         1oHg==
X-Gm-Message-State: ACrzQf1dAX+7iPQFQPrNd2B2Rh2+Ato8n7j2yjeBBW6zDuKggP7XAe80
	iOc2zWWrmYS680Te/a0eAfY=
X-Google-Smtp-Source: AMsMyM43lwKAFU1LBrCcYIZKmeo1U42spRd4HNHzkttJWbAJpuiX5FB/l0eN4orMr5pT/aiI554n+w==
X-Received: by 2002:ac8:5c42:0:b0:3a4:ba3a:99d7 with SMTP id j2-20020ac85c42000000b003a4ba3a99d7mr20772513qtj.128.1667418088868;
        Wed, 02 Nov 2022 12:41:28 -0700 (PDT)
Received: from [192.168.2.167] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id h6-20020a05620a400600b006ee8874f5fasm8538043qko.53.2022.11.02.12.41.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 12:41:28 -0700 (PDT)
Message-ID: <a704b61f-cc51-6d27-6ef7-16ecb87d4174@gmail.com>
Date: Wed, 2 Nov 2022 15:41:27 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Kenneth Burchfield <ksburchfield@gmail.com>, usrp-users@lists.ettus.com
References: <CAChZci8XKgcSE_BbWtH_-FvX_cFnYdoLJBSA1VLzatQexbEmrg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAChZci8XKgcSE_BbWtH_-FvX_cFnYdoLJBSA1VLzatQexbEmrg@mail.gmail.com>
Message-ID-Hash: YT45HXPY3A3SBE2OB2YPDRHCCMKYJUJN
X-Message-ID-Hash: YT45HXPY3A3SBE2OB2YPDRHCCMKYJUJN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: examples using N310 with ext LO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YT45HXPY3A3SBE2OB2YPDRHCCMKYJUJN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8596829813312133268=="

This is a multi-part message in MIME format.
--===============8596829813312133268==
Content-Type: multipart/alternative;
 boundary="------------y2OrMZVvPsi5O6EaYJHdIhiU"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------y2OrMZVvPsi5O6EaYJHdIhiU
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 02/11/2022 15:27, Kenneth Burchfield wrote:
> Marcus,
>
> The sidebands do not change with the LO level.
>
> I am basically running the tx_waveforms example from UHD 4.2.0.0, and I=
 am adding the argument tx_lo_source=3Dexternal.  Attached is a picture o=
f the spectrum. I am generating a SINE with wave-freq input 2e6. The cent=
er spike is some LO leakage. The spike at -2e6 is the mirroring I am seei=
ng.
>
> Thanks,
> Scott
The LO suppression looks to be about 55dBc, which is not horrific.

The sideband suppression appears to be only about 30dBc, which is not=20
very good.


>
> On 02/11/2022 12:09, Scott Burchfield wrote:
>
>     Hi,
>
>     Are there any updates on this problem.=C2=A0 I normally try not to
>     reply to old threads, but I am seeing the same the same spectral
>     mirroring Rob described earlier.=C2=A0 My setup is also the same as
>     Rob=E2=80=99s.I have tracked some newer threads that mentioned disa=
bling
>     TX_QEC_INIT, but I am still seeing the mirroring after disabling QE=
C.
>
>     https://www.mail-archive.com/usrp-users@lists.ettus.com/msg07489.ht=
ml
>
>     Thanks,
>
>     Scott
>
> It seems to me that if you use an external LO, that LO has to go=20
> through the phase-splitter on the mixer, and that phase-split =C2=A0 is=
=20
> subject to errors, so turning off QEC may not be that=20
> desirable--although I think the mixer on the N310 (using an AD9371)
>  =C2=A0 is a 2XLO, so the phase error should be very very small.
>
> Do the unwanted sidebands change with LO level?

--------------y2OrMZVvPsi5O6EaYJHdIhiU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 02/11/2022 15:27, Kenneth Burchfiel=
d
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAChZci8XKgcSE_BbWtH_-FvX_cFnYdoLJBSA1VLzatQexbEmrg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <pre style=3D"font-family:courier,&quot;courier new&quot;,monospa=
ce;font-size:14px;white-space:pre-wrap;margin:0em;color:rgb(0,0,0)">Marcu=
s,

The sidebands do not change with the LO level.

I am basically running the tx_waveforms example from UHD 4.2.0.0, and I a=
m adding the argument tx_lo_source=3Dexternal.  Attached is a picture of =
the spectrum. I am generating a SINE with wave-freq input 2e6. The center=
 spike is some LO leakage. The spike at -2e6 is the mirroring I am seeing=
.

Thanks,
Scott</pre>
      </div>
    </blockquote>
    The LO suppression looks to be about 55dBc, which is not horrific.<br=
>
    <br>
    The sideband suppression appears to be only about 30dBc, which is
    not very good.<br>
    <br>
    =C2=A0 <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAChZci8XKgcSE_BbWtH_-FvX_cFnYdoLJBSA1VLzatQexbEmrg@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <pre style=3D"font-family:courier,&quot;courier new&quot;,monospa=
ce;font-size:14px;white-space:pre-wrap;margin:0em;color:rgb(0,0,0)">

On 02/11/2022 12:09, Scott Burchfield wrote:
</pre>
        <blockquote style=3D"margin:0em;padding:0px 0px 0px
          0.85em;color:rgb(160,30,30);border-left:0.2em solid
          rgb(85,85,238);font-family:helvetica,arial,sans-serif;font-size=
:14px">
          <pre style=3D"font-family:courier,&quot;courier new&quot;,monos=
pace;font-size:1em;white-space:pre-wrap;margin-top:0px;margin-bottom:0px"=
>Hi,

</pre>
          <tt style=3D"margin:0px;font-family:courier,&quot;courier
            new&quot;,monospace;font-size:1em">Are there any updates on
            this problem.=C2=A0 I normally try not to reply to=C2=A0</tt>=
<tt
            style=3D"margin:0px;font-family:courier,&quot;courier
            new&quot;,monospace;font-size:1em">old threads, but I am
            seeing the same the same spectral mirroring Rob=C2=A0</tt><tt
            style=3D"margin:0px;font-family:courier,&quot;courier
            new&quot;,monospace;font-size:1em">described earlier.=C2=A0 M=
y
            setup is also the same as Rob=E2=80=99s.</tt><tt
            style=3D"margin:0px;font-family:courier,&quot;courier
            new&quot;,monospace;font-size:1em">I have tracked some newer
            threads that mentioned disabling=C2=A0</tt><tt
            style=3D"margin:0px;font-family:courier,&quot;courier
            new&quot;,monospace;font-size:1em">TX_QEC_INIT, but I am
            still seeing the mirroring after disabling QEC.</tt>
          <pre style=3D"font-family:courier,&quot;courier new&quot;,monos=
pace;font-size:1em;white-space:pre-wrap;margin:0em"><a style=3D"color:rgb=
(0,80,150)" href=3D"https://www.mail-archive.com/usrp-users@lists.ettus.c=
om/msg07489.html" target=3D"_blank" rel=3D"nofollow" moz-do-not-send=3D"t=
rue" class=3D"moz-txt-link-freetext">https://www.mail-archive.com/usrp-us=
ers@lists.ettus.com/msg07489.html</a>

Thanks,

Scott

</pre>
        </blockquote>
        <tt style=3D"margin:0px;font-family:courier,&quot;courier
          new&quot;,monospace;font-size:14px;color:rgb(0,0,0)">It seems
          to me that if you use an external LO, that LO has to go
          through=C2=A0</tt><tt
          style=3D"margin:0px;font-family:courier,&quot;courier
          new&quot;,monospace;font-size:14px;color:rgb(0,0,0)">the
          phase-splitter on the mixer, and that phase-split=C2=A0</tt><tt
          style=3D"margin:0px;font-family:courier,&quot;courier
          new&quot;,monospace;font-size:14px;color:rgb(0,0,0)">=C2=A0 is
          subject to errors, so turning off QEC may not be that=C2=A0</tt=
><tt
          style=3D"margin:0px;font-family:courier,&quot;courier
          new&quot;,monospace;font-size:14px;color:rgb(0,0,0)">desirable-=
-although
          I think the mixer on the N310 (using an AD9371)</tt>
        <pre style=3D"font-family:courier,&quot;courier new&quot;,monospa=
ce;font-size:14px;white-space:pre-wrap;margin:0em;color:rgb(0,0,0)">=C2=A0=
 is a 2XLO, so the phase error should be very very small.

Do the unwanted sidebands change with LO level?</pre>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------y2OrMZVvPsi5O6EaYJHdIhiU--

--===============8596829813312133268==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8596829813312133268==--
