Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1C573A1D9
	for <lists+usrp-users@lfdr.de>; Thu, 22 Jun 2023 15:30:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 73A0D381036
	for <lists+usrp-users@lfdr.de>; Thu, 22 Jun 2023 09:30:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687440621; bh=Lu2YCURStdazOOgH09r3GkD1EH1oWXQaa02mEJeqK0s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=RebxfjM+PMe7eI08LFA016SlJt5s5635u/lAg4Hg2zLXYoS7NMbb9aLTW4dWuvab/
	 LPonsqqWOsu8sfaIBc1i1Ua49WmvCbL8yX+5fu7Y2G8jPxq6ayWajoxMwVwDfheFeM
	 cWNhd+rzOADEZewjTmHYijGToz0lQrdx1yCkHWWXavf/F0lB32WPK3Q2Dh4znRhEtb
	 ++IGfmrh+kGHlzRZqCTWfIbuhexRpZZK1rBrely5G1834b+/OQC0b9YUL/gmHl8Ni0
	 Z2QFZe5sULEDM30j5QRGioQI4K/fKdn4oMkRaynYWg4Jv6joH+mT5ngooKn4zmEPPn
	 /wiW7AhgW747g==
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by mm2.emwd.com (Postfix) with ESMTPS id AA711380C80
	for <usrp-users@lists.ettus.com>; Thu, 22 Jun 2023 09:29:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UTRGnHzb";
	dkim-atps=neutral
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6237faa8677so49730706d6.1
        for <usrp-users@lists.ettus.com>; Thu, 22 Jun 2023 06:29:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687440557; x=1690032557;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uWkKHt+8Oi7AlRPPkRQl9OrpASH8lWAcQuM1uAwIJAU=;
        b=UTRGnHzblsvOgSq3NBVaK1A5FDEqHCNwJK9O2ikH3xiWlJVaAnKq6PnQON3/GvqfbP
         3binB1rzmqGpRMmuPq7cS96RNyKc3x1GK0wMpKACdPpNjEpWlvUhReFRNULLZSc0Sock
         kaM7KkiazwZUTqt+auzs0HP5VIya/DccnZu1TGwk5LdpuuV7NKZrvsnRD5tA2TjNV5Ll
         2ATRFTn3nXBUcpFn1rYmNKwo33ou2AHXG7F1/J3LSME9Gvol77JjiHhl+NIv8ocbXF+Y
         4buJPgbJDvTQ1pQX5XWAqGzjcQOdjn+gXLOSEXdSLEKLew9lk0TF10r+1zbBIUZSk0Rp
         ZJZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687440557; x=1690032557;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=uWkKHt+8Oi7AlRPPkRQl9OrpASH8lWAcQuM1uAwIJAU=;
        b=f2I51EzS7GuyilXi+FpcgUmYTP/0nnfOllaRpI4TgQbVkyXuZzMitV3qI47sbmFY1X
         0GBtXeTgMWA/PBAGkQ8qfH0k9F8Y7g1hrqoLpdekn1jb3R/K6apzu3cQSfe1bqVghdoA
         zHinf2NRSbUpUmBLY5of+ed1rAN5HDBO0t2NM3RMyHg1AdqimCO2AT969OzklcQwPpQ7
         sCk2KytjYz8ZqPbUcaUuZA8G2aNPoFia9aFkXBY44GKVsN1LnreQRIp9USmLyhWbzl7x
         HvovTDF6XEBelIy225dbiyWQbJWpr4pgxTPK7004goLS+NgK9IWCcXD+cyp1OEAYP8TH
         llKQ==
X-Gm-Message-State: AC+VfDzi8U8b0u71CSAStaQRLO38Me1iPiNA1l3J/fxKccfWQkUeNCpk
	fweHMoRML74V4RmStAtTGc7qfbIgYX0=
X-Google-Smtp-Source: ACHHUZ60pkMKbCWg3DeNxZ3Don264nbP6/7ImqokN8+6p0CtOfcpzus/OIq8Ev/3KSABncd9ojc4SA==
X-Received: by 2002:a05:6214:c6f:b0:5e9:2d8c:9a06 with SMTP id t15-20020a0562140c6f00b005e92d8c9a06mr25013505qvj.39.1687440548910;
        Thu, 22 Jun 2023 06:29:08 -0700 (PDT)
Received: from [192.168.2.171] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id i5-20020a0cf105000000b0063003786840sm3773323qvl.99.2023.06.22.06.29.08
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jun 2023 06:29:08 -0700 (PDT)
Message-ID: <b8ebb484-ca34-37c3-7bc1-79a63735abef@gmail.com>
Date: Thu, 22 Jun 2023 09:29:08 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAHRiTbnF-aJvp9RCXAHnFgjf9kcTvEYOLjdGrKdzw421Oy3zLA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAHRiTbnF-aJvp9RCXAHnFgjf9kcTvEYOLjdGrKdzw421Oy3zLA@mail.gmail.com>
Message-ID-Hash: C3PMUBFT7LCKVQUYZHPV3G2NHIY7PB6S
X-Message-ID-Hash: C3PMUBFT7LCKVQUYZHPV3G2NHIY7PB6S
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TwinRx Spectrum shape
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C3PMUBFT7LCKVQUYZHPV3G2NHIY7PB6S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1400928010754422579=="

This is a multi-part message in MIME format.
--===============1400928010754422579==
Content-Type: multipart/alternative;
 boundary="------------Lrj7IRwLaZV6L345cXb46tA7"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Lrj7IRwLaZV6L345cXb46tA7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 22/06/2023 05:48, Carlo Venier wrote:
