Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 481B65B211B
	for <lists+usrp-users@lfdr.de>; Thu,  8 Sep 2022 16:47:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 41C77383BE8
	for <lists+usrp-users@lfdr.de>; Thu,  8 Sep 2022 10:47:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662648475; bh=dnQ2oiIfm3kuhPY0vmM0c0NWTQz9HYLkKCnwbwGqFDw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=yW+8zcEcDbz/7/bEQ2FbVQRmVHOBSvTQFUriLnyuSPkmNr/mK6flOGrpbKgZ00TXo
	 i3NDTyXQi1yaoxJzl7q0NrUj1uyz4JRhycC/Er1v28auFyxkqa7gvLu6RFzl7iEZBe
	 SnHpWQDz1i3dV7LHtli+eE8hAy6dBmB3crE+fT6P/suJjgXnTRCtT4vD3QKjY7Mx6K
	 0zUmRLH8QTK+tuxAvNLXGjKfnSAW7ZnKz+KapZsK1lzEao/if/4cn4bmae8++WHwji
	 SlHK/JXtjbtEdomTvtP/RByR6hFaFTMLlZjYTtWpN3PNEe4vkYhwMwqmcC8gLLurSN
	 FmmTxoUraqV4g==
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id BF7D0383B69
	for <usrp-users@lists.ettus.com>; Thu,  8 Sep 2022 10:47:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="i/UY4y3S";
	dkim-atps=neutral
Received: by mail-qt1-f171.google.com with SMTP id g14so13010819qto.11
        for <usrp-users@lists.ettus.com>; Thu, 08 Sep 2022 07:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date;
        bh=O5So1jM9emngW7tqJ+8cYAiSNBuMsmKM3W1Ci3cuC3E=;
        b=i/UY4y3SILn6z6apvGYdbx11MNvKyF8+4HglKL8D6+tUBnLLSAX5LyXlv5sV3+tn7Q
         kOfZjxj2cbdoV+cp0vSoAuYyndkBquTOP4DoXeL5oz+2atCdFpqvPI7yPl4bhBD9Cy4f
         4C9lz4eFk3cKZbHGWwOdTiKmnqXr/neX7nroXB6KLxFK8NpstwWLJ3Ene7JYGz5m51ek
         5SoRrr9K1BRK9sX+j4oLygqTTLnWg8eOhEKg2owgQvNTICTE7VVLjhM1d+T3gynTsiUb
         wDuSPWhmm+7L1JgSM1q2Ln7NSuBi845+OkOS0D0TVwjh1KwPwfD48sxN534+fvStAt9F
         BrgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date;
        bh=O5So1jM9emngW7tqJ+8cYAiSNBuMsmKM3W1Ci3cuC3E=;
        b=NLp+I0nKnJ1TAzjCctghv3+YpNmN9AOdAKEP4GNaDNRZbImK84aSS4Ml/c4qghwY6f
         kAnBbt/H78TMcff5RmEwbG5DRU6eIuAOYtvd299As+O1PiDrGVYFHlR67Y+VSjBMSZy4
         HPk9Cg8tTakDhKQvQoJSayH8AY/rVgZ5rD8Cqe9RwglYJK1rIb+xoW/VLjfY3y79UNBX
         7vCZj0Ha9IKRxR6TycmafPX9zR/w35nYm7t7xp9/t4pm3uAP7GXIO5iwHyRpu8kUrC07
         cVWWWGVnF1hklR3ZNmF81F2Bh/rY/H9pGhjrSz8AQxXG9VoMFblJMuo+UuKMok2ZIdui
         DnpA==
X-Gm-Message-State: ACgBeo3w/whCpdZuOh1Y4Iqzqu1hovF+L2Ac/cnSpmO251wnWaNG5Qk1
	bR0gX+hmnb7o1/AnCzrY8sKtqP3Sjs4=
X-Google-Smtp-Source: AA6agR4z/Fnu9klEH4LjkslM0Gxw+mCdjBJJkOYzjxC6+Nud6/1hIdag1GnYfgG+hBqtxnWuqF1Gjg==
X-Received: by 2002:a05:622a:1b92:b0:343:6cd6:a972 with SMTP id bp18-20020a05622a1b9200b003436cd6a972mr8194536qtb.262.1662648426101;
        Thu, 08 Sep 2022 07:47:06 -0700 (PDT)
