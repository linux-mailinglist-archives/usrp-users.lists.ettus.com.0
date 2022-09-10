Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B79F25B4730
	for <lists+usrp-users@lfdr.de>; Sat, 10 Sep 2022 17:04:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 121D0380B7C
	for <lists+usrp-users@lfdr.de>; Sat, 10 Sep 2022 11:04:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662822287; bh=iwmaCqBTeO+94pW2fSmxjG/QsUY5SWnvh0RgyP/W4ik=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=TiLhR+FcJREtmscOWVBTtWqwcoU/SFD7F/ROpT91QTWy9li7io536z/AdXG8Bd/Vt
	 t8S3jh8vCTRob1bWxTJRlRqQ+pgJnIWkCNU4DiThgxnFUJKxSnOLDI82CVcXJcnzIl
	 2we/dylVaWzqhbZ9EIQWkQ/MUB2D2MTMf8c51vtgeOAaCIjr9ELgF3tkfLG9gynHrE
	 kqL1Xwu0x8tIBNyCb7M3UL8QB2MIvYCIwILJUVhwhAmQauY7VHVtYjNoEbl8b88h6z
	 GQa1lN+bc8UHTqvBzyrt6edA2XyEqQqp8JnqWPAnX2CtX1nZ1t9smlO5Eg0YrzbBfX
	 KRIRtiL3iOLDQ==
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id A22423811AB
	for <usrp-users@lists.ettus.com>; Sat, 10 Sep 2022 11:03:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="g9+DIlEv";
	dkim-atps=neutral
Received: by mail-qk1-f177.google.com with SMTP id 3so2821106qka.5
        for <usrp-users@lists.ettus.com>; Sat, 10 Sep 2022 08:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date;
        bh=wmSRVIKKe5Be4SI2hNeqT8kEdy9DJxHZkbZxxyqTstA=;
        b=g9+DIlEvQNWbY4u/lth/e1JFZdSCW18+MMxtrKFWjioJBWOHY61OWcNYEZIYEfRD82
         fhh3x9CT9KmnxgXMirf553nMbvldDUg2mHVytvdZhAhiSc2CG+yaF8miu3ZKsDcCePwK
         wh7iugPzZ6DcXUePF/RkPk+gsmiyf4VxrnDUwiGL62NJOy5asn4ou5Przy/32iccuoCt
         ZzxANHRx4ob9FoJ1uSRDql9WnFwMn51+NueCaY3jdKSuUNyI1Z4tWrCpsm0ZZJgdGNSe
         WEfkTn81Z2+0anm8ulpFZK2XoqQQpQXiE+MK+WSg7HjR21bi5NJhvIKAXVpPtoGJ7D5u
         DeWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date;
        bh=wmSRVIKKe5Be4SI2hNeqT8kEdy9DJxHZkbZxxyqTstA=;
        b=1AbBbsEsll39c0YgzAa82ce2E9RBs4S6dHh170ba00RHpcHjOqzJOKRQJmTPhPJE02
         CM3Xcxl6Hc+ElWHB+mtUhmxDgA55g1lPs4ab6x3K+b2nJdEyyWitCtT9GZSfAKQe9w82
         7B0Yy+CH3m/qv2ZvsDZKv8i3LzKIDkvus0KLK5CMsPgBial8jDW62wa0DyrMWhoBHvGA
         IhFSrZUkHYfTW8wDv/8ukZQ3QKbMzaBcuCtUr10Jmq+iBfNSFHfcaIWlL0Jd7XDEu203
         l3yABlvXmx3nzliy1+QOO/Lk4ajqnANWccu3LevWO7nQNd83fIaxbt0dBzC5AtIum+cI
         CYpA==
X-Gm-Message-State: ACgBeo2mDWpyeVUQz+ENvrM9jZC+cZGykHcqnVs6NI0pzMGTMOl6LZRc
	QoG5zHulDv/8A+Wdxrqecgg=
