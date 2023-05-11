Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B656FF7CC
	for <lists+usrp-users@lfdr.de>; Thu, 11 May 2023 18:54:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3CAE938462F
	for <lists+usrp-users@lfdr.de>; Thu, 11 May 2023 12:54:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683824080; bh=k6KEZM5lhQ31PshYL9+g0oGQVq0mhNxa8ovfnlrcR98=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=QPNngfsADFkiUQygpUGeVDqAZOB6BYAZL/j60BUvj+e2UpW3LKHmkFit/HDoWJ6fp
	 LAqjEe4Jo1liqxyBQF1tfKgUY3vSZjevZxmsKgTVxjbMNbA7pb/h8T/PKx5nCcZxpN
	 CCr7uNh64ZDVrZ7BV84apcoCbPUv5lEP5W3z9MAEzs+rwA26KBIX7P7FpnEAGvQg5a
	 QGo/hh38nCVGRobT55MCZMBHRMNdcLGzBMdqqIOuLCBCdBKp3y3dPE55f4QYGw3QBh
	 1zJUp2MkkmkwGWjANLOXw4X12ficrujRXYeFCrwKaLVw3xi80R2pfO5ac+8/RpWZTL
	 JRUjpc5PdP1nA==
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id A1208384618
	for <usrp-users@lists.ettus.com>; Thu, 11 May 2023 12:53:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Le6wNoXj";
	dkim-atps=neutral
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-75131c2997bso3024842085a.1
        for <usrp-users@lists.ettus.com>; Thu, 11 May 2023 09:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683824036; x=1686416036;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KS9F0gHdAejK2uIRTamzNL2UqefloA/d8Vtd39gqlf0=;
        b=Le6wNoXjzuTbEadzDlsJC5DxUfRXmMqPxDhbG0nytW2ufwYcQK27yazu8MzpD/Bdsm
         5A9gMquRQXZwvCvmcHQQkxbXDnzWcCKikz+9agzEgUmntk9QXKFZtTlZaYPBECxCJV/J
         HIAVdYK/rv+Ck2Bwv4Ek6xIjpuroZDVyB5c88xGmwg85rjL4g0y2XRPDvKxBKDTLWtqe
         bGRjpWOEJFs4K0CMzAV1lczN0m2+Lpoe8oAXK7hOmWHuLJMYohuB1DwkKVcHS2XHqBlT
         4zdrcSCcLQM0I6pQG+IQBVC9tMxSlIBmRHBbdyfzR4zfSUP1VNNqhjr1ZxTs94Uv8/fL
         DZkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683824036; x=1686416036;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KS9F0gHdAejK2uIRTamzNL2UqefloA/d8Vtd39gqlf0=;
        b=UTVANrkWRMx3sxnoCjBS4C4Cyw6OnlbAFxQlnGJ4+Z6EIBfo0Qxw9LwRVprJzQ30k7
         kEEhHzymqs2z0rYQcyWf0R0M5zItmNMJD643UWHhNLMAOgcxiq6i0u9tOGnEwjGuC+sF
         sje4AXLw7Pm1U8baO41pn8ADY4M8igsx535cEidvW7acOssEemRiAU1xz+7VmNOQonik
         xoZ1rLDtozeBFFPV7gBUtsZrAZN/tji/syT4ina6H3MbJYJ+Df4AusadIHsrc7tkaDSf
         YKyqcPQLrMEbDfamju5yRLoMcMErFHJ3hZmRL53JMbBeBKJC8ytYPHY36GRTf89ksGwG
         ApWg==
X-Gm-Message-State: AC+VfDyMsr4t9kElb1HArIHDQFhd/ZVIJKjNVskSK3kj2c9l3aCimcR/
	0v6FWOU4NHiXINRo44HQl2ZmvrmlL1M=
X-Google-Smtp-Source: ACHHUZ6Ck4OmPBAGeWldRH7iuLTF0tbzW2bWZ2Tdjn1mzw+POC0M8j9Cy+tlqP0pAXTTxSn9FoWRmA==
X-Received: by 2002:ad4:5be4:0:b0:5e7:c44f:5098 with SMTP id k4-20020ad45be4000000b005e7c44f5098mr44697610qvc.13.1683824035748;
        Thu, 11 May 2023 09:53:55 -0700 (PDT)
Received: from [192.168.2.155] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id j20-20020ae9c214000000b007579ded7a8asm1655815qkg.54.2023.05.11.09.53.55
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 May 2023 09:53:55 -0700 (PDT)
Message-ID: <f4ed5f0a-4445-d8c3-a2ea-9e74631a9ab5@gmail.com>
Date: Thu, 11 May 2023 12:53:54 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <8Mh9f914K4i9wEzfygSuelQ4BRcQWbKoBzoaNOcfPYM@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <8Mh9f914K4i9wEzfygSuelQ4BRcQWbKoBzoaNOcfPYM@lists.ettus.com>
Message-ID-Hash: BE4AC5ZYISI5B2QH5JFD6FUIDFTUJTX3
X-Message-ID-Hash: BE4AC5ZYISI5B2QH5JFD6FUIDFTUJTX3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Minimal sample rate with X310 ?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BE4AC5ZYISI5B2QH5JFD6FUIDFTUJTX3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1037134374648663686=="