Received: from [192.168.2.194] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id x17-20020a05620a259100b006bb49cfe147sm16309782qko.84.2022.09.08.07.47.05
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 07:47:05 -0700 (PDT)
Message-ID: <81395d53-7dfb-ac73-620b-2768d4fa9d0c@gmail.com>
Date: Thu, 8 Sep 2022 10:47:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <OL1P279MB008439AD371C6A7E87C1D4F786409@OL1P279MB0084.NORP279.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <OL1P279MB008439AD371C6A7E87C1D4F786409@OL1P279MB0084.NORP279.PROD.OUTLOOK.COM>
Message-ID-Hash: 6FFVTLTK6E7LAX6EMTTX2PTTLQQHQY7L
X-Message-ID-Hash: 6FFVTLTK6E7LAX6EMTTX2PTTLQQHQY7L
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N210 USRP synchronization performance 4x worse than expected - suspect configuration problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6FFVTLTK6E7LAX6EMTTX2PTTLQQHQY7L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2226687845585279705=="

This is a multi-part message in MIME format.
--===============2226687845585279705==
Content-Type: multipart/alternative;
 boundary="------------dOwDUlNdM7Z94FAVTZRjSkdX"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------dOwDUlNdM7Z94FAVTZRjSkdX
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-09-08 04:54, Aiden Morrison via USRP-users wrote:
>
> Hello,
>
> I am attempting to do synchronized multi-site reception using USRP=20
> N210 radios. Our first attempt was to make use of 2x radios with ettus=20
> GPSDO modules installed, feeding the radios with a common PRN sequence=20
> and correlating the outputs to evaluate timing offset. The Ettus GPSDO=20
> radios say they provide +/-60ns timing accuracy, so even in the worst=20
> case where one of the radios goes to each side of the limit, at 10 MHz=20
> we would have slightly more than 1 sample of offset between them, but=20
> in testing we observed +0 to +3 samples of offset.
>
> To isolate the problem we repeated the test with two different N210=20
> radios fed by a common external 10 MHz and PPS signal from a GNSS=20
> disciplined Rubidium source, and observed exactly the same +0 to +3=20
> samples of shift between the captured sequences. Seeing the same error=20
> when using a common clock indicates the problem is very likely to be=20
> in our test software.
>
> In our software we follow=20
> https://files.ettus.com/manual/page_sync.html for synchronization:
>
>  1. We create two USRP objects, one for each radio.
>
I would repeat this experiment, but using a single multi-usrp object.=C2=A0=
=20
UHD will time-align samples across radios in the
 =C2=A0 same multi-usrp container object.=C2=A0 But not across objects.

> 1.
>
>
>  2. We command the USRPs to use the external synchronization (radios
>     report back that they are synchronized to the GPSDO in the former
>     configuration)
>  3. We use a common time in the time spec commands for each
>     configuration change (e.g. setting LO frequencies)
>  4. For each burst capture of 50,000 samples we set a time_spec for
>     each USRP a long time in the future (1.0 seconds since the last
>     capture)
>
To be clear you are requesting streaming start at the same time?

> 1.
>  2. Step 4 is repeated 1000 times giving us 1000 bursts for evaluating
>     the synchronization
>
> The only factor I can see is that we are using WBX radio modules, and=20
> we are uncertain if this is somehow a factor in what we are seeing.
>
> Thanks in advance for feedback.
>
> -Aiden
>
>
Also, how are you checking time alignment?=C2=A0 Are you actually looking=
 at=20
the timestamps on the sample frames?



