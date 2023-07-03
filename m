Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DACD1745DA9
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jul 2023 15:46:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CDDE0383F1F
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jul 2023 09:46:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688391962; bh=SKkDYH/znUFPqcRezMioN/V/lgKPhupfF+DSfOeopDs=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=GpoOwY2hDfqAu1bpn1GT5KAsDeqtcoSnRmyhT1qGQ6IDK/n+TjkU2J/mSCe/6Uigl
	 tcblFDoaWGzXYEEMu5gJqBYKNCqEi3SFJxT5466Njd9xqveS254ChgeFg95tm7kRrT
	 cDYaoJD6vaAgexJbYW4bulH9uCMcsq+b3so4/uxfrg6wsSBw98yGDMr3F2PjPHEUuO
	 hycvbbcd6kDFedhElX4HyUmEZWBdNJRlhOxlHk+JJHgDZwXUamZOZ6/MyeToJNfPrK
	 ll8/ls3MzTfbLmWCya5rZrwYtH/nPE9Xx94oGFbKT8e/o/GVk6koITqMoiKiWvoRmh
	 Bac1FuyfqyGBQ==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 8AB8B3809CC
	for <usrp-users@lists.ettus.com>; Mon,  3 Jul 2023 09:45:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Lz7bv1YC";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-76595a7b111so389931685a.2
        for <usrp-users@lists.ettus.com>; Mon, 03 Jul 2023 06:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688391906; x=1690983906;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X8m+6S0BZf3IbIN23n2Pp2sLoO9RSyT9V1ZScKX4W5A=;
        b=Lz7bv1YCdmzZtHkytllVMIDGowRHCvyTjiQVrtCy84CDwD2ucyIhmHBUTLrIv1NzdP
         pm3PSHAOGZYz5gEWyD+spmIatlbEtZsYX/zVUbhMQHuS/0vCTz2uVxSDPEDllCrC57cn
         gCxCemSBsjb2okF/3UJXTm0NiFW8v4ILS0vHCvjzqdyVUNpvaNhnu735GDZ1lZKjHPpU
         tTsslJdJVwyGF5/fW/5gSevxAAa+yT45nCqPTFiyLbEthFwKoYgMOamRcYSXccY9K6am
         +FcixMAzCSnhNrBSEuaziJpJ3G5NRs1/nxwGj7lYyS7V64jgG8QhJBeU9kUljoRcRxwY
         3PCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688391906; x=1690983906;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=X8m+6S0BZf3IbIN23n2Pp2sLoO9RSyT9V1ZScKX4W5A=;
        b=JgeMQaKZXWBEN+32em41Sl/obKUzqKiGi7Apv4VfWQLiIN1Zkk+43CTMHxXAMZZ484
         8a2IYPgU8aPjUSd4IvNprgOrnrr76WUK3SM+tA+wIYTlkI3AMSIq46bT7MSFRNFvJTIn
         wZUNWWqM3vOw0U8HKsL5HHLv4hVrpIHD8DTEIEw7Sji3eb65PIfCbl326a7m2JO+kQ78
         KaqhKCX5Rz0QvksdlYRtGgDXxBYRHulHktRuhaSmS0OZBQcogMT/AkC3qhz6TZrPnPFs
         GXBKZwagMtu0duttlqKArNe1YJvRxyfSz+3+60ePgxg0i85ZHxvMUACuTGVaMpyDY76I
         JDJA==
X-Gm-Message-State: AC+VfDwu08hEOtWyf7EkwKmY+37p+dt0TSP5LMBO8ZQOV7IDmVyPnlo/
	m8j3uQ/xUEV9+o+2WR/Jou8=
X-Google-Smtp-Source: ACHHUZ4BZ+16FGceiH5aNE9G1twboXNegSprBCsK5/FR12apmcGO/QRxDDzjneUQiHz+7q7mrvyEhg==
X-Received: by 2002:a05:620a:4011:b0:765:3d01:558f with SMTP id h17-20020a05620a401100b007653d01558fmr14150918qko.30.1688391905845;
        Mon, 03 Jul 2023 06:45:05 -0700 (PDT)
