Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5B86F4C3A
	for <lists+usrp-users@lfdr.de>; Tue,  2 May 2023 23:30:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6117E3848F9
	for <lists+usrp-users@lfdr.de>; Tue,  2 May 2023 17:30:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683063013; bh=mFSSwW6pdTV1Y/V/gbSjJ+HyZzu/9GbwGvbG5MzuIpo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=mcbpeattt8t2xqPWAZ+AnTgVq/Qp/D7C7tENK084QX9LbQareTDf0Xcei2l8OYuz0
	 7V40uWwNKlGysSRdLpXfkC9NpMFIzYszp3S595JBtYbemcy17SZRbPI3866h2/Xnma
	 kt8Y84cy9AW5Qcswk9T7C1xxi5hTrNgKxZ2IBqYpJ3H0JFCzRkBh0gnUg2JwSRjT0O
	 vOJKeYGBA9s0bofI6yTrF9HfZu/A+pLHybOwW1spxbmM0MW9KrJVH2dye1bqrId1X9
	 1hH3q0aZu1A6KrV1u16BNM2byPXaCzZRt1lOZbH8fXVjtB3cW7JrN6f5NZav0VtNO/
	 czKDYmRECHrnA==
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 5173F38480E
	for <usrp-users@lists.ettus.com>; Tue,  2 May 2023 17:29:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Xgu2QKZN";
	dkim-atps=neutral
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-61b5a653df7so23593476d6.0
        for <usrp-users@lists.ettus.com>; Tue, 02 May 2023 14:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683062973; x=1685654973;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9FQ8whISGW6wIyU22lPozPSOWz/YEBzTDXJLL+2ADyQ=;
        b=Xgu2QKZNMSQ6LUqkSlRYzaBWVdmTtecOxDwE7erp49k90t+UXsrXLUM6vos21LMQKq
         5u0nZiozfPnv0FkCWHpN1XszsbBlrZ/fSjJuPh7WxnsnpXppQ363xPzHLr34Cj//En3+
         dRv1MGPP4h867fGGPwWNYr7samKVhr7M6oK6j2+MaZlQBVtNo/+7auv6/yDHnfa0IyN2
         +gKJBju04NKM5SudsWA0rMbDUsup8Dldc7frsECcn+y7sUKVRWpRNrjTRNsHfdn0lIZm
         cnUhGwJxkr9hFr5YQt+rxn37Y0+eSrXrJOGB8r4eC4Sb3mHQYNjnG3XdcTRSIaXFHqT6
         jtqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683062973; x=1685654973;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9FQ8whISGW6wIyU22lPozPSOWz/YEBzTDXJLL+2ADyQ=;
        b=Z6jHdz6B0f9/llPyHMv8Z37bNvuJAD0Bo4Du+3gOzabUCv7CuMmUv05PK8trl36kt6
         ZhfubpVu1x+SIhfSKL8UsU+E+j4hk9KjRCY/MVofLuU5DjsZsIIDDrwgiKhI/tVFwwQU
         LKxywB8gGmcf09cZ0GwEh43B5D4JKHzRfob2kHYjUFG5gx3RUp/6PnzGYUVuR+NQrz/w
         inPvBpsVEXpam9cnrEtktMpqz9yLa8JBsrz43SDpUxPzjxyvcL92wskYi1sqPc5jJ1TL
         QezFJJbd5OcXzAF1Z+HZi1iFX09uGThz99N0jr5RMD+aTWjKH8fOhOr3QpFQZmPe4CPi
         7QPw==
X-Gm-Message-State: AC+VfDxAAZRx8viOCyMkH5k5ZPC1QzNLcikkAgAzMH82nbVEu8VLuBC3
	BrW9BoMLYBMgMtPlUYYOPAGhyIaKjio=
X-Google-Smtp-Source: ACHHUZ74qwSNR5MI1nVexVn+uzdEGyJw9si+IXo4qcb0ERYrAK+9646PEK3egtjrdTn7TBYSClhJfQ==
X-Received: by 2002:a05:6214:5012:b0:5ef:45a7:a3c0 with SMTP id jo18-20020a056214501200b005ef45a7a3c0mr8516775qvb.27.1683062973522;
        Tue, 02 May 2023 14:29:33 -0700 (PDT)
Received: from [192.168.2.168] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id bp41-20020a05620a45a900b00748613be2adsm9992612qkb.70.2023.05.02.14.29.33
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 14:29:33 -0700 (PDT)
Message-ID: <e7145ff5-06f8-1c7c-38e4-ebb89fb541a2@gmail.com>
Date: Tue, 2 May 2023 17:29:32 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <TdBV5qJ67rxeF1gmAnY8kGAmENVOf2LiEsag6eBe3Rw@lists.ettus.com>
 <CAEXYVK56DrCd3okmQiumkSNNFovocUGdq68o1b6qUHRMya4-hg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAEXYVK56DrCd3okmQiumkSNNFovocUGdq68o1b6qUHRMya4-hg@mail.gmail.com>
Message-ID-Hash: B6FKTZT3EFCUUJLDPZBUL7EN3RRUB5RE
X-Message-ID-Hash: B6FKTZT3EFCUUJLDPZBUL7EN3RRUB5RE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Tail of every transmit trimmed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/B6FKTZT3EFCUUJLDPZBUL7EN3RRUB5RE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2572227993891830628=="

