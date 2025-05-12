Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 77179AB2CC4
	for <lists+usrp-users@lfdr.de>; Mon, 12 May 2025 03:24:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3E5C23860B2
	for <lists+usrp-users@lfdr.de>; Sun, 11 May 2025 21:24:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747013066; bh=SzILVwlrLGKPFvNGrKiIxvwkV6D6BPmGK4IEjOY+190=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=JCpjVtarj2Bv34wuKTiD+CNX3FfoEOzxvXVFpKMoheCUUUSRtQrBOMThQKlH1xpAI
	 LL6rr2zEApw4u/3V58zL8tdoLHIQKrwbNGxmORESc9RqZ0ahlrxq0lhINmfLoeFdi/
	 8Bzt5NV835YAuvC0V2D/4qRi083+2urvx8QaAole88LzvC7jCVPAbazkpYqGQosTXq
	 NJkwOLB+fb4OEOWdQI7rkPq9hA5dkn238fej+GrRcBq/OtDFSI41hb4KNLDWboTyJs
	 vPnl0HqmyXx16Tfr7mWwQn9YYUzOUt6dEy3wG6bTKQaZmLRicNWkjYh/qK9ulJ6PHl
	 QdZw5Lvo+p4uw==
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 3E53C38534C
	for <usrp-users@lists.ettus.com>; Sun, 11 May 2025 21:23:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AsP/toPL";
	dkim-atps=neutral
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7c54b651310so609353985a.0
        for <usrp-users@lists.ettus.com>; Sun, 11 May 2025 18:23:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747013028; x=1747617828; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TvSgEAQUrhtjg9d+VQuVXHnMm4Bw+mgGokf6h3VXxIk=;
        b=AsP/toPLtgaYxAmETSyv2KmRYE6AR/qAh/lpQRJchO9dwd/WZnaSwn1telsLqgg0H/
         ParW8WBZWwVn4p6R0M41gIH+dWiFI9BB6IyCC8uqoDrCW95Oj/eyBL3jNWdtRgRVYEpV
         1KFwu/hONpBv3Be+85zbjLqSQ7EsCmDCOXfozv7imUHHV91P2uIzz8l3WZwX6A4DVty8
         cP/G9ObsfkR/hdwJbf+ZuF2mBSTvkDfi1vs6lVM/ByXxAifWSpbioCQfsJ5AEStGYFLg
         IKg50jK/0xLbyhEqszumrA35bk0EMsW53FgXJ/DqsGUD99xPRxRqadmT9MZdzk2aBRoO
         bv1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747013028; x=1747617828;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=TvSgEAQUrhtjg9d+VQuVXHnMm4Bw+mgGokf6h3VXxIk=;
        b=BvDFguKIzy4pr8nhnQBgoOC7e2zQ/wR2eyWYR2u3W6rSsFG3qDvpmFkb4ec0o8ZGsp
         wVQKxtsLRSgwPzjHL9VF8emE598OlS/Y9mGF6P44CrLDSQ82k5abbj5AZ4YWlvNL8c1v
         9zfKtdhXCQoxqkJMunKSPw3bR6AiBCo16WVVL7g8Jtk03vfjunbFoQw0T4brvPXVADQP
         6i4uGIG4fDR6xWP/mdOZIyZK5xvRFFzmAs+Z9M1lmc+CEQP1IKP4O21+EfDqsYIblss1
         uQw0ZPu5mu8AIiBpLmlVExyrSOjCrc/ArB81FaHUXSSCg3XLJjpaF2ui+1uubNeKarZw
         c/JQ==
X-Gm-Message-State: AOJu0YyhQ/wuVBNCfLqSFloPNWcjjTXlYHXogi3p1bP+twbUqeOIaN8D
	k2Dco/7SRgCvjljJA/V/JtE1vxEJlxawwGu+ofbFHAY8Nife4oNnDvNh/ApT
