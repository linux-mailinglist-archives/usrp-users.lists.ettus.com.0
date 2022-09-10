Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DF15B4702
	for <lists+usrp-users@lfdr.de>; Sat, 10 Sep 2022 16:52:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5FDEA383BA6
	for <lists+usrp-users@lfdr.de>; Sat, 10 Sep 2022 10:52:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662821525; bh=xLPN9JMlGENivM8a1t8qkVC+u2HcXk269qPr5g8FjdE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=g4BdJLhjBG4cwCPwT9KWlVu/sb6YGMoDhJ3GEgQKat/o6DuzNR1lf3/cr7oBprX6I
	 cHrpb2Si1vU90yujUqoVuWGZGUNKF+xdFg5k7U5iLHrzLyXlG4XBIrbbI47DoQLPHr
	 KfzgwMFCvCv1HY9dNGgHO7eC0vnTImRH1gKzNwVUoWptk31CT8i09apKHEhm+cF/a9
	 F+Q2Gf3SmoXnihA2mlWo2jA/E9TxlT+fKtw/jinWdrlmqnvzOCqhLApIdtwVdjTuIA
	 szG1Gv/zGrtLIL26n5sWKzju/R7Hhn/1pgEYpQPDLVlDR3vRe3qy/tOSHf6wAE/V7h
	 FCr/fyTrrLpHw==
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id D78D038391A
	for <usrp-users@lists.ettus.com>; Sat, 10 Sep 2022 10:50:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="pO3XDvhX";
	dkim-atps=neutral
Received: by mail-qv1-f44.google.com with SMTP id v15so3451385qvi.11
        for <usrp-users@lists.ettus.com>; Sat, 10 Sep 2022 07:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date;
        bh=b/pBaMF6LqDXhPG1q/puf3Mg910AKPgiHRK3WKXs958=;
        b=pO3XDvhXB2kwNhFRSolai6y05Z4l3KrG99G9GUp1gU/vLHlP196MSAqzLcc7hTnCHB
         8LQVLQ2fFPmSKEBsyhrmeG4vQs3Te3ym8Erm8cJl1q/P1yBvUfzcMDZgCAYVSLIbBtZ4
         jrRg/P1QzE1b2ul7yem63hY8UmZ2J3lXiMq1adgnManzTD78Gnf1qZ8nxC0xYtvGwmhi
         OLFom/fzkUhRDHP9uzR2fRjaY73DTTWDcWJ5ensn38S7pxKJRrjUmhg8840qta9bur8p
         al1dpPiDf/z/cAAvEiYPtyT7P2c8RzG2llYKFqBClMk6XFwoTtwo/tU0mKhW6Z4tETyK
         H64w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date;
        bh=b/pBaMF6LqDXhPG1q/puf3Mg910AKPgiHRK3WKXs958=;
        b=w9erQWLvOl/oQSTXDkqBsag9vIYRYjsb75AGBM5wvPE4l2rHr/5XuAqeyi8lZ620+7
         dXz4aDv25+AXSC0ntfX6zilXIcqctO9CY37Ji3ODsF6wxuRW9KZn1y8DbYtJEGTxzDG1
         ky+Lnf9+iKsjXHS1OGGY9axK8bXF3d292J2JgqBVkb6xXZbbGjcK2kYHgZdvBl96gZ2i
         RxpqRAe20ZEkh0roSqgjVmmJZTR58UpKvfmk3T5PJk8W29epFD+HKb++ZjXrGPwyNVVU
         K4T4q+0wNPwsCnHzQn2psIdS6rF8u5QC1vK8EZV5FWUPaGYyY9X0JEKQY73pUL8yiBvL
         GQ+g==
X-Gm-Message-State: ACgBeo1goRh5BJlrmJWcG9hSCEu9KwfsutasPY2Yn2fudANCkjBG0ric
	iLZz5p7Qt0adiwejQRmJ+2E=
X-Google-Smtp-Source: AA6agR58Pmrz4lDDFfY4h0bu3B8Az6AQtECtZv7yhpTL7AAjRSaVj9eAYtRAZ0JDaXzv2nQZVaGMdw==
X-Received: by 2002:a05:6214:2486:b0:4a5:8b:9ba0 with SMTP id gi6-20020a056214248600b004a5008b9ba0mr16774476qvb.70.1662821455192;
        Sat, 10 Sep 2022 07:50:55 -0700 (PDT)