X-Google-Smtp-Source: AA6agR5bz2IEnKhg3N3Tt/+bAhxDW3ydPmDJUXPYa//3PUhlpgteut56keb/0Aro3D08K2qPNADzZA==
X-Received: by 2002:a05:620a:1b83:b0:6bb:43ad:f864 with SMTP id dv3-20020a05620a1b8300b006bb43adf864mr13148401qkb.360.1662822215998;
        Sat, 10 Sep 2022 08:03:35 -0700 (PDT)
Received: from [192.168.2.186] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id fx6-20020a05622a4ac600b0035ba90126e7sm1418477qtb.91.2022.09.10.08.03.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Sep 2022 08:03:35 -0700 (PDT)
Message-ID: <7e73024c-b833-5ec2-9558-a2b601803ed3@gmail.com>
Date: Sat, 10 Sep 2022 11:03:34 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Aiden Morrison <Aiden.Morrison@sintef.no>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <OL1P279MB008439AD371C6A7E87C1D4F786409@OL1P279MB0084.NORP279.PROD.OUTLOOK.COM>
 <81395d53-7dfb-ac73-620b-2768d4fa9d0c@gmail.com>
 <OL1P279MB00846F6159EE85D5823D9C9386429@OL1P279MB0084.NORP279.PROD.OUTLOOK.COM>
 <9dcb3a2c-9e76-c07c-6d36-d3a68c650d72@gmail.com>
 <OL1P279MB0084B741E6D12D6226CA5D9386429@OL1P279MB0084.NORP279.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <OL1P279MB0084B741E6D12D6226CA5D9386429@OL1P279MB0084.NORP279.PROD.OUTLOOK.COM>
Message-ID-Hash: 3M6ZTE75GDQCWMN7U7VOATKTNDCMKJTC
X-Message-ID-Hash: 3M6ZTE75GDQCWMN7U7VOATKTNDCMKJTC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N210 USRP synchronization performance 4x worse than expected - suspect configuration problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3M6ZTE75GDQCWMN7U7VOATKTNDCMKJTC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7192532293829862835=="

This is a multi-part message in MIME format.
--===============7192532293829862835==
Content-Type: multipart/alternative;
 boundary="------------qMOTxZgzyve0hAh0tx8zLgEN"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------qMOTxZgzyve0hAh0tx8zLgEN
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-09-10 10:57, Aiden Morrison wrote:
> Hi Marcus,
>
> This situation occurs with both our laboratory RB oscillator (it's=20
> also a GPSDO so provides a 1pps aligned to UTC and a 10 MHz output)=20
> and with the Ettus research GPSDO modules
> purchased here: https://www.ettus.com/all-products/gpsdo-kit/
> <https://www.ettus.com/all-products/gpsdo-kit/>
> =09
> GPSDO Kit for USRP N200/N210 | Ettus Research, a National Instruments=20
> Brand | The leader in Software Defined Radio (SDR)=20
> <https://www.ettus.com/all-products/gpsdo-kit/>
> USRP GPS-Disciplined Oscillator Kit . Includes GPS locked reference=20
> oscillator for USRP N200/N210 series (rev 4 and above).
> www.ettus.com
>
> The RB oscillator has a shorter PPS high duration than the USRP=20
> specifies as the minimum duty cycle, but again since this is happening=20
> with both this timing source and the ettus supplied GPSDO sources, we=20
> think the fault is in either the software or the USRP.
>
> -Aiden
>
>
I'm trying to think of a mechanism for this given that your timestamps=20
are aligned.

The N210 firmware at this point is completely frozen in terms of new=20
development, and even if this turns out to be a bug,
 =C2=A0 it would be a while before it got fixed.

Can you try something a bit simpler?=C2=A0=C2=A0 Present the same CW sign=
al to the=20
RX inputs of both radios, and just plot the signals against one another,=20
for a few thousand samples?


