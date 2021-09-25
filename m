Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B80AF417F8B
	for <lists+usrp-users@lfdr.de>; Sat, 25 Sep 2021 05:57:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D08373840BC
	for <lists+usrp-users@lfdr.de>; Fri, 24 Sep 2021 23:57:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PSpcodOI";
	dkim-atps=neutral
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 3AB15383E2A
	for <usrp-users@lists.ettus.com>; Fri, 24 Sep 2021 23:56:51 -0400 (EDT)
Received: by mail-qt1-f182.google.com with SMTP id j13so11455024qtq.6
        for <usrp-users@lists.ettus.com>; Fri, 24 Sep 2021 20:56:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=Tao76UpBEQloixycN4Kiu3IQdbRkYYyui8xwnyRYLYc=;
        b=PSpcodOIA51QHar9yF7XkMSji456YFkZTIQMAPiwJZOXjPg301tVRK2IzWH7bsRkQY
         GfejBgVPPBSdLi23McJg6LiVNicucUt0LvaVCzrawRUb05rrfC1waybGrpVqvGPqk2af
         6DSo+Tg9xz6gmtiXHj+zpUXPpmFTimm82DBwLOmNHUUGOkKMvFbK6+vl+skF0MmwOTyb
         Cj0jLRftszPcoJm9sMSFVrfOl8tOhZBu30AQsds3JeoX1fhtdk/Ly5J92Mv7MRZLYgif
         jTZpKvGSWtgS7XmS97qEk1S9ErnbP2mxURqRbZpxqmaRHqfLGD4y5ULvIbBUEBrOXk52
         xkzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=Tao76UpBEQloixycN4Kiu3IQdbRkYYyui8xwnyRYLYc=;
        b=F1tOaHfD9gyNBaesHbeSrqmbBm5qA0OwU2kZ1zBRpCWvMT8GDhDpWWmjSKaLWsypiZ
         8GwwiKCoXouUdpjW4Hso3P5xkQZRPT+XNri/bPqoHWtdmoE4kvBPCyiyK+wmsWirBhsZ
         /aFdiWpPEkLOpusua9Cu3tTNz4xC98HqNdk0qcWj5hLaaBUlgL1Xd8AOJHiV9xUdEWVZ
         dfa/qrZT0gnjK0s1S65fhPHH99la+8lxSLV3huf2VOyKqfxyyX3Lxvbox5cRh1ZgBmc0
         eW3t5zcZvobbCLuEb8WVmfqoy4dbMVJbNoxYHmyz5HVsKAHD/cpoRsbctnsHVwwPfEvA
         egfA==
X-Gm-Message-State: AOAM5310AOC5R4xrBw1tDQqol6hwa5cTSKpt7SRNQZy7qlvzA+fHWPIH
	c28zypQkYMfEGy2sngHB1d9h6djOrDn+uQ==
X-Google-Smtp-Source: ABdhPJz1A+B5BhrldU9JVk8qMVgx86tpq+DHBSuk4bWGSm82ftnKRldodDGuk0BrvQekas4BG//ShA==
X-Received: by 2002:ac8:5707:: with SMTP id 7mr8041026qtw.268.1632542210462;
        Fri, 24 Sep 2021 20:56:50 -0700 (PDT)
Received: from [192.168.2.238] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id h2sm4669900qkk.10.2021.09.24.20.56.49
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Sep 2021 20:56:50 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <240673658.793208.1632540300003.ref@mail.yahoo.com>
 <240673658.793208.1632540300003@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <743b44ec-9caf-1f0a-fa61-2f3ef54b1e02@gmail.com>
Date: Fri, 24 Sep 2021 23:56:49 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <240673658.793208.1632540300003@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: PQONHH2Q5Y3S4ICMBM2J2U5FKABVIQOX
X-Message-ID-Hash: PQONHH2Q5Y3S4ICMBM2J2U5FKABVIQOX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Cross Compiling for N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PQONHH2Q5Y3S4ICMBM2J2U5FKABVIQOX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5775377136069844704=="

This is a multi-part message in MIME format.
--===============5775377136069844704==
Content-Type: multipart/alternative;
 boundary="------------664F0E5857F8781F0253B84A"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------664F0E5857F8781F0253B84A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2021-09-24 11:25 p.m., Tellrell White via USRP-users wrote:
> I'm currently building an application that I want to run on the N310. 
> I'm following the link attached
>
> USRP Hardware Driver and USRP Manual: USRP N3xx Series 
> <https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_software_dev_sdk>
>
>
> 	
>
>
>     USRP Hardware Driver and USRP Manual: USRP N3xx Series
>
> <https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_software_dev_sdk>
>
> where I've downloaded and installed the sdk toolchain and set the 
> necessary paths, however, is it necessary as well to cross-compile UHD 
> as well for the N310??
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
The N310 will already have UHD on it, so you'd only need to build it if 
you had mis-matched versions.



