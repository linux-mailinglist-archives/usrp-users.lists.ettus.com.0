Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0335E44EBE6
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 18:17:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D675B3841A2
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 12:17:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Rz4blVrp";
	dkim-atps=neutral
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 04500383F87
	for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 12:17:10 -0500 (EST)
Received: by mail-qk1-f175.google.com with SMTP id d2so4837742qki.12
        for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 09:17:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=+Wkx2PzphKHYQXWw9PnU1JUPAgGsDQsAW6i6R1GLzGY=;
        b=Rz4blVrptya3Yu8LZwgCs4ZnyYglw23APIegtlG5z/5oCwxIdhAUkq8hQfBm3HUA1l
         L3iALzXkuXQIoi4P51kg5ozEEK2kdfgPI3TifvlrXaWUUMZ6DhmMQi300bbD1JNmMg/y
         wK18xix1Ch0c+UOWm3rtQb4R3UVWgITEWMLacshnrBVyKqjiPOZ8Z/dZAh4Dr5VUW78v
         iMAY447x0u34AEI6Ny+1gYJU7sQ2ypa3yZvm7TKEXC1cDk84+SEseT97MAnG/2TQ7Lr+
         cxfdd8gdYWSijwVnFIcU8PO2Qv2YdDU8xbPyz9wVhfINGgH2U8G3ieZrocGrOyTwnzjU
         9xIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=+Wkx2PzphKHYQXWw9PnU1JUPAgGsDQsAW6i6R1GLzGY=;
        b=HMiTUIAsddmvASwGvRVFu5Gx5sJrPBXMTGVM6D45BqQdDwt/iD2lC/qC0i2i3dWXTl
         LCfKwoQVdIui6T+KNVTtJz7fxRUi/ZWEvkndBKLv62XjcYfknP+iUWoxrzx+AuVFQYOb
         T7sgIUPSQGUcDpnwex6z/LZqvSGy/PFG40sW97J23w2bP/VoUncMAixG7O3XwkBJ4m6/
         0Ks7EQmxXQX2CTwHC38aqnA85RkCSh48yOt2hBEs1+09pK0AfiQ+e/FKiGfdgk5ARwj5
         8+Rlvqd2OcP0GMRPBN4f5aiIKL0+zq1zUVlIUGj534snXtgQu0WwpuuvMQayeFwlvI1K
         +rkw==
X-Gm-Message-State: AOAM530Tk3MrgVbTPXmTrlctYOAiyKnge1yXiF6vmTjBJPnUnJZp2XUL
	Zn7+3UtlSz24M4TlJz9tQWdxsAL4wmw=
X-Google-Smtp-Source: ABdhPJzB+c+4n1F6030u46AFa3Zt2f7VqO/cbo4xOb26tENRcsMBdUhrMAE/Jg/vTb+VIZdtULoQbA==
X-Received: by 2002:a05:620a:2a10:: with SMTP id o16mr13546084qkp.357.1636737430521;
        Fri, 12 Nov 2021 09:17:10 -0800 (PST)
Received: from [192.168.2.213] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id m19sm2331638qkn.129.2021.11.12.09.17.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Nov 2021 09:17:09 -0800 (PST)
Message-ID: <d3ab3578-ab06-ad4b-e7e3-0bd70e278b8a@gmail.com>
Date: Fri, 12 Nov 2021 12:17:08 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Rob Kossler <rkossler@nd.edu>
References: <CAB__hTT2dcHqDV-OKN9konwjX-5ru1DicuVjU1gsjYPf+CGz1A@mail.gmail.com>
 <CAL7q81vYb9ktOTQb=CfhtEM26dK3cHOe-xE41jD=gWhQniKfVA@mail.gmail.com>
 <CAB__hTQxDvfrm5Qr4vHmy_4mKYSKOAO+8oYqT37f5poqKjtiMg@mail.gmail.com>
 <1662a21b-c4fc-aa9e-ccb3-bf5d41560e5b@gmail.com>
 <CAB__hTRnY_xhn8g3=gnrSdy2pQTbdQRCB12xTHuVrXku=tXMTw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTRnY_xhn8g3=gnrSdy2pQTbdQRCB12xTHuVrXku=tXMTw@mail.gmail.com>
Message-ID-Hash: BZWZCLGQMNQGK3NJGYTRLT6YHKA3RJVZ
X-Message-ID-Hash: BZWZCLGQMNQGK3NJGYTRLT6YHKA3RJVZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 file system problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BZWZCLGQMNQGK3NJGYTRLT6YHKA3RJVZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4829240091970715901=="

This is a multi-part message in MIME format.
--===============4829240091970715901==
Content-Type: multipart/alternative;
 boundary="------------zcYInKMkj44KrZQVFoX9lvQn"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------zcYInKMkj44KrZQVFoX9lvQn
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-11-12 11:54, Rob Kossler wrote:
>
>
>     So, there's a DS1139 RTC chip, which is an garden-variety RTC chip
>     used in designs all over the place.=C2=A0 The linux rtc-1307 kernel
>     driver knows about this chip.
>
>     HOWEVER, it requires a battery to maintain time, and near as I can
>     tell, the only battery in the E310 universe is with the E312 "UPS"
>     battery.=C2=A0 I don't see any evidence
>     =C2=A0 that there's a separate, small, back-up battery for the RTC =
in
>     the plain E310.
>
>
> I wonder how my system comes up Aug 6, 2021?=C2=A0 Could this be the da=
te=20
> of the file system image?=C2=A0 Perhaps I can modify this.
It was certainly the case in the "days of yore" that the timestamp on=20
the root filesystem, in lieu of other inputs, was used as the initial=20
time-of-day clock setting.

Also, look at the "hwclock" utility, if there IS a hardware clock in=20
your system config, it will allow you to manipulate it.


--------------zcYInKMkj44KrZQVFoX9lvQn
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-11-12 11:54, Rob Kossler wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTRnY_xhn8g3=3DgnrSdy2pQTbdQRCB12xTHuVrXku=3DtXMTw@mail.=
gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div><br>
              So, there's a DS1139 RTC chip, which is an garden-variety
              RTC chip used in designs all over the place.=C2=A0 The linu=
x
              rtc-1307 kernel driver knows about this chip.<br>
              <br>
              HOWEVER, it requires a battery to maintain time, and near
              as I can tell, the only battery in the E310 universe is
              with the E312 "UPS" battery.=C2=A0 I don't see any evidence=
<br>
              =C2=A0 that there's a separate, small, back-up battery for =
the
              RTC in the plain E310.<br>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>I wonder how my system comes up Aug 6, 2021?=C2=A0 Could t=
his
            be the date of the file system image?=C2=A0 Perhaps I can mod=
ify
            this.=C2=A0</div>
        </div>
      </div>
    </blockquote>
    It was certainly the case in the "days of yore" that the timestamp
    on the root filesystem, in lieu of other inputs, was used as the
    initial time-of-day clock setting.<br>
    <br>
    Also, look at the "hwclock" utility, if there IS a hardware clock in
    your system config, it will allow you to manipulate it.=C2=A0 <br>
    <br>
    <br>
  </body>
</html>
--------------zcYInKMkj44KrZQVFoX9lvQn--

--===============4829240091970715901==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4829240091970715901==--