Received: from [192.168.2.198] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id i12-20020a05620a144c00b00765ab6d3e81sm8442261qkl.122.2023.07.03.06.45.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jul 2023 06:45:05 -0700 (PDT)
Message-ID: <13402261-57e3-ab97-7867-02edce657a50@gmail.com>
Date: Mon, 3 Jul 2023 09:45:04 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Carlo Venier <venier.carlo@gmail.com>
References: <CAHRiTbnF-aJvp9RCXAHnFgjf9kcTvEYOLjdGrKdzw421Oy3zLA@mail.gmail.com>
 <ed80e51a-be7f-d6c0-7a25-3c0c7d19e4d6@gmail.com>
 <CAHRiTb=b0iAWJUH2enH3KcvukdFad3ipDCKH=RQ0D9=fqzsUSg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAHRiTb=b0iAWJUH2enH3KcvukdFad3ipDCKH=RQ0D9=fqzsUSg@mail.gmail.com>
Message-ID-Hash: J6M7M6FBV3DVT5WTOY6KFUH74VTFMOFA
X-Message-ID-Hash: J6M7M6FBV3DVT5WTOY6KFUH74VTFMOFA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TwinRx Spectrum shape
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/J6M7M6FBV3DVT5WTOY6KFUH74VTFMOFA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1636469670098364203=="

This is a multi-part message in MIME format.
--===============1636469670098364203==
Content-Type: multipart/alternative;
 boundary="------------GNpagZ0ZWU54ygUDNkdDcVcN"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------GNpagZ0ZWU54ygUDNkdDcVcN
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 03/07/2023 04:47, Carlo Venier wrote:
> Thank you for the screenshot, Marcus. The noise floor shape you obtain=20
> has the same behaviour as the noise floor shape we obtain.
>
> So, assuming this is the "nominal" behaviour, do you have any=20
> equalization method to suggest?
>
> Regards,
>
> Carlo Venier
I'd use an FFT filter based on a normalized neutral spectrum captured=20
with a terminator.=C2=A0 Others may have more
 =C2=A0 sophisticated suggestions.


>
> Il mer 28 giu 2023, 20:02 Marcus D. Leech <patchvonbraun@gmail.com> ha=20
> scritto:
>
>     On 22/06/2023 05:48, Carlo Venier wrote:
>>     Good morning,
>>
>>     I have some questions regarding the TwinRX daughterboard.
>>
>>     1) With the following settings:
>>     =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Master Clock Rate =3D 2=
00 MHz
>>     =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Tuning Frequency =3D 24=
50 MHz
>>     =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Sample rate =3D 100 Msp=
s
>>     =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Gain =3D 93
>>     =C2=A0=C2=A0 =C2=A0 =C2=A0=C2=A0 Every RF connector is 50 Ohm term=
inated
>>     =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 LO_OFFSET disabled
>>
>>     I get a non-flat spectrum. In particular, the center portion of
>>     it is up to 5 dB higher than at +/- 40 MHz from the tuning
>>     frequency. You can see this behaviour in the attached figures.
>>
>>     2) The two channels have a different behaviour below 1.8 GHz (for
>>     example at 450 MHz). The spectrum of channel :1 is a lot more
>>     wavy than the spectrum of the channel :0. You can see this
>>     behaviour in the attached figures.
>>     In any case, also below 1.8 GHz the delta between min and max
>>     level is about 5 dBs.
>>
>>     3) Sometimes, the DC component pops up. As the TwinRX channels
>>     are a superheterodyne receivers, I don't expect that the DC
>>     component appears, but it happens.
>>
>>     Is it possible that the TwinRX I'm using is not working properly?
>>     Or am I missing some settings?
>>
>>     4) Can somebody provide a screenshot of the spectrum of the
>>     TwinRx channels with the same settings at 1) for the tuning
>>     frequencies of 450 MHz and 2450 MHz?
>>
>>     Thank you.
>>
>>
>>     Best regards,
>>
>>     Carlo Venier
>>
>>     _______________________________________________
>>     USRP-users mailing list --usrp-users@lists.ettus.com
>>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>     Here is my test, with the input terminated, and the gain at 80dB:
>
>     http://www.ccera.ca/files/2450.png
>
>     That's for 2450MHz, 100Msps
>
>     http://www.ccera.ca/files/450.png
>
>     That's for 450MHz, 100Msps, again 80dB gain
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------GNpagZ0ZWU54ygUDNkdDcVcN
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 03/07/2023 04:47, Carlo Venier
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAHRiTb=3Db0iAWJUH2enH3KcvukdFad3ipDCKH=3DRQ0D9=3DfqzsUSg@mai=
l.gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"auto">Thank you for the screenshot, Marcus. The noise
        floor shape you obtain has the same behaviour as the noise floor
        shape we obtain.=C2=A0
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">So, assuming this is the "nominal" behaviour, d=
o
          you have any equalization method to suggest?</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">Regards,</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">Carlo Venier</div>
      </div>
    </blockquote>
    I'd use an FFT filter based on a normalized neutral spectrum
    captured with a terminator.=C2=A0 Others may have more<br>
    =C2=A0 sophisticated suggestions.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAHRiTb=3Db0iAWJUH2enH3KcvukdFad3ipDCKH=3DRQ0D9=3DfqzsUSg@mai=
