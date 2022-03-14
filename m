Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E53F54D8B32
	for <lists+usrp-users@lfdr.de>; Mon, 14 Mar 2022 18:56:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D51F3384CE3
	for <lists+usrp-users@lfdr.de>; Mon, 14 Mar 2022 13:56:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZTA9WDku";
	dkim-atps=neutral
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id AE4CD384604
	for <USRP-users@lists.ettus.com>; Mon, 14 Mar 2022 13:55:53 -0400 (EDT)
Received: by mail-qv1-f52.google.com with SMTP id p8so13115196qvg.12
        for <USRP-users@lists.ettus.com>; Mon, 14 Mar 2022 10:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=u88gtCJ7zJEn5WTrWNh4L9BKNLH5g6Rc9i0O/VHm1MI=;
        b=ZTA9WDkuxShn7ruXinEqUeta7DE9JRoDfEpdFc610aQsVvpfdCGI6EvF/TAxpvxtmU
         ReglYqGFrOLyJk+HxBNmnBTtegjbld7s1QNJ0YRhPZ4nlwlWV6Q+pHJ+RmGXSowasKcH
         rkP+NxoElS2/DRuPOl8bMu7STewYaPeqhuimMt1XgkMXfil+fn2dref7o+paOF0upGL1
         zhi2tn3oOozQYqwLC6P7wb1K9BJdkhGwX+N+QLqJPuBYjGHAsE1O4cu8L2BE/E1xbbQQ
         xUGtfr1NuEGg39+Fa/cUtlNgTmyDvV2dALMQqo3KNRU0/TFOVWrbfpXOBNhSSGz11hI7
         8Sig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=u88gtCJ7zJEn5WTrWNh4L9BKNLH5g6Rc9i0O/VHm1MI=;
        b=vzyHw9bHY3oCGMLY/J8V4Ik0MCwlOH3+TP4eCNSh78QyxVED/8v60twQpgwuoKSG6+
         14z2mL5WtoyiWvJS9t664V5Kii4qVpULONx/mQwMEJ29KGxq8gWtf+wBZJlnziExV9xs
         gY8F60TW0t9FT567tHQ7jXJl6wKW0uX7qOQDpsquISoyg5YtFIaWothLhgZO8FIQs8MZ
         BXe9DF8GskSUaKOWoDuoAXZe2phSM7KQ/eghLUh9csKldmCGepuooRMf5U+JI+tWRMBJ
         jYPLg0PIHJH8WSbXKoiAB4ypd3zAJZiAtxxn4s7WaVF6ipiwXN7z2FED9sR5ZXZF6NQq
         C+VA==
X-Gm-Message-State: AOAM533oxel0LYQhumllM6d0tzjnIvydZEl6hcARMnLl8XlsEJuumbor
	jqZE9jhcF/L2jGjn7nEmJzLlINSPcU8=
X-Google-Smtp-Source: ABdhPJx6AICDYSmABOCTrw2aVqW7m+RZ7P5vaRAojC2g7b7PRQnwtTua8t5iOSy73aVA6O0MX0op1g==
X-Received: by 2002:ad4:5be1:0:b0:430:c99:8a87 with SMTP id k1-20020ad45be1000000b004300c998a87mr18644870qvc.82.1647280553081;
        Mon, 14 Mar 2022 10:55:53 -0700 (PDT)
Received: from [192.168.2.211] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id v3-20020a05622a014300b002e1dcd4cfa9sm711471qtw.64.2022.03.14.10.55.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Mar 2022 10:55:52 -0700 (PDT)
Message-ID: <0cb6f8ec-0243-ec02-ecf5-6083bfc7a934@gmail.com>
Date: Mon, 14 Mar 2022 13:55:51 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Jim Palladino <jim@gardettoengineering.com>
References: <MN2PR12MB3312A2DFCADC494AFE2E29C9B80F9@MN2PR12MB3312.namprd12.prod.outlook.com>
 <A65EA2C6-F1FB-472A-912F-6A204ED11065@gmail.com>
 <MN2PR12MB33126E6B256F3A78BBF30C74B80F9@MN2PR12MB3312.namprd12.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MN2PR12MB33126E6B256F3A78BBF30C74B80F9@MN2PR12MB3312.namprd12.prod.outlook.com>
Message-ID-Hash: WH5CRFGCLYNX7TDBBWM2H7KNDC5F3L56
X-Message-ID-Hash: WH5CRFGCLYNX7TDBBWM2H7KNDC5F3L56
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem using IQ calibration coefficients with Rhodium DB
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WH5CRFGCLYNX7TDBBWM2H7KNDC5F3L56/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0255676199739775734=="

