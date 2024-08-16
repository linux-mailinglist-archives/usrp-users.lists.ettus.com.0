Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 972B1953E74
	for <lists+usrp-users@lfdr.de>; Fri, 16 Aug 2024 02:54:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 94E9A384DE9
	for <lists+usrp-users@lfdr.de>; Thu, 15 Aug 2024 20:54:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1723769663; bh=Z0XUyV2uG6ZmHBZjRaBHFFZRueTv8YmogclEgQId+O0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=eqjnsqVnt808nYCl1TmXjwQ0eWZJcZvuSVsoFMDsK54HIo4vEPN+NFCPP+UpKklHY
	 vQtmZtgP+Y1HSdKGHRFbPnXo3POaeJrsjnXsavysOC9q+U4OKKT+GeEhbnRuq1c7tU
	 27ANm9xL/GSrMtY/nIC/zjhtJYLYlcV0HFfxaXGx+ZdI+JQUBmIsuzNW0zoPeAYaro
	 fbxCnmDWNhFLkW2LCNQyJxgotC8GaKdtHadBThG+s4P+zKDBJAm21G3wRxhQU57hU/
	 y5pM9W41FGxhyEjBRSFR47ZnkERgS2EKd657A/4eViwNxaaxw42WhWUPicohh5ZwUH
	 d7RLqrtLSsohA==
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 3D3DC381180
	for <usrp-users@lists.ettus.com>; Thu, 15 Aug 2024 20:54:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="b2I0tCEl";
	dkim-atps=neutral
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-5d5af743b8fso838574eaf.3
        for <usrp-users@lists.ettus.com>; Thu, 15 Aug 2024 17:54:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723769649; x=1724374449; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X3LR4VZEbRLy5tQgpe27RrOrhcyRz+YzPQx2hwf0pck=;
        b=b2I0tCElHYcHL3Q6BrRVv1Sh/gGuk1zLaw3VbpbuKRSIhhpoqWlO/oOtGKM4ekobGA
         I8shHdeXdL0iCxElnyiS+j2g2yCSu0Ig/O0Ga5Z9Mhr/E3dc/b+NQzvpDUWnb6s9QTob
         Hb/c70zHu8H/QPnsxYNvlDhLrfLVq3SInksNuARsuq9sdCFInxGyKBhvFi5rD/gRbOgu
         cXi8/tsu3fuI4USJCV9/ygPfpv2iJrzVWfqzUQvBl1Olrnx+5eIwVSfXcbzvPEJK95w5
         wZQNM8qJ5bpTejX+wxbGcUfF5F34xsyTj3ZxCssGDZHcwl5FwquuAcjIb9A+mxHBaUSx
         V5gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723769649; x=1724374449;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=X3LR4VZEbRLy5tQgpe27RrOrhcyRz+YzPQx2hwf0pck=;
        b=X7MsKreWk0ZlAJpkwUtnjKRJBCOyNvl0qfJq6So6CRQ5YIn2IR5TWZDTXy1Lzj4pji
         axipwDjSxRlGgSUZAqoNhth1Vr1v4/ZUnIo+BL0NiRQT3OCfb+A1FrRbNO4yXlch8svj
         7qTDYy9b78uZY+123wEGRcGnxvpQPLhy8aQOQipYOUkf9mmDHK0JQS3oOlTC7R9IGA0c
         NSqV5Fd7+sGTQsN+BKWpppNabSNkKyin6bpWH2/BwKJYlaZcW7PM3xHJuIlJRipevzKX
         HulMaFWh2mdHCvP4NEis155c5+DX1FziiV8A6A/JPkcwuk/kX5I5t+jfFcpatVeZsivl
         FO8Q==
X-Gm-Message-State: AOJu0Yx0DJYMXIIDUVTofyjZoQKVhYZhO/uPRAUeBwkx2wNs/DqTfuiz
	T4Jom4mDwDbm10CDZ9K0gW3U9fo7Gv6oijoQCHKcRZxyN2B6CrBvzYZc/A==
X-Google-Smtp-Source: AGHT+IGiMXutu8mNSR4PdhuHCK7zbK4wMLLuhjUuT4pzptw+rGRKaqROJR8C71HDysnSFpEpsAdvcg==
X-Received: by 2002:a05:6359:4c9c:b0:1aa:bc07:a3e6 with SMTP id e5c5f4694b2df-1b3931b420fmr163358655d.13.1723769648854;
        Thu, 15 Aug 2024 17:54:08 -0700 (PDT)
Received: from [192.168.2.170] ([64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-4536a04e6a6sm11141801cf.59.2024.08.15.17.54.08
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Aug 2024 17:54:08 -0700 (PDT)
Message-ID: <c328ed8a-d740-4b18-82d7-ef8044d7a1b6@gmail.com>
Date: Thu, 15 Aug 2024 20:53:58 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <1465511867.4443721.1723769551961.ref@mail.yahoo.com>
 <1465511867.4443721.1723769551961@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1465511867.4443721.1723769551961@mail.yahoo.com>
Message-ID-Hash: ZKOGXYDN7M6D63UP6YI5EPUXSB6OGTJ4
X-Message-ID-Hash: ZKOGXYDN7M6D63UP6YI5EPUXSB6OGTJ4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Install Daughterboards on N210/N200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZKOGXYDN7M6D63UP6YI5EPUXSB6OGTJ4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5649279721096801247=="

This is a multi-part message in MIME format.
--===============5649279721096801247==
Content-Type: multipart/alternative;
 boundary="------------NDxHS0kvxSPM0NA7QncH3Vra"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------NDxHS0kvxSPM0NA7QncH3Vra
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/08/2024 20:52, Q W via USRP-users wrote:
> Hi there,
>
> I am wondering if I can install a LFTX Daughterboard 0-30 MHz and a 
> LFRX Daughterboard 0-30 MHz at the same time on a N200/N210?
Yes, that's perfectly reasonable.

>
> I don't have a usrp yet, but want to figure this out before placing an 
> order.
>
> Kind regards,
> Tom
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------NDxHS0kvxSPM0NA7QncH3Vra
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 15/08/2024 20:52, Q W via USRP-user=
s
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:1465511867.4443721.1723769551961@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydp49d0d179yahoo-style-wrap"
style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-si=
ze:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hi there,</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
      </div>
    </blockquote>
    <blockquote type=3D"cite"
      cite=3D"mid:1465511867.4443721.1723769551961@mail.yahoo.com">
      <div class=3D"ydp49d0d179yahoo-style-wrap"
style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-si=
ze:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">I am wondering if I can
          install a=C2=A0<span>LFTX Daughterboard 0-30 MHz and a=C2=A0<sp=
an>LFRX
              Daughterboard 0-30 MHz at the same time on a N200/N210?</sp=
an></span></div>
      </div>
    </blockquote>
    Yes, that's perfectly reasonable.<br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:1465511867.4443721.1723769551961@mail.yahoo.com">
      <div class=3D"ydp49d0d179yahoo-style-wrap"
style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-si=
ze:13px;">
        <div dir=3D"ltr" data-setdir=3D"false"><span><span><br>
            </span></span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span>I don't have a
              usrp yet, but want to figure this out before placing an
              order.</span></span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span><br>
            </span></span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span>Kind regards,<=
/span></span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span>Tom</span></sp=
an></div>
      </div>
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
    <br>
  </body>
</html>

--------------NDxHS0kvxSPM0NA7QncH3Vra--

--===============5649279721096801247==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5649279721096801247==--