X-Gm-Gg: ASbGnctu5Y90TsWJapctE0YqcHcxIbuov2/w6VbKmDXiBZYdOkTyeJghieq/z2UMSry
	MnhGD1kDVAOtAFKg15oot+QjVtmwmCkeQQWZis3As8crGzE/oXvf+xuO7rRt2citwlUxSt+owG2
	9QYNrCqTBsxmwFmJlH79nKN4CFwi8vXs2pgUUdRMy/0nOWxXARTIXQ8n4pCnW+m7Tj7Y1gOzL6G
	85lwRgB9UIrA4SCDIOSpeXra7oSPvom1rCtWuZaoHlqqsB340uSJL4R3fXvkk3KDfuffYmtj8DP
	s4YcuIm0hxUzoyTxalXDDbsFMWwIWOS9NmRZE2sCuhEwREsI/cjkLmseDB8q
X-Google-Smtp-Source: AGHT+IG4MjCVvaDNrMMfpe++igbsaluXP0OBTHPyDzKptBa6SqITYhfT/JYzE+jG1vOTqRmMNct3Jg==
X-Received: by 2002:a05:620a:24d0:b0:7c5:5e69:4450 with SMTP id af79cd13be357-7cd010f7249mr1643140385a.17.1747013027607;
        Sun, 11 May 2025 18:23:47 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7cd00f4d54fsm463743685a.14.2025.05.11.18.23.46
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 May 2025 18:23:47 -0700 (PDT)
Message-ID: <db5bfa88-bfe7-44bd-ac75-4981ef55c831@gmail.com>
Date: Sun, 11 May 2025 21:23:36 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <CAAxXO2FTNui2gby9j+mRDx3bFHGzRjUpWAoB1Q086_DwghEZmA@mail.gmail.com>
 <CAAxXO2GhNJx4AB4-m7vVAsnhBdkHCjDHqRsFze1BqLvZswYcYQ@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAxXO2GhNJx4AB4-m7vVAsnhBdkHCjDHqRsFze1BqLvZswYcYQ@mail.gmail.com>
Message-ID-Hash: J3VW3TH4QVDEM3O7HVWXPKATNHD34KAW
X-Message-ID-Hash: J3VW3TH4QVDEM3O7HVWXPKATNHD34KAW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: fc64 help needed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/J3VW3TH4QVDEM3O7HVWXPKATNHD34KAW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2063115858056982114=="

