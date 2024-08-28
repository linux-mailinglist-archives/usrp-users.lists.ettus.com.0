Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6C9963017
	for <lists+usrp-users@lfdr.de>; Wed, 28 Aug 2024 20:34:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EC10E3857DC
	for <lists+usrp-users@lfdr.de>; Wed, 28 Aug 2024 14:34:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724870040; bh=LAteeVdmyYUijYmTCgPr1RmCjPf6HzCBkH0OsSkJOIE=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=jT5Tr9xhGME4tAMR+DkMxPcdP34wS8xVvXwVSH4Oulc5Nd4bDC5wA5gA4Z9WOPYyY
	 AjaXhDhP2Omk+lk/ciR2QrrjcYp8MpNq7oeHYDuSqKWTkIB8Td76J3j9w2QphAidsv
	 2D/tIJQsNO3eLHSAynw3ww3LVAwbd9ETP1Ip0HjUgcTVDI0WFvAbuLUNOrgcec2nUF
	 iNDGPRhNoEbPnghhgOosxvElxVW4HIbZKYEp0clXWOANq44EQOGyAQZcoqGmcIMNFC
	 lkPHdBteBlg43TvGfuIrhgH08BlCLu+jyUjrq/VEwjkTIY+Z1HQdNmfQBd12oiTdjw
	 kBpOUe1dWwpYQ==
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id B5A1B38543A
	for <usrp-users@lists.ettus.com>; Wed, 28 Aug 2024 14:33:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="b7YjdH21";
	dkim-atps=neutral
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-7a35eff1d06so465853285a.0
        for <usrp-users@lists.ettus.com>; Wed, 28 Aug 2024 11:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724869999; x=1725474799; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+k59X5GyDoS+po2JCWV00VkYI9Qb4Rx+quiHuJu/zBk=;
        b=b7YjdH21dI8bcPctsGd8eDf4AS0UGz+C/PeXBuJPypN0Uz4iKkR3bri7LcutireBBp
         4lbnV7dE6uouZsFPOFx48rEHCoN2IO0DMVpKQgpW0vhUAVEwTux77mdbu2bq9WneAyk4
         Q+veemvkLta98rhofYwVncdJgVV4ZhBYx6F7PmCcl/7uRmvmpYGF94Xd70amL5IoRmm5
         4WPP4hNwoncw7DUJw4OTdgSSRgH0CpnzLZCImo9O2UNmaxT4V9HMQE1LM/pg/S/gRk/1
         5rrI32sXrDiv5n4lcU4gASYLjDvuqFmjVQMx+5WnkPkjLJlxTGprVJoHzaMznAd/F12H
         lTLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724869999; x=1725474799;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+k59X5GyDoS+po2JCWV00VkYI9Qb4Rx+quiHuJu/zBk=;
        b=XyANCB14oEJs9UDhDtiBszGA9wVD0RTxlnChLbBrqMF+MZMd6MjLPppJI2BptAe0VR
         ysFfVFFwvFaVq0GgnDZvavmGnN8YnMYi5Ts1HASdQgbKVyk5tvjXMTMuRZPbmNMw9DbH
         qykQQx00VD6jSYmko+W0WOSHVmchAGMyPdQC/UHwYygCnbR68JeyGlXncMAFc6zYgoqp
         uCuRA1haHcld6oiCe7JgoMhEq9Uwjx9JUSJf8T25rn7tzIvQyuSW+BMc1ZL5xSUbUmmF
         ydk4+neNoSApjhHsTCcVoV4G6tTtyE6CfgD5mCCCvnWG0wAtI5TUT+xXs9knrZqH8Fdk
         ky/g==
X-Gm-Message-State: AOJu0Yze5EajKs2xAnyAMbl6c2v9JJJ5I0PT1bJXxPEq0CjGmrDJaIi9
	PsnQpPwpqhjVDOr9ZVqrIsErkfzqub/fV+ZBWUn6N88HXOXu4daZ3HMG1w==
