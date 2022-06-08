Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E32CB543D5D
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jun 2022 22:09:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2B3103844AE
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jun 2022 16:09:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654718957; bh=h/hBb8YyXqz2TsS6/enRvy/5IusviEPxB9dDZN5n5kw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Qy+gCLSoAZbjzvvIGi7lV/b5ImNYrABg2AxL3N/1PlV3QXMSBcTHgEAZiDZtPO8Tz
	 wt0j+BuMbej7667X93pNpV5DwxhxxwnZBtym0ezCpyL/HVUw1s54sYN7rWRcMSL5nV
	 KxdOyhzNlj4hF3TlFgWC0LDAUjKQikGeptCPOtoMyEqgNhFvHvFChDvLLfk3HHbjlm
	 IQVETstlVfr/RXQlSILJrZuAROJ+3mA+85SeSCMAPnj0FPFlDnnseGIFeJKV+s9OA8
	 X1UteXQWlDOkO5jh+dP14q6ox7aFzgcdqmR0xk1rfg5Tw1XanyaMZxa4yNNUNeFmyc
	 HW7nZjuBDOs3Q==
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 911BD3841AB
	for <usrp-users@lists.ettus.com>; Wed,  8 Jun 2022 16:08:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fpTR3LOw";
	dkim-atps=neutral
Received: by mail-qk1-f179.google.com with SMTP id x75so12924485qkb.12
        for <usrp-users@lists.ettus.com>; Wed, 08 Jun 2022 13:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=3jHwlCfT7tDRxxhFcvLJBtpeblU0DoXiiac3z6S5hP8=;
        b=fpTR3LOwjKquilpaQ/qjJgPtqL/3iv1zWhs0epFBZretulK6KLvQLfFS4HEbTs8YXB
         dXOyUMXTG/sK9JHR5tz2Dg2sSx5yBXzLz8SiJ3P2Zv88OrAOhP7g0wnZTEmt1UN1Exow
         l7zygXOOe25ieow/B9ScaXn6sypIkCJEF6jP1poKkV/vk2o2f54t+H9wVHwVoSLGL3GK
         AHpwmRDm9V3ryPXJpheKdCRdpovke9piFkeIBfkzN22bWJmKPy7j38ATg6pS4mpxSpif
         vOvAZ7c6hqzWq9S2Ilp+Q54yFTZOQYs7JNHDZPe1kFZyIyqk3pq0b3rldT5f6C/sXJxL
         KlHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=3jHwlCfT7tDRxxhFcvLJBtpeblU0DoXiiac3z6S5hP8=;
        b=xyozfCtv9kTFU4w0KHcytd2GgrXWnwqonzTaKnuxjDrZK6rqzsHJRvAUaES+XP7BDb
         hCd9B6F1+HQfn/SnJrWzQZIRdHMPFBVbVXg2Skh2WotSEJ+0tzGr5z5qIyh4AVqe4FBO
         3VdLzvd32IPZ+V+lThB2VFh4L+QbypTidUOVnKkpJm9cWvPeExUm64PjGS4DQeydmmSX
         V5I9KbUKVOFQmLC5EPiRrakjNOmx3oIqxLo7hYd7Ie7QWdPGQf9Cl6fMHhWNtQ9AC698
         m+4hPZ96eJquBIELGVAW7e9KlA+9mE2KMk1fiE4zFLqdVD6WLKRRsBClNtxUawvHukRI
         rzIw==
X-Gm-Message-State: AOAM532PZLkowzEpzo8wyqrhLHIkmFtNbcm27oqI+9iy6raprIp3P4kb
	H6jcV0U5d7daMNsahGGUC3/yGhYj6VoVE+ye
X-Google-Smtp-Source: ABdhPJwKPmiJ7TmCmhDYC7Iu/sdAjYY1AOTcYcP5AF4SuCQpkzdkTQozuKbKJHEBsNweoUpEhfNe/Q==
X-Received: by 2002:a05:620a:3714:b0:6a5:564b:222f with SMTP id de20-20020a05620a371400b006a5564b222fmr24351477qkb.648.1654718886536;
        Wed, 08 Jun 2022 13:08:06 -0700 (PDT)
Received: from [192.168.2.210] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id i16-20020ac87650000000b00304e688189fsm8498502qtr.37.2022.06.08.13.08.05
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jun 2022 13:08:06 -0700 (PDT)
Message-ID: <068c8a75-3f81-2367-efde-68deb6410877@gmail.com>
Date: Wed, 8 Jun 2022 16:08:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <165471871793.11266.8640979229099732140@mm2.emwd.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <165471871793.11266.8640979229099732140@mm2.emwd.com>
Message-ID-Hash: HHQGJ7244Q4ZEJL2KKZF3MZOMA4SEC4Z
X-Message-ID-Hash: HHQGJ7244Q4ZEJL2KKZF3MZOMA4SEC4Z
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Potential X410 issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HHQGJ7244Q4ZEJL2KKZF3MZOMA4SEC4Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7719916927206567651=="

This is a multi-part message in MIME format.
--===============7719916927206567651==
Content-Type: multipart/alternative;
 boundary="------------9XMV0ztM8XbHIW4HO1V8fDDU"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------9XMV0ztM8XbHIW4HO1V8fDDU
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-06-08 16:03, Tillson, Bob (US) via USRP-users wrote:
>
> Peeps,
>
> So I have been working on the X410, UHD 4.2.0.0, Ubuntu 20.04, CG_400=20
> firmware revision=E2=80=A6
>
> No matter what Rx sampling rate I request, the device wants to supply=20
> 500 Msps J
>
> So then I decided to try rx_samples_to_file, requested 5 Msps, and got=20
> 500 Msps as well=E2=80=A6
>
> Is there something different with the X410 when configuring the=20
> sampling rate that is different from other devices?
>
> If not, something seems to be amiss, any suggestions?
>
> Thanks,
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Could you share with us the command-line parameters you used for=20
rx_samples_to_file, and the "chat" that it produces at startup?


--------------9XMV0ztM8XbHIW4HO1V8fDDU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-06-08 16:03, Tillson, Bob (US)
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:165471871793.11266.8640979229099732140@mm2.emwd.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
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
        <p class=3D"MsoNormal">Peeps,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">So I have been working on the X410, UHD
          4.2.0.0, Ubuntu 20.04, CG_400 firmware revision=E2=80=A6<o:p></=
o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">No matter what Rx sampling rate I request,
          the device wants to supply 500 Msps
          <span style=3D"font-family:Wingdings">J</span><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">So then I decided to try
          rx_samples_to_file, requested 5 Msps, and got 500 Msps as
          well=E2=80=A6<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Is there something different with the X410
          when configuring the sampling rate that is different from
          other devices?<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">If not, something seems to be amiss, any
          suggestions?<o:p></o:p></p>
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
    Could you share with us the command-line parameters you used for
    rx_samples_to_file, and the "chat" that it produces at startup?<br>
    <br>
    <br>
  </body>
</html>

--------------9XMV0ztM8XbHIW4HO1V8fDDU--

--===============7719916927206567651==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7719916927206567651==--