This is a multi-part message in MIME format.
--===============2063115858056982114==
Content-Type: multipart/alternative;
 boundary="------------cnKzfyt6iaEmhhWOhD1jXPyb"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------cnKzfyt6iaEmhhWOhD1jXPyb
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 10/05/2025 07:17, Nikos Balkanas wrote:
> It turns out that the problem is not just bypassing the sse2 code:(
> After commenting it out, uhd still crashes. The conversion output
> buffers are not created in=C2=A0_recv_one_packet()
> Any ideas why they don't?
>
> TIA
> Nikos
This should *Just work*.

What happens if you use rx_samples_to_file and specify:

--type double

This should write out double-precision (64-bit) complex floats to the=20
output file. You should be able to use that example
 =C2=A0 code as a bit of a template.

Also, I have to ask, why double precision?=C2=A0 Even single-precision fl=
oat=20
has more precision and dynamic range than is
 =C2=A0 actually represented by the 16-bit values on the wire, coming fro=
m=20
the ADCs.=C2=A0=C2=A0=C2=A0 By moving to double-precision, unless you
 =C2=A0 have a library that only supports double-precision math, you're j=
ust=20
slowing down your computations for no good reason.



>
> On Sat, May 10, 2025 at 7:56=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail=
.com>=20
> wrote:
>
>     Hi all,
>
>     I recently changed my host application to complex double. I had to
>     change my stream_args to
>     fc64. I pass my void pointer to uhd_rx_streamer_recv same as before=
:
>     ptr =3D (void **)&zin;
>     Unfortunately, the=C2=A0=C2=A0convert_chdr_1_to_fc64_1_guts doesn't=
 like it,
>     I have only 1196 maxsamples, and crashes. I don't need the sse2
>     code for my conversion. I only use 1024 complex
>     =C2=A0samples/packet for fft. I am very happy with the
>     generic=C2=A0chdr_sc16_to_xx.
>     Does anyone have any fc64 experience and how one can pass the void
>     buffer pointer to
>     skip the sse2 code?
>
>     TIA
>     Nikos
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------cnKzfyt6iaEmhhWOhD1jXPyb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 10/05/2025 07:17, Nikos Balkanas
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAAxXO2GhNJx4AB4-m7vVAsnhBdkHCjDHqRsFze1BqLvZswYcYQ@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-size:small">It turns o=
ut
          that the problem is not just bypassing the sse2 code:(</div>
        <div class=3D"gmail_default" style=3D"font-size:small">After
          commenting it out, uhd still crashes. The conversion output</di=
v>
        <div class=3D"gmail_default" style=3D"font-size:small">buffers ar=
e
          not created in=C2=A0_recv_one_packet()</div>
        <div class=3D"gmail_default" style=3D"font-size:small">Any ideas =
why
          they don't?</div>
        <div class=3D"gmail_default" style=3D"font-size:small"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:small">TIA=C2=A0<=
/div>
        <div class=3D"gmail_default" style=3D"font-size:small">Nikos</div=
>
      </div>
    </blockquote>
    This should *Just work*.<br>
    <br>
    What happens if you use rx_samples_to_file and specify:<br>
    <br>
    --type double<br>
    <br>
    This should write out double-precision (64-bit) complex floats to
    the output file. You should be able to use that example<br>
    =C2=A0 code as a bit of a template.<br>
    <br>
    Also, I have to ask, why double precision?=C2=A0 Even single-precisio=
n
    float has more precision and dynamic range than is<br>
    =C2=A0 actually represented by the 16-bit values on the wire, coming =
from
    the ADCs.=C2=A0=C2=A0=C2=A0 By moving to double-precision, unless you=
<br>
    =C2=A0 have a library that only supports double-precision math, you'r=
e
    just slowing down your computations for no good reason.<br>
    <br>
    <br>
    =C2=A0 <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAAxXO2GhNJx4AB4-m7vVAsnhBdkHCjDHqRsFze1BqLvZswYcYQ@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote gmail_quote_container">
        <div dir=3D"ltr" class=3D"gmail_attr">On Sat, May 10, 2025 at
          7:56=E2=80=AFAM Nikos Balkanas &lt;<a
            href=3D"mailto:nbalkanas@gmail.com" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">nbalkanas@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <div dir=3D"ltr">
            <div class=3D"gmail_default" style=3D"font-size:small">Hi all=
,</div>
            <div class=3D"gmail_default" style=3D"font-size:small"><br>
            </div>
            <div class=3D"gmail_default" style=3D"font-size:small">I
              recently changed my host application to complex double. I
              had to change my stream_args to</div>
            <div class=3D"gmail_default" style=3D"font-size:small">fc64. =
I
              pass my void pointer to uhd_rx_streamer_recv same as
              before:</div>
            <div class=3D"gmail_default" style=3D"font-size:small">ptr =3D
              (void **)&amp;zin;</div>
            <div class=3D"gmail_default" style=3D"font-size:small">Unfort=
unately,
              the=C2=A0=C2=A0convert_chdr_1_to_fc64_1_guts doesn't like i=
t, I have
              only 1196 maxsamples, and crashes. I don't need the sse2
              code for my conversion. I only use 1024 complex</div>
            <div class=3D"gmail_default" style=3D"font-size:small">=C2=A0=
samples/packet
              for fft. I am very happy with the generic=C2=A0chdr_sc16_to=
_xx.</div>
            <div class=3D"gmail_default" style=3D"font-size:small">Does
              anyone have any fc64 experience and how one can pass the
              void buffer pointer to</div>
            <div class=3D"gmail_default" style=3D"font-size:small">skip t=
he
              sse2 code?</div>
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

--------------cnKzfyt6iaEmhhWOhD1jXPyb--

--===============2063115858056982114==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2063115858056982114==--
