Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0859CAD3557
	for <lists+usrp-users@lfdr.de>; Tue, 10 Jun 2025 13:52:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A9B77385E74
	for <lists+usrp-users@lfdr.de>; Tue, 10 Jun 2025 07:52:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749556345; bh=TAxSXz8JpPbvDCY7FIKcFy//hXxjRkNaDHaU3WketkA=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=u0yut6jtLTSYIKboAmycOpKDRv407TluNE/A+aI1ZL7R4Cw0Dlm9hwUq84Da0hE3a
	 EmqVM6lWSDcPR3z2ucjQHBVJxJjbttAO4Pv5+bD+NFSBjm94+bQ5NlJ+VWxHpG+N5z
	 E6j3RorYWhSsyW/2QuOQLcJzfKFNUcg8kY5H9ZnUnl+ZkuP7hfUlhF4azPm7ci2h9Z
	 q3gsS9RxFzIhDXywmn7UUongmGBKkFoafJIDaq4F0Pp0zehhmkr8cnAxlFWtIQcZWd
	 cEVCxWG9Ehebfrj1KsxRFun5ydr+/ecV9k5K+5Ya5gdWJYap7uxoDcKHah7jQckZWY
	 mXPAHekh6BJtw==
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 83CC5385DA1
	for <usrp-users@lists.ettus.com>; Tue, 10 Jun 2025 07:51:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="HBlkZUOO";
	dkim-atps=neutral
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ad88eb71eb5so733761166b.0
        for <usrp-users@lists.ettus.com>; Tue, 10 Jun 2025 04:51:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1749556304; x=1750161104; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Yss09p6fTKE4ZRty9F39/NjBZx6srukDNLGDpQWXXTk=;
        b=HBlkZUOO0UKtFmKMJvyAm0U+S5J5ODXjwsAfmeKWDjs0Qs5gsZe2K9fFBFcbUWlnoK
         aOIzgzxWlyzzW5bKdFrcoTTMEh5Afs+xKrzkbLgqPnczFXqzuOZCHqXXG2TLTlP/6J2M
         2vVXzjcQwW12tXnYCu2pKEjeoi3ZSBDsVj7A6pKYrPQVRmZetYOUNHcohrcw3C4MFJzT
         N36OhAY83gJhwIov7wYGEsvNiE1QgApmOe8/A6o93wYXLcvEyibe/zfxNAfog+GsEuE9
         AmabiL+ckcGbUUIbgQRZhxGu9ndduenXRWN7UUYFYWYU9fYAk+ygX1xQjRLGywAuFX5S
         FLxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749556304; x=1750161104;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Yss09p6fTKE4ZRty9F39/NjBZx6srukDNLGDpQWXXTk=;
        b=CmhglYjY8Rv1cPCqsqgXaWOSYH5+7GPOYmqFIwC4oesfSZ/oLwEY7+ODdNNm8f/CRz
         O6ztC0czzSELgND1zDfVx+rL58G7mrj9xrIkUgKXUlcyAgTlNK5yTQpT7LKLtuOqEe9H
         cCodDHLyxITbb9udnFFKsFvhXtZpYJf0AJD64IGq2BUC30d0JlC5vH+LCVCEbX2IOXkH
         52HUHHkXDrauytvc0qxSHsV7fNCbksu4lmeDv8ap7faLTaPNdScszdAWM94Px4IE+VBK
         JiDokDj0JmkF7m2Gbeu3hSEhzXoFH3lI8DHFURZwUv2LCRc6k2HBPhItE+AOYoh9gm9i
         ibuA==
X-Gm-Message-State: AOJu0Yw2WBGZG5Qngt5NDeK5jcbfaeTi6aOno085m1Jacz4sWTOPmY6Q
	fTFK6BazzqLHr1MpHxfA4J51C/QTdyFCO67WH9RuVXqtlcYiJn0MJeB65klbpjUGSWMWAwAwmli
	UXK7lMKeNiFpUSnp5hSYzjNfMUJl5dkclPvru36Ah4LOFksVBzG0hgFw=
