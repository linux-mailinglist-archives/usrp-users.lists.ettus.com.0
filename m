Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A68AFAC19C6
	for <lists+usrp-users@lfdr.de>; Fri, 23 May 2025 03:41:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7A70F384536
	for <lists+usrp-users@lfdr.de>; Thu, 22 May 2025 21:41:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747964463; bh=i0P9LUUas4q4CzJkA+Xcik30nKS0cSkPCP2z2N4b3Cc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=S6c68WawhzZFf8wm0V2F50lr0vxdX16bZ1xHCqliS4/KPjElN2FD3VaqwnZ6P2XNF
	 k9qWceK09vey/bONeS7gox2oR5DsOvbVuDjYH0FB2jvCRwXu25ol/R8OgiUnD95GUR
	 UQIUUgvnk4mxvwmnxVYXdy6+09CcYWBJB6LZafpPXVTNYBep+uLfNbZ+SNbincabk1
	 Bu3zD0OHdV9CpxRy7vKYINVQREVZ7yg/lpGrfe99Is543ZXkmQ1lrEPJRkGPaWYf8G
	 AKcmwHqHuBkdLj4ad+oy3V+SStcVLXa7G3UWBFYnwDw/4YElWOaUNx5g5VvtLFTTqu
	 hVVv7lIis2Eyw==
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id D24FE38515C
	for <usrp-users@lists.ettus.com>; Thu, 22 May 2025 21:38:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="i3OsE6tn";
	dkim-atps=neutral
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-476ac73c76fso124361471cf.0
        for <usrp-users@lists.ettus.com>; Thu, 22 May 2025 18:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747964308; x=1748569108; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RA6kpbqg8gAGOkL2cDSIpduqDR57LbF+XSonEhpJLxI=;
        b=i3OsE6tnxm3fzEsSRc+NeeAsvdvWpm6HPGUwlFG3cTAACGeKmkQsuv/rrjAqPy14Sp
         25v8vtUSiD9ON9bHpcuTPVwVKzyVOHuH7OkSROBn7PfA85g0yi3jpGZbxhj5093cYjp7
         naqD1bdISJTIkNGhOroSFTEjaN31GMwNoy3dhjPPaEm/cIgwXnmZLEq+DLuaVSjg02Tf
         G0VWsnPZDy2AS3lOrH6uOIoJXoBmorrGG21lR8V2EmcR1vvbBjIU7vGPIqk3CD/h6o8O
         gO8rH1vyAez9NtGIMpU8h9lFvZWnd1pfI6kRz8/61+aoPVz/cQlqTZwewJj89wtfy4fW
         y17A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747964308; x=1748569108;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=RA6kpbqg8gAGOkL2cDSIpduqDR57LbF+XSonEhpJLxI=;
        b=ZBo3OlDvTTozRNpNOdWjIJNSutSvjQFpzFWwi136M6gxiPwFGUe4tg7zWCooWjcPHK
         rhJXuEU7Q92VgaVFs65XnrZsJbK0zKxYoj0fNIdyb5vMhpgzhhG9nWjCZdyaNXpohRAn
         X9Z0CkOo6uMLIO1eCcXrDk1UeJM7fqq7bZKXFl2qMJhTpM+6QclgPjFy8U+msf1ZcaQd
         sXQCuPiheDhravhuYhvHXkLP/nUCJxini1mEf/edPE/5N64QeefhHCmAAX1IYP+OgzBy
         4dZ0hrPYjTJLMrdjqV2AdbNI11+Z7wWmsmf8pZxh+gqwtrzpCcj9T3B+o1nw1qsB3EzH
         psBw==
X-Gm-Message-State: AOJu0YxaDyur4nCls/K1V5boucGEue/B6lr3PX5mI9fyli64d7UjdiYi
	7xUqfX1VnU1vzVm1zNWyUuqhvOzXmlEhvW04kg64c0RvHPGeRA3clXkKpRVZsPif
X-Gm-Gg: ASbGncuA5S4umQkjDA65s3tRyu+VNlCtJO4YLrvLU+0JfBxivbJXwWxTJb3uBOqgz1V
	6IlF1JFawJtNQUedoul9aIQHMTobUapS0xduiq5ZQU01/mofJ0z8DZAlMzl6oNfc/lQNN6TzxIQ
	KQxRgzSWXzlwMMLsEveY+XeRpTy58TNZPJ1X6GoEUHMGuK6mwh28yOw/7/974cxUKI7GekSXQ9I
	qnrSuJsZ8kV1utzCpaOG4noJr/svufN1O1jFvdzSxeouIE5DFHGzXwssL9vSOLZL/4ds7K4dx/M
	20fstJV8ui23Jjx95EK04jFZD4cGQd/0a1H9Eq3vTTdmeSjMmL1jPhfr9iuGmMovrLSiq7vG3hp
	WO07KNXGt2bw3k5wwEgAfFSs9yfp0Cdpp/vWC/DmcFAODaA==
