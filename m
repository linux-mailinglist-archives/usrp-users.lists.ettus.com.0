Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F7A5BAC80
	for <lists+usrp-users@lfdr.de>; Fri, 16 Sep 2022 13:35:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8D2BF3818D3
	for <lists+usrp-users@lfdr.de>; Fri, 16 Sep 2022 07:35:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663328150; bh=iMZ4nNecntj7zFEBl9P26sdG14KYEJZa/R2cYucTS+Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=FmhlPSk+R5IJ818HMfpc7bhpecMX5xawzIkXIO0qRbzKw8LAlPwjfFzn7mTAauCJ4
	 Pyo3pQtdT1qSJ3iudqUygs4PpU31LK+/CSYt8TSJEZ9gGgawpt5gcDi//awWlElPV3
	 yH4+fTr92Cvlt5Onbb7V2LTWeDrhEWCHmCVIRvA7PCJ/sjvAFmFRmE8porvSpXttEs
	 uw02dAoAUu0a0lLSFQR4q3RDetKXiQuYVKBs083tp0kZwHUXaEE3AWU88FxfWLh5GS
	 hxL8OKEDwkAUfUN2SbafOSNeD8K22H5pIdl8tv1uUpX+lgJNtq7+AwXUygxxqfjnj1
	 sfEGb0JqSdD+Q==
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by mm2.emwd.com (Postfix) with ESMTPS id E80A4380F07
	for <usrp-users@lists.ettus.com>; Fri, 16 Sep 2022 07:35:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JYYsg/eq";
	dkim-atps=neutral
Received: by mail-qv1-f54.google.com with SMTP id w4so16405093qvp.2
        for <usrp-users@lists.ettus.com>; Fri, 16 Sep 2022 04:35:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date;
        bh=h3u4vdhAaiu3/8STgt1NKrwE0vqmhXzBpnLpVjhUwxQ=;
        b=JYYsg/eqGQCHIG2LTBipSz5+Z2cp+XRrgeBfOT/8I9TCECaLts8ErYCZ7QQYSPRK+V
         /Pd7WcKJ+fzLVmdV3eSZCecq5I9mc+E4qy6HvjydmwMEOBZ/FkOaV86dHsfAgvgzAhLw
         eXwsF+/fyXtgSErCJTn00PZnw72Y/FvY6/59Qw/6mWrItgwKQEBplj6EgxMoWVewl7jp
         c73wLWZUEyq0RwZgM9ZzeGugDyLFPTMkxRLFXJtqHzqo1ZKrHfg1ypPmsUgp8ow3AiGa
         sZNFcZAHIYXPDHwHthrdi9TR3pVQKPVx2VEPULY8UPz5iFtZuvT8cHHkwPNbOMnyK+M5
         QmMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date;
        bh=h3u4vdhAaiu3/8STgt1NKrwE0vqmhXzBpnLpVjhUwxQ=;
        b=nhLUba34goQUTs3HVjtRBFvMfusbS4ZNyqLlB5jNePU3V++kZGHoiWMT4Ei9eV3LMu
         /sy6MWxPbT8a6SNBw5nMqJbcOgFHuzPoFfE4oZZpMzHxtvQrBiSV6d5robmjDQNw5zrH
         Vsre2t3yM1f7DYWAnUyf4KWg8iYZb/LMHUpY7A2Ai25DXfgUpPwQM84n9rUt2xJ0iu9d
         rU8LVvfAItyhTGo6nltAYrwQdU4UK/Oha2D9KxiW5isgEtwMJzCQsrXh2XTGTGy0GokF
         kcg7r5BwEoO/yAHWya5IAW84+aN5TrJJTiEIfRGYay37xxXjK59noguCFMnVd/bLqYm2
         Grdg==
X-Gm-Message-State: ACrzQf0wBJnFYqXLpq9rEgk1iRqq/QOqTfTVzdK3GXXPQwiaxYi/z44X
	Lo4wgKzJrbQLm+eI4epksu+oRBkKJAM=