Received: from [192.168.2.186] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id p22-20020ac84096000000b00342fb07944fsm2799461qtl.82.2022.09.10.07.50.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Sep 2022 07:50:54 -0700 (PDT)
Message-ID: <9dcb3a2c-9e76-c07c-6d36-d3a68c650d72@gmail.com>
Date: Sat, 10 Sep 2022 10:50:53 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Aiden Morrison <Aiden.Morrison@sintef.no>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <OL1P279MB008439AD371C6A7E87C1D4F786409@OL1P279MB0084.NORP279.PROD.OUTLOOK.COM>
 <81395d53-7dfb-ac73-620b-2768d4fa9d0c@gmail.com>
 <OL1P279MB00846F6159EE85D5823D9C9386429@OL1P279MB0084.NORP279.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <OL1P279MB00846F6159EE85D5823D9C9386429@OL1P279MB0084.NORP279.PROD.OUTLOOK.COM>
Message-ID-Hash: D2KXZMH2F6JRYGW6EMFRKXR22A52D3H5
X-Message-ID-Hash: D2KXZMH2F6JRYGW6EMFRKXR22A52D3H5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N210 USRP synchronization performance 4x worse than expected - suspect configuration problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D2KXZMH2F6JRYGW6EMFRKXR22A52D3H5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7248830328059102336=="

This is a multi-part message in MIME format.
--===============7248830328059102336==
Content-Type: multipart/alternative;
 boundary="------------qFHWEie70KukFAg20yVMj1Tw"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------qFHWEie70KukFAg20yVMj1Tw
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-09-10 06:06, Aiden Morrison wrote:
> Hi Marcus,
>
> The timestamps returning from the radios are always in perfect=20
> agreement in the metadata between the two USRPs. We are checking the=20
> synchronization by doing a correlation on the captured sample blocks=20
> and observing the peak shifting by 0-3 samples. If the front-ends were=20
> actually synchronized at the ~100 ns level, this would be +/-1.
To be clear, this is with your laboratory setup, with an Rb refclock,=20
and some kind of shared 1PPS signal?

What are the characteristics of your 1PPS signal in this case?=C2=A0 Rise=
=20
time, pulse duration, voltage, etc.


> -----------------------------------------------------------------------=
-
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* 08 September 2022 16:47
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] Re: N210 USRP synchronization performance 4x=20
> worse than expected - suspect configuration problem
> On 2022-09-08 04:54, Aiden Morrison via USRP-users wrote:
>>
>> Hello,
>>
>> I am attempting to do synchronized multi-site reception using USRP=20
>> N210 radios. Our first attempt was to make use of 2x radios with=20
>> ettus GPSDO modules installed, feeding the radios with a common PRN=20
>> sequence and correlating the outputs to evaluate timing offset. The=20
>> Ettus GPSDO radios say they provide +/-60ns timing accuracy, so even=20
>> in the worst case where one of the radios goes to each side of the=20
>> limit, at 10 MHz we would have slightly more than 1 sample of offset=20
>> between them, but in testing we observed +0 to +3 samples of offset.
>>
>> To isolate the problem we repeated the test with two different N210=20
>> radios fed by a common external 10 MHz and PPS signal from a GNSS=20
>> disciplined Rubidium source, and observed exactly the same +0 to +3=20
>> samples of shift between the captured sequences. Seeing the same=20
>> error when using a common clock indicates the problem is very likely=20
>> to be in our test software.
>>
>> In our software we follow=20
>> https://files.ettus.com/manual/page_sync.html=20
>> <https://eur03.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Ff=
iles.ettus.com%2Fmanual%2Fpage_sync.html&data=3D05%7C01%7Caiden.morrison%=
40sintef.no%7Cfa4f6deef65f423e787c08da91a91677%7Ce1f00f39604145b0b309e021=
0d8b32af%7C1%7C0%7C637982452653631828%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4=
wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000%7C%7C%7C&s=
data=3DO88MQv%2FF3wgfA8GurCme6mIlKvRLi8KwgK5WixFuba0%3D&reserved=3D0>=20
>> for synchronization:
>>
>>  1. We create two USRP objects, one for each radio.
>>
> I would repeat this experiment, but using a single multi-usrp object.=C2=
=A0=20
> UHD will time-align samples across radios in the
> =C2=A0 same multi-usrp container object.=C2=A0 But not across objects.
>
>> 1.
>>
>>
>>  2. We command the USRPs to use the external synchronization (radios
>>     report back that they are synchronized to the GPSDO in the former
>>     configuration)
>>  3. We use a common time in the time spec commands for each
>>     configuration change (e.g. setting LO frequencies)
>>  4. For each burst capture of 50,000 samples we set a time_spec for
>>     each USRP a long time in the future (1.0 seconds since the last
>>     capture)
>>
> To be clear you are requesting streaming start at the same time?
>
>> 1.
>>
>>
>>  2. Step 4 is repeated 1000 times giving us 1000 bursts for
>>     evaluating the synchronization
>>
>> The only factor I can see is that we are using WBX radio modules, and=20
>> we are uncertain if this is somehow a factor in what we are seeing.
>>
>> Thanks in advance for feedback.
>>
>> -Aiden
>>
>>
> Also, how are you checking time alignment?=C2=A0 Are you actually looki=
ng=20
> at the timestamps on the sample frames?
>
>
>

