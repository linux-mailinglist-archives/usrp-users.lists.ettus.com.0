Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F3CA2774505
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 20:35:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 00D583844F8
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 14:35:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691519720; bh=de/9yWrYuHLeLWTkpM5SBrZQdykuwbK3tPCd0sFjvGY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=oSdN/PnYak+6sPp9yHYWNhs1EQpE7/61sjZxXawY1QwOrzyK1a78VROXr/M36YSoy
	 t8SsRo0pWlLsvnyZdXbfIQm0IpJil08hKeaN8xJspPff2gyiY+zMwDJXL48nkvZjqk
	 3kjx5d6Q+ZM319Z7hLkCfG88HlvIpGnrmMB1+ri73p7Kog45LZmU6j6JNW62UaXZYO
	 SdSGkZo0FTgCe0J9BZ/dTLi7C/6fttYAo01b0No54Ixv7u+ZSWVtMFVi9iSyew+H3a
	 EmhChLug1Mq6VjdGskb2inG8rQgKMDFbzlwDR21fRFN/4BS35yoGdeebaLmCowtEi6
	 36kxVyoAoE2pA==
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 5B63A383FAC
	for <usrp-users@lists.ettus.com>; Tue,  8 Aug 2023 14:34:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ouukCcTn";
	dkim-atps=neutral
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-76754b9eac0so460490885a.0
        for <usrp-users@lists.ettus.com>; Tue, 08 Aug 2023 11:34:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691519684; x=1692124484;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c3woRiGUkCbTXWCL2pOqr+7xPI8ACLefbxAhCdokXz8=;
        b=ouukCcTnCXYpFkAZRAB3J/j1ccy15SCorS0mQaGUH8tFz30JmaW86+eQX0b08+9/UG
         K4Y420MN48YXCbWYUj/GMRQv0kv4dJ+07kRcTceYw6F7vDBIIPsOalvlsYuaKK0D8+gQ
         cMKoulwzyWrZxwf2VczxL+yRy62kHPeTC78q6g4UzeLtxvKYAguwgQx9iCk3iHlUVwoT
         M4+iLXAx62WSZqeX+53zAOI88+T/7XY7q7DivKP2G91mLw/6I9yk24ih4dCs8NmhYAxN
         wzeAusyGxipd01XCZIx6HPxUxujDvVA101XPj3iwaCSG0hWyZkv6WN1Sy1aBhEIb88vB
         +e3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691519684; x=1692124484;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=c3woRiGUkCbTXWCL2pOqr+7xPI8ACLefbxAhCdokXz8=;
        b=W49rVK8MZGe66vi51m/FOZidTSizCcu3zX4XzqnSykPt12DyQFxQo5upXcT+FVkE/A
         Lx1z6SdjGYjCX1Ma5JlPZQZAyeBTNky5da7veNeWgPVyepSecN92OQeJXwc2oOsD4laM
         DYxPF+aTPMQKx+c564TKEDn2ZNjWL1AbW/Rg9mUmyAZnBPhJI5pDiPTt/JIHvutpt7ch
         1Ui8qRKPn1wWlrRcXlT5YIpMHH8ZeJax4LyYYo35FS5H5bVcxdC67epNTWSN8ULFE0oY
         2e3NuIcre7pl3XK5+N3B0X7VxIRSzUubRummzANcdvveJgaR8c4YH0IdOX+OqjYHYbdk
         w3RQ==
X-Gm-Message-State: AOJu0Yy+GRRmUK7FR9fD9Vn+s7x1du6SNwFMhqcFFXlZXvotTlmWcx4l
	vmCuzBHU1uY1FZyVOh8NghduBAQXQaA=
X-Google-Smtp-Source: AGHT+IG0vabDarIV+dw52db2v3/S/glOxZnYaRuhUTl6CK5PqXc7kxhAYNOyC+b7BiUhQxIzbvgAbw==
X-Received: by 2002:a05:620a:4512:b0:767:d709:c3f5 with SMTP id t18-20020a05620a451200b00767d709c3f5mr650742qkp.62.1691519684471;
        Tue, 08 Aug 2023 11:34:44 -0700 (PDT)