> -----------------------------------------------------------------------=
-
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* 10 September 2022 16:50
> *To:* Aiden Morrison <Aiden.Morrison@sintef.no>;=20
> usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Re: N210 USRP synchronization performance=20
> 4x worse than expected - suspect configuration problem
> On 2022-09-10 06:06, Aiden Morrison wrote:
>> Hi Marcus,
>>
>> The timestamps returning from the radios are always in perfect=20
>> agreement in the metadata between the two USRPs. We are checking the=20
>> synchronization by doing a correlation on the captured sample blocks=20
>> and observing the peak shifting by 0-3 samples. If the front-ends=20
>> were actually synchronized at the ~100 ns level, this would be +/-1.
> To be clear, this is with your laboratory setup, with an Rb refclock,=20
> and some kind of shared 1PPS signal?
>
> What are the characteristics of your 1PPS signal in this case? Rise=20
> time, pulse duration, voltage, etc.
>
>
>> ----------------------------------------------------------------------=
--
>> *From:* Marcus D. Leech <patchvonbraun@gmail.com>=20
>> <mailto:patchvonbraun@gmail.com>
>> *Sent:* 08 September 2022 16:47
>> *To:* usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>=20
>> <usrp-users@lists.ettus.com> <mailto:usrp-users@lists.ettus.com>
>> *Subject:* [USRP-users] Re: N210 USRP synchronization performance 4x=20
>> worse than expected - suspect configuration problem
>> On 2022-09-08 04:54, Aiden Morrison via USRP-users wrote:
>>>
>>> Hello,
>>>
>>> I am attempting to do synchronized multi-site reception using USRP=20
>>> N210 radios. Our first attempt was to make use of 2x radios with=20
>>> ettus GPSDO modules installed, feeding the radios with a common PRN=20
>>> sequence and correlating the outputs to evaluate timing offset. The=20
>>> Ettus GPSDO radios say they provide +/-60ns timing accuracy, so even=20
>>> in the worst case where one of the radios goes to each side of the=20
>>> limit, at 10 MHz we would have slightly more than 1 sample of offset=20
>>> between them, but in testing we observed +0 to +3 samples of offset.
>>>
>>> To isolate the problem we repeated the test with two different N210=20
>>> radios fed by a common external 10 MHz and PPS signal from a GNSS=20
>>> disciplined Rubidium source, and observed exactly the same +0 to +3=20
>>> samples of shift between the captured sequences. Seeing the same=20
>>> error when using a common clock indicates the problem is very likely=20
>>> to be in our test software.
>>>
>>> In our software we follow=20
>>> https://files.ettus.com/manual/page_sync.html=20
>>> <https://eur03.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2F=
files.ettus.com%2Fmanual%2Fpage_sync.html&data=3D05%7C01%7CAiden.Morrison=
%40sintef.no%7Cb3cb5353e62b4b076f0408da933bde15%7Ce1f00f39604145b0b309e02=
10d8b32af%7C1%7C0%7C637984182589926129%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC=
4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&=
sdata=3Dl0fbP8XnZ5khyJaJC3zBR5%2B3CAlOVb4LHGrs%2BorfQN0%3D&reserved=3D0>=20
>>> for synchronization:
>>>
>>>  1. We create two USRP objects, one for each radio.
>>>
>> I would repeat this experiment, but using a single multi-usrp=20
>> object.=C2=A0 UHD will time-align samples across radios in the
>> =C2=A0 same multi-usrp container object.=C2=A0 But not across objects.
>>
>>> 1.
>>>
>>>
>>>  2. We command the USRPs to use the external synchronization (radios
>>>     report back that they are synchronized to the GPSDO in the
>>>     former configuration)
>>>  3. We use a common time in the time spec commands for each
>>>     configuration change (e.g. setting LO frequencies)
>>>  4. For each burst capture of 50,000 samples we set a time_spec for
>>>     each USRP a long time in the future (1.0 seconds since the last
>>>     capture)
>>>
>> To be clear you are requesting streaming start at the same time?
>>
>>> 1.
>>>
>>>
>>>  2. Step 4 is repeated 1000 times giving us 1000 bursts for
>>>     evaluating the synchronization
>>>
>>> The only factor I can see is that we are using WBX radio modules,=20
>>> and we are uncertain if this is somehow a factor in what we are seein=
g.
>>>
>>> Thanks in advance for feedback.
>>>
>>> -Aiden
>>>
>>>
>> Also, how are you checking time alignment?=C2=A0 Are you actually look=
ing=20
>> at the timestamps on the sample frames?
>>
>>
>>
>