X-Google-Smtp-Source: AMsMyM6x6EZEgDxQ1wE6J8EouHcBxY4Ra9+ANa0cN+sSnFopp/XFdmqRI1sc1mYec/cCBMwCz/YB4A==
X-Received: by 2002:ad4:4eab:0:b0:4a2:8a8:6afc with SMTP id ed11-20020ad44eab000000b004a208a86afcmr3398349qvb.21.1663328100186;
        Fri, 16 Sep 2022 04:35:00 -0700 (PDT)
Received: from [192.168.2.160] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id j23-20020ac84417000000b003445bb107basm5037776qtn.75.2022.09.16.04.34.59
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Sep 2022 04:34:59 -0700 (PDT)
Message-ID: <f4c8b3ac-223f-1b51-2b62-593f1d661954@gmail.com>
Date: Fri, 16 Sep 2022 07:34:59 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BMXPR01MB3558F05CF7F75F22F461AA1ED6489@BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BMXPR01MB3558F05CF7F75F22F461AA1ED6489@BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM>
Message-ID-Hash: PYL67DP2XHC2BT7KC3XI2DU5LX2H3J6Y
X-Message-ID-Hash: PYL67DP2XHC2BT7KC3XI2DU5LX2H3J6Y
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: To enable WIFI in USRP B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PYL67DP2XHC2BT7KC3XI2DU5LX2H3J6Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6934126539568227132=="

This is a multi-part message in MIME format.
--===============6934126539568227132==
Content-Type: multipart/alternative;
 boundary="------------9AWIfdissL7d837lpris5IVV"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------9AWIfdissL7d837lpris5IVV
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-09-16 02:36, Sivanesh Kumar K wrote:
> HI all,
>
> I am new about our product.
>
> I want to know, how to enable WIFI by using usrp B210 board . Please=20
> forward me any link available .
>
> Any daughterboard required
> Regards,
> Sivaneshkumar K
> Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including=20
> any attachments, is for the sole use of the intended recipient(s) and=20
> may contain proprietary confidential or privileged information or=20
> otherwise be protected by law. Any unauthorized review, use,=20
> disclosure or distribution is prohibited. If you are not the intended=20
> recipient, please notify the sender and destroy all copies and the=20
> original message.
What do you mean by "enable WiFi"?=C2=A0 Do you mean, are there 802.11=20
software implementations that work with the
 =C2=A0 B210 hardware?

There are:

https://github.com/bastibl/gr-ieee802-11

But it hasn't been maintained in a while.


--------------9AWIfdissL7d837lpris5IVV
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-09-16 02:36, Sivanesh Kumar K
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BMXPR01MB3558F05CF7F75F22F461AA1ED6489@BMXPR01MB3558.INDPRD01=
.PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        HI all,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        I am new about our product.<br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        I want to know, how to enable WIFI by using usrp B210 board .
        Please forward me any link available .</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Any daughterboard required <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Regards,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Sivaneshkumar K<br>
      </div>
      Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message,
      including any attachments, is for the sole use of the intended
      recipient(s) and may contain proprietary confidential or
      privileged information or otherwise be protected by law. Any
      unauthorized review, use, disclosure or distribution is
      prohibited. If you are not the intended recipient, please notify
      the sender and destroy all copies and the original message.
      <br>
    </blockquote>
    What do you mean by "enable WiFi"?=C2=A0 Do you mean, are there 802.1=
1
    software implementations that work with the <br>
    =C2=A0 B210 hardware?<br>
    <br>
    There are:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://github.com/bastibl=
/gr-ieee802-11">https://github.com/bastibl/gr-ieee802-11</a><br>
    <br>
    But it hasn't been maintained in a while.<br>
    <br>
    <br>
  </body>
</html>

--------------9AWIfdissL7d837lpris5IVV--

--===============6934126539568227132==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6934126539568227132==--
