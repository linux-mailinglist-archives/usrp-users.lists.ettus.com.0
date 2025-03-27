Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C8202A73E6F
	for <lists+usrp-users@lfdr.de>; Thu, 27 Mar 2025 20:14:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 144F1385831
	for <lists+usrp-users@lfdr.de>; Thu, 27 Mar 2025 15:14:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743102887; bh=IRXH8tBcpJeTg/aBrsCjAZtD7U/IBqup200Uyy37mhI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=b3ei7iuDiw9TcUQsOO53/bbLjNhRQgwVksLgccsL5raNatW+uHwN1Lmk+7FVdm37f
	 x6+Zv7l9Fu5b+8YcPKlwGWKJDP6GsA4+RnmoSd1LnPg0IFX1ADPhDdCfrARGhB8+VL
	 +FpiEBS9XpB3kvjFa2fPSjoYMGHzg22cPP6/SZTcFXPbkknBu3aSgPE6l6FdW4aXHJ
	 yrTU1W9UK4vT3CV5nMuEEJneW7yekDCbhlWUUIOM6HTSoon9sJhSxEa6c4CuWU9J45
	 GpRTIaGGPbJvuFmQwyqKZN2CTV728mUHwDw6sZdH5rf0f5BBWQMbV8mJIPHnVotI//
	 Hmdn6/Pn4bC0A==
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 34CE138562A
	for <usrp-users@lists.ettus.com>; Thu, 27 Mar 2025 15:14:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="D/LI1Hky";
	dkim-atps=neutral
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6e41e18137bso9295736d6.1
        for <usrp-users@lists.ettus.com>; Thu, 27 Mar 2025 12:14:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743102865; x=1743707665; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PPEba9JQcTwT2gCmcZCgPPlD0obFb4mkbLx9jvwNfsY=;
        b=D/LI1HkyQP4rKsbtd1+2XW1KnuhJLSAOF/drvuhUp5I+5n9lNUKoOBRmxthh3dyEk/
         bb3wZ7rmgbfKjMs5jY6y6lcJzHhBSxt+BAmbUuZD3XpeGm1p4CuYUD7VZDjkUEKaW2F1
         DAO+vKGObmVIMaArawRxxCK3vXhjMolXk9Cw8iSDIfPetDPR/eEQUyE12LgHmNVY6p4o
         L8F/cfmEJSOXd1/SkFv+KZ1rrtovErFbLQQcIkUoSiFrGiOBFHNf7hOSixQAq/udXcsD
         6rQR7+DnmDtnysTyFiC0UEYBZ49Gea8ahIyRwRb6TtrpC4xGOXiZWYmn6XXgFPigsmjC
         MFkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743102865; x=1743707665;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PPEba9JQcTwT2gCmcZCgPPlD0obFb4mkbLx9jvwNfsY=;
        b=UPEbb5L7FAVKa1wEBFalzV7ES2IFG8OPOkB+qr7Dc91WtauuNDz1mcssH7MQhsndFt
         E71Zi+nU58HcmpxKBWuszOhq3JnLv70cBxgfcG5QsuAqI0t0WjrZW6frTmi1TKtI5uen
         z6m7bbwZxA9japwWWRpTOEI93pE+mTX2XRa6aVHBY6e7oJEkdy9msHtVeR36LScMKSnv
         EG8Drzuj/Wf8dwWgt2aK8PzawV6uTofAgIwc+J5sWlEHKBPI5VJ+CRze2PN+Qi7lSeMi
         gwaBYKHkHlHDN5BBit9F6eEnP0YmKmklSdyg81/xTkh4LhOayMCIaejnCdPjx826vyes
         IppQ==
X-Gm-Message-State: AOJu0YybTClMh+vUhbfeKn+Q+eglzUHczklYW8nYiekTiJOVEL5jo1kU
	yjw/YozUfOGIWiJ2neBq6E0aD2LlqGwK6g6hbFY3rJc5eQKNw9UT8NcbPQ==
X-Gm-Gg: ASbGncvfJl5MQIoJ8Zn4LOY+L99OD2iYfkfrospQzibCE0aR1KV0GuUczzkqpYZLPj4
	gT5Xr41ZqLPe6Ob9FwaM6q+qLya57JK/mYy8t0dv3ds9WCJlQS+GjLscioXLCkzCnkxD4dCRWgO
	GTBrRC9pr1AeJv6tqpkPMncsys5nG+/duPwlBuhzMyi+Ll6LumtgCROPAP3IHwlQ05oCz6ao0uZ
	Y8zEwtCrC/+pLbi8K48JIrNtMghv4rzbAJfNK3PtcVyUnCZm9Pqf2zfzi/anGJgOLyl3eWLHN/f
	SeIlK3hkyz0weDKBtJ1yQhqf2h7hjUaKUtTqMQ7mOoShihFQlDLsKT4=
X-Google-Smtp-Source: AGHT+IG2M49vaZPdUlAJJgWRwc0DpfqnsRPf5qZcr1eVtamDgpnxuq0SPyRNHcD0aq77hsXDR/TrPQ==
X-Received: by 2002:ad4:5cab:0:b0:6ed:15ce:e33e with SMTP id 6a1803df08f44-6ed238c2319mr68257716d6.27.1743102864855;
        Thu, 27 Mar 2025 12:14:24 -0700 (PDT)
