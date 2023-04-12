Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B03336DFF2F
	for <lists+usrp-users@lfdr.de>; Wed, 12 Apr 2023 21:51:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4CBDB3813D3
	for <lists+usrp-users@lfdr.de>; Wed, 12 Apr 2023 15:51:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681329103; bh=JUBsnhY0v+8z5C8c5JBOHw7fhkNnCa/tBS2QFgehkyY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=d5I70iRVi7bEvA2hGlr33Zo+78v+PD9x7/ciEV31tgLGWvoGfudcz2AQZ74lbu3yC
	 OWdj2i2vjvVENmha4P5wGurJdYFXyegnGvzNSj1P7hs+q9NgmBCn9DpFKKH1AaNsS3
	 YAbXEkhq9W4y3LB+7LFb7JEG2lckDCGipUBgck9HIZFNY1qGLHm77RSTjSYfpBaLCJ
	 PzdM3XZnawuYqQbpGW2mty6jfU1Ww7tuVmd9T0+V4c5D/VymdlD1p4oIJ9vM2FL6Bz
	 NTJUyYrzGP3U7AQEws3WADZw/8T/9Ve3ng2MxE2Rw62WGTEoh7MoVjl32tIdAvnG2Q
	 iJJ0Il+GabD8Q==
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id D22013813D3
	for <usrp-users@lists.ettus.com>; Wed, 12 Apr 2023 15:51:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ODA4s3W3";
	dkim-atps=neutral
Received: by mail-qt1-f179.google.com with SMTP id fv6so423967qtb.9
        for <usrp-users@lists.ettus.com>; Wed, 12 Apr 2023 12:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681329097; x=1683921097;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F2sxqPBQ7xR8Obzhbk0OSiDSXvRfLfxFyWPhVutmBw8=;
        b=ODA4s3W3wTeOPwW7jc8YalQH0T4BXaVkm8S8fdJ8mbJaATjfyEZnR13/armzNKPpwV
         Z4HTRCoUamSI5akOUQD1vMxRNbNEJg1b9/XDNJd2Took2zpHZoJ2xAplO7HBGhOuonHP
         lzl0BLEmuGCdB9+r9HmHQm9gkRCClUWTn4J9q8l6Wspu+2tKyA/J1Q3fkzCQFlPd4i2/
         Sn4yKol/3iq7NPo6JAUUCH6/gwvGlsGU651fVziCgVdEtZKRb0R2RRzfibSYCbZ4ujFc
         xtXRXlo1aDnApULdmWrQBwNw56cvy0/UL6qClSrtg/qkuOQxKR2m1Z2TuMGTpenAvyL3
         +PRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681329097; x=1683921097;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=F2sxqPBQ7xR8Obzhbk0OSiDSXvRfLfxFyWPhVutmBw8=;
        b=YmB3t2A3394Aq754sNQ/uGvYr+SnSBJ0l7/gJAUptLeHKhvZwNxOG4ds0nq9Cm7KM0
         b+qN8nU7C243zEXy4lN+ZYT+aVWm61aqF2qnxURH3706MlO6U54Zw3l29r6ghkHyjuqD
         EJfdBZ2wBPndlM4WqZJ4Lgo1jcyxglhxqmOTCtFzRAYEHo1H0zKUIhiZkNxfQEfNXgoC
         gVXYHeEOoj31iGbGcAfh3DYAj9pLy1S3KPBis5N7b4PrxCWSKnGy88lOpwkFZfDzdgUq
         f88tL0PrTLyisymC4FnEMU3ZwhsFsZf+Mm2K5GT6WjhZWH5FNoKZz8N5zX6R6+lkjPGk
         Czkw==
X-Gm-Message-State: AAQBX9dn3kjKqmmWBRdZiegL+1unvciSpaYTYgJlxgyp5tKHCbaR9Wb5
	Vqh8y9+eYQxiQab8IH+vkH8iVJWFERk=
X-Google-Smtp-Source: AKy350Zki2cIdVIeFCFCntJ7Mrb4KYzVgtGtEbhfcqoO4pkCVeO+fXRSx4n3T3tQyd7a01AvvMB0yw==
X-Received: by 2002:a05:622a:34f:b0:3d6:ff99:7e9e with SMTP id r15-20020a05622a034f00b003d6ff997e9emr5509305qtw.33.1681329097123;
        Wed, 12 Apr 2023 12:51:37 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id k23-20020ac84797000000b003b63b8df24asm4467567qtq.36.2023.04.12.12.51.36
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 12:51:36 -0700 (PDT)
Message-ID: <d0706ce9-c1e3-94da-7609-b1e47139157f@gmail.com>
Date: Wed, 12 Apr 2023 15:51:36 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CO6PR09MB811819719BDAE76900DEF93AF9959@CO6PR09MB8118.namprd09.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CO6PR09MB811819719BDAE76900DEF93AF9959@CO6PR09MB8118.namprd09.prod.outlook.com>
Message-ID-Hash: I4ZA2FDHX7GTAU5H5EAXLVDV6VOLPART
X-Message-ID-Hash: I4ZA2FDHX7GTAU5H5EAXLVDV6VOLPART
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Harmonic Distortion with B205mini
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/I4ZA2FDHX7GTAU5H5EAXLVDV6VOLPART/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4667639019127544844=="