--------------dOwDUlNdM7Z94FAVTZRjSkdX
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-09-08 04:54, Aiden Morrison vi=
a
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:OL1P279MB008439AD371C6A7E87C1D4F786409@OL1P279MB0084.NORP279.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}p.MsoListParagraph, li.MsoListParagraph, div.=
MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}div.WordSection1
	{page:WordSection1;}ol
	{margin-bottom:0cm;}ul
	{margin-bottom:0cm;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hello,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">I am attempting to do
            synchronized multi-site reception using USRP N210 radios.
            Our first attempt was to make use of 2x radios with ettus
            GPSDO modules installed, feeding the radios with a common
            PRN sequence and correlating the outputs to evaluate timing
            offset. The Ettus GPSDO radios say they provide +/-60ns
            timing accuracy, so even in the worst case where one of the
            radios goes to each side of the limit, at 10 MHz we would
            have slightly more than 1 sample of offset between them, but
            in testing we observed +0 to +3 samples of offset.<o:p></o:p>=
</span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">To isolate the proble=
m
            we repeated the test with two different N210 radios fed by a
            common external 10 MHz and PPS signal from a GNSS
            disciplined Rubidium source, and observed exactly the same
            +0 to +3 samples of shift between the captured sequences.
            Seeing the same error when using a common clock indicates
            the problem is very likely to be in our test software.
            <o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">In our software we
            follow <a
              href=3D"https://files.ettus.com/manual/page_sync.html"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">
              https://files.ettus.com/manual/page_sync.html</a> for
            synchronization:<o:p></o:p></span></p>
        <ol style=3D"margin-top:0cm" type=3D"1" start=3D"1">
          <li class=3D"MsoListParagraph"
            style=3D"margin-left:0cm;mso-list:l0 level1 lfo1"><span
              lang=3D"EN-GB">We create two USRP objects, one for each
              radio.</span></li>
        </ol>
      </div>
    </blockquote>
    I would repeat this experiment, but using a single multi-usrp
    object.=C2=A0 UHD will time-align samples across radios in the<br>
    =C2=A0 same multi-usrp container object.=C2=A0 But not across objects=
.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:OL1P279MB008439AD371C6A7E87C1D4F786409@OL1P279MB0084.NORP279.=
PROD.OUTLOOK.COM">
      <div class=3D"WordSection1">
        <ol style=3D"margin-top:0cm" type=3D"1" start=3D"1">
          <li class=3D"MsoListParagraph"
            style=3D"margin-left:0cm;mso-list:l0 level1 lfo1"><span
              lang=3D"EN-GB"><o:p></o:p></span><br>
          </li>
          <li class=3D"MsoListParagraph"
            style=3D"margin-left:0cm;mso-list:l0 level1 lfo1"><span
              lang=3D"EN-GB">We command the USRPs to use the external
              synchronization (radios report back that they are
              synchronized to the GPSDO in the former configuration)<o:p>=
</o:p></span></li>
          <li class=3D"MsoListParagraph"
            style=3D"margin-left:0cm;mso-list:l0 level1 lfo1"><span
              lang=3D"EN-GB">We use a common time in the time spec
              commands for each configuration change (e.g. setting LO
              frequencies)<o:p></o:p></span></li>
          <li class=3D"MsoListParagraph"
            style=3D"margin-left:0cm;mso-list:l0 level1 lfo1"><span
              lang=3D"EN-GB">For each burst capture of 50,000 samples we
              set a time_spec for each USRP a long time in the future
              (1.0 seconds since the last capture)</span></li>
        </ol>
      </div>
    </blockquote>
    To be clear you are requesting streaming start at the same time?<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:OL1P279MB008439AD371C6A7E87C1D4F786409@OL1P279MB0084.NORP279.=
PROD.OUTLOOK.COM">
      <div class=3D"WordSection1">
        <ol style=3D"margin-top:0cm" type=3D"1" start=3D"1">
          <li class=3D"MsoListParagraph"
            style=3D"margin-left:0cm;mso-list:l0 level1 lfo1"><span
              lang=3D"EN-GB"><o:p></o:p></span></li>
          <li class=3D"MsoListParagraph"
            style=3D"margin-left:0cm;mso-list:l0 level1 lfo1"><span
              lang=3D"EN-GB">Step 4 is repeated 1000 times giving us 1000
              bursts for evaluating the synchronization<o:p></o:p></span>=
</li>
        </ol>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">The only factor I can
            see is that we are using WBX radio modules, and we are
            uncertain if this is somehow a factor in what we are seeing.<=
o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">Thanks in advance for
            feedback.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">-Aiden<o:p></o:p></sp=
an></p>
      </div>
      <br>
    </blockquote>
    Also, how are you checking time alignment?=C2=A0 Are you actually loo=
king
    at the timestamps on the sample frames?<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------dOwDUlNdM7Z94FAVTZRjSkdX--

--===============2226687845585279705==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2226687845585279705==--
