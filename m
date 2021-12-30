Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 771A54818E6
	for <lists+usrp-users@lfdr.de>; Thu, 30 Dec 2021 04:23:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B78243852A5
	for <lists+usrp-users@lfdr.de>; Wed, 29 Dec 2021 22:23:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Eb+7aRel";
	dkim-atps=neutral
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 26CAE384A12
	for <usrp-users@lists.ettus.com>; Wed, 29 Dec 2021 22:22:16 -0500 (EST)
Received: by mail-qt1-f171.google.com with SMTP id p19so20568641qtw.12
        for <usrp-users@lists.ettus.com>; Wed, 29 Dec 2021 19:22:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=9PHDPwL7uQrw79kO8shgpRaBSd+tLs81P/lNcp6jy6k=;
        b=Eb+7aRelyp7bRBJkakNPi6AohT5q87AVL0o/eo1x61we4asPQgxObG+cVptUcChzpa
         xFetjYemvl8K6pHNBDo5zOc0/Faqc8dxcMu89ytsRFSgwwETQbIazC7b3WbngArEGr/i
         2nl+E0sf47+jkS8N9XuwXv3V623gLytYEvQyMbRltUWAM9E+UlSYrFC0/n5+AECXzToo
         zyI766nVv4L1sYNatZXsGUIHrkuMX4khQNrQxeGfOEJfOxnxEh0ODg979ZCkIua9OALw
         epC2hVa2XxJ3OHSUvR66l7v2TWYvRtHPSq7phzXa1OGH9TeMeWr78CtfhwGCzl4zjHw2
         yOrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=9PHDPwL7uQrw79kO8shgpRaBSd+tLs81P/lNcp6jy6k=;
        b=DPX/BxZzAynaMrxPhHKLHWvNKc7Z++YNvxQ0vw9HGjqD1sGXzfmbDgQmGJ+d0G6AR5
         dqqhbwYx5EAocNerL8QSPGQrs0Bt8505C1tvSrzwsaYvnCnllX10Cd0nXRExEFmhMXGk
         8a7maE93oHpZtcNPJceJRdVIU8IaToZPrDur/ldrqsjWieuGoiNBcSLIhiFYs73snZmU
         JukEbj/BCFCuspravj3iHvfGs8UqXgxXn+CkkDgZmdZW21VIFpCqviF2ZnfIzEMbKG9A
         TUUWom5mpyJqAb2NXTWWhpGOTHQ0+ifoIrVQ7BAZ6VfYKHg3Z1XoyrT+Gimai9YvxAkS
         4lwQ==
X-Gm-Message-State: AOAM531dbeBFdUIniNe6wcvgxm+1X4cAQpqbxsN3fT24b7M4EpYg3yPm
	PR/tTCpetnm7L5XiXmkz6ZY=
X-Google-Smtp-Source: ABdhPJzr22eDWgHJitHHbmIRJPhqRhDgLv7MXssb8W5ebWk11PHTNQSC2LzKSzYZxJ54Wc60nXPnWg==
X-Received: by 2002:ac8:7d4d:: with SMTP id h13mr24873257qtb.448.1640834536590;
        Wed, 29 Dec 2021 19:22:16 -0800 (PST)
Received: from [192.168.2.182] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id d20sm17794083qtg.73.2021.12.29.19.22.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Dec 2021 19:22:16 -0800 (PST)
Message-ID: <8426d377-c8c8-a0ad-5043-2935c45fa212@gmail.com>
Date: Wed, 29 Dec 2021 22:22:15 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Paul Atreides <maud.dib1984@gmail.com>
References: <d2b097dd-2a62-773f-c99b-c23b488d042a@gmail.com>
 <7DDDD8E6-C74E-4533-A528-A0A7A2063407@gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <7DDDD8E6-C74E-4533-A528-A0A7A2063407@gmail.com>
Message-ID-Hash: YJTWMG6WGRYARTRS6OQPGUXGPRQYDJ5T
X-Message-ID-Hash: YJTWMG6WGRYARTRS6OQPGUXGPRQYDJ5T
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Robin Coxe <coxe@close-haul.com>, Temir Karakurum <temirkarakurum@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E330 and rx-only USRPs
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YJTWMG6WGRYARTRS6OQPGUXGPRQYDJ5T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2498926982887735103=="

