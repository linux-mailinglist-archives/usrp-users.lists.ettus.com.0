Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DD56FFB0A
	for <lists+usrp-users@lfdr.de>; Thu, 11 May 2023 22:06:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 94FBE380CE8
	for <lists+usrp-users@lfdr.de>; Thu, 11 May 2023 16:06:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683835560; bh=7fu+p979SUozbSxTGRSpYMDfnrhEz9+NQx6/jUlhjWY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=sXF4vjOtSlpA7J+/a/jJOvinLjuVzU4BCy27g1Xlye5+bb4SlA0drqZ4qxHtoZALq
	 zQISckQni7qyYrjAThDdUuWzPCExRGDuG6kY6Hoao8A2QdI12pvE+RCxlIOChXAuEC
	 M8h9CQkyEoP6FdFpgqrdgiY96WBmMHIhirkUgnTJhWGbiL6wWhCPPy3r25ejCip8IK
	 SNbhaJvdxR/cFIGrnYL6j88LoyGDJi5kKRneza7fmKkBjcHgrJq29jYXjuw2NBOIsw
	 qtBu6jqrzwX5L646tUfnlaIipHf5Yi5RcAE70a/bKvPn4pp7OnkjgtPcEvG8tEiCk5
	 ChXE+F2iUO/3Q==
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 419E93836CB
	for <usrp-users@lists.ettus.com>; Thu, 11 May 2023 16:05:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="psPK2Mbo";
	dkim-atps=neutral
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-3f4e7ce15c4so5554781cf.0
        for <usrp-users@lists.ettus.com>; Thu, 11 May 2023 13:05:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683835518; x=1686427518;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X5K6Qdq+/ny3flPHrP3GxVgj2mkjU/70RJ7bVxyN+zY=;
        b=psPK2MboEeeSDEaxeDioWj4KsTk1DxYkTLRx8HPjyucIO+RgqILTjygnx9RlNqAM4h
         PqnOTozDnn3xIpGUefGc+MM1r2sYDptUSel0nQwaVpLaRaieE2AZiY38eQ3xxHfH9xG1
         8PekurbtaP9TOv1q2srffkzw454oLCEb3do6qFeNV6KqwH4EWz/n/hYG0zUrAldSZiFY
         QVVBUjzQf9N1R3VCEJMft5pbQI5EiGniTbhkmsjtcSHYBZO9/1E40B9nuy3FoAmW8KQW
         HspsNx7OkH9z6yHB12am9IpnUcLgO9h+LB8t7HLfTs4y8wDP3iEmCSZxFPFEaRgSd84I
         Midg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683835518; x=1686427518;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=X5K6Qdq+/ny3flPHrP3GxVgj2mkjU/70RJ7bVxyN+zY=;
        b=DOk/31JvGagup79XPiKEYQ00OXN/D5moZsxP6adesDmqDM9O9xdwsPH1Lq75z/1ltG
         tV62kOAxzMo+PRVowFy5Fflg1ZQdzOH/YjDyCqX1R0bRa+945Fd2YBYbEuCCIBrircdc
         0W7O1oyOQRgqT4d4kB/mPK00ErcNuGoHOs2QTxn0Juw7FTnn2rfI89tzrgA92Sz8XiyY
         tQJsx/g4BaOCfxhHRlu0NCwX57nmvAVnDOL7Hpa5DSt+p2y4gNGv5LXkTU4/WEXkcsVA
         ns6vqrFE5eJuRvXnsdRB4W69uZ82exqJ21uevYZdkghPXojVc6/b3/L4Oebqq4zV6e1U
         i5Ow==
X-Gm-Message-State: AC+VfDyNTtybV1m8n7oh9uNH3EaztCj9Y1GWIV47qbtoba1VsJhjxNbk
	gE4j+6vd235KMi8NGGnwCJyc7BxHZ00=
X-Google-Smtp-Source: ACHHUZ4KGVXZtnfPvCMo7EJTVSs8wE9eQAvAlPc49DMcT7g+QwT9HwZMVriJbafnXeBOllz0QDhpmA==
X-Received: by 2002:ac8:7c4d:0:b0:3f1:a6d:d976 with SMTP id o13-20020ac87c4d000000b003f10a6dd976mr32536657qtv.48.1683835518280;
        Thu, 11 May 2023 13:05:18 -0700 (PDT)
Received: from [192.168.2.156] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id m23-20020ae9e017000000b0075911ca9e63sm459689qkk.129.2023.05.11.13.05.17
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 May 2023 13:05:17 -0700 (PDT)
Message-ID: <4ba55da4-0a59-ccfd-c6b0-445c5312a734@gmail.com>
Date: Thu, 11 May 2023 16:05:17 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <8Mh9f914K4i9wEzfygSuelQ4BRcQWbKoBzoaNOcfPYM@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <8Mh9f914K4i9wEzfygSuelQ4BRcQWbKoBzoaNOcfPYM@lists.ettus.com>
Message-ID-Hash: WSJJDRQA4TDCSZ4IJS7JF36Y2U7M7BTS
X-Message-ID-Hash: WSJJDRQA4TDCSZ4IJS7JF36Y2U7M7BTS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Minimal sample rate with X310 ?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WSJJDRQA4TDCSZ4IJS7JF36Y2U7M7BTS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3572421334816320084=="

This is a multi-part message in MIME format.
--===============3572421334816320084==
Content-Type: multipart/alternative;
 boundary="------------DIDKontjcrmlwjoytZnQoEsw"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------DIDKontjcrmlwjoytZnQoEsw
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
This may be of additional help:

https://kb.ettus.com/X300/X310#Clocking_and_Sampling_Rates

Also, the maximum decimation is 1024, not the 512 that I had previously=20
quoted.=C2=A0 Different generations of the FPGA DUC/DDC code
 =C2=A0 have had different limitations on maximum decimation, and I had=20
simply mis-remembered.



--------------DIDKontjcrmlwjoytZnQoEsw
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
    This may be of additional help:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/X300/=
X310#Clocking_and_Sampling_Rates">https://kb.ettus.com/X300/X310#Clocking=
_and_Sampling_Rates</a><br>
    <br>
    Also, the maximum decimation is 1024, not the 512 that I had
    previously quoted.=C2=A0 Different generations of the FPGA DUC/DDC co=
de<br>
    =C2=A0 have had different limitations on maximum decimation, and I ha=
d
    simply mis-remembered.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------DIDKontjcrmlwjoytZnQoEsw--

--===============3572421334816320084==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3572421334816320084==--