Received: from [192.168.2.170] ([76.67.104.188])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6eec9771c2bsm2219406d6.84.2025.03.27.12.14.24
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Mar 2025 12:14:24 -0700 (PDT)
Message-ID: <02cf4a17-640d-46a6-8054-9a29fd7e3ecc@gmail.com>
Date: Thu, 27 Mar 2025 15:14:13 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <AGvxBfikcSfEUTgSd5kHd5ySwZFjhgUeDmuDlI4@lists.ettus.com>
 <CAOEzSFQn-35=T7LUEimkT2cjWmTpGg0Z_5ACjTHPWtpLHwqDdg@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAOEzSFQn-35=T7LUEimkT2cjWmTpGg0Z_5ACjTHPWtpLHwqDdg@mail.gmail.com>
Message-ID-Hash: ATYWHBG375L254OPGJC5NJULEP6X5Q7J
X-Message-ID-Hash: ATYWHBG375L254OPGJC5NJULEP6X5Q7J
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 Phase Coherent but not Phase Aligned
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ATYWHBG375L254OPGJC5NJULEP6X5Q7J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5667073587982211576=="

This is a multi-part message in MIME format.
--===============5667073587982211576==
Content-Type: multipart/alternative;
 boundary="------------MewU3qky3xids1k4bbrmpO95"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------MewU3qky3xids1k4bbrmpO95
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 27/03/2025 14:55, Chris Rogers wrote:
> I'm not super familiar with the RFNoC stuff or the python workflow,=20
> but the real key is to do timed frequency tuning of each channel, as=20
> seen in the changes from this commit :=20
> https://github.com/EttusResearch/uhd/commit/de1542331ff5f9dc29e252814dd=
eaa645f5641f3
I had (incorrectly) assumed that the original complaint included timed=20
tuning.=C2=A0 That's absolutely necessary across various
 =C2=A0 USRPs, because of the nature of synthesizers and various other=20
components.=C2=A0 Even just tuning a digital DDC/DUC, there's
 =C2=A0 no way it can be doing the tuning at the same clock phase unless =
it's=20
happening at the same time for every channel, and
 =C2=A0 there's also the issue of the phase accumulator in the DDC/DUC. Y=
ou=20
set it to zero at some time T, and then it just starts
 =C2=A0 running, then the adjacent channel has its phase-accumulator rese=
t,=20
and starts running, but not at precisely the same time.
 =C2=A0 SOoooooo, if phase-coherency and zero-phase offset are your goal,=
=20
timed tuning is kind of a minimal requirement.


>
> As long as the API you're using provides the flexibility to do this -=20
> which I'm pretty sure it does - then you should be good. It could also=20
> be worth a shot to just run the fixed tx_waveforms example program to=20
> prove it does what you want.
>
> On Thu, Mar 27, 2025 at 2:44=E2=80=AFPM <heath.j.stamm@gmail.com> wrote=
:
>
>     Thanks for that reminder. I took a look at that example. We are
>     using the RFNoC API (using the python bindings) and not the
>     MultiUSRP API. I assume the same sequence can be achieved setting
>     up the SDR through RFNoC?
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------MewU3qky3xids1k4bbrmpO95
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 27/03/2025 14:55, Chris Rogers
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAOEzSFQn-35=3DT7LUEimkT2cjWmTpGg0Z_5ACjTHPWtpLHwqDdg@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>I'm not super familiar with the RFNoC stuff or the python
          workflow, but the real key is to do timed frequency tuning of
          each channel, as seen in the changes from this commit : <a
href=3D"https://github.com/EttusResearch/uhd/commit/de1542331ff5f9dc29e25=
2814ddeaa645f5641f3"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
s://github.com/EttusResearch/uhd/commit/de1542331ff5f9dc29e252814ddeaa645=
f5641f3</a></div>
      </div>
    </blockquote>
    I had (incorrectly) assumed that the original complaint included
    timed tuning.=C2=A0 That's absolutely necessary across various<br>
    =C2=A0 USRPs, because of the nature of synthesizers and various other
    components.=C2=A0 Even just tuning a digital DDC/DUC, there's<br>
    =C2=A0 no way it can be doing the tuning at the same clock phase unle=
ss
    it's happening at the same time for every channel, and<br>
    =C2=A0 there's also the issue of the phase accumulator in the DDC/DUC=
.=C2=A0
    You set it to zero at some time T, and then it just starts<br>
    =C2=A0 running, then the adjacent channel has its phase-accumulator
    reset, and starts running, but not at precisely the same time.<br>
    =C2=A0 SOoooooo, if phase-coherency and zero-phase offset are your go=
al,
    timed tuning is kind of a minimal requirement.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAOEzSFQn-35=3DT7LUEimkT2cjWmTpGg0Z_5ACjTHPWtpLHwqDdg@mail.gm=
ail.com">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>As long as the API you're using provides the flexibility to
          do this - which I'm pretty sure it does - then you should be
          good. It could also be worth a shot to just run the fixed
          tx_waveforms example program to prove it does what you want.</d=
iv>
      </div>
      <br>
      <div class=3D"gmail_quote gmail_quote_container">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Mar 27, 2025 at
          2:44=E2=80=AFPM &lt;<a href=3D"mailto:heath.j.stamm@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">heat=
h.j.stamm@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <p>Thanks for that reminder. I took a look at that example. We
            are using the RFNoC API (using the python bindings) and not
            the MultiUSRP API. I assume the same sequence can be
            achieved setting up the SDR through RFNoC?</p>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
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

--------------MewU3qky3xids1k4bbrmpO95--

--===============5667073587982211576==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5667073587982211576==--
