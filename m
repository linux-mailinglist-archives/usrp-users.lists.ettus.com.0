Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 498B0582A8D
	for <lists+usrp-users@lfdr.de>; Wed, 27 Jul 2022 18:20:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 80C6B3839A1
	for <lists+usrp-users@lfdr.de>; Wed, 27 Jul 2022 12:20:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658938851; bh=1wLiB3hAUjspL0Hhy13N66bAe5pUlTVbP+MAqjDJ2p0=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=KYz2ByY3m/g64DMGocN8XThsqdsrB9TtvzrvRshoj6Zs5ypAFtxs5EOKTBF/Mvk+0
	 zYwyHB0ilsCwOA0uMzZXu7Z9CN0iddiQVPVbi44KoNyXQIwTjJsLbJEjrmmEXFSLJU
	 VW9yCLrd3TtJIcUBuzt4C0Cig1b4hTym63JOxYHjWc1AmLnkRpV4CF/77LhVYgnVvN
	 eKQrZFPaK3uk0cfN8hwsehE0HYhqBnFY5VDjmaZz266sUsp1MXYrMStotcDR92dXiT
	 pqHlx6fxTc/3D1g78XlcED8n4GyUI6p5KLyg0PKjtzI5OtQSZYJ9FrKb/oqN7Nqo11
	 MLxZmUeDi+5hw==
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 6AE82383C77
	for <USRP-users@lists.ettus.com>; Wed, 27 Jul 2022 12:18:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="pDshB7DL";
	dkim-atps=neutral
Received: by mail-qv1-f53.google.com with SMTP id mh14so13264237qvb.1
        for <USRP-users@lists.ettus.com>; Wed, 27 Jul 2022 09:18:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=lMA/mp+mBWsaAuCwYGCKNdrvrt2+6rMJCJzFYb1zSAI=;
        b=pDshB7DLujoegYlhzQl7qzsgRSeVUNwHV84pjb/JvHPK8QWcrSMNQqU1jJ9RLzfJ5Y
         +Cn9maKOzNs8V0SU0hXV5p11Hc1T+9v5uawP22TbW+VABMZqP0mgZMJHP+gj3ln1t/wT
         hF1jLuwglXY5vzcJoZWvtkYZ102DTiVk5kTHFjZpqCpAlRhB7f6ieTvvw2sIsg/NJr3d
         EO7/Ji3IMFv4UCVhNjkJwMVN2x58ymy1vO1zP7urGDrbmmmVFk8f1KyzcwvTHo1PlkNd
         iwze4ZsUIF+44QYNJzfc7aUww7lMxMVai8WOChECxKFycA243+eizgWGPTgPdn58ZCPH
         a1vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=lMA/mp+mBWsaAuCwYGCKNdrvrt2+6rMJCJzFYb1zSAI=;
        b=HkVlmZeJbtdp0I0VQhJRdoPTJ4fRINRwcYtpVpQ372sZ0EFzEkEhi4TRipmPH8RFns
         9fR0vnoZRqzaw1ZJlSdaLsEKiQ4LMp4twWojbu+DK2wofWjjwEWtUUhcjNZ/bQmAz6kN
         uqkvRX43IQxUe75Hv9ndrzciVz0o4FJH9LO7fCMfT8fmxmt3rwiYwCMjw3tHSQlfb2T/
         waa7PkAbQttUi434O1VAUFSQQKva4taUmZyZ/IpHK42dIdHS2QRJhuA+BfHeAUu9O4Oh
         VUf5NjV30Vqeot/hMXm6AgrAn6o2Xd+1t+MfUL1t806kcGB7fMV9KVsxP942a3bhHDCk
         EeSw==
X-Gm-Message-State: AJIora9e+Ger9cVgtl0IM0tZJ4/nZbkOU4Nq3Q2KBUqdmJOGR/TSQkLw
	2Vfp3tUUhR7CpWfUf/LM80id1hyJ2Gk=
X-Google-Smtp-Source: AGRyM1uMX4mLc6BsASps4+fck5zp/wvqVHCLaUg8623qjxLwxNGDqtPqt0tR+/E8lQu/o5PSDcsW7A==
X-Received: by 2002:ad4:5d45:0:b0:474:7373:4f1f with SMTP id jk5-20020ad45d45000000b0047473734f1fmr3320376qvb.27.1658938707816;
        Wed, 27 Jul 2022 09:18:27 -0700 (PDT)
Received: from [192.168.2.201] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id bb33-20020a05622a1b2100b0031ee918e9f9sm11024161qtb.39.2022.07.27.09.18.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 09:18:27 -0700 (PDT)
Message-ID: <3f2322e2-899c-d9c9-ac96-0d3653663e46@gmail.com>
Date: Wed, 27 Jul 2022 12:18:26 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Federico Civerchia <federico.civerchia@sma-rty.com>
References: <3ee43cde-ca0f-074e-57a6-5b041cd1cc8e@sma-rty.com>
 <CAB__hTR2t4CRv_MrEH5ioTBoSC=77F4AhAuPDwyLaBc3vouStw@mail.gmail.com>
 <b95a1d8f-608f-ff79-1e44-3a79b2f6f889@gmail.com>
 <c7d470b2-ff35-b44a-995d-c4e82a8096ad@sma-rty.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <c7d470b2-ff35-b44a-995d-c4e82a8096ad@sma-rty.com>