> Good morning,
>
> I have some questions regarding the TwinRX daughterboard.
>
> 1) With the following settings:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Master Clock Rate =3D 200 MH=
z
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Tuning Frequency =3D 2450 MH=
z
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Sample rate =3D 100 Msps
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Gain =3D 93
> =C2=A0=C2=A0 =C2=A0 =C2=A0=C2=A0 Every RF connector is 50 Ohm terminate=
d
> =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 LO_OFFSET disabled
>
> I get a non-flat spectrum. In particular, the center portion of it is=20
> up to 5 dB higher than at +/- 40 MHz from the tuning frequency. You=20
> can see this behaviour in the attached figures.
>
> 2) The two channels have a different behaviour below 1.8 GHz (for=20
> example at 450 MHz). The spectrum of channel :1 is a lot more wavy=20
> than the spectrum of the channel :0. You can see this behaviour in the=20
> attached figures.
> In any case, also below 1.8 GHz the delta between min and max level is=20
> about 5 dBs.
>
> 3) Sometimes, the DC component pops up. As the TwinRX channels are a=20
> superheterodyne receivers, I don't expect that the DC component=20
> appears, but it happens.
>
> Is it possible that the TwinRX I'm using is not working properly? Or=20
> am I missing some settings?
>
> 4) Can somebody provide a screenshot of the spectrum of the TwinRx=20
> channels with the same settings at 1) for the tuning frequencies of=20
> 450 MHz and 2450 MHz?
>
> Thank you.
>
>
> Best regards,
>
> Carlo Venier
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
What happens if you turn the gain down about 5dB?=C2=A0=C2=A0=C2=A0 What =
are you using=20
to provide a perfectly-flat noise input?

What are you using to collect the data that produced these plots?

The analog bandwidth of the TwinRX is limited to 80MHz, and uses SAW=20
filters at the 1st IF (TA0824A and TA0851A, depending
 =C2=A0 on whether it's operating in "low band" or "high band").=C2=A0 Th=
e final=20
IF filter is a discrete multi-stage design, but I don't
 =C2=A0 know what it's filter shape is.

IN ADDITION, there are RF input filters that are selected based on the=20
tuned RF frequency.=C2=A0=C2=A0=C2=A0 The end result of all of these
 =C2=A0 filters is that the final filter "shape" is the convolution of al=
l of=20
those individual filter shapes.

I'm not sure what you mean by "sometimes the DC component shows up".=C2=A0=
=C2=A0=C2=A0=20
I would expect there to be spurs at some points--
 =C2=A0 for example those that are exact multiples of internal clocks, et=
c.


--------------Lrj7IRwLaZV6L345cXb46tA7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 22/06/2023 05:48, Carlo Venier
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAHRiTbnF-aJvp9RCXAHnFgjf9kcTvEYOLjdGrKdzw421Oy3zLA@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"auto"><span style=3D"font-size:12.8px">Good morning,</s=
pan><br
          style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">I have some questions regarding
          the TwinRX daughterboard.</span><br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">1) With the following settings:<=
/span><br
          style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 Master Clock Rate =3D 200
          MHz</span><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 Tuning Frequency =3D 2450
          MHz</span><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 Sample rate =3D 100 Msps</span><br
          style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 Gain =3D 93</span><br
          style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">=C2=A0=C2=A0 =C2=A0 =C2=A0=C2=A0=
 Every RF connector is 50
          Ohm terminated</span><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=
=A0 LO_OFFSET disabled</span><br
          style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">I get a non-flat spectrum. In
          particular, the center portion of it is up to 5 dB higher than
          at +/- 40 MHz from the tuning frequency. You can see this
          behaviour in the attached figures.</span><br
          style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">2) The two channels have a
          different behaviour below 1.8 GHz (for example at 450 MHz).
          The spectrum of channel :1 is a lot more wavy than the
          spectrum of the channel :0. You can see this behaviour in the
          attached figures.</span><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">In any case, also below 1.8 GHz
          the delta between min and max level is about 5 dBs.</span><br
          style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">3) Sometimes, the DC component
          pops up. As the TwinRX channels are a superheterodyne
          receivers, I don't expect that the DC component appears, but
          it happens.</span><br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">Is it possible that the TwinRX
          I'm using is not working properly? Or am I missing some
          settings?</span><br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">4) Can somebody provide a
          screenshot of the spectrum of the TwinRx channels with the
          same settings at 1) for the tuning frequencies of 450 MHz and
          2450 MHz?</span><br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">Thank you.</span><br
          style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">Best regards,</span><br
          style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">Carlo Venier</span></div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    What happens if you turn the gain down about 5dB?=C2=A0=C2=A0=C2=A0 W=
hat are you
    using to provide a perfectly-flat noise input?<br>
    <br>
    What are you using to collect the data that produced these plots?<br>
    <br>
    The analog bandwidth of the TwinRX is limited to 80MHz, and uses SAW
    filters at the 1st IF (TA0824A and TA0851A, depending<br>
    =C2=A0 on whether it's operating in "low band" or "high band").=C2=A0=
 The
    final IF filter is a discrete multi-stage design, but I don't<br>
    =C2=A0 know what it's filter shape is.<br>
    <br>
    IN ADDITION, there are RF input filters that are selected based on
    the tuned RF frequency.=C2=A0=C2=A0=C2=A0 The end result of all of th=
ese<br>
    =C2=A0 filters is that the final filter "shape" is the convolution of=
 all
    of those individual filter shapes.<br>
    <br>
    I'm not sure what you mean by "sometimes the DC component shows
    up".=C2=A0=C2=A0=C2=A0 I would expect there to be spurs at some point=
s--<br>
    =C2=A0 for example those that are exact multiples of internal clocks,
    etc.<br>
    <br>
    <br>
  </body>
</html>

--------------Lrj7IRwLaZV6L345cXb46tA7--

--===============1400928010754422579==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1400928010754422579==--