This is a multi-part message in MIME format.
--===============2498926982887735103==
Content-Type: multipart/alternative;
 boundary="------------WiH6G5e3xfo7GoekDJA3fc0R"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------WiH6G5e3xfo7GoekDJA3fc0R
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-12-29 22:18, Paul Atreides wrote:
> That was the QuadRadio!
RIght!=C2=A0=C2=A0 It has been so long, I'd forgotten the name :)

>
> <end transmission>
>
>> On Dec 29, 2021, at 22:09, Marcus D. Leech <patchvonbraun@gmail.com>=20
>> wrote:
>>
>> =EF=BB=BF
>> On 2021-12-29 21:50, Robin Coxe wrote:
>>> The only receive-only USRP product is the TwinRx daughtercard for=20
>>> the X310.
>> Thanks Robin.=C2=A0 I'd already mentioned this.
>>
>> But there *WAS* a product (not in the NI catalog) many years ago that=20
>> Ettus was building on an order-by-order basis that was
>> =C2=A0 a 4-channel (or was it 8?) RX-only device, using a YiG-based=20
>> synthesizer.=C2=A0 I think it was likely before your time at Ettus/NI.
>>
>> In my guise as a radio astronomer and manager of a radio-astronomy=20
>> observatory, I'd love a many-channels, brutally-coherent, RX-only
>> =C2=A0 device.=C2=A0 But the market is small....
>>
>>
>>> ---------------------------------------------------------------------=
---
>>> *From:* Marcus D Leech <patchvonbraun@gmail.com>
>>> *Sent:* Wednesday, December 29, 2021 12:35:25 PM
>>> *To:* Temir Karakurum <temirkarakurum@gmail.com>
>>> *Cc:* USRP-users@lists.ettus.com <USRP-users@lists.ettus.com>
>>> *Subject:* [USRP-users] Re: E330 and rx-only USRPs
>>> There has never been a. E330 product offering.
>>>
>>> Sent from my iPhone
>>>
>>>> On Dec 29, 2021, at 12:33 PM, Temir Karakurum=20
>>>> <temirkarakurum@gmail.com> wrote:
>>>>
>>>> =EF=BB=BF
>>>> Hi Marcus,
>>>>
>>>> Thanks for promptly replying. Has E330 ever been offered for=20
>>>> purchase? If so, has it been discontinued?
>>>>
>>>> Best,
>>>> Temir
>>>>
>>>> On Wed, Dec 29, 2021 at 8:31 PM Marcus D Leech=20
>>>> <patchvonbraun@gmail.com> wrote:
>>>>
>>>>     The TwinRx daughter cards for X310.
>>>>
>>>>     Sent from my iPhone
>>>>
>>>>>     On Dec 29, 2021, at 12:30 PM, Temir Karakurum
>>>>>     <temirkarakurum@gmail.com> wrote:
>>>>>
>>>>>     =EF=BB=BF
>>>>>     Hi there,
>>>>>
>>>>>     I recently came across a presentation by Matt Ettus at grcon16
>>>>>     <https://youtu.be/kEAkIfWViQo?t=3D1254>, where he introduces
>>>>>     E330 as a receive-only alternative for E-series USRPs. I
>>>>>     checked Ettus store as well as googled for some info about
>>>>>     E330 but could not find anything useful. Has it ever been
>>>>>     offered as a product by Ettus or NI?
>>>>>
>>>>>     As a general question, most of my applications are
>>>>>     receive-only in nature (spectrum monitoring etc.) and usually
>>>>>     Tx channels of the USRPs end up redundant. Is it possible to
>>>>>     purchase rx-only devices?
>>>>>
>>>>>     Best regards,
>>>>>     Temir
>>>>>
>>>>>
>>>>>     _______________________________________________
>>>>>     USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>     To unsubscribe send an email to usrp-users-leave@lists.ettus.co=
m
>>>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------WiH6G5e3xfo7GoekDJA3fc0R
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-12-29 22:18, Paul Atreides
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:7DDDD8E6-C74E-4533-A528-A0A7A2063407@gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      That was the QuadRadio!<br>
    </blockquote>
    RIght!=C2=A0=C2=A0 It has been so long, I'd forgotten the name :)<br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:7DDDD8E6-C74E-4533-A528-A0A7A2063407@gmail.com"><br>
      <div dir=3D"ltr">&lt;<span class=3D"Apple-style-span"
          style=3D"-webkit-tap-highlight-color: rgba(26, 26, 26,
          0.296875); -webkit-composition-fill-color: rgba(175, 192, 227,
          0.230469); -webkit-composition-frame-color: rgba(77, 128, 180,
          0.230469); ">end transmission&gt;</span></div>
      <div dir=3D"ltr"><br>
        <blockquote type=3D"cite">On Dec 29, 2021, at 22:09, Marcus D.
          Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvo=
nbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote:<br>
          <br>
        </blockquote>
      </div>
      <blockquote type=3D"cite">
        <div dir=3D"ltr">=EF=BB=BF
          <meta http-equiv=3D"Content-Type" content=3D"text/html;
            charset=3DUTF-8">
          <div class=3D"moz-cite-prefix">On 2021-12-29 21:50, Robin Coxe
            wrote:<br>
          </div>
          <blockquote type=3D"cite"
cite=3D"mid:BY5PR10MB4228FC83777C38EB8B1B0875AB459@BY5PR10MB4228.namprd10=
.prod.outlook.com">
            <meta http-equiv=3D"Content-Type" content=3D"text/html;
              charset=3DUTF-8">
            <div>
              <div>
                <div dir=3D"ltr" style=3D"color: rgb(0, 0, 0);
                  background-color: rgb(255, 255, 255);"> The only
                  receive-only USRP product is the TwinRx daughtercard
                  for the X310.=C2=A0 <br>
                </div>
              </div>
            </div>
          </blockquote>
          Thanks Robin.=C2=A0 I'd already mentioned this.<br>
          <br>
          But there *WAS* a product (not in the NI catalog) many years
          ago that Ettus was building on an order-by-order basis that
          was<br>
          =C2=A0 a 4-channel (or was it 8?) RX-only device, using a YiG-b=
ased
          synthesizer.=C2=A0 I think it was likely before your time at
          Ettus/NI.<br>
          <br>
          In my guise as a radio astronomer and manager of a
          radio-astronomy observatory, I'd love a many-channels,
          brutally-coherent, RX-only<br>
          =C2=A0 device.=C2=A0 But the market is small....<br>
          <br>
          <br>
          <blockquote type=3D"cite"
cite=3D"mid:BY5PR10MB4228FC83777C38EB8B1B0875AB459@BY5PR10MB4228.namprd10=
.prod.outlook.com">
            <div>
              <div> </div>
              <div id=3D"ms-outlook-mobile-signature"> </div>
            </div>
            <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
            <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font
                style=3D"font-size:11pt" face=3D"Calibri, sans-serif"
                color=3D"#000000"><b>From:</b> Marcus D Leech <a
                  class=3D"moz-txt-link-rfc2396E"
                  href=3D"mailto:patchvonbraun@gmail.com"
                  moz-do-not-send=3D"true">&lt;patchvonbraun@gmail.com&gt=
;</a><br>
                <b>Sent:</b> Wednesday, December 29, 2021 12:35:25 PM<br>
                <b>To:</b> Temir Karakurum <a
                  class=3D"moz-txt-link-rfc2396E"
                  href=3D"mailto:temirkarakurum@gmail.com"
                  moz-do-not-send=3D"true">&lt;temirkarakurum@gmail.com&g=
t;</a><br>
                <b>Cc:</b> <a class=3D"moz-txt-link-abbreviated
                  moz-txt-link-freetext"
                  href=3D"mailto:USRP-users@lists.ettus.com"
                  moz-do-not-send=3D"true">USRP-users@lists.ettus.com</a>
                <a class=3D"moz-txt-link-rfc2396E"
                  href=3D"mailto:USRP-users@lists.ettus.com"
                  moz-do-not-send=3D"true">&lt;USRP-users@lists.ettus.com=
&gt;</a><br>
                <b>Subject:</b> [USRP-users] Re: E330 and rx-only USRPs</=
font>
              <div>=C2=A0</div>
            </div>
            <div dir=3D"auto">There has never been a. E330 product
              offering.=C2=A0<br>
              <br>
              <div dir=3D"ltr">Sent from my iPhone</div>
              <div dir=3D"ltr"><br>
                <blockquote type=3D"cite">On Dec 29, 2021, at 12:33 PM,
                  Temir Karakurum <a class=3D"moz-txt-link-rfc2396E"
                    href=3D"mailto:temirkarakurum@gmail.com"
                    moz-do-not-send=3D"true">&lt;temirkarakurum@gmail.com=