--------------qFHWEie70KukFAg20yVMj1Tw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-09-10 06:06, Aiden Morrison
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:OL1P279MB00846F6159EE85D5823D9C9386429@OL1P279MB0084.NORP279.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Hi Marcus,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        The timestamps returning from the radios are always in perfect
        agreement in the metadata between the two USRPs. We are checking
        the synchronization by doing a correlation on the captured
        sample blocks and observing the peak shifting by 0-3 samples. If
        the front-ends were actually synchronized at the ~100 ns level,
        this would be +/-1. <br>
      </div>
    </blockquote>
    To be clear, this is with your laboratory setup, with an Rb
    refclock, and some kind of shared 1PPS signal?<br>
    <br>
    What are the characteristics of your 1PPS signal in this case?=C2=A0 =
Rise
    time, pulse duration, voltage, etc.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:OL1P279MB00846F6159EE85D5823D9C9386429@OL1P279MB0084.NORP279.=
PROD.OUTLOOK.COM">
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Mar=
cus
          D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patc=
hvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
          <b>Sent:</b> 08 September 2022 16:47<br>
          <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@li=
sts.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> [USRP-users] Re: N210 USRP synchronization
          performance 4x worse than expected - suspect configuration
          problem</font>
        <div>=C2=A0</div>
      </div>
      <div>
        <div class=3D"x_moz-cite-prefix">On 2022-09-08 04:54, Aiden
          Morrison via USRP-users wrote:<br>
        </div>
        <blockquote type=3D"cite">
          <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
            medium)">
          <style>@font-face
	{font-family:"Cambria Math"}@font-face
	{font-family:Calibri}p.x_MsoNormal, li.x_MsoNormal, div.x_MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}a:link, span.x_MsoHyperlink
	{color:#0563C1;
	text-decoration:underline}p.x_MsoListParagraph, li.x_MsoListParagraph, d=
iv.x_MsoListParagraph
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}span.x_EmailStyle17
	{font-family:"Calibri",sans-serif;
	color:windowtext}.x_MsoChpDefault
	{font-family:"Calibri",sans-serif}div.x_WordSection1
	{}ol
	{margin-bottom:0cm}ul
	{margin-bottom:0cm}</style>
          <div class=3D"x_WordSection1">
            <p class=3D"x_MsoNormal">Hello,</p>
            <p class=3D"x_MsoNormal">=C2=A0</p>
            <p class=3D"x_MsoNormal"><span lang=3D"EN-GB">I am attempting=
 to
                do synchronized multi-site reception using USRP N210
                radios. Our first attempt was to make use of 2x radios
                with ettus GPSDO modules installed, feeding the radios
                with a common PRN sequence and correlating the outputs
                to evaluate timing offset. The Ettus GPSDO radios say
                they provide +/-60ns timing accuracy, so even in the
                worst case where one of the radios goes to each side of
                the limit, at 10 MHz we would have slightly more than 1
                sample of offset between them, but in testing we
                observed +0 to +3 samples of offset.</span></p>
            <p class=3D"x_MsoNormal"><span lang=3D"EN-GB">=C2=A0</span></=
p>
            <p class=3D"x_MsoNormal"><span lang=3D"EN-GB">To isolate the
                problem we repeated the test with two different N210
                radios fed by a common external 10 MHz and PPS signal
                from a GNSS disciplined Rubidium source, and observed
                exactly the same +0 to +3 samples of shift between the
                captured sequences. Seeing the same error when using a
                common clock indicates the problem is very likely to be
                in our test software.
              </span></p>
            <p class=3D"x_MsoNormal"><span lang=3D"EN-GB">=C2=A0</span></=
p>
            <p class=3D"x_MsoNormal"><span lang=3D"EN-GB">In our software=
 we
                follow <a
