Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A55E9A2B196
	for <lists+usrp-users@lfdr.de>; Thu,  6 Feb 2025 19:47:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F10B538097A
	for <lists+usrp-users@lfdr.de>; Thu,  6 Feb 2025 13:47:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738867652; bh=F5DXG/mX5OzgEn/Qa/JdxoQFo2+xQ/3CYvYiH1t4wYs=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=J6JaFeMD/xlvHYmIKVwGr+qBsvA9AbpQY3dGuQyUA8a77mG330sul1crIHvyAs+jC
	 GUyo0u2u89RbYV5hBHr/lTCuawUP31PRZaY/Ri2fWoQfxlZ8om/hLx76xTX2w8oYBd
	 auzMxdldMdErRN2Tv6ZMNA2LAyV0AhcLKcGH6LWd7ljGsmhMB9TAJSSviT9BF5EmRT
	 ZV8Rlgn087+B/cz8ZmHh0x3p1eQiRB0hIuQeK1TfE+Vp5ZCVMq8Bux9kmPW7kcEFSn
	 CV89SaSJClTn1gbNDxor0ikM/DBsiKtEgcEoSk8pAcJgHZuHAv5M5RsLsUmDX1PBkf
	 JoXKOAVcRBUTw==
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 91358385C9B
	for <usrp-users@lists.ettus.com>; Thu,  6 Feb 2025 13:46:29 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Z8FNgSe0";
	dkim-atps=neutral
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-7b6eb531e13so64319085a.0
        for <usrp-users@lists.ettus.com>; Thu, 06 Feb 2025 10:46:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738867589; x=1739472389; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+oV/CgC83djBvv8OBSHeQHLMerWAi3hNQkTmQqkzzHs=;
        b=Z8FNgSe0Ez+KrEpWWkOxcdmaPniIsKo3j96gzqk+pKgZw+zZibG/F4zou7J3QtqTBL
         foo+xx10wEMT8SOWBoOURZVJhNlC7RzPR7H0WT6zNPIeEFM4p4mHqydDHWNmWIqhiOxy
         IxzlOlmr16mCsc34QB44ipqAeV/ZGZRUum2KQ9EuITekQTOMX5PiFA3+RqV9F7W2IzjD
         BHj8WOpGDH7+90AxhMAfyJxh95hFwlqwqBhSqZyovD/Uzf4TR2v/UBVeV3/f/P2qI+d7
         Q2Cn2guUA2GEd5O8eIEu+itVqpvM69Ch+v42rdHYH7F8cuHTnDRpKryBJx2WuMH9Qn1l
         eplA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738867589; x=1739472389;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+oV/CgC83djBvv8OBSHeQHLMerWAi3hNQkTmQqkzzHs=;
        b=TPmw10gCIcDGowaq4P7FvPwXv8y/U1DBh0bJ6hOCBqyMuJXr9FixID6l6iKg9C6trD
         JxVEFlnMJrEhrM2Iy+vzCtvLOsIQ0IKw/9X3ve71+UJXGx5SZyb9Skg89buAABpX1WsU
         ECVN+iR6EkJm3h4QAiBg377G5g+h7SjD1R74BJyBIGPJn7KQ2O33FfITif2xZgH0C1pE
         l6vdfWp/16IjUsmd37SaD6YR6x7uQ+yZP1In7kANBD+EphmomSKWm6awLaVycd6HXRdf
         z9H+L6rsBokX2D8wO4IRf8XhNLzsohv4fX2qEhfUYl0FMQfnlnBqS679g0xiw+4bCnir
         tazg==
X-Gm-Message-State: AOJu0YyispsOlKaYGljdD0fEsERyBL1ou+VywjK5lwjbJqSAxbAbp3jL
	RTyuWMAqteE9v3bG/jT+Hq8Gz6MZ2Oww/RmPDVtskIX4Rzw7FP16
X-Gm-Gg: ASbGncsETos4ro60F1EtDRdCVUlTJzxHH7zA5ro6Hom/8X3xd0U4/0yG//F045DtptM
	6K43v7gRYl6XgyJfckp42ZWmU72Gm+SZgvpJ7PEF+R1KGJ0kj2VmvkcurtZMGwgm9C+O7TAFz+k
	u4k5vVxvMUG8n2oJjiETBfwPZG7GUij/t0wAB2e0GdpeF42oWV1vz3eJYA2QkBmjOsJF3z7lMOG
	zyNTZGD/Ytb6DPW9aBEjUxN1QCatIsA+zGw6lfpy9w8mO236rqKtKNPVrfuXqdH7gAJ/6fhydSn
	0DBi+ldFfnYtEl+tz2fhHTom501mTP/CWWqNVayl62SeWmI9pFBS/nWW+mqmFAgKagfZ2uyT3eK
	CszIBR4xqg2ZIHw==