--------------664F0E5857F8781F0253B84A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-24 11:25 p.m., Tellrell
      White via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:240673658.793208.1632540300003@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <!--[if gte mso 9]><xml><o:OfficeDocumentSettings><o:AllowPNG/><o:P=
ixelsPerInch>96</o:PixelsPerInch></o:OfficeDocumentSettings></xml><![endi=
f]-->
      <div class=3D"yahoo-style-wrap" style=3D"font-family:Helvetica Neue=
,
        Helvetica, Arial, sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">I'm currently building an
          application that I want to run on the N310. I'm following the
          link attached=C2=A0</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><a
href=3D"https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_software_=
dev_sdk"
            rel=3D"nofollow" target=3D"_blank"
            class=3D"enhancr_card_2783769732" moz-do-not-send=3D"true">US=
RP
            Hardware Driver and USRP Manual: USRP N3xx Series</a></div>
        <div><br>
        </div>
        <div id=3D"ydpf9c86721enhancr_card_2783769732"
          class=3D"ydpf9c86721yahoo-link-enhancr-card
          ydpf9c86721yahoo-link-enhancr-not-allow-cover
          ydpf9c86721ymail-preserve-class
          ydpf9c86721ymail-preserve-style"
          style=3D"max-width:400px;font-family:YahooSans, &quot;Helvetica
          Neue&quot;, &quot;Segoe UI&quot;, Helvetica, Arial,
          sans-serif"
data-url=3D"https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_softw=
are_dev_sdk"
          data-type=3D"YENHANCER" data-size=3D"MEDIUM"
          contenteditable=3D"false"><a
href=3D"https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_software_=
dev_sdk"
            style=3D"text-decoration-line: none !important;
            text-decoration-style: solid !important;
            text-decoration-color: currentcolor !important; color:
            rgb(0, 0, 0) !important;"
            class=3D"ydpf9c86721yahoo-enhancr-cardlink" rel=3D"nofollow"
            target=3D"_blank" moz-do-not-send=3D"true">
            <table class=3D"ydpf9c86721card-wrapper
              ydpf9c86721yahoo-ignore-table" style=3D"max-width:400px"
              cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
              <tbody>
                <tr>
                  <td width=3D"400">
                    <table class=3D"ydpf9c86721card
                      ydpf9c86721yahoo-ignore-table"
style=3D"max-width:400px;border-width:1px;border-style:solid;border-color=
:rgb(224,
                      228, 233);border-radius:2px" width=3D"100%"
                      cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
                      <tbody>
                        <tr>
                          <td>
                            <table class=3D"ydpf9c86721card-info
                              ydpf9c86721yahoo-ignore-table"
                              style=3D"background-color: rgb(255, 255,
                              255); background-repeat: repeat;
                              background-attachment: scroll;
                              background-image: none; background-size:
                              auto; position: relative; z-index: 2;
                              width: 100%; max-width: 400px;
                              border-radius: 0px 0px 2px 2px;
                              border-top: 1px solid rgb(224, 228, 233);"
                              cellspacing=3D"0" cellpadding=3D"0" border=3D=
"0">
                              <tbody>
                                <tr>
                                  <td
                                    style=3D"background-color:#ffffff;pad=
ding:16px
                                    0 16px
                                    12px;vertical-align:top;border-radius=
:0
                                    0 0 2px"><br>
                                  </td>
                                  <td
                                    style=3D"vertical-align:middle;paddin=
g:12px
                                    24px 16px
                                    12px;width:99%;font-family:YahooSans,
                                    &quot;Helvetica Neue&quot;,
                                    &quot;Segoe UI&quot;, Helvetica,
                                    Arial, sans-serif;border-radius:0 0
                                    2px 0">
                                    <h2 class=3D"ydpf9c86721card-title"
                                      style=3D"font-size: 14px;
                                      line-height: 19px; margin: 0px 0px
                                      6px; font-family: YahooSans,
                                      &quot;Helvetica Neue&quot;,
                                      &quot;Segoe UI&quot;, Helvetica,
                                      Arial, sans-serif; color: rgb(38,
                                      40, 42); max-width: 314px;">USRP
                                      Hardware Driver and USRP Manual:
                                      USRP N3xx Series</h2>
                                  </td>
                                </tr>
                              </tbody>
                            </table>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </td>
                </tr>
              </tbody>
            </table>
          </a></div>
        <div><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">where I've downloaded and
          installed the sdk toolchain and set the necessary paths,
          however, is it necessary as well to cross-compile UHD as well
          for the N310??<br>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    The N310 will already have UHD on it, so you'd only need to build it
    if you had mis-matched versions.<br>
    <br>
    <br>
  </body>
</html>

--------------664F0E5857F8781F0253B84A--

--===============5775377136069844704==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5775377136069844704==--
