Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B11582AC9
	for <lists+usrp-users@lfdr.de>; Wed, 27 Jul 2022 18:24:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DBBC1383C76
	for <lists+usrp-users@lfdr.de>; Wed, 27 Jul 2022 12:24:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658939082; bh=V2zsdbhMV8Y4UKvGg5ZiTiMgJ6ThX+pB8JFkyiKuj7Q=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=QloMMK5pH+XKzH33Q7l01a2msJ/Ws1L7JrQ6epQ0BcTYvhDorsciBRtI+oK0v6oTx
	 womd/G+mhzFqRGVi8iMvhSFMhsaTv/Y9z6Iw4oM0hTzAerAnXWcuUjiHIjesAd0OtF
	 iop3c4ZGzwAlVqEpylk99ds1ydG26Nivft1k4y4t8MYIkY2yVpT2Wvi73ayqXP0k+w
	 9deHANMh+zMGhhDHRr41haQQYYAzEw14c+3KCJOK+QZxHGHuwMMz2IL1N5gaPayLJA
	 /tFwkWKARisvFy97ZXFI3q+8c9RpXO8k8/EWYc8BbuNtnMtBGDJi6Gv/0B3hnAY8az
	 jqtCzwqWdd7dA==
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 2A45638003A
	for <USRP-users@lists.ettus.com>; Wed, 27 Jul 2022 12:22:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=sma-rty-com.20210112.gappssmtp.com header.i=@sma-rty-com.20210112.gappssmtp.com header.b="Qwzg5PgG";
	dkim-atps=neutral
Received: by mail-ed1-f51.google.com with SMTP id i13so12958145edj.11
        for <USRP-users@lists.ettus.com>; Wed, 27 Jul 2022 09:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sma-rty-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=/9KFImX39mrClrm3Ah6pb+3q1Rlk1InY5L4fJ2hc7J4=;
        b=Qwzg5PgGXEkNo5f361ANZ1Q1EllFQJ1/vkM5VGfQwgnhKBVInXPdQfXk7etMTDcvKS
         s4wFDy6LKmZ4BqztKCwQU3z2Fz0q8GjCbVmcuD3+bmBU5kw2ThCRDJOhzYDnL81eZgok
         goxyD0pQxNYQEnrq7dIQr5DvKAtvmhIRT5X7P6t51j/sr90SWyVPPZdPNFGDGyYnlfcP
         Db+G+m7rCZ6uECrn+TZcgy1NBCHTKDZKQMjSpQnaQSHwYac3GcM2i6nqnGHDdatxhdJG
         21eo1/7fHXygxpaoI/KC8i+UZL+c3jI9vLiZxTrVhrQhtNw/zfeXgadLjOwTnd+YLbyb
         Y0Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=/9KFImX39mrClrm3Ah6pb+3q1Rlk1InY5L4fJ2hc7J4=;
        b=g7UjznarDR6T8XEChJsvOAVKPW3iO62v/HzNis8KXBdQ5VVsmZ14BDCzYXrQ8VdK//
         ujE2A5wWn5plxhv+6jvm0c+OtHkUOnhGaNaHyZcDjT3ztrrg7c1pJXyXFKQacPKbESCX
         UGC2EsaL+govwLx8qVOkdmsmE6KYAMPJXdx5DJQ06m2feBK3BdLbg9qR+bfIZ/LzxaJE
         CGE9BmoGrI21id2gwjs7JWzZsr5r5RkVerPWlOfO4KR/m/rjzhjiFCIh+Y1Ke7B2dlMI
         tkh06UAySMfp+Bjn0Wg1dYfta+Kppy2ou1gPpS00fwdOU39da0PG8HrZpylgZpaQDPnL
         ClFw==
X-Gm-Message-State: AJIora9Dq2GSFRnZsEDKFqA3Wwrkj1aEUOObBNjy2A8pQdwDh5jdkQS5
	3twwp/4rf2giQMx62BbuIH3qwA==
X-Google-Smtp-Source: AGRyM1sCM48ojU1SSby29o8sFHI+Lpugn++fa7JPhDLovufrbMI5shHu8BWoWUPI/DfJUjSwsdfmPQ==
X-Received: by 2002:a05:6402:3481:b0:43c:460:731c with SMTP id v1-20020a056402348100b0043c0460731cmr15267064edc.413.1658938921905;
        Wed, 27 Jul 2022 09:22:01 -0700 (PDT)
Received: from [192.168.1.21] ([151.30.128.219])
        by smtp.gmail.com with ESMTPSA id ca17-20020aa7cd71000000b0043c92c44c53sm1932392edb.93.2022.07.27.09.22.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 09:22:01 -0700 (PDT)
Message-ID: <259b855b-6950-9108-3a4c-59235a5f2592@sma-rty.com>
Date: Wed, 27 Jul 2022 18:22:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
References: <3ee43cde-ca0f-074e-57a6-5b041cd1cc8e@sma-rty.com>
 <CAB__hTR2t4CRv_MrEH5ioTBoSC=77F4AhAuPDwyLaBc3vouStw@mail.gmail.com>
 <b95a1d8f-608f-ff79-1e44-3a79b2f6f889@gmail.com>
 <c7d470b2-ff35-b44a-995d-c4e82a8096ad@sma-rty.com>
 <3f2322e2-899c-d9c9-ac96-0d3653663e46@gmail.com>