Message-ID-Hash: VA3VV4ISWALWPBWKMFVZ67SIT6M5YHTZ
X-Message-ID-Hash: VA3VV4ISWALWPBWKMFVZ67SIT6M5YHTZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Suggested SFP+ for Ettus N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VA3VV4ISWALWPBWKMFVZ67SIT6M5YHTZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1485208978943807482=="

This is a multi-part message in MIME format.
--===============1485208978943807482==
Content-Type: multipart/alternative;
 boundary="------------h2SMJODBYS50oENdw6jGnL2W"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------h2SMJODBYS50oENdw6jGnL2W
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-07-27 12:15, Federico Civerchia wrote:
>
> Hi Rob, Marcus,
>
> thank you for your answers.
>
> Yes, I have packet loss with ping and also with iperf3 (considering=20
> udp) at low rates (500Mb, 1Gb).
> From the host side I can also see continuous disconnection and=20
> re-connection of the link. For the Intel X520-DA2 NIC, I have bought=20
> Intel SFP+ (E10GSFPSR) but this does not resolve the issue.
> I would like to clarify my setup, maybe it can help to find out what=20
> is going wrong:
>
>   * First setup:
>       o Dell PowerEdge R550 (2xXeon Gold) equipped with dual port
>         Broadcom BCM57414 NetXtreme-E 10Gb/25Gb.
>       o USRP Ettus N310
>       o 4x SFP+ FS transceiver at 850nm (SR)
>       o 2x LC/UPC-LC/UPC Duplex, Single mode Fiber patch cables
>   * Second setup:
>       o Dell Precision tower 3650 (Intel core i9) equipped with dual
>         port Intel X520-DA2 10Gb
>       o USRP Ettus N310
>       o 2x SFP+ FS transceiver at 850nm (SR)
>       o 2x Intel E10GSFPSR
>       o 2x LC/UPC-LC/UPC Duplex, Single mode Fiber patch cables
>
> For the USRP, I considered UHD 4.2.0, 4.0.0 and 3.15.0. All of them=20
> highlight an unstable connection (packet loss and flapping)
>
> Do you have other hints?
>
> Thank you
>
> Federico
>
>
Same thing is happening on both setups?=C2=A0=C2=A0 How long are your pat=
ch cables?


--------------h2SMJODBYS50oENdw6jGnL2W
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-07-27 12:15, Federico Civerchi=
a
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:c7d470b2-ff35-b44a-995d-c4e82a8096ad@sma-rty.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi Rob, Marcus,<br>
      </p>
      <p>thank you for your answers.</p>
      <p>Yes, I have packet loss with ping and also with iperf3
        (considering udp) at low rates (500Mb, 1Gb).<br>
        From the host side I can also see continuous disconnection and
        re-connection of the link. For the Intel X520-DA2 NIC, I have
        bought Intel SFP+ (E10GSFPSR) but this does not resolve the
        issue.<br>
        I would like to clarify my setup, maybe it can help to find out
        what is going wrong:</p>
      <ul>
        <li>First setup:</li>
        <ul>
          <li>Dell PowerEdge R550 (2xXeon Gold) equipped with dual port
            Broadcom BCM57414 NetXtreme-E 10Gb/25Gb. <br>
          </li>
          <li>USRP Ettus N310 <br>
          </li>
          <li>4x SFP+ FS transceiver at 850nm (SR)</li>
          <li>2x LC/UPC-LC/UPC Duplex, Single mode Fiber patch cables</li=
>
        </ul>
        <li> Second setup:</li>
        <ul>
          <li>Dell Precision tower 3650 (Intel core i9) equipped with
            dual port Intel X520-DA2 10Gb</li>
          <li>USRP Ettus N310</li>
          <li>2x SFP+ FS transceiver at 850nm (SR)</li>
          <li>2x Intel E10GSFPSR</li>
          <li>2x LC/UPC-LC/UPC Duplex, Single mode Fiber patch cables</li=
>
        </ul>
      </ul>
      <p>For the USRP, I considered UHD 4.2.0, 4.0.0 and 3.15.0. All of
        them highlight an unstable connection (packet loss and flapping)<=
/p>
      <p>Do you have other hints?</p>
      <p>Thank you</p>
      <p>Federico<br>
      </p>
      <br>
    </blockquote>
    Same thing is happening on both setups?=C2=A0=C2=A0 How long are your=
 patch
    cables?<br>
    <br>
    <br>
  </body>
</html>

--------------h2SMJODBYS50oENdw6jGnL2W--

--===============1485208978943807482==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1485208978943807482==--
