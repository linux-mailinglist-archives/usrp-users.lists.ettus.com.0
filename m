Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F234818D5
	for <lists+usrp-users@lfdr.de>; Thu, 30 Dec 2021 04:08:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B2D80384F50
	for <lists+usrp-users@lfdr.de>; Wed, 29 Dec 2021 22:08:54 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="O9eN2Kx2";
	dkim-atps=neutral
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id D8B973845F3
	for <USRP-users@lists.ettus.com>; Wed, 29 Dec 2021 22:07:53 -0500 (EST)
Received: by mail-qk1-f170.google.com with SMTP id i187so19419726qkf.5
        for <USRP-users@lists.ettus.com>; Wed, 29 Dec 2021 19:07:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=D6txBS5EaQmRrR/ts+liWA0N92C09l0TZBLhow2f8TM=;
        b=O9eN2Kx2sXfeLT8iIGKWZClkxpam0l6UduP6pfN/21M2VO63oONnjyf7VrT/Yqj9Pa
         dEcY+H3+xvstSkZkJePzhd4aIvMjnJ/3zRqUXzuCm3GNsSfBlfkdqTfNqsWVOyrT7bJT
         aKt9i5gEM2ApbmxxgpZjfRjWd7E9e0RpCfIfo4BlmWp8etKZOrPTqqlDKcQvt4RtqiEn
         sFznMs2wwNQmRcMEvEu7ZpdJr5dpVXwQIUyPP8igTmWG7zS2Y4YduklIrTEXT/RJq5ht
         NmR9w+JMFTBXpRyctcHtFPq0Uj1WerZohqdbRptJITf/P6OL0PaRreznTGXMMBY/wRA6
         jUJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=D6txBS5EaQmRrR/ts+liWA0N92C09l0TZBLhow2f8TM=;
        b=XmT/wD7Jl/FHCpGe1eUG5eN6tv4CIQRut3PriRXFU7d4K0zKx+eWclpNvaJQdyEZ7t
         3WwD4ZM/ZMP1QVv1u+LdDj4WspfXi/TQu1K44gZkpl6UYsGKnnyPm9NgDsXUSrXkunne
         +PGlE92RiTHasg9S9ALpPjcSlyjat45jEzeJAJtypC8YEt45cHur32LMRtka6gJrJmUB
         N+xkCFKx/0Kp2GFJ0DXrkMLY0yfe3mLFNSUdWZotNhKR/SMwcDjbGNtQrhqFK3EXwbrI
         2o/6kbUtIykMBFL3vsqiTmUYwrlNoH5pJANpZP+1izp04sEPhwdbOy5Q9ku/0ozGzvWZ
         mb4g==
X-Gm-Message-State: AOAM530YlUwg/o8cDeSk9DGpSD3wbKhLUPIOnTWHjfMkZJ2xIot3ypdr
	IsmK7EenjczqmPtuVxHiX6g=
X-Google-Smtp-Source: ABdhPJxtfWgEKvkUaSaSUNTbaDOKgg9V0bDnWKaqCIE6S4ZKjba7pRXsK5aKrrQSp4JgVqSNlm2Zuw==
X-Received: by 2002:a05:620a:470e:: with SMTP id bs14mr20393507qkb.210.1640833673198;
        Wed, 29 Dec 2021 19:07:53 -0800 (PST)
Received: from [192.168.2.182] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id g14sm19575164qko.55.2021.12.29.19.07.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Dec 2021 19:07:52 -0800 (PST)
Message-ID: <d2b097dd-2a62-773f-c99b-c23b488d042a@gmail.com>
Date: Wed, 29 Dec 2021 22:07:52 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Robin Coxe <coxe@close-haul.com>,
 Temir Karakurum <temirkarakurum@gmail.com>
References: <CANP_ax+AaawkL=FWzKJv3KfjoK4p2ESKvxNw7ne89v=M7VnzAg@mail.gmail.com>
 <2A643551-D6A8-4097-8472-54E761EAF5CA@gmail.com>
 <BY5PR10MB4228FC83777C38EB8B1B0875AB459@BY5PR10MB4228.namprd10.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BY5PR10MB4228FC83777C38EB8B1B0875AB459@BY5PR10MB4228.namprd10.prod.outlook.com>
Message-ID-Hash: 6HJABKHN2IQ7DSF3FQGLOIQ5LJ2544UK
X-Message-ID-Hash: 6HJABKHN2IQ7DSF3FQGLOIQ5LJ2544UK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E330 and rx-only USRPs
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6HJABKHN2IQ7DSF3FQGLOIQ5LJ2544UK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0299872953397828354=="

