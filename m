Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A36359FC8
	for <lists+usrp-users@lfdr.de>; Fri,  9 Apr 2021 15:27:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 248143840A2
	for <lists+usrp-users@lfdr.de>; Fri,  9 Apr 2021 09:27:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="E1o9nyNu";
	dkim-atps=neutral
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 2CD80383B3C
	for <usrp-users@lists.ettus.com>; Fri,  9 Apr 2021 09:26:31 -0400 (EDT)
Received: by mail-wr1-f45.google.com with SMTP id b9so5658757wrs.1
        for <usrp-users@lists.ettus.com>; Fri, 09 Apr 2021 06:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=JvbhRT+8En3Fcu3SM8RA9WG4k9IjWJ9dEabze4SEKXo=;
        b=E1o9nyNuExKOR0bZCE+TkApyC3nbijY5esNaVUIkmsau8g5YCT7gF+sM2HTP2Em3p5
         r8oP0bpURuHp+uNiTdth0VYxXaLe9Vgt/PfB4PJNstTf4IgKuHbGDZfooQiwrlVMhByA
         6lDneRCkGjArxQgzPqwKP1KXoOIWgj22SFN6TsKtCtCa/sJ0JhWdcQYP7c/TphBJWkvg
         zplvSFo+RGEQCijQXITv5L5OmuGh/uUMRiBB6/h9xeWGhsY672XlCdp+NcgurGI32iW4
         oNEPrs69XHj/ge6qHVvNeD/og+CyVcuzkhBqh/l8u0/lTxtZz4humSwXqmDkGn64r8X+
         Iq0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=JvbhRT+8En3Fcu3SM8RA9WG4k9IjWJ9dEabze4SEKXo=;
        b=PLIA27Pa6pGbmbsWyiNiaoaHwer6SI5OEH+5haRf6l+vEfcJQ4T/2psgX5/KLulftp
         S0bqiI9Iq/sYm1+UkEQFsAr2yFzGl6QyzNRp4AP9usDFLgJQdk7YaBdnzMj1UpNJdtKZ
         fkRD8W4GAIlSQzaXFgVWkSdmLWBJ7i+vlT+x8dkl7dwWt4sW1CCKk60uOs9k8y9XxPwY
         qzFddkCtfvmOUGCBh9/bOiLU4nzOmBHtzgQvuP+IPoMpB3eegjL35dFvoT1PbD1+4eOq
         ijIWzkaoPrcODu6sCpwLY8kKVzXZLJcp+pRRXTqNWDbAtL2ZE5Wk6/mmmMuaxSpdS9oV
         Pmrw==
X-Gm-Message-State: AOAM5325Zqr8DVJFp8+4VwJW//fjLZaDT2y2UiCcGScOL0wPprDV27XE
	2Z9BqXQ3aeEI+q+fer8feNPfkz1B8zuXI9sm
X-Google-Smtp-Source: ABdhPJxcBbimMKhVZZUDK0jW3+ilc50tjTtEzIVOKHnzXiujuMWiJ4MMLZsnd2YWOA0qRdw7piXMxQ==
X-Received: by 2002:a5d:648f:: with SMTP id o15mr17831261wri.152.1617974790007;
        Fri, 09 Apr 2021 06:26:30 -0700 (PDT)
Received: from [192.168.128.8] (HSI-KBW-46-223-162-193.hsi.kabel-badenwuerttemberg.de. [46.223.162.193])
        by smtp.gmail.com with ESMTPSA id h8sm4482296wrt.94.2021.04.09.06.26.29
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 06:26:29 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <SY4PR01MB54529EAE048222DD23DADFE29D739@SY4PR01MB5452.ausprd01.prod.outlook.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Message-ID: <f541aabb-dd11-7f9e-10c6-2307ca534949@ettus.com>
Date: Fri, 9 Apr 2021 15:26:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <SY4PR01MB54529EAE048222DD23DADFE29D739@SY4PR01MB5452.ausprd01.prod.outlook.com>
Content-Language: en-US
Message-ID-Hash: CAWMJK64DYXZO4RIFEYQCP5PZIOTFODX
X-Message-ID-Hash: CAWMJK64DYXZO4RIFEYQCP5PZIOTFODX
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: is cpld source code for UBX available
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CAWMJK64DYXZO4RIFEYQCP5PZIOTFODX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable

At this point, it is not. However, it's pretty possible to infer the functi=
on of the CPLD
from what it's used for and how the UHD host code interacts with it =96 whi=
ch you'd probably
want to change, unless you're intending to build an identical clone of the =
UBX :)


Should you have a problem with the UBX related to said CPLD, we can definit=
ely try to help
you on that!


Best regards,

Marcus M=FCller

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

On 09.04.21 15:01, james Thomas wrote:
> Hi,
> is cpld source code for UBX available?
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
