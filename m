Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 275D56EAB30
	for <lists+usrp-users@lfdr.de>; Fri, 21 Apr 2023 15:04:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2C311384253
	for <lists+usrp-users@lfdr.de>; Fri, 21 Apr 2023 09:04:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682082242; bh=H3mueqr++XcSr7lnEiKyni/wfuhfvQOjWY5U427ZUvw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=fnCHp8AxcTNbk+LGFgIci5xLM3WHleLP8t25lfK3qRo8Mmz89bELjveajI+f5ENT6
	 4E25qGVvNDuuPFYupXGGFrSOxgQUU6uvxx8vOHuu/0SdCQMpv1G7YScJgWyl8wy5L3
	 pF192U4NduSfF7e2v0W5v2A1GZlcQj98b+AUkS6v5kC7bJUstbLbf5+q91voVyRLX5
	 HvYtdjwIDv/kxFTTWKJz87N9SXEKq/HHt+YpxfNrDwb62ID6MlEMkAIxnqY+hcnDK4
	 qrYBjmQCnrcOA+1fROCQj6U2IOQ5uYHaa+tkdd/d7FI0+KqIW5aYXoMd6wexHCvsCg
	 qbqYMge8xz9UA==
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by mm2.emwd.com (Postfix) with ESMTPS id A4958380ABA
	for <usrp-users@lists.ettus.com>; Fri, 21 Apr 2023 08:55:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="BuAaSkqa";
	dkim-atps=neutral
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-3f176a16c03so11382445e9.2
        for <usrp-users@lists.ettus.com>; Fri, 21 Apr 2023 05:55:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1682081736; x=1684673736;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=whU0xL3ZISUMNMEMR3lJDNCyy1TY3beJV1ri2Bo4Zmw=;
        b=BuAaSkqacdzgjsntIuF6Dxrkl11ufqkzWA3/AvTG5aK3BAsZloCmPvp72lySgasGGa
         ecDfV4LwJD1pF0ZIaBTTzR5rUlNXnrrH+mpn1f20VnikVaB+NPFNRb5kJ4+/07ZBNbis
         hdLB+kRSs/JhJDCL/BubGl5hd/AwHOblahBsMvAhrV9P7ishmONSzFrZYf+NLSPydrNj
         igg4aD3jngHpGCI7+/a+72ngbLv/LkQH2Qgit3iBxf1Ihh0nO1Gb7zMhOGGWDB2ixGRb
         JYJvKPnSbhsESEOfDVfEQFlawP6+cKoyJqyh6GpCAYLrAkpTm9NkKBCPyK8Do4pwoyd6
         ShJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682081736; x=1684673736;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=whU0xL3ZISUMNMEMR3lJDNCyy1TY3beJV1ri2Bo4Zmw=;
        b=e5xHle5OA3F9apOhqCAYNk7vypc9qHHngbFLCEK0pYaS6kEorJh/KSIMJFORFoj8Tv
         5dAG7TAhDZHTDlh7qLYanDupP/nEbcg6kiuMbMaJYgOAbCKIu5LyzfiORsduYEJAEenQ
         TtYSyiulDuYUqH48QYSa9LOjLcgsWGWDN+jPSA7Z8cy+lXNnfVldgJcxKO+pqdUuFoS0
         0Qm3NrmWC2gzIbCqdmO5Arwh69l6uF6i9xwa4YQ06L72HcNMuKH8Hh5V1lYyuCYVIqNp
         QLwCrNdVZm2SF+Mu/3KNdda5c7a0kZZJU9B9HJxBxr9I03wP2ZkA8H+VuusU4iOYY9bV
         mVvQ==
X-Gm-Message-State: AAQBX9fQfJN8+uQHtNIB3AFKREZmEEUUhzfhVwkCbL++OTDnYR12Ml0B
	/Xhp8tEo2ACIosQxt4lVRu7D3hRvW/3VMoNSkcnGKg==