X-Google-Smtp-Source: AGHT+IH22uSwmq4ipaWto/BJVz3h3Ns9TOQsQo0m8H7cBFcVdHhjrYmLk6IzdZ4DgjCJ6wET22gREQ==
X-Received: by 2002:a05:622a:4189:b0:494:7bfe:b68d with SMTP id d75a77b69052e-49e1da43fe6mr20933221cf.2.1747964307819;
        Thu, 22 May 2025 18:38:27 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-07-174-93-0-120.dsl.bell.ca. [174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-494ae425388sm105971251cf.39.2025.05.22.18.38.27
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 May 2025 18:38:27 -0700 (PDT)
Message-ID: <e3acfe3e-4598-47a8-92ff-2844b8ffb558@gmail.com>
Date: Thu, 22 May 2025 21:38:26 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <CAAxXO2FZ3qPZxwPGY-p18O895qNREXgsOTWUHJhxyi3boCoVeg@mail.gmail.com>
 <CAAxXO2EpXSctSrnaCA7pbjDD=i95WEphKyQsoJDYqrwL06Fnqg@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAxXO2EpXSctSrnaCA7pbjDD=i95WEphKyQsoJDYqrwL06Fnqg@mail.gmail.com>
Message-ID-Hash: BDMGO2YAG3O2BSWMNWLA2S3MUOKYYUBC
X-Message-ID-Hash: BDMGO2YAG3O2BSWMNWLA2S3MUOKYYUBC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Curious energy spikes from my X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BDMGO2YAG3O2BSWMNWLA2S3MUOKYYUBC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2920131356775603535=="

This is a multi-part message in MIME format.
--===============2920131356775603535==
Content-Type: multipart/alternative;
 boundary="------------0E6w3udIVzNQmf80chmpSNWX"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0E6w3udIVzNQmf80chmpSNWX
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2025-05-22 21:31, Nikos Balkanas wrote:
> The spike is very clean to come from outside.
> Must be from my X310. My tuner must be adding a signal to the
> center frequency. The small artifact at 2 Ghz is probably the tuner not
> equilibrating fully.
> I recently updated my FPGA image. Is that where the tuner lives?
You haven't mentioned in this thread which daughtercard you're using.=C2=A0=
=C2=A0=20
RF front-ends that use complex-baseband
 =C2=A0 downconversion suffer from something called "DC-offset", which=20
produces a spike at 0Hz in the complex spectrum.
 =C2=A0 The radio block in the standard FPGAs has methods for reducing th=
is,=20
unless you turn it off.=C2=A0 This is a very very
 =C2=A0 *normal* thing for complex-baseband receiver chains.

If the algorithms are engaged and working, then there'll still be a=20
central spike, but *considerably* reduced, and I find that
 =C2=A0 said spike is usually swamped by external signals, even in radio=20
astronomy.

The other method that people use is to use "offset tuning".=C2=A0 Where t=
he=20
tuner is tuned to a different RF frequency, and the
 =C2=A0=C2=A0 DDC brings your signal of interest down to 0Hz.

https://files.ettus.com/manual/page_general.html#general_tuning

The "tuner" is an analog collection of components, including an LO=20
generator, and mixers.=C2=A0 While it is *controlled* through
 =C2=A0 the FPGA, it is an analog subsystem.


>
> On Fri, May 23, 2025 at 3:19=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail=
.com>=20
> wrote:
>
>     Hello,
>
>     Whenever I look at my spectrum I always see an energy spike at the
>     center frequency.
>     In the first image you can see a spike at 2, but not at 2.001 Ghz.
>     In the next image,
>     =C2=A0at 2.001 Ghz you can see the energy spike at the center
>     frequency, but also a small
>     =C2=A0spike at 2 Ghz.
>     I have verified these results by both fosphor (OpenCL fft) and
>     fftw3f. Besides, if it were
>     =C2=A0an fft artifact, why is the spike at 2 Ghz still visible afte=
r a
>     few mins? These spikes
>     =C2=A0seem to be transient, but real. In that part of the spectrum,=
 you
>     there is no traffic. Could it be=C2=A0 harmonics from my power supp=
ly?
>     Problems with my X-310? My transmitter
>     =C2=A0doing funny things (I have 2 boards and not enabling my
>     transmitter anywhere)?
>     Naming of images is freq_sr.jpg. All are in Mhz.
>
>     TIA
>     Nikos
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------0E6w3udIVzNQmf80chmpSNWX
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2025-05-22 21:31, Nikos Balkanas
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAAxXO2EpXSctSrnaCA7pbjDD=3Di95WEphKyQsoJDYqrwL06Fnqg@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-size:small">The spike =
is
          very clean to come from outside.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">Must be fr=
om
          my X310. My tuner must be adding a signal to the</div>
        <div class=3D"gmail_default" style=3D"font-size:small">center
          frequency. The small artifact at 2 Ghz is probably the tuner
          not=C2=A0</div>
        <div class=3D"gmail_default" style=3D"font-size:small">equilibrat=
ing
          fully.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">I recently
          updated my FPGA image. Is that where the tuner lives?</div>
      </div>
    </blockquote>
    You haven't mentioned in this thread which daughtercard you're
    using.=C2=A0=C2=A0 RF front-ends that use complex-baseband<br>
    =C2=A0 downconversion suffer from something called "DC-offset", which
    produces a spike at 0Hz in the complex spectrum.<br>
    =C2=A0 The radio block in the standard FPGAs has methods for reducing
    this, unless you turn it off.=C2=A0 This is a very very<br>
    =C2=A0 *normal* thing for complex-baseband receiver chains.<br>
    <br>
    If the algorithms are engaged and working, then there'll still be a
    central spike, but *considerably* reduced, and I find that<br>
    =C2=A0 said spike is usually swamped by external signals, even in rad=
io
    astronomy.<br>
    <br>
    The other method that people use is to use "offset tuning".=C2=A0 Whe=
re
    the tuner is tuned to a different RF frequency, and the<br>
    =C2=A0=C2=A0 DDC brings your signal of interest down to 0Hz.<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/page_general.html#general_tuning">https://files.ettus.com/manual/pag=
e_general.html#general_tuning</a><br>
    <br>
    The "tuner" is an analog collection of components, including an LO
    generator, and mixers.=C2=A0 While it is *controlled* through<br>
    =C2=A0 the FPGA, it is an analog subsystem.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAAxXO2EpXSctSrnaCA7pbjDD=3Di95WEphKyQsoJDYqrwL06Fnqg@mail.gm=
ail.com"><br>
      <div class=3D"gmail_quote gmail_quote_container">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 23, 2025 at
          3:19=E2=80=AFAM Nikos Balkanas &lt;<a
            href=3D"mailto:nbalkanas@gmail.com" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">nbalkanas@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <div dir=3D"ltr">
            <div class=3D"gmail_default" style=3D"font-size:small">Hello,=
</div>
            <div class=3D"gmail_default" style=3D"font-size:small"><br>
            </div>
            <div class=3D"gmail_default" style=3D"font-size:small">Whenev=
er
              I look at my spectrum I always see an energy spike at the
              center frequency.</div>
            <div class=3D"gmail_default" style=3D"font-size:small">In the
              first image you can see a spike at 2, but not at 2.001
              Ghz. In the next image,</div>
            <div class=3D"gmail_default" style=3D"font-size:small">=C2=A0=
at 2.001
              Ghz you can see the energy spike at the center frequency,
              but also a small</div>
            <div class=3D"gmail_default" style=3D"font-size:small">=C2=A0=
spike at
              2 Ghz.</div>
            <div class=3D"gmail_default" style=3D"font-size:small">I have
              verified these results by both fosphor (OpenCL fft) and
              fftw3f. Besides, if it were</div>
            <div class=3D"gmail_default" style=3D"font-size:small">=C2=A0=
an fft
              artifact, why is the spike at 2 Ghz still visible after a
              few mins? These spikes</div>
            <div class=3D"gmail_default" style=3D"font-size:small">=C2=A0=
seem to
              be transient, but real. In that part of the spectrum, you
              there is no traffic. Could it be=C2=A0 harmonics from my po=
wer
              supply? Problems with my X-310? My transmitter</div>
            <div class=3D"gmail_default" style=3D"font-size:small">=C2=A0=
doing
              funny things (I have 2 boards and not enabling my
              transmitter anywhere)?</div>
            <div class=3D"gmail_default" style=3D"font-size:small">Naming=
 of
              images is freq_sr.jpg. All are in Mhz.</div>
            <div class=3D"gmail_default" style=3D"font-size:small"><br>
            </div>
            <div class=3D"gmail_default" style=3D"font-size:small">TIA</d=
iv>
            <div class=3D"gmail_default" style=3D"font-size:small">Nikos<=
/div>
          </div>
        </blockquote>
      </div>
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
    <br>
  </body>
</html>

--------------0E6w3udIVzNQmf80chmpSNWX--

--===============2920131356775603535==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2920131356775603535==--