Received: from [192.168.2.164] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id j5-20020a05620a146500b00767177a5bebsm3437835qkl.56.2023.08.08.11.34.43
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Aug 2023 11:34:43 -0700 (PDT)
Message-ID: <897053c7-c680-183f-c94f-78d7fff8e0f3@gmail.com>
Date: Tue, 8 Aug 2023 14:34:35 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <DZucpfmrOwpbSOZ3Rf45j712rJ77J1oqJRMOBxLMFY@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <DZucpfmrOwpbSOZ3Rf45j712rJ77J1oqJRMOBxLMFY@lists.ettus.com>
Message-ID-Hash: VJA5JOJ4D5TKIGCYBSN67ERUEZDMZ2IQ
X-Message-ID-Hash: VJA5JOJ4D5TKIGCYBSN67ERUEZDMZ2IQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Device Serial, Name and Product ID Corruption Issue on Misusage of b2xx_fx3_utils for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VJA5JOJ4D5TKIGCYBSN67ERUEZDMZ2IQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1250781837208127318=="

This is a multi-part message in MIME format.
--===============1250781837208127318==
Content-Type: multipart/alternative;
 boundary="------------UkRbp9F8eWn89LLP3xOLkKZJ"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------UkRbp9F8eWn89LLP3xOLkKZJ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 08/08/2023 10:57, edenmclaughlin123@gmail.com wrote:
>
> Dear Marcus,
>
> I very much appreciate your help, that makes sense, it was probably=20
> the cause=E2=80=A6
>
> In regards to the bootloader image that includes EEPROM values that=20
> you pointed out, I am going to look into the files.ettus.com/=20
> <https://files.ettus.com/> to see if I can find any suitable image.
>
> Regards,
>
> Eden.
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Loking at he code for b200_fx3_utils, it doesn't appear possible for it=20
to do what happened to you--it won't let you load an
 =C2=A0 image that is large enough to clobber the upper 256 bytes of EEPR=
OM,=20
which is where the critical EEPROM variables are
 =C2=A0 stored.

It MIGHT be the case that it loaded that bogus bootloader, started=20
executing it, and through some miracle, that code actually
 =C2=A0 overwrote the top 256 bytes of the 32KB EEPROM that is on the B20=
0.


--------------UkRbp9F8eWn89LLP3xOLkKZJ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 08/08/2023 10:57,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:edenmclaughlin=
123@gmail.com">edenmclaughlin123@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:DZucpfmrOwpbSOZ3Rf45j712rJ77J1oqJRMOBxLMFY@lists.ettus.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Dear Marcus,</p>
      <p>I very much appreciate your help, that makes sense, it was
        probably the cause=E2=80=A6</p>
      <p>In regards to the bootloader image that includes EEPROM values
        that you pointed out, I am going to look into the <a
          href=3D"https://files.ettus.com/"
          title=3D"https://files.ettus.com/" moz-do-not-send=3D"true">fil=
es.ettus.com/</a>
        to see if I can find any suitable image.</p>
      <p>Regards,</p>
      <p>Eden.</p>
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
    Loking at he code for b200_fx3_utils, it doesn't appear possible for
    it to do what happened to you--it won't let you load an<br>
    =C2=A0 image that is large enough to clobber the upper 256 bytes of
    EEPROM, which is where the critical EEPROM variables are<br>
    =C2=A0 stored.<br>
    <br>
    It MIGHT be the case that it loaded that bogus bootloader, started
    executing it, and through some miracle, that code actually<br>
    =C2=A0 overwrote the top 256 bytes of the 32KB EEPROM that is on the
    B200.<br>
    <br>
    <br>
  </body>
</html>

--------------UkRbp9F8eWn89LLP3xOLkKZJ--

--===============1250781837208127318==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1250781837208127318==--