l.gmail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">Il mer 28 giu 2023, 20:02
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          ha scritto:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0
          .8ex;border-left:1px #ccc solid;padding-left:1ex">
          <div>
            <div>On 22/06/2023 05:48, Carlo Venier wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"auto"><span style=3D"font-size:12.8px">Good
                  morning,</span><br style=3D"font-size:12.8px">
                <br style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">I have some questions
                  regarding the TwinRX daughterboard.</span><br
                  style=3D"font-size:12.8px">
                <br style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">1) With the following
                  settings:</span><br style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 Master Clock Rate
                  =3D 200 MHz</span><br style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 Tuning Frequency
                  =3D 2450 MHz</span><br style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 Sample rate =3D 100
                  Msps</span><br style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 Gain =3D 93</span><br
                  style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">=C2=A0=C2=A0 =C2=A0 =C2=A0=
=C2=A0 Every RF
                  connector is 50 Ohm terminated</span><br
                  style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0=C2=A0 LO_OFFSET
                  disabled</span><br style=3D"font-size:12.8px">
                <br style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">I get a non-flat
                  spectrum. In particular, the center portion of it is
                  up to 5 dB higher than at +/- 40 MHz from the tuning
                  frequency. You can see this behaviour in the attached
                  figures.</span><br style=3D"font-size:12.8px">
                <br style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">2) The two channels have
                  a different behaviour below 1.8 GHz (for example at
                  450 MHz). The spectrum of channel :1 is a lot more
                  wavy than the spectrum of the channel :0. You can see
                  this behaviour in the attached figures.</span><br
                  style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">In any case, also below
                  1.8 GHz the delta between min and max level is about 5
                  dBs.</span><br style=3D"font-size:12.8px">
                <br style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">3) Sometimes, the DC
                  component pops up. As the TwinRX channels are a
                  superheterodyne receivers, I don't expect that the DC
                  component appears, but it happens.</span><br
                  style=3D"font-size:12.8px">
                <br style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">Is it possible that the
                  TwinRX I'm using is not working properly? Or am I
                  missing some settings?</span><br
                  style=3D"font-size:12.8px">
                <br style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">4) Can somebody provide =
a
                  screenshot of the spectrum of the TwinRx channels with
                  the same settings at 1) for the tuning frequencies of
                  450 MHz and 2450 MHz?</span><br
                  style=3D"font-size:12.8px">
                <br style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">Thank you.</span><br
                  style=3D"font-size:12.8px">
                <br style=3D"font-size:12.8px">
                <br style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">Best regards,</span><br
                  style=3D"font-size:12.8px">
                <br style=3D"font-size:12.8px">
                <span style=3D"font-size:12.8px">Carlo Venier</span></div=
>
              <br>
              <fieldset></fieldset>
              <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" rel=3D"noreferrer" moz-do-not-send=3D"true" class=3D"mo=
z-txt-link-freetext">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.=
ettus.com" target=3D"_blank" rel=3D"noreferrer" moz-do-not-send=3D"true" =
class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.com</a>
</pre>
            </blockquote>
            Here is my test, with the input terminated, and the gain at
            80dB:<br>
            <br>
            <a href=3D"http://www.ccera.ca/files/2450.png" target=3D"_bla=
nk"
              rel=3D"noreferrer" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">http://www.ccera.ca/files/2=
450.png</a><br>
            <br>
            That's for 2450MHz, 100Msps<br>
            <br>
            <a href=3D"http://www.ccera.ca/files/450.png" target=3D"_blan=
k"
              rel=3D"noreferrer" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">http://www.ccera.ca/files/4=
50.png</a><br>
            <br>
            That's for 450MHz, 100Msps, again 80dB gain<br>
            <br>
            <br>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            rel=3D"noreferrer" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.com</a=
><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" rel=3D"noreferrer" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------GNpagZ0ZWU54ygUDNkdDcVcN--

--===============1636469670098364203==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1636469670098364203==--