X-Google-Smtp-Source: AGHT+IGZiaXOstCLthiKt8rJ8salI/gCk5dPyJag1YGxSBUq2IMOY7wbigLkIwi6A6jIcTwEv8qpRw==
X-Received: by 2002:a05:620a:244d:b0:7b6:cfab:9883 with SMTP id af79cd13be357-7c047ba6474mr42633285a.8.1738867588870;
        Thu, 06 Feb 2025 10:46:28 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-20-142-115-37-13.dsl.bell.ca. [142.115.37.13])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7c041ded12asm90215885a.5.2025.02.06.10.46.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Feb 2025 10:46:27 -0800 (PST)
Message-ID: <e65e77b5-1bf1-46c1-9fa1-d10d74f98655@gmail.com>
Date: Thu, 6 Feb 2025 13:46:25 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Chris Rogers <c1337rogers@gmail.com>
References: <nB2NM1pnMJtpMWF7QeSNOzqxO9ATE0c8BGiGdr5VM1E@lists.ettus.com>
 <0e07e4da-0c5c-45ba-bdbd-b084df814943@gmail.com>
 <CAOEzSFTrUiGK-oOaZkVL2FrGH8-f9HSLmrK6rnsevgL3-9g63Q@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAOEzSFTrUiGK-oOaZkVL2FrGH8-f9HSLmrK6rnsevgL3-9g63Q@mail.gmail.com>
Message-ID-Hash: VV2WGBKB7JOJHACR5O7QZJUGYQVFSO7S
X-Message-ID-Hash: VV2WGBKB7JOJHACR5O7QZJUGYQVFSO7S
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error when running Benchmark on USRP X440: RfnocError - OpTimeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VV2WGBKB7JOJHACR5O7QZJUGYQVFSO7S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7939285829010436888=="

This is a multi-part message in MIME format.
--===============7939285829010436888==
Content-Type: multipart/alternative;
 boundary="------------ZhdaVObPXmZVTCM5btYSSOEk"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ZhdaVObPXmZVTCM5btYSSOEk
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 06/02/2025 13:44, Chris Rogers wrote:
> Marcus is correct, you need to upload an FPGA image that has DUC/DDC=20
> enabled to get arbitrary sample rates in/out. Try using=20
> uhd_image_loader to put the X4_200 image on, which I believe does=20
> support DUC/DDC. Then try the 5 MHz rate
Thanks.=C2=A0 I don't have an X440 myself in my "inventory" of USRP devic=
es,=20
so reproducing customer issues is somewhat difficult...