href=3D"https://eur03.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F=
%2Ffiles.ettus.com%2Fmanual%2Fpage_sync.html&amp;data=3D05%7C01%7Caiden.m=
orrison%40sintef.no%7Cfa4f6deef65f423e787c08da91a91677%7Ce1f00f39604145b0=
b309e0210d8b32af%7C1%7C0%7C637982452653631828%7CUnknown%7CTWFpbGZsb3d8eyJ=
WIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000%7C=
%7C%7C&amp;sdata=3DO88MQv%2FF3wgfA8GurCme6mIlKvRLi8KwgK5WixFuba0%3D&amp;r=
eserved=3D0"
originalsrc=3D"https://files.ettus.com/manual/page_sync.html"
shash=3D"laHvTFzKZhk63fpSlND2gasulAo37lHrJaSeTNP69yuhPWGko+gyBBApi+QpXokn=
nfd+vLpujeqijbgdF4kNvGedRpwPg7iHIutaD436IO7Tx6KNyeYblej2XHnLEe5gTlMhUKaLY=
ADUJ48bpgnUdCN5jOWtChxZxA6+4CRULHg=3D"
                  class=3D"x_moz-txt-link-freetext" moz-do-not-send=3D"tr=
ue">
                  https://files.ettus.com/manual/page_sync.html</a> for
                synchronization:</span></p>
            <ol style=3D"margin-top:0cm" type=3D"1" start=3D"1">
              <li class=3D"x_MsoListParagraph" style=3D"margin-left:0cm">=
<span
                  lang=3D"EN-GB">We create two USRP objects, one for each
                  radio.</span></li>
            </ol>
          </div>
        </blockquote>
        I would repeat this experiment, but using a single multi-usrp
        object.=C2=A0 UHD will time-align samples across radios in the<br=
>
        =C2=A0 same multi-usrp container object.=C2=A0 But not across obj=
ects.<br>
        <br>
        <blockquote type=3D"cite">
          <div class=3D"x_WordSection1">
            <ol style=3D"margin-top:0cm" type=3D"1" start=3D"1">
              <li class=3D"x_MsoListParagraph" style=3D"margin-left:0cm">=
<span
                  lang=3D"EN-GB"></span><br>
              </li>
              <li class=3D"x_MsoListParagraph" style=3D"margin-left:0cm">=
<span
                  lang=3D"EN-GB">We command the USRPs to use the external
                  synchronization (radios report back that they are
                  synchronized to the GPSDO in the former configuration)<=
/span></li>
              <li class=3D"x_MsoListParagraph" style=3D"margin-left:0cm">=
<span
                  lang=3D"EN-GB">We use a common time in the time spec
                  commands for each configuration change (e.g. setting
                  LO frequencies)</span></li>
              <li class=3D"x_MsoListParagraph" style=3D"margin-left:0cm">=
<span
                  lang=3D"EN-GB">For each burst capture of 50,000 samples
                  we set a time_spec for each USRP a long time in the
                  future (1.0 seconds since the last capture)</span></li>
            </ol>
          </div>
        </blockquote>
        To be clear you are requesting streaming start at the same time?<=
br>
        <br>
        <blockquote type=3D"cite">
          <div class=3D"x_WordSection1">
            <ol style=3D"margin-top:0cm" type=3D"1" start=3D"1">
              <li class=3D"x_MsoListParagraph" style=3D"margin-left:0cm">=
<span
                  lang=3D"EN-GB"></span><br>
              </li>
              <li class=3D"x_MsoListParagraph" style=3D"margin-left:0cm">=
<span
                  lang=3D"EN-GB">Step 4 is repeated 1000 times giving us
                  1000 bursts for evaluating the synchronization</span></=
li>
            </ol>
            <p class=3D"x_MsoNormal"><span lang=3D"EN-GB">=C2=A0</span></=
p>
            <p class=3D"x_MsoNormal"><span lang=3D"EN-GB">The only factor=
 I
                can see is that we are using WBX radio modules, and we
                are uncertain if this is somehow a factor in what we are
                seeing.</span></p>
            <p class=3D"x_MsoNormal"><span lang=3D"EN-GB">=C2=A0</span></=
p>
            <p class=3D"x_MsoNormal"><span lang=3D"EN-GB">Thanks in advan=
ce
                for feedback.</span></p>
            <p class=3D"x_MsoNormal"><span lang=3D"EN-GB">=C2=A0</span></=
p>
            <p class=3D"x_MsoNormal"><span lang=3D"EN-GB">-Aiden</span></=
p>
          </div>
          <br>
        </blockquote>
        Also, how are you checking time alignment?=C2=A0 Are you actually
        looking at the timestamps on the sample frames?<br>
        <br>
        <br>
        <br>
      </div>
    </blockquote>
    =C2=A0=C2=A0=C2=A0 <br>
  </body>
</html>

--------------qFHWEie70KukFAg20yVMj1Tw--

--===============7248830328059102336==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7248830328059102336==--
