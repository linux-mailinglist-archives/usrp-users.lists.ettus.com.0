Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5498C8C050C
	for <lists+usrp-users@lfdr.de>; Wed,  8 May 2024 21:30:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3DD2F385B50
	for <lists+usrp-users@lfdr.de>; Wed,  8 May 2024 15:30:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1715196654; bh=QTFRbgf/NMSALnMCu/0GK+qI965eJDqNeKH/9BB2zB4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=WatWdO1XqqcpKy9LJEb3Qyt9BfUb0VpGg5a1qLOVggNYLOA+QlZM/2nZ1uXgdNRIz
	 5pclcnaOahHrKC2LZDcBOzs3NnePtPrLDO/eXsv4PEBG/9oxWE8HD+o3JLd7rDmJ/0
	 GsokF4AkBHuclw9OYwUjkgVbXnwiP3wccrpnfHbxN0tLnlEpbhwfKKeGoxp1ryHhvV
	 xrVMshzYARJGdCyhKy70I9CsnIk0cVCbFKxXanDOWnGCiPaiAucvtOhOpus/EL2Ipo
	 9eSMrEhV2oXJEvBOrCxfmuToEWXBh06AbRw7Rci8hy+OLCM/zhXf4HkDRIeKB2ndkf
	 Wc7lBAHpY8zSw==
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 7283E3854E4
	for <usrp-users@lists.ettus.com>; Wed,  8 May 2024 15:28:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dNaMZUw5";
	dkim-atps=neutral
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-7928c54e945so4972885a.2
        for <usrp-users@lists.ettus.com>; Wed, 08 May 2024 12:28:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715196520; x=1715801320; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tz1ftmS2l+8EUb5KQbaIotkhGkWXLFIALwepBpfsFRc=;
        b=dNaMZUw5da7Gjg/6Ttv38/f6UKlFr5lMjQlQmqQG6po6kMflWsSuwCoUuY0FIy3S09
         s+FIIrcyLcBokysIjB6s27nnodzUm8eJR+VUHV4pSKNcvD9TxuP0S+BZRYrqcLXusWyn
         6NpJdGNETWrEUkmq7daNm258VYxEg4gIVk8Xai3fbsA0JMnj76maTer7SAvRPTOXGksI
         srNhVMwvt7H8Ucnw2eLFrokDiBOOBD621vuZPu5mm94/scX6VsPRpPaMTc4LcCfn5CD2
         4MoZbJTkkf5bYrhK17SNSldXKX6Ww9p73h3aia51We6Gvcf4LWTrhMLC3wD2qeQIfB5T
         Hg4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715196520; x=1715801320;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Tz1ftmS2l+8EUb5KQbaIotkhGkWXLFIALwepBpfsFRc=;
        b=R3sK6tOycSaVNP2GEiX9GnnrFXQ7puyIVKBehjYJJM10bVBtK4o22buXBMHbaeIu3g
         rcwNYKWgp7VNMlZOGCbelbAXMDslWSQo1CrqN2o/oPZvcjDklS60L0BYMYHkKt/gaXke
         83GyFdc3dXxOU7Q/gRK7+paszfuJjRPLamWYzhuJ4gfCTzzCFIgMthHwIko0CxPdnyC7
         PX+wR7/8MbVpkZbM41I8opqYgIbwbdLfcyJXJ2lkgV/+AE+pc/pS0V7x1PcD7R1gT6Jj
         UHpwE7m6HfLzk8WrqaB+xqoJWw5L/+EtGk1n213MS/S4XRACpt3gV3CgAGst6fauScd6
         dhWA==
X-Gm-Message-State: AOJu0YxDzvtH96X9nRLNFxSgp/0f63wvYMffvO/o6D6bc8pv5e4BOnCa
	nmTiuL1BLN1sJz6YvQRT1S7Cq4o7SV9Mxt8/MFsEb24X9b0jnYksdtt+Ug==
X-Google-Smtp-Source: AGHT+IFlxdSq4Yb61AvllDifJrZs/fKXSorlGfmtF0SdEJubN3labTDLSDR9LfREhZ0lXmE19QP0IQ==
X-Received: by 2002:a05:622a:301:b0:43a:e61a:ddde with SMTP id d75a77b69052e-43dbef8aef5mr41078161cf.48.1715196520458;
        Wed, 08 May 2024 12:28:40 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-07-174-93-0-192.dsl.bell.ca. [174.93.0.192])
        by smtp.googlemail.com with ESMTPSA id o18-20020ac86992000000b0043d4245dd4csm4675776qtq.84.2024.05.08.12.28.39
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 May 2024 12:28:40 -0700 (PDT)
Message-ID: <e316f0de-c616-4e65-8b59-25d94787ee66@gmail.com>
Date: Wed, 8 May 2024 15:28:38 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <SJ0PR09MB91266A91F40313213FF95E77ECE52@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <SJ0PR09MB91266A91F40313213FF95E77ECE52@SJ0PR09MB9126.namprd09.prod.outlook.com>
Message-ID-Hash: BDQ5D5YHU66APEY5MABX4CHIPI74J6HE
X-Message-ID-Hash: BDQ5D5YHU66APEY5MABX4CHIPI74J6HE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Power output on the N321 LO OUT
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BDQ5D5YHU66APEY5MABX4CHIPI74J6HE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1726686201916370765=="

This is a multi-part message in MIME format.
--===============1726686201916370765==
Content-Type: multipart/alternative;
 boundary="------------QTuNQlElwGhS3w0EetcZsbZm"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------QTuNQlElwGhS3w0EetcZsbZm
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/05/2024 15:21, Eugene Grayver wrote:
> What power level can I expect on the N321 LO output at 2 GHz? Thanks.
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Somewhere between +3dBm and +7dBm -- enough to drive the LO *IN* ports 
on N320, etc.


--------------QTuNQlElwGhS3w0EetcZsbZm
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 08/05/2024 15:21, Eugene Grayver
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:SJ0PR09MB91266A91F40313213FF95E77ECE52@SJ0PR09MB9126.namprd09=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        What power level can I expect on the N321 LO output at 2 GHz?=C2=A0
        Thanks.</div>
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
    Somewhere between +3dBm and +7dBm -- enough to drive the LO *IN*
    ports on N320, etc.<br>
    <br>
    <br>
  </body>
</html>

--------------QTuNQlElwGhS3w0EetcZsbZm--

--===============1726686201916370765==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1726686201916370765==--