--------------qMOTxZgzyve0hAh0tx8zLgEN
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-09-10 10:57, Aiden Morrison
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:OL1P279MB0084B741E6D12D6226CA5D9386429@OL1P279MB0084.NORP279.=
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
        This situation occurs with both our laboratory RB oscillator
        (it's also a GPSDO so provides a 1pps aligned to UTC and a 10
        MHz output) and with the Ettus research GPSDO modules=C2=A0</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        purchased here:=C2=A0<a
          href=3D"https://www.ettus.com/all-products/gpsdo-kit/"
          id=3D"LPlnkOWALinkPreview" moz-do-not-send=3D"true"
          class=3D"moz-txt-link-freetext">https://www.ettus.com/all-produ=
cts/gpsdo-kit/</a></div>
      <div class=3D"_Entity _EType_OWALinkPreview _EId_OWALinkPreview
        _EReadonly_1">
        <div
id=3D"LPBorder_GTaHR0cHM6Ly93d3cuZXR0dXMuY29tL2FsbC1wcm9kdWN0cy9ncHNkby1r=
aXQv"
          class=3D"LPBorder900146" style=3D"width: 100%; margin-top: 16px=
;
          margin-bottom: 16px; position: relative; max-width: 800px;
          min-width: 424px;">
          <table id=3D"LPContainer900146" role=3D"presentation"
            style=3D"padding: 12px 36px 12px 12px; width: 100%;
            border-width: 1px; border-style: solid; border-color:
            rgb(200, 200, 200); border-radius: 2px;">
            <tbody>
              <tr style=3D"border-spacing: 0px;" valign=3D"top">
                <td>
                  <div id=3D"LPImageContainer900146" style=3D"position:
                    relative; margin-right: 12px; height: 232.615px;
                    overflow: hidden; width: 240px;">
                    <a target=3D"_blank" id=3D"LPImageAnchor900146"
                      href=3D"https://www.ettus.com/all-products/gpsdo-ki=
t/"
                      moz-do-not-send=3D"true"><img
                        id=3D"LPThumbnailImageId900146" alt=3D""
                        style=3D"display: block;"
src=3D"https://www.ettus.com/wp-content/uploads/2019/01/GPSDO_650x650-650=
x630.jpg"
                        moz-do-not-send=3D"true" width=3D"240" height=3D"=
232"></a></div>
                </td>
                <td style=3D"width: 100%;">
                  <div id=3D"LPTitle900146" style=3D"font-size: 21px;
                    font-weight: 300; margin-right: 8px; font-family:
                    wf_segoe-ui_light, &quot;Segoe UI Light&quot;,
                    &quot;Segoe WP Light&quot;, &quot;Segoe UI&quot;,
                    &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif;
                    margin-bottom: 12px;">
                    <a target=3D"_blank" id=3D"LPUrlAnchor900146"
                      href=3D"https://www.ettus.com/all-products/gpsdo-ki=
t/"
                      style=3D"text-decoration: none; color:
                      var(--themePrimary);" moz-do-not-send=3D"true">GPSD=
O
                      Kit for USRP N200/N210 | Ettus Research, a
                      National Instruments Brand | The leader in
                      Software Defined Radio (SDR)</a></div>
                  <div id=3D"LPDescription900146" style=3D"font-size: 14p=
x;
                    max-height: 100px; color: rgb(102, 102, 102);
                    font-family: wf_segoe-ui_normal, &quot;Segoe
                    UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial,
                    sans-serif; margin-bottom: 12px; margin-right: 8px;
                    overflow: hidden;">
                    USRP GPS-Disciplined Oscillator Kit . Includes GPS
                    locked reference oscillator for USRP N200/N210
                    series (rev 4 and above).</div>
                  <div id=3D"LPMetadata900146" style=3D"font-size: 14px;
                    font-weight: 400; color: rgb(166, 166, 166);
                    font-family: wf_segoe-ui_normal, &quot;Segoe
                    UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial,
                    sans-serif;">
                    <a class=3D"moz-txt-link-abbreviated" href=3D"http://=
