Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B64A585024
	for <lists+usrp-users@lfdr.de>; Fri, 29 Jul 2022 14:40:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B0C75380F97
	for <lists+usrp-users@lfdr.de>; Fri, 29 Jul 2022 08:40:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659098430; bh=iNjwUgErSATvzt3btnJS5Nkbhtuy8/tUHxZhHEv/0UQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=EKRRJmJdSgnG/m0m/ifZ6KYZnIcQgBWT2IB71TJPsqDT7foWcxNDCyD6tDHLgagAG
	 rpnkLW7T3+VmWiwOfAFOYrS3NaFH3cD5r4MpI6ehFfW3ZGNSGjk9D94vCEv+DtezKb
	 0+Z9d/8otLUQeoYQQ5t2yjWuDWUg6o6/FpLwbMtxwR/RTgwAIbApLAhoqG0u8LnJCH
	 A7B4OA1rwCB+jsauRQ8KX0jO9/u1G1pQZMuVX5m+b6bGXbDkjm4zX+3iRlc4uHl5Gj
	 MTIikWyXbLXZGEAKlzrGRWy0FgxtP+QOy8WCsCRtXUnXxp9e4lZfNQnv/0QvdvWn61
	 E/EVi1PrEGIOQ==
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id CEBE2383EB2
	for <usrp-users@lists.ettus.com>; Fri, 29 Jul 2022 08:37:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ov12Gu9B";
	dkim-atps=neutral
Received: by mail-qt1-f174.google.com with SMTP id u12so3203541qtk.0
        for <usrp-users@lists.ettus.com>; Fri, 29 Jul 2022 05:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc;
        bh=pIwt3XyXQB6HJAtTRxX7IljSvpZzgUo1oLWFPWZr75k=;
        b=Ov12Gu9BTtY0/JwZBql4sjnubkNUzmDiATz3fY3AU3N+yP06IuCFdA0Y6/tnyD7HM7
         mkxjwaxzjgPLl5Otc2MzJB5FQ96Oo1v61QbYosDRwkUelIcUmMq3vhWh63iPEWKpTPkF
         Cn4Aska5rPDNw9H3xAwJQ4g+giQ/XovQC2knt+Wtn8Isz86VuKHUTcIZiSi0Xx/dj2O2
         jcb7ocgxIcYD1TTjVM+ifXwu/lQrnxkMP0/+yZDGw37+J5DJhlWLDBuM+7Uld547VV8Y
         UelLgbLEb3JYHp57SGoYY/XLEpdHd2tgkzNAY8bX0+LZsObdMrSfX85Zo8AZPc6JgzCJ
         mcsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc;
        bh=pIwt3XyXQB6HJAtTRxX7IljSvpZzgUo1oLWFPWZr75k=;
        b=rPgO7HBE/bqdv+kPlfFRab123/Oi9NRXonWb4kQH9J1NmxxM0+vMXPBD+vitcZB4Pe
         wvixAIcCrbzrcLZJ8vhmtHAIyKz2/OwcJPXvv6ukbUIG7NrMHnkZ3PHPwI+n2pCiUiq4
         8FwpR0waKAvo4XypRBuzlk68XOMD6Mzahckg8ngSIylR8qJVoAF99/yQbibaBU7TYbce
         1XwkfuW55X23MjoHvC4wZrPWhxEjg1TI0eIdt8W4Gtsanbqr8GuVQ5+Yj8SRv3/FmILG
         Si8zRpAG1FD3i+0xiwjKTqn+uOZN5r6CtF4I2x92yDpLll/htBVRkHF6Nv1wAigo0e5s
         ogKw==
X-Gm-Message-State: AJIora8AYRlY7Bkz+t4WqoYDm8VyhvhLOB8kNdCeAXlmdDP12xymPWtI
	t5j7nNG35py+WDNFIpK5J9I=
X-Google-Smtp-Source: AGRyM1vp3n2wt3hgxVWzrxeCwH4tK+pPYsZQxNxbVMCmCSV7cTmFfOM12Wb9VS93kgGFz6eXGro4Qg==
X-Received: by 2002:ac8:5a0a:0:b0:31e:f01c:5b62 with SMTP id n10-20020ac85a0a000000b0031ef01c5b62mr3050813qta.364.1659098255158;
        Fri, 29 Jul 2022 05:37:35 -0700 (PDT)