This is a multi-part message in MIME format.
--===============2572227993891830628==
Content-Type: multipart/alternative;
 boundary="------------tDj2u2ffGLpF0W20LhydpfHh"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------tDj2u2ffGLpF0W20LhydpfHh
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 02/05/2023 16:44, Brian Padalino wrote:
>
>
> You can get around the RFNoC DUC issue yourself by writing your own=20
> interpolation block - or your own modulation block - and output at 200=20
> Msps the exact samples you want to transmit.=C2=A0 Beyond that, it just=
=20
> seems like some assumptions that Ettus/UHD made aren't what you expect.
>
>
The problem with a "general purpose" SDR is that it may not be=20
*specifically optimized* for any *particular* application.

One of the problems I've seen in the 14 years (!!!) I've been supporting=20
these radios--and I must emphasize, I'm not saying
 =C2=A0 this is what's going on here, is an expectation that one can trea=
t=20
the radio as if you're "just sending bits" as you would at
 =C2=A0 a couple of layers removing in the communications "stack".

A DSP modem generally has a fairly "intimate" relationship with the SDR=20
it's using.=C2=A0=C2=A0 Granted 95% of such a modem
 =C2=A0 is "generic", but there will be bits of it that must account for=20
hardware implementation details.=C2=A0 There's no such thing
 =C2=A0 as a 100% "abstracted" model of an SDR.

Quite apart from the DSP "gotchas" (due to tail effect in a DUC filter=20
in the radio), one needs to sometimes also consider
 =C2=A0 analog group-delay effects--granted they're small--but as symbol=20
rates go up, they can start to matter, particularly
 =C2=A0 at the "edges" of a communication.=C2=A0 In a half-duplex impleme=
ntation,=20
the TX<--->RX switching time is non-zero, and parts
 =C2=A0 of that delay are bounded by analog hardware that may not be=20
deterministic at timescales of 5-10nsec, for example.

Some of this obviously belongs in an "app note".=C2=A0 But some of it is =
just=20
plain 'ol "living with a radio" type stuff that you'd have
 =C2=A0 to think about regardless of the underlying SDR.

For application-specific radios (I dunno, let's say LoRA), all of these=20
annoying little things have already been accounted for
 =C2=A0 in the firmware/hardware of the radio, and are tuned TO THAT SPEC=
IFIC=20
APPLICATION.=C2=A0=C2=A0=C2=A0 You send in nicely-clocked bits,
 =C2=A0 photons come out the other side, etc.



--------------tDj2u2ffGLpF0W20LhydpfHh
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 02/05/2023 16:44, Brian Padalino
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAEXYVK56DrCd3okmQiumkSNNFovocUGdq68o1b6qUHRMya4-hg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr"><br>
        <div class=3D"gmail_quote">
          <div><br>
          </div>
          <div>You can get around the RFNoC DUC issue yourself by
            writing your own interpolation block - or your own
            modulation block - and output at 200 Msps the exact samples
            you want to transmit.=C2=A0 Beyond that, it just seems like s=
ome
            assumptions that Ettus/UHD made aren't what you expect.</div>
          <div><br>
          </div>
          <br>
        </div>
      </div>
    </blockquote>
    The problem with a "general purpose" SDR is that it may not be
    *specifically optimized* for any *particular* application.<br>
    <br>
    One of the problems I've seen in the 14 years (!!!) I've been
    supporting these radios--and I must emphasize, I'm not saying<br>
    =C2=A0 this is what's going on here, is an expectation that one can t=
reat
    the radio as if you're "just sending bits" as you would at<br>
    =C2=A0 a couple of layers removing in the communications "stack".<br>
    <br>
    A DSP modem generally has a fairly "intimate" relationship with the
    SDR it's using.=C2=A0=C2=A0 Granted 95% of such a modem<br>
    =C2=A0 is "generic", but there will be bits of it that must account f=
or
    hardware implementation details.=C2=A0 There's no such thing<br>
    =C2=A0 as a 100% "abstracted" model of an SDR.=C2=A0 <br>
    <br>
    Quite apart from the DSP "gotchas" (due to tail effect in a DUC
    filter in the radio), one needs to sometimes also consider<br>
    =C2=A0 analog group-delay effects--granted they're small--but as symb=
ol
    rates go up, they can start to matter, particularly<br>
    =C2=A0 at the "edges" of a communication.=C2=A0 In a half-duplex
    implementation, the TX&lt;---&gt;RX switching time is non-zero, and
    parts<br>
    =C2=A0 of that delay are bounded by analog hardware that may not be
    deterministic at timescales of 5-10nsec, for example.<br>
    <br>
    Some of this obviously belongs in an "app note".=C2=A0 But some of it=
 is
    just plain 'ol "living with a radio" type stuff that you'd have<br>
    =C2=A0 to think about regardless of the underlying SDR.<br>
    <br>
    For application-specific radios (I dunno, let's say LoRA), all of
    these annoying little things have already been accounted for<br>
    =C2=A0 in the firmware/hardware of the radio, and are tuned TO THAT
    SPECIFIC APPLICATION.=C2=A0=C2=A0=C2=A0 You send in nicely-clocked bi=
ts,<br>
    =C2=A0 photons come out the other side, etc.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------tDj2u2ffGLpF0W20LhydpfHh--

--===============2572227993891830628==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2572227993891830628==--