X-Gm-Gg: ASbGnctfW24rKTCBVB8HMwEhRKwgiE5ykxqTbN78b9voVhLSQ9kkz8dmx7RKVZFIHjm
	HDFkpfE6SCHK7FpIEsvdij2RvZver1PaFV0ZbElF91374NpFwt1qQ+7TIh1TxYV0RJUf/lspsrC
	ZWQXyludzjflNZRsKU2zLBkRZ5GbhcWPKYWsw0JgRAUj6PBzsrjIlcw+QEV1QIqK8yQ5DZuwwex
	wnXL5fnGy+DAA==
X-Google-Smtp-Source: AGHT+IHkhAAIddP6jXtkRyHjUE6spjxZ75p9IplMdn/AcMEAcb6ALJIORoZ39sfzpHR7yhrbRBQcAxskg3yIFVAzPNM=
X-Received: by 2002:a17:907:3f8b:b0:ad8:8efe:31fc with SMTP id
 a640c23a62f3a-ade7acf6c5emr231317566b.41.1749556303401; Tue, 10 Jun 2025
 04:51:43 -0700 (PDT)
MIME-Version: 1.0
References: <F8NNTcFqChdp6kWbY8HHDsKMzpXRa7IzpoRjnHgTFbI@lists.ettus.com>
In-Reply-To: <F8NNTcFqChdp6kWbY8HHDsKMzpXRa7IzpoRjnHgTFbI@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 10 Jun 2025 11:51:32 +0200
X-Gm-Features: AX0GCFtcIgVH1h9F0orKYyTRqG8f7zbhY41fRcLjktl4qHeNAeNrosn6Yqb6njE
Message-ID: <CAFOi1A5WDufQtO_Zf6eYDGt8k9ZX+NneUyajaV0NMpKZk2je6g@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: ZDFZL46ETPIGGQ52AMZOUYP7N3VIKYH3
X-Message-ID-Hash: ZDFZL46ETPIGGQ52AMZOUYP7N3VIKYH3
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tx_offset and rx_offset parameter usage on UHD calibration utilities
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZDFZL46ETPIGGQ52AMZOUYP7N3VIKYH3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1966343580300628525=="

--===============1966343580300628525==
Content-Type: multipart/alternative; boundary="000000000000faa558063736511c"

--000000000000faa558063736511c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Tom,

I'm still not sure if we're talking about the same thing. Above 500 MHz,
one LO is used to mix your signal down to DC. Below 500 MHz, two LOs are
used, first to mix up, then to mix down. However, the first LO stage (for <
500 MHz) won't cause IQ imbalance or LO leakage in your signal band.
Because the LO feeds into two separate mixers, those may be imbalanced, and
because the LO frequency is necessarily close to the center frequency, the
LO can leak into the signal band.

Which frequency are you using, and have you tried adjusting the gain
settings?

--M

On Fri, Jun 6, 2025 at 7:17=E2=80=AFPM <tommytsui@w5tech.com> wrote:

> Hi Marcus,
>
> Once again thank you so much for your prompt and detail response. To
> answer your =E2=80=9Cdirect frequency conversion=E2=80=9D question, I lik=
e to point out the
> hardware architecture of UBX-40, the daughter card that we recently
> switched to because the old model WBX-40 is out of production. I have bee=
n
> evaluating UBX40 to see how it performs compared to WBX40. The UBX40 bloc=
k
> diagram shown on website: UBX 10-6000 MHz Rx/Tx (40 MHz, N Series and X
> Series) | Ettus Research, a National Instruments Brand | The leader in
> Software Defined Radio (SDR) <https://www.ettus.com/all-products/ubx40/>
>
> The UBX-40 card uses direct frequency conversion or heterodyne conversion
> depending on the target Rx or Tx frequency. I thought when direct frequen=
cy
> conversion is used, that is, when the Rx or Tx frequency is above 500MHz,
> no LO is involved. When the Rx or Tx frequency is below 500MHz, a
> heterodyne conversion is used (aka with a LO).
>
> The UBX-40 block diagram shows that there are two REF input sources, one
> on the RF front end when the Rx or Tx frequency is below 500MHz, another =
on
> the ADC I&Q output. I could be wrong assuming the REF used for the RF fro=
nt
> end is the LO. So please bear with me and correct me if I am wrong.
>
> The main reason I scrutinized the cal tool is because UBX40 produces less
> than ideal performance compared to WBX40. When I ran a test application o=
n
> X310 + UBX40 versus the same X310 + WBX40, UBX40 produced below acceptabl=
e
> WCDMA constellation at the transmitter output. The test ran on the same
> environment except the daughter card being swapped. The cal files for UBX=
40
> were generated similar to that of WBX40 without tx_offset and rx_offset
> specified. It is a perplexing issue at this point.
>
>
> Tom
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000faa558063736511c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Tom,</div><div><br></div><div>I&#39;m still not s=
ure if we&#39;re talking about the same thing. Above 500 MHz, one LO is use=
d to mix your signal down to DC. Below 500 MHz, two LOs are used, first to =
mix up, then to mix down. However, the first LO stage (for &lt; 500 MHz) wo=
n&#39;t cause IQ imbalance or LO leakage in your signal band. Because the L=
O feeds into two separate mixers, those may be imbalanced, and because the =
LO frequency is necessarily close to the center frequency, the LO can leak =
into the signal band.</div><div><br></div><div>Which frequency are you usin=
g, and have you tried adjusting the gain settings?</div><div><br></div><div=
>--M</div></div><br><div class=3D"gmail_quote gmail_quote_container"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 6, 2025 at 7:17=E2=80=AFPM &lt;=
<a href=3D"mailto:tommytsui@w5tech.com">tommytsui@w5tech.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi Marcus,</=
p><p>Once again thank you so much for your prompt and detail response.  To =
answer your =E2=80=9Cdirect frequency conversion=E2=80=9D question, I like =
to point out the hardware architecture of UBX-40, the daughter card that we=
 recently switched to because the old model WBX-40 is out of production. I =
have been evaluating UBX40 to see how it performs compared to WBX40. The UB=
X40 block diagram shown on website: <a href=3D"https://www.ettus.com/all-pr=
oducts/ubx40/" target=3D"_blank">UBX 10-6000 MHz Rx/Tx (40 MHz, N Series an=
d X Series) | Ettus Research, a National Instruments Brand | The leader in =
Software Defined Radio (SDR)</a></p><p>The UBX-40 card uses direct frequenc=
y conversion or heterodyne conversion depending on the target Rx or Tx freq=
uency. I thought when direct frequency conversion is used, that is, when th=
e Rx or Tx frequency is above 500MHz, no LO is involved. When the Rx or Tx =
frequency is below 500MHz, a heterodyne conversion is used (aka with a LO).=
 </p><p>The UBX-40 block diagram shows that there are two REF input sources=
, one on the RF front end when the Rx or Tx frequency is below 500MHz, anot=
her on the ADC I&amp;Q output. I could be wrong assuming the REF used for t=
he RF front end is the LO. So please bear with me and correct me if I am wr=
ong.</p><p>The main reason I scrutinized the cal tool is because UBX40 prod=
uces less than ideal performance compared to WBX40. When I ran a test appli=
cation on X310 + UBX40 versus the same X310 + WBX40, UBX40 produced below a=
cceptable WCDMA constellation at the transmitter output. The test ran on th=
e same environment except the daughter card being swapped. The cal files fo=
r UBX40 were generated similar to that of WBX40 without tx_offset and rx_of=
fset specified. It is a perplexing issue at this point.</p><p><br></p><p>To=
m</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000faa558063736511c--

--===============1966343580300628525==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1966343580300628525==--
