Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 667EA3C1B39
	for <lists+usrp-users@lfdr.de>; Thu,  8 Jul 2021 23:48:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5B40438403D
	for <lists+usrp-users@lfdr.de>; Thu,  8 Jul 2021 17:48:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="hwdid8nV";
	dkim-atps=neutral
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by mm2.emwd.com (Postfix) with ESMTPS id AACD5383E56
	for <usrp-users@lists.ettus.com>; Thu,  8 Jul 2021 17:47:49 -0400 (EDT)
Received: by mail-wm1-f44.google.com with SMTP id n33so5029784wms.1
        for <usrp-users@lists.ettus.com>; Thu, 08 Jul 2021 14:47:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=+KS+HyBtG5pzMuM/zaOCc4n70cVGBIlCDKLZ8u+1fjo=;
        b=hwdid8nVMYjRyuCupHxQqZQopD2M43qhMI4474sESY7Hl4Qe7B77fcMjcwIzHznhWz
         BVn6MHk3qvkxiPlWLXJ4RHvbUVNPEcwYS7d3Pl9LSW3E80BFOI/NMZbTJJ6e+tjntGob
         TGHgJw9aeyDEyU+v7wjTNTusOGDx0hSlR9ihLrvRRxtjhtlB0hH2Qg0TMqPzWuVQG917
         3gwlP/+vlrqnnWT1mKZ2jiYybhItD3f09+7M66cUMr0FysT1R7cpsOITCXfIq7zXfgUU
         quGlqBLGf9OVKhb7i2kNfqcDRF/2abswIK4IexWQik3SSuGHBExhZoVFIyIJe1fgEJzS
         /zlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=+KS+HyBtG5pzMuM/zaOCc4n70cVGBIlCDKLZ8u+1fjo=;
        b=m4VLoHIbJ+ypn5SoVzoNvPhw7LxwnhE8hJ+LJcI+TVzHKYZhIxYtdoALJxs71iIKBb
         +6w1T8kTXlCF6JbgJ2wRY9QPk6yzA/z4PCybb+BJ5F8HrHiuo1IGnJFJ8ELzJtRKxFf5
         qJMQ6YL+yMRj9Ng2xOtivFXqT5q6WsqMrAje1wpFEEW99aawzpOUdkRfmnQ0x/RwBhL1
         aeoF9bsVA1DITJCs2LR0s3U3j1e8hHdM/E/jsOdbQwK6K7c7i3jtl77v7zG8lYUR+LZZ
         m32LC3SNMKGffYAnm/8B7Wl/nvTReCkVAqkItP3nl7EPEKILw8o0pa0/VRAw7QOpcuMc
         pZ5Q==
X-Gm-Message-State: AOAM532Zydg7ekgO/usjiC/qM+HmNsugPoFR3GOwTZV4fEtIAJWXjpdy
	BMuR3U74kO49MChCLzK5v7QDYI0JHre6PWNm
X-Google-Smtp-Source: ABdhPJyNL8NtsWMZClqNu12mjyIvUwlBbPjPQVb+e6I1If2hZU9t9DHGNrFPcD+kH2qw7Lg/WawZdg==
X-Received: by 2002:a7b:c042:: with SMTP id u2mr33843492wmc.86.1625780868414;
        Thu, 08 Jul 2021 14:47:48 -0700 (PDT)
Received: from [192.168.128.8] (HSI-KBW-46-223-163-85.hsi.kabel-badenwuerttemberg.de. [46.223.163.85])
        by smtp.gmail.com with ESMTPSA id o11sm11090302wmc.2.2021.07.08.14.47.47
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jul 2021 14:47:47 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <026701d7743f$12e04bd0$38a0e370$@gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Message-ID: <d836560f-3bc5-65df-c3a6-913262f9eac8@ettus.com>
Date: Thu, 8 Jul 2021 23:47:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <026701d7743f$12e04bd0$38a0e370$@gmail.com>
Content-Language: en-US
Message-ID-Hash: UYOZCSTJJ3ALGSAT6H24RQC3Z3I6GLD7
X-Message-ID-Hash: UYOZCSTJJ3ALGSAT6H24RQC3Z3I6GLD7
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Initialize LO Frequency
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UYOZCSTJJ3ALGSAT6H24RQC3Z3I6GLD7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable

That's not possible; you'll have to use the set_rx_frequency / set_tx_frequ=
ency API.

DISCLAIMER: Any attached Code is provided As Is. It has not been tested or =
validated as a product, for use in a deployed application or system, or for=
 use in hazardous environments. You assume all risks for use of the Code. U=
se of the Code is subject to terms of the licenses to the UHD or RFNoC code=
 with which the Code is used. Standard licenses to UHD and RFNoC can be fou=
nd at https://www.ettus.com/sdr-software/licenses/.

NI will only perform services based on its understanding and condition that=
 the goods or services (i) are not for the use in the production or develop=
ment of any item produced, purchased, or ordered by any entity with a footn=
ote 1 designation in the license requirement column of Supplement No. 4 to =
Part 744, U.S. Export Administration Regulations and (ii) such a company is=
 not a party to the transaction.  If our understanding is incorrect, please=
 notify us immediately because a specific authorization may be required fro=
m the U.S. Commerce Department before the transaction may proceed further.

On 08.07.21 23:20, zhang.weit3@gmail.com wrote:
>
> Hi all,
>
> =A0
>
> I am playing with a B210. I noticed the LO TX/RX frequency is initialized=
 to 1.0GHz
> whenever the USRP object is created in Python by /uhd.usrp.MultiUSRP/. I =
am trying to
> have a different initial frequency, for instance 700MHz, which means that=
 the LO will
> always operate at 700MHz whenever the USRP object is created. Note I do n=
ot want to call
> any other API functions after the USRP initialization. Do anyone know how=
 I can change
> the initial LO frequency? Thank you very much for your sharing in advance!
>
> =A0
>
> =A0
>
> Thank you,
>
> Weite
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