www.ettus.com">www.ettus.com</a></div>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        The RB oscillator has a shorter PPS high duration than the USRP
        specifies as the minimum duty cycle, but again since this is
        happening with both this timing source and the ettus supplied
        GPSDO sources, we think the fault is in either the software or
        the USRP.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        -Aiden</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
    </blockquote>
    I'm trying to think of a mechanism for this given that your
    timestamps are aligned.<br>
    <br>
    The N210 firmware at this point is completely frozen in terms of new
    development, and even if this turns out to be a bug,<br>
    =C2=A0 it would be a while before it got fixed.<br>
    <br>
    Can you try something a bit simpler?=C2=A0=C2=A0 Present the same CW =
signal to
    the RX inputs of both radios, and just plot the signals against one
    another, for a few thousand samples?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:OL1P279MB0084B741E6D12D6226CA5D9386429@OL1P279MB0084.NORP279.=
PROD.OUTLOOK.COM">
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Mar=
cus
          D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patc=
hvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
          <b>Sent:</b> 10 September 2022 16:50<br>
          <b>To:</b> Aiden Morrison <a class=3D"moz-txt-link-rfc2396E" hr=
ef=3D"mailto:Aiden.Morrison@sintef.no">&lt;Aiden.Morrison@sintef.no&gt;</=
a>;
          <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-users=
@lists.ettus.com">usrp-users@lists.ettus.com</a> <a class=3D"moz-txt-link=
-rfc2396E" href=3D"mailto:usrp-users@lists.ettus.com">&lt;usrp-users@list=
s.ettus.com&gt;</a><br>
          <b>Subject:</b> Re: [USRP-users] Re: N210 USRP synchronization
          performance 4x worse than expected - suspect configuration
          problem</font>
        <div>=C2=A0</div>
      </div>
      <div>
        <div class=3D"x_moz-cite-prefix">On 2022-09-10 06:06, Aiden
          Morrison wrote:<br>
        </div>
        <blockquote type=3D"cite">
          <style type=3D"text/css" style=3D"display:none">p
	{margin-top:0;
	margin-bottom:0}</style>
          <div class=3D"x_elementToProof"
            style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Hi Marcus,</div>
          <div class=3D"x_elementToProof"
            style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            <br>
          </div>
          <div class=3D"x_elementToProof"
            style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            The timestamps returning from the radios are always in
            perfect agreement in the metadata between the two USRPs. We
            are checking the synchronization by doing a correlation on
            the captured sample blocks and observing the peak shifting
            by 0-3 samples. If the front-ends were actually synchronized
            at the ~100 ns level, this would be +/-1. <br>
          </div>
        </blockquote>
        To be clear, this is with your laboratory setup, with an Rb
        refclock, and some kind of shared 1PPS signal?<br>
        <br>
        What are the characteristics of your 1PPS signal in this case?=C2=
=A0
        Rise time, pulse duration, voltage, etc.<br>
        <br>
        <br>
        <blockquote type=3D"cite">
          <hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
          <div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font
              style=3D"font-size:11pt" face=3D"Calibri, sans-serif"
              color=3D"#000000"><b>From:</b> Marcus D. Leech
              <a class=3D"x_moz-txt-link-rfc2396E"
                href=3D"mailto:patchvonbraun@gmail.com"
                moz-do-not-send=3D"true">&lt;patchvonbraun@gmail.com&gt;<=