&gt;</a>
                  wrote:<br>
                  <br>
                </blockquote>
              </div>
              <blockquote type=3D"cite">
                <div dir=3D"ltr">=EF=BB=BF
                  <div dir=3D"ltr">
                    <div>Hi Marcus,</div>
                    <div><br>
                    </div>
                    <div>Thanks for promptly replying. Has E330 ever
                      been offered for purchase? If so, has it been
                      discontinued?</div>
                    <div><br>
                    </div>
                    <div>Best,</div>
                    <div>Temir</div>
                  </div>
                  <br>
                  <div class=3D"x_gmail_quote">
                    <div dir=3D"ltr" class=3D"x_gmail_attr">On Wed, Dec 2=
9,
                      2021 at 8:31 PM Marcus D Leech &lt;<a
                        href=3D"mailto:patchvonbraun@gmail.com"
                        moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">patchvonbraun@gma=
il.com</a>&gt;
                      wrote:<br>
                    </div>
                    <blockquote class=3D"x_gmail_quote" style=3D"margin:0=
px
                      0px 0px 0.8ex; border-left:1px solid
                      rgb(204,204,204); padding-left:1ex">
                      <div dir=3D"auto">The TwinRx daughter cards for
                        X310.=C2=A0<br>
                        <br>
                        <div dir=3D"ltr">Sent from my iPhone</div>
                        <div dir=3D"ltr"><br>
                          <blockquote type=3D"cite">On Dec 29, 2021, at
                            12:30 PM, Temir Karakurum &lt;<a
                              href=3D"mailto:temirkarakurum@gmail.com"
                              target=3D"_blank" moz-do-not-send=3D"true"
                              class=3D"moz-txt-link-freetext">temirkaraku=
rum@gmail.com</a>&gt;
                            wrote:<br>
                            <br>
                          </blockquote>
                        </div>
                        <blockquote type=3D"cite">
                          <div dir=3D"ltr">=EF=BB=BF
                            <div dir=3D"ltr">Hi there,
                              <div><br>
                              </div>
                              <div>I recently came across a presentation
                                by Matt Ettus at <a
                                  href=3D"https://youtu.be/kEAkIfWViQo?t=3D=
1254"
                                  target=3D"_blank" moz-do-not-send=3D"tr=
ue">
                                  grcon16</a>, where he introduces E330
                                as a receive-only alternative for
                                E-series USRPs. I checked Ettus store as
                                well as googled for some info about E330
                                but could not find anything useful. Has
                                it ever been offered as a product by
                                Ettus or NI?</div>
                              <div><br>
                              </div>
                              <div>As a general question, most of my
                                applications are receive-only in nature
                                (spectrum monitoring etc.) and usually
                                Tx channels of the USRPs end up
                                redundant. Is it possible to purchase
                                rx-only devices?</div>
                              <div><br>
                              </div>
                              <div>Best regards,</div>
                              <div>Temir</div>
                              <div><br>
                              </div>
                              <div><br>
                              </div>
                            </div>
                            <span>_______________________________________=
________</span><br>
                            <span>USRP-users mailing list -- <a
                                href=3D"mailto:usrp-users@lists.ettus.com=
"
                                target=3D"_blank" moz-do-not-send=3D"true=
"
                                class=3D"moz-txt-link-freetext">
                                usrp-users@lists.ettus.com</a></span><br>
                            <span>To unsubscribe send an email to <a
                                href=3D"mailto:usrp-users-leave@lists.ett=
us.com"
                                target=3D"_blank" moz-do-not-send=3D"true=
"
                                class=3D"moz-txt-link-freetext">
                                usrp-users-leave@lists.ettus.com</a></spa=
n><br>
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
          <span>_______________________________________________</span><br=
>
          <span>USRP-users mailing list -- <a class=3D"moz-txt-link-abbre=
viated" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus=
.com</a></span><br>
          <span>To unsubscribe send an email to
            <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-use=
rs-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a></span><br>
        </div>
      </blockquote>
    </blockquote>
    <br>
  </body>
</html>
--------------WiH6G5e3xfo7GoekDJA3fc0R--

--===============2498926982887735103==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2498926982887735103==--