This is a multi-part message in MIME format.
--===============1037134374648663686==
Content-Type: multipart/alternative;
 boundary="------------M0u2sJAIAolcWqXV0xeY1H9G"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------M0u2sJAIAolcWqXV0xeY1H9G
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 11/05/2023 12:32, david.fernandes@viveris.fr wrote:
>
> Hi everyone,
>
> I would like to transmit and receive with a sample rate of 280KHz but=20
> when I try it, I get the following messages :
>
> [WARNING] [MULTI_USRP] The hardware does not support the requested TX=20
> sample rate:
> Target sample rate: 0.280000 MSps
> Actual sample rate: 0.390625 MSps
>
> [WARNING] [MULTI_USRP] The hardware does not support the requested RX=20
> sample rate:
> Target sample rate: 0.280000 MSps
> Actual sample rate: 0.279330 MSps
>
> So there is a problem specially in Tx side. I have understood that the=20
> *master clock rate must be an integer multiple of the sampling rate*,=20
> but the only clock rate values working with the X310 are 200MHz and=20
> 184.32MHz which are too high to be able to use a sampling rate of 280 K=
Hz.
>
> Is there any way to use a sampling rate of 2800 KHz ? I am forced to=20
> use the UHD version 3.15 for other reasons but when I tried the UHD=20
> version 4.1.0 I didn=E2=80=99t notice this issues.
>
> Thank you very much in advance.
>
>
The requested sample rate MUST be a whole integer fraction of the master=20
clock rate, which on X310 is either 200e6 or
 =C2=A0 184.32e6.

I believe the maximum decimation ratio supported is 512, which means=20
390625sps for a 200e6 master clock, and 360000sps
 =C2=A0 for a master clock of 184.32e6.

What is your hardware line-up on the two sides of the X310?=C2=A0=C2=A0 S=
ome=20
daughtercards (at least at UHD 3.15) weren't
 =C2=A0 as flexible in terms of clocking requirements, so MUST use a mast=
er=20
clock of 200e6.

I honestly have no idea why the TX/RX disagree on the sample-rate=20
calculation--there's only 1 master clock.



--------------M0u2sJAIAolcWqXV0xeY1H9G
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 11/05/2023 12:32,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:david.fernande=
s@viveris.fr">david.fernandes@viveris.fr</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:8Mh9f914K4i9wEzfygSuelQ4BRcQWbKoBzoaNOcfPYM@lists.ettus=
.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi everyone,</p>
      <p>I would like to transmit and receive with a sample rate of
        280KHz but when I try it, I get the following messages :</p>
      <p>[WARNING] [MULTI_USRP] The hardware does not support the
        requested TX sample rate:<br>
        Target sample rate: 0.280000 MSps<br>
        Actual sample rate: 0.390625 MSps</p>
      <p>[WARNING] [MULTI_USRP] The hardware does not support the
        requested RX sample rate:<br>
        Target sample rate: 0.280000 MSps<br>
        Actual sample rate: 0.279330 MSps<br>
        <br>
        So there is a problem specially in Tx side. I have understood
        that the <strong>master clock rate must be an integer multiple
          of the sampling rate</strong>, but the only clock rate values
        working with the X310 are 200MHz and 184.32MHz which are too
        high to be able to use a sampling rate of 280 KHz.</p>
      <p>Is there any way to use a sampling rate of 2800 KHz ? I am
        forced to use the UHD version 3.15 for other reasons but when I
        tried the UHD version 4.1.0 I didn=E2=80=99t notice this issues.<=
/p>
      <p>Thank you very much in advance.</p>
      <br>
    </blockquote>
    The requested sample rate MUST be a whole integer fraction of the
    master clock rate, which on X310 is either 200e6 or<br>
    =C2=A0 184.32e6.<br>
    <br>
    I believe the maximum decimation ratio supported is 512, which means
    390625sps for a 200e6 master clock, and 360000sps<br>
    =C2=A0 for a master clock of 184.32e6.<br>
    <br>
    What is your hardware line-up on the two sides of the X310?=C2=A0=C2=A0=
 Some
    daughtercards (at least at UHD 3.15) weren't<br>
    =C2=A0 as flexible in terms of clocking requirements, so MUST use a
    master clock of 200e6.<br>
    <br>
    I honestly have no idea why the TX/RX disagree on the sample-rate
    calculation--there's only 1 master clock.<br>
    <br>
    <br>
    =C2=A0 <br>
  </body>
</html>

--------------M0u2sJAIAolcWqXV0xeY1H9G--

--===============1037134374648663686==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1037134374648663686==--