/a><br>
              <b>Sent:</b> 08 September 2022 16:47<br>
              <b>To:</b> <a class=3D"x_moz-txt-link-abbreviated
                moz-txt-link-freetext"
                href=3D"mailto:usrp-users@lists.ettus.com"
                moz-do-not-send=3D"true">
                usrp-users@lists.ettus.com</a> <a
                class=3D"x_moz-txt-link-rfc2396E"
                href=3D"mailto:usrp-users@lists.ettus.com"
                moz-do-not-send=3D"true">
                &lt;usrp-users@lists.ettus.com&gt;</a><br>
              <b>Subject:</b> [USRP-users] Re: N210 USRP synchronization
              performance 4x worse than expected - suspect configuration
              problem</font>
            <div>=C2=A0</div>
          </div>
          <div>
            <div class=3D"x_x_moz-cite-prefix">On 2022-09-08 04:54, Aiden
              Morrison via USRP-users wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <meta name=3D"Generator" content=3D"Microsoft Word 15
                (filtered medium)">
              <style>@font-face
	{font-family:"Cambria Math"}@font-face
	{font-family:Calibri}p.x_x_MsoNormal, li.x_x_MsoNormal, div.x_x_MsoNorma=
l
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}a:link, span.x_x_MsoHyperlink
	{color:#0563C1;
	text-decoration:underline}p.x_x_MsoListParagraph, li.x_x_MsoListParagrap=
h, div.x_x_MsoListParagraph
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}span.x_x_EmailStyle17
	{font-family:"Calibri",sans-serif;
	color:windowtext}.x_x_MsoChpDefault
	{font-family:"Calibri",sans-serif}ol
	{margin-bottom:0cm}ul
	{margin-bottom:0cm}</style>
              <div class=3D"x_x_WordSection1">
                <p class=3D"x_x_MsoNormal">Hello,</p>
                <p class=3D"x_x_MsoNormal">=C2=A0</p>
                <p class=3D"x_x_MsoNormal"><span lang=3D"EN-GB">I am
                    attempting to do synchronized multi-site reception
                    using USRP N210 radios. Our first attempt was to
                    make use of 2x radios with ettus GPSDO modules
                    installed, feeding the radios with a common PRN
                    sequence and correlating the outputs to evaluate
                    timing offset. The Ettus GPSDO radios say they
                    provide +/-60ns timing accuracy, so even in the
                    worst case where one of the radios goes to each side
                    of the limit, at 10 MHz we would have slightly more
                    than 1 sample of offset between them, but in testing
                    we observed +0 to +3 samples of offset.</span></p>
                <p class=3D"x_x_MsoNormal"><span lang=3D"EN-GB">=C2=A0</s=
pan></p>
                <p class=3D"x_x_MsoNormal"><span lang=3D"EN-GB">To isolat=
e
                    the problem we repeated the test with two different
                    N210 radios fed by a common external 10 MHz and PPS
                    signal from a GNSS disciplined Rubidium source, and
                    observed exactly the same +0 to +3 samples of shift
                    between the captured sequences. Seeing the same
                    error when using a common clock indicates the
                    problem is very likely to be in our test software.
                  </span></p>
                <p class=3D"x_x_MsoNormal"><span lang=3D"EN-GB">=C2=A0</s=
pan></p>
                <p class=3D"x_x_MsoNormal"><span lang=3D"EN-GB">In our
                    software we follow <a
href=3D"https://eur03.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F=
%2Ffiles.ettus.com%2Fmanual%2Fpage_sync.html&amp;data=3D05%7C01%7CAiden.M=
orrison%40sintef.no%7Cb3cb5353e62b4b076f0408da933bde15%7Ce1f00f39604145b0=
b309e0210d8b32af%7C1%7C0%7C637984182589926129%7CUnknown%7CTWFpbGZsb3d8eyJ=
WIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C=
%7C%7C&amp;sdata=3Dl0fbP8XnZ5khyJaJC3zBR5%2B3CAlOVb4LHGrs%2BorfQN0%3D&amp=
;reserved=3D0"
originalsrc=3D"https://files.ettus.com/manual/page_sync.html"
shash=3D"MkKNyl+kATTEQew+NHtArocd/dBgTVuVx3Q0rGJu8l4l3OggfNlFh5x4EAIugKPn=
IiA0PV/7XAltsPe9FhHjIvs8ZwJz18iJH2FhhyQmT2MIFCrKu/XDCRJ01BVtyNIEVbpuouLy4=
BSBZRe4X37UN0oHtm5oXLO41Rpmz0Hd66I=3D"
                      class=3D"x_x_moz-txt-link-freetext"
                      moz-do-not-send=3D"true">
                      https://files.ettus.com/manual/page_sync.html</a>
                    for synchronization:</span></p>
                <ol style=3D"margin-top:0cm" type=3D"1" start=3D"1">
                  <li class=3D"x_x_MsoListParagraph"
                    style=3D"margin-left:0cm"><span lang=3D"EN-GB">We cre=
