Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6749E22C5B5
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jul 2020 15:03:39 +0200 (CEST)
Received: from [::1] (port=43884 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyxMO-0002w3-1H; Fri, 24 Jul 2020 09:03:36 -0400
Received: from mail-oi1-f179.google.com ([209.85.167.179]:34358)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <neel.pandeya@ettus.com>)
 id 1jyxMK-0002iZ-A6
 for USRP-users@lists.ettus.com; Fri, 24 Jul 2020 09:03:32 -0400
Received: by mail-oi1-f179.google.com with SMTP id e4so7951401oib.1
 for <USRP-users@lists.ettus.com>; Fri, 24 Jul 2020 06:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hJ6eHsVEoG5gpylo0nWSKzgmaCOump/vCGCCfcxrFZI=;
 b=VAH6zuQJQf3y2m83GQGaRLyR+nU3Yf/jjnMhzqYHth1YzJUxGM4hU1SXtR6YzziyC0
 HYVfg+DUiA/nDn2OQXRATFKAnG+t7ZYyl4XzEiEOPi5yCACVkYLmQLTZEm7TC6g39MqK
 HI+cPi6eRCVYvwTt2fcXpHpvccFSDcdpPWRltWcGZco3tdnyhOHpbYmoBo8Pi3STqjlC
 eEMigV+kAJmqGJYCqRKMignRsRSkAIhsj/YBY1HyPwNm6Cz8JDNceIAPcmkRoKI0FBtP
 NL8SP2zlEbiyBRiWldOfX1rx/Pjs7QbrDHxqIpJCyTggVx+QJAHK/QXab/AiQrsxZs8W
 N2HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hJ6eHsVEoG5gpylo0nWSKzgmaCOump/vCGCCfcxrFZI=;
 b=TV88PeNcmFAaMeYSqH37qMrgj9YUl4ybRt2oBukwqeHbB6CTG0rbWS+SmyGRhxON1K
 5jbngMqz0CMJ1gfQpEb6NNkuetTIE2ldutBqzRAQEsn1RcUDzigBWiRYJPKWytQjRcYT
 uriW2j2PpQ/XGtJBUNf5GCJ2ZS13eKxW46YpiMSs37Rp8gIka3wvv9DtQLP+VzPB3K9k
 uIjxqUZc6iFhjH4T7eQtqhnwCidquU8JIa/yhq7qwLyJSHcnHwU2jIQyYLwKjvJgX7OW
 9r5mLqhJp/lBAy+Wj4Iekdyqf5spKmmRFWu/8Mhqs3JPKY/SpDCnhbrEdFm+Ph11d+Y9
 /S1g==
X-Gm-Message-State: AOAM5325jPSlKrkrP+UZnpIWd1Z6XbjHJv2r4JBJTT6qpM8pNebeRKCs
 qnRFO4S1PIGQuOR1dcWcgw5/vsGZiv6k6eoLQ6hahAoa
X-Google-Smtp-Source: ABdhPJwGvRN3RaQc+QxffrtFx9RNAIzIgraLO856biF58A+XuOChgyapKvLr8/T6G9KUTTG5vn06snU1wblKd0QPQws=
X-Received: by 2002:aca:2807:: with SMTP id 7mr8037132oix.140.1595595771573;
 Fri, 24 Jul 2020 06:02:51 -0700 (PDT)
MIME-Version: 1.0
References: <PU1PR06MB2133D7FA64F75E34E3CCB8A28E790@PU1PR06MB2133.apcprd06.prod.outlook.com>
In-Reply-To: <PU1PR06MB2133D7FA64F75E34E3CCB8A28E790@PU1PR06MB2133.apcprd06.prod.outlook.com>
Date: Fri, 24 Jul 2020 08:02:15 -0500
Message-ID: <CACaXmv-ytmVc=xupt7SquNscb7yC+e_jYNDWX344gqA_j1X3mw@mail.gmail.com>
To: "Kumari, Surabhi" <surabhi.kumari@siemens.com>
Cc: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Subject: Re: [USRP-users] Planning to buy USRP
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Neel Pandeya via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Neel Pandeya <neel.pandeya@ettus.com>
Content-Type: multipart/mixed; boundary="===============6706883485347077514=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============6706883485347077514==
Content-Type: multipart/alternative; boundary="0000000000002b81f905ab2f97e5"

--0000000000002b81f905ab2f97e5
Content-Type: text/plain; charset="UTF-8"

Hello Surabhi:

What are your specific system requirements?

Let's discuss directly, please send me an email.

--Neel Pandeya



On Wed, 22 Jul 2020 at 03:46, Kumari, Surabhi via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
>
>
> I was working with LimeSDR with OpenAirInterface, We are not getting the
> desired result. We are planning to buy USRP. Please suggest which USRP
> shall we buy which should be compatible with openairinterface as well as
> free5GC.
>
> Please let me know what are the other hardware requirements to work with
> USRP.
>
>
>
> Regards,
>
> Surabhi
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000002b81f905ab2f97e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:verdana,sans-serif">Hello Surabhi:</div><div class=3D"gmail_defaul=
t" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_d=
efault" style=3D"font-family:verdana,sans-serif">What are your specific sys=
tem requirements?</div><div class=3D"gmail_default" style=3D"font-family:ve=
rdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-fami=
ly:verdana,sans-serif">Let&#39;s discuss directly, please send me an email.=
</div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"=
><br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-s=
erif">--Neel Pandeya</div><div class=3D"gmail_default" style=3D"font-family=
:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-f=
amily:verdana,sans-serif"><br></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Wed, 22 Jul 2020 at 03:46, Kumari, S=
urabhi via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usr=
p-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-6860619329558902534WordSection1">
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I was working with LimeSDR with OpenAirInterface, We=
 are not getting the desired result. We are planning to buy USRP. Please su=
ggest which USRP shall we buy which should be compatible with openairinterf=
ace as well as free5GC.<u></u><u></u></p>
<p class=3D"MsoNormal">Please let me know what are the other hardware requi=
rements to work with USRP.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Regards,<u></u><u></u></p>
<p class=3D"MsoNormal">Surabhi<u></u><u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000002b81f905ab2f97e5--


--===============6706883485347077514==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6706883485347077514==--