X-Google-Smtp-Source: AKy350a5pFXPvwkNeJpiB8Z4SAR48HHqAmsRP0T+Bg8RLuNrHIyEesJrTyUdWjXpOjixEv1vXH0IDQ==
X-Received: by 2002:adf:fe41:0:b0:2fb:6277:54a with SMTP id m1-20020adffe41000000b002fb6277054amr3925425wrs.51.1682081736202;
        Fri, 21 Apr 2023 05:55:36 -0700 (PDT)
Received: from ?IPV6:2001:9e8:385f:1a00:998f:ca6a:6065:3212? ([2001:9e8:385f:1a00:998f:ca6a:6065:3212])
        by smtp.gmail.com with ESMTPSA id t10-20020a05600001ca00b002fab755e10bsm4342591wrx.68.2023.04.21.05.55.35
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 05:55:35 -0700 (PDT)
Message-ID: <f9433c32-a376-30c9-3c11-cce12f3b0c03@ettus.com>
Date: Fri, 21 Apr 2023 14:55:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <168200846413.31234.6062160993291765058@mm2.emwd.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <168200846413.31234.6062160993291765058@mm2.emwd.com>
Message-ID-Hash: X46YCJLBDCZEEPXWIEPNYYRDG7ASUHM7
X-Message-ID-Hash: X46YCJLBDCZEEPXWIEPNYYRDG7ASUHM7
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: A2D bit depth vs IQ
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X46YCJLBDCZEEPXWIEPNYYRDG7ASUHM7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8742972698577911097=="

This is a multi-part message in MIME format.
--===============8742972698577911097==
Content-Type: multipart/alternative;
 boundary="------------zDtQkwJxSQkvz1Cxl97FAMYq"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------zDtQkwJxSQkvz1Cxl97FAMYq
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Bob,

there's no saturation flag coming from the hardware.

The conversion is done within UHD running on your host machine, and the s=
ource files you'd=20
want to look into are all in uhd/host/lib/convert in the UHD source code.

Best regards,
Marcus

On 20.04.23 18:34, Tillson, Bob (US) via USRP-users wrote:
>
> Hello peeps,
>
> Just wondering if anyone could point me to where the mapping between bi=
ts and IQ takes=20
> place.
>
> Curious if the strategy is the same across platforms even though bit de=
pth varies (b205:=20
> 12 bits, X310: 15 bits, N310: 16 bits, X410: 12 bits=E2=80=A6).
>
> The above info in general would be useful, what I am really looking to =
do is spot=20
> saturation from the IQ only since I don=E2=80=99t know of any other pla=
ce where something
>
> like the saturation flag is passed through.
>
> Any thought would be greatly appreciated.
>
> Thanks,
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------zDtQkwJxSQkvz1Cxl97FAMYq
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi Bob,</p>
    <p>there's no saturation flag coming from the hardware.<br>
    </p>
    <p>The conversion is done within UHD running on your host machine,
      and the source files you'd want to look into are all in
      uhd/host/lib/convert in the UHD source code.</p>
    <p>Best regards,<br>
      Marcus<br>
    </p>
    <div class=3D"moz-cite-prefix">On 20.04.23 18:34, Tillson, Bob (US)
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:168200846413.31234.6062160993291765058@mm2.emwd.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hello peeps,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Just wondering if anyone could point me to
          where the mapping between bits and IQ takes place.<o:p></o:p></=
p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Curious if the strategy is the same across
          platforms even though bit depth varies (b205: 12 bits, X310:
          15 bits, N310: 16 bits, X410: 12 bits=E2=80=A6).<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">The above info in general would be useful,
          what I am really looking to do is spot saturation from the IQ
          only since I don=E2=80=99t know of any other place where someth=
ing<o:p></o:p></p>
        <p class=3D"MsoNormal">like the saturation flag is passed through=
.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Any thought would be greatly appreciated.<=
o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
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
  </body>
</html>

--------------zDtQkwJxSQkvz1Cxl97FAMYq--

--===============8742972698577911097==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8742972698577911097==--