This is a multi-part message in MIME format.
--===============0255676199739775734==
Content-Type: multipart/alternative;
 boundary="------------eiVob6c0YsWjP6BvxTHKEEeR"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------eiVob6c0YsWjP6BvxTHKEEeR
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-03-14 12:51, Jim Palladino wrote:
> Hi Marcus,
>
> One of my coworkers created an "Issue" in the UHD github repo. If=20
> there is a different place to post a bug, please let me know.
>
> Thanks,
> Jim
>
Yup, that's the right place to do it.

Cheers

> -----------------------------------------------------------------------=
-
> *From:* Marcus D Leech <patchvonbraun@gmail.com>
> *Sent:* Monday, March 14, 2022 12:45 PM
> *To:* Jim Palladino <jim@gardettoengineering.com>
> *Cc:* USRP-users@lists.ettus.com <USRP-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Problem using IQ calibration coefficients=20
> with Rhodium DB
> Thanks Jim.
>
> Could you post a big report to the public bugtracker for UHD?
>
>
>
> Sent from my iPhone
>
>> On Mar 14, 2022, at 12:24 PM, Jim Palladino=20
>> <jim@gardettoengineering.com> wrote:
>>
>> =EF=BB=BF
>> Hello,
>>
>> I've found an issue with the Rhodium block controller code=20
>> (rhodium_radio_control.cpp) where the daughterboard serial number is=20
>> not handled correctly. If you look at line 452 here:
>> https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/dboard/=
rhodium/rhodium_radio_control.cpp=20
>> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_Ett=
usResearch_uhd_blob_master_host_lib_usrp_dboard_rhodium_rhodium-5Fradio-5=
Fcontrol.cpp&d=3DDwMFaQ&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=
=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3D4y4iW8gYlTGeIcuCgmOIBC=
NL1vZvAuLaV7FGCVuBsqY&s=3D6xWl_A9mV4W5Z1Ym8jVpWSxjhzd3KR09iL1S6yKwf54&e=3D=
>
>>
>> It looks like this:
>>
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 const std::vector<uint8_t> db_serial_u8 =3D=
=20
>> get_db_eeprom().count("serial")
>> =C2=A0 ? std::vector<uint8_t>()
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 :=20
>> get_db_eeprom().at("serial");
>>
>> This code attempts to check for the number of instances of "serial".=20
>> If it does find an instance of "serial", it creates an empty vector=20
>> and assigns that to "db_serial_u8". If it does NOT find an instance=20
>> of "serial," it attempts to assign the appropriate "serial" value to=20
>> "db_serial_u8". I believe this is backwards, and the correct code=20
>> should be:
>>
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 const std::vector<uint8_t> db_serial_u8 =3D=
=20
>> get_db_eeprom().count("serial")
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ? get_db_eeprom().at("serial")
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : std::vector<uint8_t>()=
;
>>
>> Before making this change and rebuilding UHD, RX IQ calibration=20
>> coefficients (files generated from the "uhd_cal_rx_iq_balance" tool)=20
>> were not getting properly loaded on an N320. After making this=20
>> change, the calibration coefficients are loaded and working as=20
>> expected. I can tell this both from debug messages and by looking at=20
>> the FFT of received samples (reduced image when the calibration=20
>> coefficient file is present).
>>
>> I'm using UHD 4.1.0.5, but I see this issue still exists in "master"=20
>> -- see the link above.
>>
>> Thanks,
>> Jim
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------eiVob6c0YsWjP6BvxTHKEEeR
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-03-14 12:51, Jim Palladino
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR12MB33126E6B256F3A78BBF30C74B80F9@MN2PR12MB3312.namprd12=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Hi Marcus,=C2=A0</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        One of my coworkers created an "Issue" in the UHD github repo.
        If there is a different place to post a bug, please let me know.<=
/div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Thanks,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Jim</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
    </blockquote>
    Yup, that's the right place to do it. <br>
    <br>
    Cheers<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR12MB33126E6B256F3A78BBF30C74B80F9@MN2PR12MB3312.namprd12=
.prod.outlook.com">
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Mar=
cus
          D Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patch=
vonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
          <b>Sent:</b> Monday, March 14, 2022 12:45 PM<br>
          <b>To:</b> Jim Palladino <a class=3D"moz-txt-link-rfc2396E" hre=
f=3D"mailto:jim@gardettoengineering.com">&lt;jim@gardettoengineering.com&=
gt;</a><br>
          <b>Cc:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:USRP-users@li=