This is a multi-part message in MIME format.
--===============4667639019127544844==
Content-Type: multipart/alternative;
 boundary="------------pis4oxMbl4fOh0APlKsc4L4E"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------pis4oxMbl4fOh0APlKsc4L4E
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 10/04/2023 09:39, Shenk, Trey E via USRP-users wrote:
>
> I'm using a B205mini to transmit signals. When transmitting, I can see=20
> copies of the SOI at harmonics of the center frequency. I ran some=20
> measurements of total harmonic distortion, and found it to range from=20
> 39% with a 100MHz to 23% with a 1GHz carrier.=C2=A0The second harmonic =
is=20
> <-50dBc, but the third harmonic is usually around -10dBc.
>
> My main concern is for the lower frequency carriers, like 100MHz,=20
> because multiple harmonics will show up on a spectrum analyzer set to=20
> a wideband. I've looked at putting an RF filter at the output, but I=20
> need the system to be able to switch transmit center frequencies in a=20
> range from 100MHz to 5GHz.
>
> Is it possible to reduce the harmonics by some hardware setting=20
> (driving with gnruadio)?
>
> Thanks,
> Trey
>
>
I just did some tests myself, using a couple of tones with modest magnitu=
de.

Indeed, the odd harmonics of the carrier are not particularly well=20
suppressed, which surprises me somewhat--the mixer in
 =C2=A0 the AD9361 is fairly good.

But what is true is that only SOME of the USRP line have a switchable=20
filter bank that the UHD software automatically switches
 =C2=A0 into place, which would (in many cases) handily suppress harmonic=
=20
content.

I tend to think of SDRs as *components* in an overall, engineered, RF=20
systems design.=C2=A0 In radios-for-a-particular-purpose, there
 =C2=A0 are almost ALWAYS application-specific filters to eliminate spurs=
 and=20
harmonic mixer output content from reaching the antenna
 =C2=A0 at levels that are significant.=C2=A0=C2=A0 An SDR, being very ge=
neral-purpose,=20
has no opportunity to do that (although, as I've said,
 =C2=A0 SOME USRP models include a handful of different filters in the TX=
 and=20
RX chains).


--------------pis4oxMbl4fOh0APlKsc4L4E
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 10/04/2023 09:39, Shenk, Trey E via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CO6PR09MB811819719BDAE76900DEF93AF9959@CO6PR09MB8118.namprd09=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p style=3D"background:white"><span
            style=3D"font-size:10.5pt;font-family:&quot;Segoe
            UI&quot;,sans-serif;color:#353C41">I'm using a B205mini to
            transmit signals. When transmitting, I can see copies of the
            SOI at harmonics of the center frequency. I ran some
            measurements of total harmonic distortion, and found it to
            range from 39% with a 100MHz to 23% with a 1GHz carrier.=C2=A0=
The
            second harmonic is &lt;-50dBc, but the third harmonic is
            usually around -10dBc.
            <o:p></o:p></span></p>
        <p style=3D"background:white;box-sizing:
          border-box;font-variant-ligatures: normal;font-variant-caps:
          normal;orphans: 2;text-align:start;widows:
          2;-webkit-text-stroke-width: 0px;text-decoration-thickness:
          initial;text-decoration-style: initial;text-decoration-color:
          initial;word-spacing:0px">
          <span style=3D"font-size:10.5pt;font-family:&quot;Segoe
            UI&quot;,sans-serif;color:#353C41">My main concern is for
            the lower frequency carriers, like 100MHz, because multiple
            harmonics will show up on a spectrum analyzer set to a
            wideband. I've looked at putting an RF filter at the output,
            but I need the system to be able to switch transmit center
            frequencies in a range from 100MHz to 5GHz.<o:p></o:p></span>=
</p>
        <p style=3D"background:white;box-sizing:
          border-box;font-variant-ligatures: normal;font-variant-caps:
          normal;orphans: 2;text-align:start;widows:
          2;-webkit-text-stroke-width: 0px;text-decoration-thickness:
          initial;text-decoration-style: initial;text-decoration-color:
          initial;word-spacing:0px">
          <span style=3D"font-size:10.5pt;font-family:&quot;Segoe
            UI&quot;,sans-serif;color:#353C41">Is it possible to reduce
            the harmonics by some hardware setting (driving with
            gnruadio)?=C2=A0<o:p></o:p></span></p>
        <p style=3D"background:white;box-sizing:
          border-box;font-variant-ligatures: normal;font-variant-caps:
          normal;orphans: 2;text-align:start;widows:
          2;-webkit-text-stroke-width: 0px;text-decoration-thickness:
          initial;text-decoration-style: initial;text-decoration-color:
          initial;word-spacing:0px">
          <span style=3D"font-size:10.5pt;font-family:&quot;Segoe
            UI&quot;,sans-serif;color:#353C41">Thanks,<br>
            Trey<o:p></o:p></span></p>
        <br>
      </div>
    </blockquote>
    I just did some tests myself, using a couple of tones with modest
    magnitude.<br>
    <br>
    Indeed, the odd harmonics of the carrier are not particularly well
    suppressed, which surprises me somewhat--the mixer in<br>
    =C2=A0 the AD9361 is fairly good.<br>
    <br>
    But what is true is that only SOME of the USRP line have a
    switchable filter bank that the UHD software automatically switches<b=
r>
    =C2=A0 into place, which would (in many cases) handily suppress harmo=
nic
    content.<br>
    <br>
    I tend to think of SDRs as *components* in an overall, engineered,
    RF systems design.=C2=A0 In radios-for-a-particular-purpose, there<br=
>
    =C2=A0 are almost ALWAYS application-specific filters to eliminate sp=
urs
    and harmonic mixer output content from reaching the antenna<br>
    =C2=A0 at levels that are significant.=C2=A0=C2=A0 An SDR, being very
    general-purpose, has no opportunity to do that (although, as I've
    said,<br>
    =C2=A0 SOME USRP models include a handful of different filters in the=
 TX
    and RX chains).<br>
    <br>
    <br>
  </body>
</html>

--------------pis4oxMbl4fOh0APlKsc4L4E--

--===============4667639019127544844==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4667639019127544844==--