Received: from [192.168.2.194] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id h3-20020ae9ec03000000b006af10bd3635sm2298272qkg.57.2022.07.29.05.37.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jul 2022 05:37:34 -0700 (PDT)
Message-ID: <cb145508-d56b-e6c7-626b-68dd092a2803@gmail.com>
Date: Fri, 29 Jul 2022 08:37:33 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Federico Civerchia <federico.civerchia@sma-rty.com>,
 usrp-users@lists.ettus.com
References: <3ee43cde-ca0f-074e-57a6-5b041cd1cc8e@sma-rty.com>
 <7b075b78-9c90-6c9f-6f4f-78736410a852@gmail.com>
 <bebe69c5-d819-4b2d-62dd-d3cd68ea98d4@sma-rty.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <bebe69c5-d819-4b2d-62dd-d3cd68ea98d4@sma-rty.com>
Message-ID-Hash: G45PLVEH7KN66H5L3MQBNBXLWOKHW6HA
X-Message-ID-Hash: G45PLVEH7KN66H5L3MQBNBXLWOKHW6HA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Suggested SFP+ for Ettus N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G45PLVEH7KN66H5L3MQBNBXLWOKHW6HA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2882628796429340024=="

This is a multi-part message in MIME format.
--===============2882628796429340024==
Content-Type: multipart/alternative;
 boundary="------------NwISpBAEmcpxvaSzeSbbZaBY"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------NwISpBAEmcpxvaSzeSbbZaBY
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-07-29 07:55, Federico Civerchia wrote:
>
> Yes, the issue was related to the optical cables in single mode. Using=20
> MMF cables resolved the problem.
>
> Thank you for your support.
>
> Federico
>
Tha's excellent news!=C2=A0 Glad it worked out for you.