sts.ettus.com">&lt;USRP-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> Re: [USRP-users] Problem using IQ calibration
          coefficients with Rhodium DB</font>
        <div>=C2=A0</div>
      </div>
      <div dir=3D"auto">Thanks Jim.=C2=A0
        <div><br>
        </div>
        <div>Could you post a big report to the public bugtracker for
          UHD?</div>
        <div><br>
        </div>
        <div><br>
          <br>
          <div dir=3D"ltr">Sent from my iPhone</div>
          <div dir=3D"ltr"><br>
            <blockquote type=3D"cite">On Mar 14, 2022, at 12:24 PM, Jim
              Palladino <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto=
:jim@gardettoengineering.com">&lt;jim@gardettoengineering.com&gt;</a> wro=
te:<br>
              <br>
            </blockquote>
          </div>
          <blockquote type=3D"cite">
            <div dir=3D"ltr">=EF=BB=BF
              <div
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                Hello,</div>
              <div
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                <br>
              </div>
              <div
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                I've found an issue with the Rhodium block controller
                code (rhodium_radio_control.cpp) where the daughterboard
                serial number is not handled correctly. If you look at
                line 452 here:<br>
                <a
href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com=
_EttusResearch_uhd_blob_master_host_lib_usrp_dboard_rhodium_rhodium-5Frad=
io-5Fcontrol.cpp&amp;d=3DDwMFaQ&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_C=
dpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&amp;m=3D4y=
4iW8gYlTGeIcuCgmOIBCNL1vZvAuLaV7FGCVuBsqY&amp;s=3D6xWl_A9mV4W5Z1Ym8jVpWSx=
jhzd3KR09iL1S6yKwf54&amp;e=3D"
                  id=3D"LPNoLPOWALinkPreview" moz-do-not-send=3D"true">ht=
tps://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/dboard/rhodi=
um/rhodium_radio_control.cpp</a><br>
                <div class=3D"x__Entity x__EType_OWALinkPreview
                  x__EId_OWALinkPreview x__EReadonly_1">
                </div>
                <br>
                It looks like this:</div>
              <div
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                <br>
              </div>
              <div
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                =C2=A0 =C2=A0 =C2=A0 =C2=A0 const std::vector&lt;uint8_t&=
gt; db_serial_u8 =3D
                get_db_eeprom().count("serial")
                <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                  =C2=A0 ? std::vector&lt;uint8_t&gt;()</div>
                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 :
                get_db_eeprom().at("serial");</div>
              <div
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                <br>
              </div>
              <div
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                This code attempts to check for the number of instances
                of "serial". If it does find an instance of "serial", it
                creates an empty vector and assigns that to
                "db_serial_u8". If it does NOT find an instance of
                "serial," it attempts to assign the appropriate "serial"
                value to "db_serial_u8". I believe this is backwards,
                and the correct code should be:<br>
                <br>
                <span style=3D"background-color:rgb(255,255,255);
                  display:inline!important">=C2=A0 =C2=A0 =C2=A0 =C2=A0 c=
onst
                  std::vector&lt;uint8_t&gt; db_serial_u8 =3D
                  get_db_eeprom().count("serial")</span>
                <div style=3D"margin:0px;
                  background-color:rgb(255,255,255)"><span
                    style=3D"margin:0px;
                    background-color:rgb(255,255,255);
                    display:inline!important">=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ?
                    get_db_eeprom().at("serial")</span><br>
                </div>
                <div style=3D"margin:0px;
                  background-color:rgb(255,255,255)">=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 :
                  std::vector&lt;uint8_t&gt;();</div>
                <br>
                Before making this change and rebuilding UHD, RX IQ
                calibration coefficients (files generated from the
                "uhd_cal_rx_iq_balance" tool) were not getting properly
                loaded on an N320. After making this change, the
                calibration coefficients are loaded and working as
                expected. I can tell this both from debug messages and
                by looking at the FFT of received samples (reduced image
                when the calibration coefficient file is present).</div>
              <div
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                <br>
              </div>
              <div
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                I'm using UHD 4.1.0.5, but I see this issue still exists
                in "master" -- see the link above.</div>
              <div
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                <br>
              </div>
              <div
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                Thanks,</div>
              <div
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                Jim</div>
              <div
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                <br>
              </div>
              <span>_______________________________________________</span=
><br>
              <span>USRP-users mailing list --
                <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp=
-users@lists.ettus.com">usrp-users@lists.ettus.com</a></span><br>
              <span>To unsubscribe send an email to
                <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp=
-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a></span>=
<br>
            </div>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------eiVob6c0YsWjP6BvxTHKEEeR--

--===============0255676199739775734==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0255676199739775734==--