ate
                      two USRP objects, one for each radio.</span></li>
                </ol>
              </div>
            </blockquote>
            I would repeat this experiment, but using a single
            multi-usrp object.=C2=A0 UHD will time-align samples across
            radios in the<br>
            =C2=A0 same multi-usrp container object.=C2=A0 But not across=
 objects.<br>
            <br>
            <blockquote type=3D"cite">
              <div class=3D"x_x_WordSection1">
                <ol style=3D"margin-top:0cm" type=3D"1" start=3D"1">
                  <li class=3D"x_x_MsoListParagraph"
                    style=3D"margin-left:0cm"><span lang=3D"EN-GB"></span=
><br>
                  </li>
                  <li class=3D"x_x_MsoListParagraph"
                    style=3D"margin-left:0cm"><span lang=3D"EN-GB">We
                      command the USRPs to use the external
                      synchronization (radios report back that they are
                      synchronized to the GPSDO in the former
                      configuration)</span></li>
                  <li class=3D"x_x_MsoListParagraph"
                    style=3D"margin-left:0cm"><span lang=3D"EN-GB">We use=
 a
                      common time in the time spec commands for each
                      configuration change (e.g. setting LO frequencies)<=
/span></li>
                  <li class=3D"x_x_MsoListParagraph"
                    style=3D"margin-left:0cm"><span lang=3D"EN-GB">For ea=
ch
                      burst capture of 50,000 samples we set a time_spec
                      for each USRP a long time in the future (1.0
                      seconds since the last capture)</span></li>
                </ol>
              </div>
            </blockquote>
            To be clear you are requesting streaming start at the same
            time?<br>
            <br>
            <blockquote type=3D"cite">
              <div class=3D"x_x_WordSection1">
                <ol style=3D"margin-top:0cm" type=3D"1" start=3D"1">
                  <li class=3D"x_x_MsoListParagraph"
                    style=3D"margin-left:0cm"><span lang=3D"EN-GB"></span=
><br>
                  </li>
                  <li class=3D"x_x_MsoListParagraph"
                    style=3D"margin-left:0cm"><span lang=3D"EN-GB">Step 4=
 is
                      repeated 1000 times giving us 1000 bursts for
                      evaluating the synchronization</span></li>
                </ol>
                <p class=3D"x_x_MsoNormal"><span lang=3D"EN-GB">=C2=A0</s=
pan></p>
                <p class=3D"x_x_MsoNormal"><span lang=3D"EN-GB">The only
                    factor I can see is that we are using WBX radio
                    modules, and we are uncertain if this is somehow a
                    factor in what we are seeing.</span></p>
                <p class=3D"x_x_MsoNormal"><span lang=3D"EN-GB">=C2=A0</s=
pan></p>
                <p class=3D"x_x_MsoNormal"><span lang=3D"EN-GB">Thanks in
                    advance for feedback.</span></p>
                <p class=3D"x_x_MsoNormal"><span lang=3D"EN-GB">=C2=A0</s=
pan></p>
                <p class=3D"x_x_MsoNormal"><span lang=3D"EN-GB">-Aiden</s=
pan></p>
              </div>
              <br>
            </blockquote>
            Also, how are you checking time alignment?=C2=A0 Are you actu=
ally
            looking at the timestamps on the sample frames?<br>
            <br>
            <br>
            <br>
          </div>
        </blockquote>
        =C2=A0=C2=A0=C2=A0 <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------qMOTxZgzyve0hAh0tx8zLgEN--

--===============7192532293829862835==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7192532293829862835==--