X-Google-Smtp-Source: AGHT+IHIHL1wa02VHelnf+FQ9iyk6/4+CMScGB8TXTSTHSDlR2ctNTqISPLZw47RsdopZRBurj9Pgw==
X-Received: by 2002:a05:620a:2547:b0:7a2:c99:878f with SMTP id af79cd13be357-7a8041b55acmr35012285a.25.1724869998777;
        Wed, 28 Aug 2024 11:33:18 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-22-64-231-212-86.dsl.bell.ca. [64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7a67f341dfdsm658645385a.34.2024.08.28.11.33.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2024 11:33:18 -0700 (PDT)
Message-ID: <251d04b8-8a4e-410e-9ac3-4d907a61db20@gmail.com>
Date: Wed, 28 Aug 2024 14:33:17 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: ali siddig <alisiddig12@gmail.com>
References: <CAKacFEn+UXiCb57ev_-rvjcOxp+vF3BJ3pLtxEdJvVvc3ZGh=A@mail.gmail.com>
 <9cec144a-612e-4eb3-8b42-fde95882588f@gmail.com>
 <CAKacFEmpgeoi92EnJtijRb+yLZfeSuRRBMMvVqvFnHTb0HVtVg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAKacFEmpgeoi92EnJtijRb+yLZfeSuRRBMMvVqvFnHTb0HVtVg@mail.gmail.com>
Message-ID-Hash: F7RYIB5PYBWWBIEN77LLYP6M37JPGEV5
X-Message-ID-Hash: F7RYIB5PYBWWBIEN77LLYP6M37JPGEV5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: QPSK modulation and demodulation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F7RYIB5PYBWWBIEN77LLYP6M37JPGEV5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4399661262605865866=="

This is a multi-part message in MIME format.
--===============4399661262605865866==
Content-Type: multipart/alternative;
 boundary="------------LrOtcDPDIfWND81wYM009KHX"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------LrOtcDPDIfWND81wYM009KHX
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 28/08/2024 13:35, ali siddig wrote:
> I already tried that, but may be it is a parameter values issue
> I used :
> Sample per symbol=3D4
> Filter rolloff factor =3D350m
> Prototype filter size 44
> Loop bandwidth 62.8m
>
> When the input value is random source (228,229), it works
> But when the input value is random source (0,256), it doesn't work
>
> Best=C2=A0Regards,
And, again, this is more properly a question for the discuss-gnuradio=20
mailing list.=C2=A0 The UHD library doesn't
 =C2=A0 provide any DSP functions, per se.=C2=A0 So any gnuradio flow-gra=
ph=20
questions should be on the discuss-gnuradio mailing list.


>
> On Wed, Aug 28, 2024, 9:02=E2=80=AFPM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 28/08/2024 12:13, ali siddig wrote:
>     > Dear all,
>     > I have tried to use the QPAK modulation and demodulation exapmle
>     from
>     > the tutorial in the link below. I am using two USRPs B205 as
>     > transmitter and receiver, frequency 910MHz , sampling rate 300k
>     or 1 M
>     > sps. However, the received signal's constellation after Costas lo=
op
>     > are not synchronized (points everywhere in the constellation
>     diagram).
>     > Am I=C2=A0missing something i have to change in the usrp setting =
or
>     > synchronization block?
>     >
>     >
>     https://wiki.gnuradio.org/index.php?title=3DQPSK_Mod_and_Demod#Phas=
e_and_Frequency_Correction
>     >
>     > Best regards,
>     > Ali siddig
>     >
>     > _______________________________________________
>     > USRP-users mailing list -- usrp-users@lists.ettus.com
>     > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     This is more-properly a question for the discuss-gnuradio mailing
>     list,
>     not here.
>
>     My guess is that you will also require some kind of FLL to track th=
e
>     inevitable frequency differences between TX and RX.=C2=A0 But
>     =C2=A0=C2=A0 that's just a slightly-educated guess.
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------LrOtcDPDIfWND81wYM009KHX
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 28/08/2024 13:35, ali siddig wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAKacFEmpgeoi92EnJtijRb+yLZfeSuRRBMMvVqvFnHTb0HVtVg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"auto">I already tried that, but may be it is a paramete=
r
        values issue
        <div dir=3D"auto">I used :</div>
        <div dir=3D"auto">Sample per symbol=3D4</div>
        <div dir=3D"auto">Filter rolloff factor =3D350m</div>
        <div dir=3D"auto">Prototype filter size 44</div>
        <div dir=3D"auto">Loop bandwidth 62.8m</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">When the input value is random source (228,229)=
,
          it works</div>
        <div dir=3D"auto">But when the input value is random source
          (0,256), it doesn't work</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">Best=C2=A0Regards,</div>
      </div>
    </blockquote>
    And, again, this is more properly a question for the
    discuss-gnuradio mailing list.=C2=A0 The UHD library doesn't<br>
    =C2=A0 provide any DSP functions, per se.=C2=A0 So any gnuradio flow-=
graph
    questions should be on the discuss-gnuradio mailing list.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAKacFEmpgeoi92EnJtijRb+yLZfeSuRRBMMvVqvFnHTb0HVtVg@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 28, 2024, 9:02=E2=
=80=AFPM
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">O=
n
          28/08/2024 12:13, ali siddig wrote:<br>
          &gt; Dear all,<br>
          &gt; I have tried to use the QPAK modulation and demodulation
          exapmle from <br>
          &gt; the tutorial in the link below. I am using two USRPs B205
          as <br>
          &gt; transmitter and receiver, frequency 910MHz , sampling
          rate 300k or 1 M <br>
          &gt; sps. However, the received signal's constellation after
          Costas loop <br>
          &gt; are not synchronized (points everywhere in the
          constellation diagram). <br>
          &gt; Am I=C2=A0missing something i have to change in the usrp
          setting or <br>
          &gt; synchronization block?<br>
          &gt;<br>
          &gt; <a
href=3D"https://wiki.gnuradio.org/index.php?title=3DQPSK_Mod_and_Demod#Ph=
ase_and_Frequency_Correction"
            rel=3D"noreferrer noreferrer" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
s://wiki.gnuradio.org/index.php?title=3DQPSK_Mod_and_Demod#Phase_and_Freq=
uency_Correction</a><br>
          &gt;<br>
          &gt; Best regards,<br>
          &gt; Ali siddig<br>
          &gt;<br>
          &gt; _______________________________________________<br>
          &gt; USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            rel=3D"noreferrer" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.com</a=
><br>
          &gt; To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" rel=3D"noreferrer" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
          This is more-properly a question for the discuss-gnuradio
          mailing list, <br>
          not here.<br>
          <br>
          My guess is that you will also require some kind of FLL to
          track the <br>
          inevitable frequency differences between TX and RX.=C2=A0 But<b=
r>
          =C2=A0=C2=A0 that's just a slightly-educated guess.<br>
          <br>
          <br>
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

--------------LrOtcDPDIfWND81wYM009KHX--

--===============4399661262605865866==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4399661262605865866==--