> On 28/07/22 21:22, Marcus D. Leech wrote:
>> On 2022-07-27 11:06, Federico Civerchia wrote:
>>>
>>> Dear Community,
>>>
>>> I have recently bought two new Ettus N310 and I have started to=20
>>> verify the connection with the hosts. The NIC interfaces mounted in=20
>>> the hosts are Intel X520-DA2 and Broadcom BCM57414 NetXtreme-E=20
>>> 10Gb/25Gb.
>>>
>>> Unfortunately, the benchmark for both USRP fails or I have errors=20
>>> like "SSSSSSS" or "[D00:00:06.162407669] Detected Rx sequence error."
>>> I have also checked with ping but I have packet loss even with the=20
>>> ICMP protocol. I investigated a little bit and it seems that the=20
>>> problem may be related to the SFP+ I have mounted in the N310. The=20
>>> modules are 850nm from FS (here is the link=20
>>> https://www.fs.com/products/74668.html?attribute=3D106&id=3D287339) a=
nd=20
>>> the same are mounted in the NICs at the hosts side.
>>>
>>> Do you have some hints about this issue? Could you please suggest me=20
>>> SFP+ modules that can work without any issue? Ettus sends the N310=20
>>> with a SFP 1Gbps from Avago, I guess the 10Gb version from this=20
>>> provider (AFBR-710ISMZ=20
>>> <https://www.broadcom.com/products/fiber-optic-modules-components/net=
working/optical-transceivers/sfpplus/afbr-710ismz>)=20
>>> can work as well. Could you please confirm me this?
>>>
>>> Thank you.
>>>
>>> Best regards,
>>>
>>> Federico
>>>
>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list --usrp-users@lists.ettus.com
>>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>> SOmethign I noitced is that your transceivers are designed for MMF=20
>> cable, and I think you said that you had single-mode cable. I don't=20
>> know enough about fiber systems to know
>> =C2=A0 whether this would be a problem or not.
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list --usrp-users@lists.ettus.com
>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------NwISpBAEmcpxvaSzeSbbZaBY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-07-29 07:55, Federico Civerchi=
a
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:bebe69c5-d819-4b2d-62dd-d3cd68ea98d4@sma-rty.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Yes, the issue was related to the optical cables in single
        mode. Using MMF cables resolved the problem.</p>
      <p>Thank you for your support.</p>
      <p>Federico</p>
    </blockquote>
    Tha's excellent news!=C2=A0 Glad it worked out for you.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:bebe69c5-d819-4b2d-62dd-d3cd68ea98d4@sma-rty.com">
      <div class=3D"moz-cite-prefix">On 28/07/22 21:22, Marcus D. Leech
        wrote:<br>
      </div>
      <blockquote type=3D"cite"
        cite=3D"mid:7b075b78-9c90-6c9f-6f4f-78736410a852@gmail.com">
        <meta http-equiv=3D"Content-Type" content=3D"text/html;
          charset=3DUTF-8">
        <div class=3D"moz-cite-prefix">On 2022-07-27 11:06, Federico
          Civerchia wrote:<br>
        </div>
        <blockquote type=3D"cite"
          cite=3D"mid:3ee43cde-ca0f-074e-57a6-5b041cd1cc8e@sma-rty.com">
          <meta http-equiv=3D"content-type" content=3D"text/html;
            charset=3DUTF-8">
          <p>Dear Community,</p>
          <p>I have recently bought two new Ettus N310 and I have
            started to verify the connection with the hosts. The NIC
            interfaces mounted in the hosts are Intel X520-DA2 and
            Broadcom BCM57414 NetXtreme-E 10Gb/25Gb.<br>
          </p>
          <p>Unfortunately, the benchmark for both USRP fails or I have
            errors like "SSSSSSS" or "[D00:00:06.162407669] Detected Rx
            sequence error." <br>
            I have also checked with ping but I have packet loss even
            with the ICMP protocol. I investigated a little bit and it
            seems that the problem may be related to the SFP+ I have
            mounted in the N310. The modules are 850nm from FS (here is
            the link <a class=3D"moz-txt-link-freetext"
href=3D"https://www.fs.com/products/74668.html?attribute=3D106&amp;id=3D2=
87339"
              moz-do-not-send=3D"true">https://www.fs.com/products/74668.=
html?attribute=3D106&amp;id=3D287339</a>)
            and the same are mounted in the NICs at the hosts side. <br>
          </p>
          <p>Do you have some hints about this issue? Could you please
            suggest me SFP+ modules that can work without any issue?
            Ettus sends the N310 with a SFP 1Gbps from Avago, I guess
            the 10Gb version from this provider (<a
              moz-do-not-send=3D"true"
href=3D"https://www.broadcom.com/products/fiber-optic-modules-components/=
networking/optical-transceivers/sfpplus/afbr-710ismz">AFBR-710ISMZ</a>)
            can work as well. Could you please confirm me this?</p>
          <p>Thank you.</p>
          <p>Best regards,</p>
          <p>Federico<br>
          </p>
          <p><br>
          </p>
          <p><br>
          </p>
          <br>
          <fieldset class=3D"moz-mime-attachment-header"></fieldset>
          <pre class=3D"moz-quote-pre" wrap=3D"">________________________=
_______________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated moz-txt-l=
ink-freetext" href=3D"mailto:usrp-users@lists.ettus.com" moz-do-not-send=3D=
"true">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated moz-=
txt-link-freetext" href=3D"mailto:usrp-users-leave@lists.ettus.com" moz-d=
o-not-send=3D"true">usrp-users-leave@lists.ettus.com</a>
</pre>
        </blockquote>
        SOmethign I noitced is that your transceivers are designed for
        MMF cable, and I think you said that you had single-mode cable.=C2=
=A0
        I don't know enough about fiber systems to know<br>
        =C2=A0 whether this would be a problem or not.<br>
        <br>
        <br>
        <br>
        <fieldset class=3D"moz-mime-attachment-header"></fieldset>
        <pre class=3D"moz-quote-pre" wrap=3D"">__________________________=
_____________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated moz-txt-l=
ink-freetext" href=3D"mailto:usrp-users@lists.ettus.com" moz-do-not-send=3D=
"true">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated moz-=
txt-link-freetext" href=3D"mailto:usrp-users-leave@lists.ettus.com" moz-d=
o-not-send=3D"true">usrp-users-leave@lists.ettus.com</a>
</pre>
      </blockquote>
    </blockquote>
    <br>
  </body>
</html>

--------------NwISpBAEmcpxvaSzeSbbZaBY--

--===============2882628796429340024==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2882628796429340024==--