From: Federico Civerchia <federico.civerchia@sma-rty.com>
In-Reply-To: <3f2322e2-899c-d9c9-ac96-0d3653663e46@gmail.com>
Message-ID-Hash: XI5674MLTTIKZNZ6SMSKZOLP7ZGMGHG5
X-Message-ID-Hash: XI5674MLTTIKZNZ6SMSKZOLP7ZGMGHG5
X-MailFrom: federico.civerchia@sma-rty.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Suggested SFP+ for Ettus N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XI5674MLTTIKZNZ6SMSKZOLP7ZGMGHG5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5366576303216982348=="

This is a multi-part message in MIME format.
--===============5366576303216982348==
Content-Type: multipart/alternative;
 boundary="------------Nq4JzQCaycK00vb6T21TxDMp"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Nq4JzQCaycK00vb6T21TxDMp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Yes, errors with UHD benchmarks, ping packet loss and iperf3 packet loss=20
on both setups.

The patch cables are new and 3mt long (always bought from FS)

Federico

On 27/07/22 18:18, Marcus D. Leech wrote:
> On 2022-07-27 12:15, Federico Civerchia wrote:
>>
>> Hi Rob, Marcus,
>>
>> thank you for your answers.
>>
>> Yes, I have packet loss with ping and also with iperf3 (considering=20
>> udp) at low rates (500Mb, 1Gb).
>> From the host side I can also see continuous disconnection and=20
>> re-connection of the link. For the Intel X520-DA2 NIC, I have bought=20
>> Intel SFP+ (E10GSFPSR) but this does not resolve the issue.
>> I would like to clarify my setup, maybe it can help to find out what=20
>> is going wrong:
>>
>>   * First setup:
>>       o Dell PowerEdge R550 (2xXeon Gold) equipped with dual port
>>         Broadcom BCM57414 NetXtreme-E 10Gb/25Gb.
>>       o USRP Ettus N310
>>       o 4x SFP+ FS transceiver at 850nm (SR)
>>       o 2x LC/UPC-LC/UPC Duplex, Single mode Fiber patch cables
>>   * Second setup:
>>       o Dell Precision tower 3650 (Intel core i9) equipped with dual
>>         port Intel X520-DA2 10Gb
>>       o USRP Ettus N310
>>       o 2x SFP+ FS transceiver at 850nm (SR)
>>       o 2x Intel E10GSFPSR
>>       o 2x LC/UPC-LC/UPC Duplex, Single mode Fiber patch cables
>>
>> For the USRP, I considered UHD 4.2.0, 4.0.0 and 3.15.0. All of them=20
>> highlight an unstable connection (packet loss and flapping)
>>
>> Do you have other hints?
>>
>> Thank you
>>
>> Federico
>>
>>
> Same thing is happening on both setups?=C2=A0=C2=A0 How long are your p=
atch cables?
>
>
--------------Nq4JzQCaycK00vb6T21TxDMp
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Yes, errors with UHD benchmarks, ping packet loss and iperf3
      packet loss on both setups.<br>
    </p>
    <p>The patch cables are new and 3mt long (always bought from FS)</p>
    <p>Federico<br>
    </p>
    <div class=3D"moz-cite-prefix">On 27/07/22 18:18, Marcus D. Leech
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:3f2322e2-899c-d9c9-ac96-0d3653663e46@gmail.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"moz-cite-prefix">On 2022-07-27 12:15, Federico
        Civerchia wrote:<br>
      </div>
      <blockquote type=3D"cite"
        cite=3D"mid:c7d470b2-ff35-b44a-995d-c4e82a8096ad@sma-rty.com">
        <meta http-equiv=3D"Content-Type" content=3D"text/html;
          charset=3DUTF-8">
        <p>Hi Rob, Marcus,<br>
        </p>
        <p>thank you for your answers.</p>
        <p>Yes, I have packet loss with ping and also with iperf3
          (considering udp) at low rates (500Mb, 1Gb).<br>
          From the host side I can also see continuous disconnection and
          re-connection of the link. For the Intel X520-DA2 NIC, I have
          bought Intel SFP+ (E10GSFPSR) but this does not resolve the
          issue.<br>
          I would like to clarify my setup, maybe it can help to find
          out what is going wrong:</p>
        <ul>
          <li>First setup:</li>
          <ul>
            <li>Dell PowerEdge R550 (2xXeon Gold) equipped with dual
              port Broadcom BCM57414 NetXtreme-E 10Gb/25Gb. <br>
            </li>
            <li>USRP Ettus N310 <br>
            </li>
            <li>4x SFP+ FS transceiver at 850nm (SR)</li>
            <li>2x LC/UPC-LC/UPC Duplex, Single mode Fiber patch cables</=
li>
          </ul>
          <li> Second setup:</li>
          <ul>
            <li>Dell Precision tower 3650 (Intel core i9) equipped with
              dual port Intel X520-DA2 10Gb</li>
            <li>USRP Ettus N310</li>
            <li>2x SFP+ FS transceiver at 850nm (SR)</li>
            <li>2x Intel E10GSFPSR</li>
            <li>2x LC/UPC-LC/UPC Duplex, Single mode Fiber patch cables</=
li>
          </ul>
        </ul>
        <p>For the USRP, I considered UHD 4.2.0, 4.0.0 and 3.15.0. All
          of them highlight an unstable connection (packet loss and
          flapping)</p>
        <p>Do you have other hints?</p>
        <p>Thank you</p>
        <p>Federico<br>
        </p>
        <br>
      </blockquote>
      Same thing is happening on both setups?=C2=A0=C2=A0 How long are yo=
ur patch
      cables?<br>
      <br>
      <br>
    </blockquote>
  </body>
</html>

--------------Nq4JzQCaycK00vb6T21TxDMp--

--===============5366576303216982348==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5366576303216982348==--
