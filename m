Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3885B1D61
	for <lists+usrp-users@lfdr.de>; Thu,  8 Sep 2022 14:41:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 93D3E38303F
	for <lists+usrp-users@lfdr.de>; Thu,  8 Sep 2022 08:41:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662640905; bh=3I6QwCU7a7Iv4Qgcd8/g+w0JO7E5mqYg3NlZSmUqY3E=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=JDRmh0qnYgtro9Ri+40d0c97/hMbxd47ehrqOwcFe6l9CTnFelB/YTmWyucz+wis0
	 /50zknVLE/kgVZTkrK0kvFBAPIYDV1hqj1ktNZ+DOD0XAvzQ5HEsHSn5gy1jmf8wA3
	 Ncf5FyAFhzDrNe3Nluqn4hnlCBOcMmCXALIUqjTl0o9NSde6w29cj2ds/odh+CYhqF
	 4MI6TzZ20C3Bd/VLIOhbKokIkpvJexglpX3QYjfLbCaygifWtVeRzriOKILM/hVleJ
	 JGrF2jZFTzIkays7tOB3PRIo9VYpWEqh+BELF0UWRjQccfE7B5H4/lpUgT+MognHbv
	 zVC2QU+ZApvCw==
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 8EFA6380EDD
	for <usrp-users@lists.ettus.com>; Thu,  8 Sep 2022 08:40:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LlUgi4nk";
	dkim-atps=neutral
Received: by mail-qt1-f174.google.com with SMTP id z18so667275qts.7
        for <usrp-users@lists.ettus.com>; Thu, 08 Sep 2022 05:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date;
        bh=cV7wn/RVV/FTazIyXxd8ZkpCU8pitKhX2rLyzMLZ0pc=;
        b=LlUgi4nkv1Vz9dBPEgQakwUpp3bHanD2AkFKdNJ3gQSN9p7/XhCP2ya2FjE7X295c9
         BK4WNo2f5hpUJ8FMmg5oK5kUkogzLBXJOf81c0kBIN0jFMEBO/MIDUeDZ+WU+Raa0eKP
         vL3TLxILj9wWrtC//BcqeIAXzoaaCuvXw9nN9zsb2nvMJm0LyyJ7+oeynNS1Wd5uaGsH
         t8zM0yfhWHwwSUzRzfgYVj0VHKgnNB35t8BN0Vi7Nov1UU1X7XbKDUdA3C8EHVK1erOC
         aCZ5tJfA7UAa2Kf3FdfhS8ALGU9fKJI9/3w9qffIB/uUW5D/nBTWITpg3QMQrZyiE9i7
         ICMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date;
        bh=cV7wn/RVV/FTazIyXxd8ZkpCU8pitKhX2rLyzMLZ0pc=;
        b=R2NMxI4RSTLlIENDL8fGmOitn2XKAmqTABG2FmpVE8PxvlRHN9LzAzi9aAlKZ0j0ss
         dhVMlNypm8sxOJFjcwn7oJjJgJjWcyEekAIrTHd0UK52DvQKvEr4TfLBbk6qxlEFPDsN
         1yajMUKqVjT2EGPw1x6GC4NlyXwRyvz8goZyk3OckhigLKoIVloZVMDbW9BX1Fnoni3q
         qinDQAK6ieuL+D9nMiVloqhYkLKd3cLIvZ+CRdtl+KL2fCoZaKTLeDIoOEyWgDHgNrn7
         WAbjiHEorvh158TVfRQIu4+WEdVVG68LAl50m9L1xtgrkLaGZx7QdpSMTguAzVhzv/SX
         HzZg==
X-Gm-Message-State: ACgBeo08vOofXxg8wSsm4Jxod0H1p8ZuAOXCPK5Wfn/sIjJre2a8MdRZ
	GfQqpMobaCpZ2vZeu5zd4itRmUvNKCU=
X-Google-Smtp-Source: AA6agR6T6pCL28lFjvQGfdQm11s5wck4kOTj8dvTu6GuWjZkx1JiaR4z9PHJgYsXWcnrJHUZMU/cMA==
X-Received: by 2002:ac8:5e4f:0:b0:345:391:cee6 with SMTP id i15-20020ac85e4f000000b003450391cee6mr7452341qtx.255.1662640846824;
        Thu, 08 Sep 2022 05:40:46 -0700 (PDT)
Received: from [192.168.2.194] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id 2-20020ac85742000000b003434f7483a1sm15760354qtx.32.2022.09.08.05.40.46
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 05:40:46 -0700 (PDT)
Message-ID: <d0adea51-ec47-81d8-4949-15a18d268c39@gmail.com>
Date: Thu, 8 Sep 2022 08:40:45 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <OL1P279MB008439AD371C6A7E87C1D4F786409@OL1P279MB0084.NORP279.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <OL1P279MB008439AD371C6A7E87C1D4F786409@OL1P279MB0084.NORP279.PROD.OUTLOOK.COM>
Message-ID-Hash: RIR44G5PSGW6QZDQIG67RO7LJBOYS3N3
X-Message-ID-Hash: RIR44G5PSGW6QZDQIG67RO7LJBOYS3N3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N210 USRP synchronization performance 4x worse than expected - suspect configuration problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RIR44G5PSGW6QZDQIG67RO7LJBOYS3N3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8278407137942368212=="

This is a multi-part message in MIME format.
--===============8278407137942368212==
Content-Type: multipart/alternative;
 boundary="------------8K8oqttfcllc5021zkiCk7Wg"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------8K8oqttfcllc5021zkiCk7Wg
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
>  2. We command the USRPs to use the external synchronization (radios
>     report back that they are synchronized to the GPSDO in the former
>     configuration)
>  3. We use a common time in the time spec commands for each
>     configuration change (e.g. setting LO frequencies)
>  4. For each burst capture of 50,000 samples we set a time_spec for
>     each USRP a long time in the future (1.0 seconds since the last
>     capture)
>  5. Step 4 is repeated 1000 times giving us 1000 bursts for evaluating
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
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
With the WBX, even with common clocks between them, there will be a=20
180deg phase ambiguity because of the
 =C2=A0 2XLO mixer.=C2=A0=C2=A0 This is unavoidable, even when using time=
d-command=20
tuning to phase-align the synthesizers.


--------------8K8oqttfcllc5021zkiCk7Wg
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
              radio.<o:p></o:p></span></li>
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
              (1.0 seconds since the last capture)<o:p></o:p></span></li>
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
    With the WBX, even with common clocks between them, there will be a
    180deg phase ambiguity because of the<br>
    =C2=A0 2XLO mixer.=C2=A0=C2=A0 This is unavoidable, even when using t=
imed-command
    tuning to phase-align the synthesizers.<br>
    <br>
    <br>
  </body>
</html>

--------------8K8oqttfcllc5021zkiCk7Wg--

--===============8278407137942368212==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8278407137942368212==--