>
> On Thu, Feb 6, 2025 at 1:05=E2=80=AFPM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 06/02/2025 13:02, Rilbert Lima via USRP-users wrote:
>     >
>     > I ran the test using 5e6, however, the same error occurred.
>     >
>     >
>     > root@ni-x4xx-342597F:/usr/lib/uhd/examples# ./benchmark_rate
>     --rx_rate
>     > 5e6 --tx_rate 5e6
>     >
>     > =E2=80=A6
>     >
>     > [00:00:04.955692172] Setting device timestamp to 0...
>     >
>     > [WARNING] [0/Radio#0] Requesting invalid sampling rate from
>     device: 5
>     > MHz. Actual rate is: 368.64 MHz.
>     >
>     > [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz.
>     Actual rate
>     > is 368.640 MHz
>     >
>     > [WARNING] [0/Radio#0] Requesting invalid sampling rate from
>     device: 5
>     > MHz. Actual rate is: 368.64 MHz.
>     >
>     > [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz.
>     Actual rate
>     > is 368.640 MHz
>     >
>     > [WARNING] [0/Radio#0] Requesting invalid sampling rate from
>     device: 5
>     > MHz. Actual rate is: 368.64 MHz.
>     >
>     > [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz.
>     Actual rate
>     > is 368.640 MHz
>     >
>     > [WARNING] [0/Radio#0] Requesting invalid sampling rate from
>     device: 5
>     > MHz. Actual rate is: 368.64 MHz.
>     >
>     > [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz.
>     Actual rate
>     > is 368.640 MHz
>     >
>     > [WARNING] [0/Radio#1] Requesting invalid sampling rate from
>     device: 5
>     > MHz. Actual rate is: 368.64 MHz.
>     >
>     > [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz.
>     Actual rate
>     > is 368.640 MHz
>     >
>     > [WARNING] [0/Radio#1] Requesting invalid sampling rate from
>     device: 5
>     > MHz. Actual rate is: 368.64 MHz.
>     >
>     > [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz.
>     Actual rate
>     > is 368.640 MHz
>     >
>     > [WARNING] [0/Radio#1] Requesting invalid sampling rate from
>     device: 5
>     > MHz. Actual rate is: 368.64 MHz.
>     >
>     > [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz.
>     Actual rate
>     > is 368.640 MHz
>     >
>     > [WARNING] [0/Radio#1] Requesting invalid sampling rate from
>     device: 5
>     > MHz. Actual rate is: 368.64 MHz.
>     >
>     > [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz.
>     Actual rate
>     > is 368.640 MHz
>     >
>     > [00:00:04.967447052] Testing receive rate 368.640000 Msps on 1
>     channels
>     >
>     > [WARNING] [0/Radio#0] Requesting invalid sampling rate from
>     device: 5
>     > MHz. Actual rate is: 368.64 MHz.
>     >
>     > [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz.
>     Actual rate
>     > is 368.640 MHz
>     >
>     > [WARNING] [0/Radio#0] Requesting invalid sampling rate from
>     device: 5
>     > MHz. Actual rate is: 368.64 MHz.
>     >
>     > [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz.
>     Actual rate
>     > is 368.640 MHz
>     >
>     > [WARNING] [0/Radio#0] Requesting invalid sampling rate from
>     device: 5
>     > MHz. Actual rate is: 368.64 MHz.
>     >
>     > [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz.
>     Actual rate
>     > is 368.640 MHz
>     >
>     > [WARNING] [0/Radio#0] Requesting invalid sampling rate from
>     device: 5
>     > MHz. Actual rate is: 368.64 MHz.
>     >
>     > [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz.
>     Actual rate
>     > is 368.640 MHz
>     >
>     > [WARNING] [0/Radio#1] Requesting invalid sampling rate from
>     device: 5
>     > MHz. Actual rate is: 368.64 MHz.
>     >
>     > [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz.
>     Actual rate
>     > is 368.640 MHz
>     >
>     > [WARNING] [0/Radio#1] Requesting invalid sampling rate from
>     device: 5
>     > MHz. Actual rate is: 368.64 MHz.
>     >
>     > [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz.
>     Actual rate
>     > is 368.640 MHz
>     >
>     > Setting TX spp to 352
>     >
>     > [WARNING] [0/Radio#1] Requesting invalid sampling rate from
>     device: 5
>     > MHz. Actual rate is: 368.64 MHz.
>     >
>     > OO[WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actu=
al
>     > rate is 368.640 MHz
>     >
>     > [WARNING] [0/Radio#1] Requesting invalid sampling rate from
>     device: 5
>     > MHz. Actual rate is: 368.64 MHz.
>     >
>     > [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz.
>     Actual rate
>     > is 368.640 MHz
>     >
>     > [00:00:05.301642718] Receiver error: ERROR_CODE_TIMEOUT,
>     continuing...
>     >
>     > [00:00:05.301663748] Testing transmit rate 368.640000 Msps on 1
>     channels
>     >
>     >
>     UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUOUUUUUUterminate
>
>     > called after throwing an inst'
>     >
>     > [14450.111391] audit: type=3D1701 audit(1738864692.914:16):
>     > auid=3D4294967295 uid=3D0 gid=3D0 ses=3D4294967295 subj=3Dkernel =
pid=3D1132
>     > comm=3D"bmark_rx_stream" exe=3D"/usr/lib/uhd/examples/benchmark_r=
ate"
>     > sig=3D6 res=3D1
>     >
>     > what(): RfnocError: OpTimeout: Control operation timed out
>     waiting for ACK
>     >
>     > Aborted
>     >
>     So, this may be an X440-specific thing (doesn't do arbitrary
>     re-sampling).
>
>     https://kb.ettus.com/About_Sampling_Rates_and_Master_Clock_Rates_fo=
r_the_USRP_X440
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------ZhdaVObPXmZVTCM5btYSSOEk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 06/02/2025 13:44, Chris Rogers
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAOEzSFTrUiGK-oOaZkVL2FrGH8-f9HSLmrK6rnsevgL3-9g63Q@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Marcus is correct, you need to upload an FPGA imag=
e
        that has DUC/DDC enabled to get arbitrary sample rates in/out.
        Try using uhd_image_loader to put the X4_200 image on, which I
        believe does support DUC/DDC. Then try the 5 MHz rate <br>
      </div>
    </blockquote>
    Thanks.=C2=A0 I don't have an X440 myself in my "inventory" of USRP
    devices, so reproducing customer issues is somewhat difficult...<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAOEzSFTrUiGK-oOaZkVL2FrGH8-f9HSLmrK6rnsevgL3-9g63Q@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote gmail_quote_container">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 6, 2025 at 1:05=
=E2=80=AFPM
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">On
          06/02/2025 13:02, Rilbert Lima via USRP-users wrote:<br>
          &gt;<br>
          &gt; I ran the test using 5e6, however, the same error
          occurred.<br>
          &gt;<br>
          &gt;<br>
          &gt; root@ni-x4xx-342597F:/usr/lib/uhd/examples#
          ./benchmark_rate --rx_rate <br>
          &gt; 5e6 --tx_rate 5e6<br>
          &gt;<br>
          &gt; =E2=80=A6<br>
          &gt;<br>
          &gt; [00:00:04.955692172] Setting device timestamp to 0...<br>
          &gt;<br>
          &gt; [WARNING] [0/Radio#0] Requesting invalid sampling rate
          from device: 5 <br>
          &gt; MHz. Actual rate is: 368.64 MHz.<br>
          &gt;<br>
          &gt; [WARNING] [MULTI_USRP] Could not set RX rate to 5.000
          MHz. Actual rate <br>
          &gt; is 368.640 MHz<br>
          &gt;<br>
          &gt; [WARNING] [0/Radio#0] Requesting invalid sampling rate
          from device: 5 <br>
          &gt; MHz. Actual rate is: 368.64 MHz.<br>
          &gt;<br>
          &gt; [WARNING] [MULTI_USRP] Could not set RX rate to 5.000
          MHz. Actual rate <br>
          &gt; is 368.640 MHz<br>
          &gt;<br>
          &gt; [WARNING] [0/Radio#0] Requesting invalid sampling rate
          from device: 5 <br>
          &gt; MHz. Actual rate is: 368.64 MHz.<br>
          &gt;<br>
          &gt; [WARNING] [MULTI_USRP] Could not set RX rate to 5.000
          MHz. Actual rate <br>
          &gt; is 368.640 MHz<br>
          &gt;<br>
          &gt; [WARNING] [0/Radio#0] Requesting invalid sampling rate
          from device: 5 <br>
          &gt; MHz. Actual rate is: 368.64 MHz.<br>
          &gt;<br>
          &gt; [WARNING] [MULTI_USRP] Could not set RX rate to 5.000
          MHz. Actual rate <br>
          &gt; is 368.640 MHz<br>
          &gt;<br>
          &gt; [WARNING] [0/Radio#1] Requesting invalid sampling rate
          from device: 5 <br>
          &gt; MHz. Actual rate is: 368.64 MHz.<br>
          &gt;<br>
          &gt; [WARNING] [MULTI_USRP] Could not set RX rate to 5.000
          MHz. Actual rate <br>
          &gt; is 368.640 MHz<br>
          &gt;<br>
          &gt; [WARNING] [0/Radio#1] Requesting invalid sampling rate
          from device: 5 <br>
          &gt; MHz. Actual rate is: 368.64 MHz.<br>
          &gt;<br>
          &gt; [WARNING] [MULTI_USRP] Could not set RX rate to 5.000
          MHz. Actual rate <br>
          &gt; is 368.640 MHz<br>
          &gt;<br>
          &gt; [WARNING] [0/Radio#1] Requesting invalid sampling rate
          from device: 5 <br>
          &gt; MHz. Actual rate is: 368.64 MHz.<br>
          &gt;<br>
          &gt; [WARNING] [MULTI_USRP] Could not set RX rate to 5.000
          MHz. Actual rate <br>
          &gt; is 368.640 MHz<br>
          &gt;<br>
          &gt; [WARNING] [0/Radio#1] Requesting invalid sampling rate
          from device: 5 <br>
          &gt; MHz. Actual rate is: 368.64 MHz.<br>
          &gt;<br>
          &gt; [WARNING] [MULTI_USRP] Could not set RX rate to 5.000
          MHz. Actual rate <br>
          &gt; is 368.640 MHz<br>
          &gt;<br>
          &gt; [00:00:04.967447052] Testing receive rate 368.640000 Msps
          on 1 channels<br>
          &gt;<br>
          &gt; [WARNING] [0/Radio#0] Requesting invalid sampling rate
          from device: 5 <br>
          &gt; MHz. Actual rate is: 368.64 MHz.<br>
          &gt;<br>
          &gt; [WARNING] [MULTI_USRP] Could not set TX rate to 5.000
          MHz. Actual rate <br>
          &gt; is 368.640 MHz<br>
          &gt;<br>
          &gt; [WARNING] [0/Radio#0] Requesting invalid sampling rate
          from device: 5 <br>
          &gt; MHz. Actual rate is: 368.64 MHz.<br>
          &gt;<br>
          &gt; [WARNING] [MULTI_USRP] Could not set TX rate to 5.000
          MHz. Actual rate <br>
          &gt; is 368.640 MHz<br>
          &gt;<br>
          &gt; [WARNING] [0/Radio#0] Requesting invalid sampling rate
          from device: 5 <br>
          &gt; MHz. Actual rate is: 368.64 MHz.<br>
          &gt;<br>
          &gt; [WARNING] [MULTI_USRP] Could not set TX rate to 5.000
          MHz. Actual rate <br>
          &gt; is 368.640 MHz<br>
          &gt;<br>
          &gt; [WARNING] [0/Radio#0] Requesting invalid sampling rate
          from device: 5 <br>
          &gt; MHz. Actual rate is: 368.64 MHz.<br>
          &gt;<br>
          &gt; [WARNING] [MULTI_USRP] Could not set TX rate to 5.000
          MHz. Actual rate <br>
          &gt; is 368.640 MHz<br>
          &gt;<br>
          &gt; [WARNING] [0/Radio#1] Requesting invalid sampling rate
          from device: 5 <br>
          &gt; MHz. Actual rate is: 368.64 MHz.<br>
          &gt;<br>
          &gt; [WARNING] [MULTI_USRP] Could not set TX rate to 5.000
          MHz. Actual rate <br>
          &gt; is 368.640 MHz<br>
          &gt;<br>
          &gt; [WARNING] [0/Radio#1] Requesting invalid sampling rate
          from device: 5 <br>
          &gt; MHz. Actual rate is: 368.64 MHz.<br>
          &gt;<br>
          &gt; [WARNING] [MULTI_USRP] Could not set TX rate to 5.000
          MHz. Actual rate <br>
          &gt; is 368.640 MHz<br>
          &gt;<br>
          &gt; Setting TX spp to 352<br>
          &gt;<br>
          &gt; [WARNING] [0/Radio#1] Requesting invalid sampling rate
          from device: 5 <br>
          &gt; MHz. Actual rate is: 368.64 MHz.<br>
          &gt;<br>
          &gt; OO[WARNING] [MULTI_USRP] Could not set TX rate to 5.000
          MHz. Actual <br>
          &gt; rate is 368.640 MHz<br>
          &gt;<br>
          &gt; [WARNING] [0/Radio#1] Requesting invalid sampling rate
          from device: 5 <br>
          &gt; MHz. Actual rate is: 368.64 MHz.<br>
          &gt;<br>
          &gt; [WARNING] [MULTI_USRP] Could not set TX rate to 5.000
          MHz. Actual rate <br>
          &gt; is 368.640 MHz<br>
          &gt;<br>
          &gt; [00:00:05.301642718] Receiver error: ERROR_CODE_TIMEOUT,
          continuing...<br>
          &gt;<br>
          &gt; [00:00:05.301663748] Testing transmit rate 368.640000
          Msps on 1 channels<br>
          &gt;<br>
          &gt;
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUOUUUUUUterminate
          <br>
          &gt; called after throwing an inst'<br>
          &gt;<br>
          &gt; [14450.111391] audit: type=3D1701 audit(1738864692.914:16)=
:
          <br>
          &gt; auid=3D4294967295 uid=3D0 gid=3D0 ses=3D4294967295 subj=3D=
kernel
          pid=3D1132 <br>
          &gt; comm=3D"bmark_rx_stream"
          exe=3D"/usr/lib/uhd/examples/benchmark_rate" <br>
          &gt; sig=3D6 res=3D1<br>
          &gt;<br>
          &gt; what(): RfnocError: OpTimeout: Control operation timed
          out waiting for ACK<br>
          &gt;<br>
          &gt; Aborted<br>
          &gt;<br>
          So, this may be an X440-specific thing (doesn't do arbitrary
          re-sampling).<br>
          <br>
          <a
href=3D"https://kb.ettus.com/About_Sampling_Rates_and_Master_Clock_Rates_=
for_the_USRP_X440"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">https://kb.ettus.com/About_Sa=
mpling_Rates_and_Master_Clock_Rates_for_the_USRP_X440</a><br>
          <br>
          <br>
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
    </blockquote>
    <br>
  </body>
</html>

--------------ZhdaVObPXmZVTCM5btYSSOEk--

--===============7939285829010436888==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7939285829010436888==--