This is a multi-part message in MIME format.
--===============0299872953397828354==
Content-Type: multipart/alternative;
 boundary="------------EITQtWHVeNwzIttwK2otBX9h"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------EITQtWHVeNwzIttwK2otBX9h
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-12-29 21:50, Robin Coxe wrote:
> The only receive-only USRP product is the TwinRx daughtercard for the=20
> X310.
Thanks Robin.=C2=A0 I'd already mentioned this.

But there *WAS* a product (not in the NI catalog) many years ago that=20
Ettus was building on an order-by-order basis that was
 =C2=A0 a 4-channel (or was it 8?) RX-only device, using a YiG-based=20
synthesizer.=C2=A0 I think it was likely before your time at Ettus/NI.

In my guise as a radio astronomer and manager of a radio-astronomy=20
observatory, I'd love a many-channels, brutally-coherent, RX-only
 =C2=A0 device.=C2=A0 But the market is small....


> -----------------------------------------------------------------------=
-
> *From:* Marcus D Leech <patchvonbraun@gmail.com>
> *Sent:* Wednesday, December 29, 2021 12:35:25 PM
> *To:* Temir Karakurum <temirkarakurum@gmail.com>
> *Cc:* USRP-users@lists.ettus.com <USRP-users@lists.ettus.com>
> *Subject:* [USRP-users] Re: E330 and rx-only USRPs
> There has never been a. E330 product offering.
>
> Sent from my iPhone
>
>> On Dec 29, 2021, at 12:33 PM, Temir Karakurum=20
>> <temirkarakurum@gmail.com> wrote:
>>
>> =EF=BB=BF
>> Hi Marcus,
>>
>> Thanks for promptly replying. Has E330 ever been offered for=20
>> purchase? If so, has it been discontinued?
>>
>> Best,
>> Temir
>>
>> On Wed, Dec 29, 2021 at 8:31 PM Marcus D Leech=20
>> <patchvonbraun@gmail.com> wrote:
>>
>>     The TwinRx daughter cards for X310.
>>
>>     Sent from my iPhone
>>
>>>     On Dec 29, 2021, at 12:30 PM, Temir Karakurum
>>>     <temirkarakurum@gmail.com> wrote:
>>>
>>>     =EF=BB=BF
>>>     Hi there,
>>>
>>>     I recently came across a presentation by Matt Ettus at grcon16
>>>     <https://youtu.be/kEAkIfWViQo?t=3D1254>, where he introduces E330
>>>     as a receive-only alternative for E-series USRPs. I checked
>>>     Ettus store as well as googled for some info about E330 but
>>>     could not find anything useful. Has it ever been offered as a
>>>     product by Ettus or NI?
>>>
>>>     As a general question, most of my applications are receive-only
>>>     in nature (spectrum monitoring etc.) and usually Tx channels of
>>>     the USRPs end up redundant. Is it possible to purchase rx-only
>>>     devices?
>>>
>>>     Best regards,
>>>     Temir
>>>
>>>
>>>     _______________________________________________
>>>     USRP-users mailing list -- usrp-users@lists.ettus.com
>>>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>

--------------EITQtWHVeNwzIttwK2otBX9h
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-12-29 21:50, Robin Coxe wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BY5PR10MB4228FC83777C38EB8B1B0875AB459@BY5PR10MB4228.namprd10=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <div>
        <div>
          <div dir=3D"ltr" style=3D"color: rgb(0, 0, 0); background-color=
:
            rgb(255, 255, 255);">
            The only receive-only USRP product is the TwinRx
            daughtercard for the X310.=C2=A0 <br>
          </div>
        </div>
      </div>
    </blockquote>
    Thanks Robin.=C2=A0 I'd already mentioned this.<br>
    <br>
    But there *WAS* a product (not in the NI catalog) many years ago
    that Ettus was building on an order-by-order basis that was<br>
    =C2=A0 a 4-channel (or was it 8?) RX-only device, using a YiG-based
    synthesizer.=C2=A0 I think it was likely before your time at Ettus/NI=
.<br>
    <br>
    In my guise as a radio astronomer and manager of a radio-astronomy
    observatory, I'd love a many-channels, brutally-coherent, RX-only<br>
    =C2=A0 device.=C2=A0 But the market is small....<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:BY5PR10MB4228FC83777C38EB8B1B0875AB459@BY5PR10MB4228.namprd10=
.prod.outlook.com">
      <div>
        <div>
        </div>
        <div id=3D"ms-outlook-mobile-signature">
        </div>
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Mar=
cus
          D Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patch=
vonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
          <b>Sent:</b> Wednesday, December 29, 2021 12:35:25 PM<br>
          <b>To:</b> Temir Karakurum <a class=3D"moz-txt-link-rfc2396E" h=
ref=3D"mailto:temirkarakurum@gmail.com">&lt;temirkarakurum@gmail.com&gt;<=
/a><br>
          <b>Cc:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:USRP-users@li=
sts.ettus.com">&lt;USRP-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> [USRP-users] Re: E330 and rx-only USRPs</font>
        <div>=C2=A0</div>
      </div>
      <div dir=3D"auto">There has never been a. E330 product offering.=C2=
=A0<br>
        <br>
        <div dir=3D"ltr">Sent from my iPhone</div>
        <div dir=3D"ltr"><br>
          <blockquote type=3D"cite">On Dec 29, 2021, at 12:33 PM, Temir
            Karakurum <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:t=
emirkarakurum@gmail.com">&lt;temirkarakurum@gmail.com&gt;</a> wrote:<br>
            <br>
          </blockquote>
        </div>
        <blockquote type=3D"cite">
          <div dir=3D"ltr">=EF=BB=BF
            <div dir=3D"ltr">
              <div>Hi Marcus,</div>
              <div><br>
              </div>
              <div>Thanks for promptly replying. Has E330 ever been
                offered for purchase? If so, has it been discontinued?</d=
iv>
              <div><br>
              </div>
              <div>Best,</div>
              <div>Temir</div>
            </div>
            <br>
            <div class=3D"x_gmail_quote">
              <div dir=3D"ltr" class=3D"x_gmail_attr">On Wed, Dec 29, 202=
1
                at 8:31 PM Marcus D Leech &lt;<a
                  href=3D"mailto:patchvonbraun@gmail.com"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">patchvonbraun@gmail.com</a>&gt;
                wrote:<br>
              </div>
              <blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px
                0px 0.8ex; border-left:1px solid rgb(204,204,204);
                padding-left:1ex">
                <div dir=3D"auto">The TwinRx daughter cards for X310.=C2=A0=
<br>
                  <br>
                  <div dir=3D"ltr">Sent from my iPhone</div>
                  <div dir=3D"ltr"><br>
                    <blockquote type=3D"cite">On Dec 29, 2021, at 12:30
                      PM, Temir Karakurum &lt;<a
                        href=3D"mailto:temirkarakurum@gmail.com"
                        target=3D"_blank" moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">temirkarakurum@gm=
ail.com</a>&gt;
                      wrote:<br>
                      <br>
                    </blockquote>
                  </div>
                  <blockquote type=3D"cite">
                    <div dir=3D"ltr">=EF=BB=BF
                      <div dir=3D"ltr">Hi there,
                        <div><br>
                        </div>
                        <div>I recently came across a presentation by
                          Matt Ettus at <a
                            href=3D"https://youtu.be/kEAkIfWViQo?t=3D1254=
"
                            target=3D"_blank" moz-do-not-send=3D"true">
                            grcon16</a>, where he introduces E330 as a
                          receive-only alternative for E-series USRPs. I
                          checked Ettus store as well as googled for
                          some info about E330 but could not find
                          anything useful. Has it ever been offered as a
                          product by Ettus or NI?</div>
                        <div><br>
                        </div>
                        <div>As a general question, most of my
                          applications are receive-only in nature
                          (spectrum monitoring etc.) and usually Tx
                          channels of the USRPs end up redundant. Is it
                          possible to purchase rx-only devices?</div>
                        <div><br>
                        </div>
                        <div>Best regards,</div>
                        <div>Temir</div>
                        <div><br>
                        </div>
                        <div><br>
                        </div>
                      </div>
                      <span>_____________________________________________=
__</span><br>
                      <span>USRP-users mailing list -- <a
                          href=3D"mailto:usrp-users@lists.ettus.com"
                          target=3D"_blank" moz-do-not-send=3D"true"
                          class=3D"moz-txt-link-freetext">
                          usrp-users@lists.ettus.com</a></span><br>
                      <span>To unsubscribe send an email to <a
                          href=3D"mailto:usrp-users-leave@lists.ettus.com=
"
                          target=3D"_blank" moz-do-not-send=3D"true"
                          class=3D"moz-txt-link-freetext">
                          usrp-users-leave@lists.ettus.com</a></span><br>
                    </div>
                  </blockquote>
                </div>
              </blockquote>
            </div>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>
--------------EITQtWHVeNwzIttwK2otBX9h--

--===============0299872953397828354==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0299872953397828354==--
