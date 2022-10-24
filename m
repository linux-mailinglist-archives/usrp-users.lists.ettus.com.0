Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F0960B650
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 20:54:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E82FE380E80
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 14:54:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666637697; bh=NxVVIBvrJj6keW49PgWGn55rltozUFarX5+iEDi9iLU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Wy/8MbNhfApmijIoQRYsrZoUK+0UcAfKc+8cH3E4mRLyfhjvJPJZzUNBSzW3WKZ8I
	 F3litRePTluQD0RcvNZFfYty0IG0awi+rj+MYzyrB9Yaq7w+hHTEGxi/cyUaRWVg/V
	 UIijH8IvFcfUs06pt2tKKqaxApKJVGKQznODr2Tn0OB6l5guVWIASstMBv/Aho2ItO
	 DxWjlSvkuikxkXTEd8lLgX5MfWxJj/FE5trpFT1raoWb9Q8QuEUdSPkm6IzgXLnjgl
	 gi5rJyDcO6E3K2JdKh9UhLb5t8sghp2uGXUO9+7if3a6u9VIiB7Ag8shf3i44WDr0Q
	 0OOoStUxTDPfg==
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 50DBD380E7A
	for <usrp-users@lists.ettus.com>; Mon, 24 Oct 2022 14:53:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FQByLPXG";
	dkim-atps=neutral
Received: by mail-qt1-f177.google.com with SMTP id z8so6169531qtv.5
        for <usrp-users@lists.ettus.com>; Mon, 24 Oct 2022 11:53:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kxb+7Mue4YYsw9hVOxF/4QP+qSS0YCC90k80jAry8ZU=;
        b=FQByLPXGfKs08YrCFuYgCk22Rn13mXmN6Y4p75/R7RgUrwaw4SIaxg5f4CVZvXU7Dz
         7q0DiuGVom8a2K/JJzN4PIeuVkwCFS5GOR8KWdng7OjR3hNiA+5ytNcB3yOwhvPKoOBJ
         QdYY8VOwZ54gJV0QgGbAdVbKdQ5DuYi4XYCmhV5FhSUsONGgyJBds95Be0x2DgGy32A+
         vQbVge3n73YBmie3ogLCMq2/py4Dxu1ohIQIHS8nQWw4HNfZw/2HWbtQqCZ3aCzwoAKF
         HEXRVFCu80pqjWerFtk5PmsQxxXl2OHbjPlZ2DCPuOpkFLueHOeO7sWAmuqBG4VKRyYa
         sFGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kxb+7Mue4YYsw9hVOxF/4QP+qSS0YCC90k80jAry8ZU=;
        b=D04pByjZWWylhMMtlYAudeK51786V/wYsy8xf55wmpX5dbhIK/zcOxcu8GxcGfnd20
         gSW1pSizxT/8KhOp9x7spuZdhj+RfkfsQ2xzdmxB5xrYkr1Lj8hnWAtsRB/gJSLv1oSR
         +1O/2d0//vUzlt0Q9SGY/1LUov3aPVJhi/dyoUZIOsMlvv/zoeIuDQFcb5tgQ1jKoilf
         NYxv6ifw5JyPLjn1pWqnfyk678RRf21kO2yoOQSFDMGPyWDrERK9nzLkgciV8W0gCigI
         CiA5AprJ4CobzqHpzgc9C6Et30gMZbaZHOHkBpAtmdtSQQetk1wlSJWlooP0UVA/ylFm
         JUdg==
X-Gm-Message-State: ACrzQf2HxRdwK+p7qTD8v27J9i+f/yNbZ+Fr49jrMj78AnYelPRzyOo0
	kxGWvalc7+PuJUEoK6VncYmnqGhd9bg=
X-Google-Smtp-Source: AMsMyM5K9crRPQVtLYbkZrCjFf/+17COkRCKvnXEu337LFXZz99F30FEctfAgl7BaGhxZFDqaDK9+g==
X-Received: by 2002:a05:622a:5c7:b0:39c:eb0a:2cb1 with SMTP id d7-20020a05622a05c700b0039ceb0a2cb1mr29081344qtb.155.1666637594471;
        Mon, 24 Oct 2022 11:53:14 -0700 (PDT)
Received: from [192.168.2.171] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id b13-20020ac86bcd000000b0039cbbcc7da8sm389669qtt.7.2022.10.24.11.53.14
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 11:53:14 -0700 (PDT)
Message-ID: <7d2703fd-ff7e-b513-6fbc-5f4e87c91936@gmail.com>
Date: Mon, 24 Oct 2022 14:53:13 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BYAPR01MB4104FACB4FA7636B15CA5BBCB32E9@BYAPR01MB4104.prod.exchangelabs.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BYAPR01MB4104FACB4FA7636B15CA5BBCB32E9@BYAPR01MB4104.prod.exchangelabs.com>
Message-ID-Hash: LMPECIMFFOKHJB4K5EM5KWEW32EVA5GS
X-Message-ID-Hash: LMPECIMFFOKHJB4K5EM5KWEW32EVA5GS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP X410 Setup
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LMPECIMFFOKHJB4K5EM5KWEW32EVA5GS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7831162863405443598=="

This is a multi-part message in MIME format.
--===============7831162863405443598==
Content-Type: multipart/alternative;
 boundary="------------oa0J7NvSJR2wUpeBwq9HXHSS"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------oa0J7NvSJR2wUpeBwq9HXHSS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-10-24 14:46, Juan L. Delgado wrote:
> Can I use the USRP X410 in a windows environment with Labview or GNU=20
> Radio through windows? Or would it be a simpler install to use Linux=20
> in a virtual environment?
>
> I attempted to use the executable download for Windows for UHD 4.3 but=20
> i believe my USRP needs to be updated to 4.3 as well ( I believe it=20
> has 4.1.05 installed but im not 100% sure).=C2=A0 The instructions in t=
he=20
> manual to update the USRP software is in Linux only.
The UHD update tools will work in windows as well.=C2=A0 Both=20
"uhd_images_downloader" and "uhd_image_loader" should work
 =C2=A0 just fine in Windows.

I can't comment on Gnu Radio on windows, since I have no experience with=20
it, although I do know that Ryan Volz has created
 =C2=A0 an installer environment for Windows called "radioconda" which ca=
n=20
install Gnu Radio.
>
> My worries are that if I am able to download 4.1 by source onto my=20
> computer, or if I am able to upgrade the USRP to 4.3, I still will not=20
> be able to use it in windows.
>
> FYI I need to use the USRP to examine and transmit frequencies in the=20
> 2.4 gHz frequency for a school project.
>
> Thank You
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------oa0J7NvSJR2wUpeBwq9HXHSS
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-10-24 14:46, Juan L. Delgado
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BYAPR01MB4104FACB4FA7636B15CA5BBCB32E9@BYAPR01MB4104.prod.exc=
hangelabs.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        Can I use the USRP X410 in a windows environment with Labview or
        GNU Radio through windows? Or would it be a simpler install to
        use Linux in a virtual environment?</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        I attempted to use the executable download for Windows for UHD
        4.3 but i believe my USRP needs to be updated to 4.3 as well ( I
        believe it has 4.1.05 installed but im not 100% sure).=C2=A0 The
        instructions in the manual to update the USRP software is in
        Linux only.</div>
    </blockquote>
    The UHD update tools will work in windows as well.=C2=A0 Both
    "uhd_images_downloader" and "uhd_image_loader" should work<br>
    =C2=A0 just fine in Windows.<br>
    <br>
    I can't comment on Gnu Radio on windows, since I have no experience
    with it, although I do know that Ryan Volz has created<br>
    =C2=A0 an installer environment for Windows called "radioconda" which=
 can
    install Gnu Radio.<br>
    <blockquote type=3D"cite"
cite=3D"mid:BYAPR01MB4104FACB4FA7636B15CA5BBCB32E9@BYAPR01MB4104.prod.exc=
hangelabs.com">
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        My worries are that if I am able to download 4.1 by source onto
        my computer, or if I am able to upgrade the USRP to 4.3, I still
        will not be able to use it in windows.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        FYI I need to use the USRP to examine and transmit frequencies
        in the 2.4 gHz frequency for a school project.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        Thank You</div>
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
    <br>
  </body>
</html>

--------------oa0J7NvSJR2wUpeBwq9HXHSS--

--===============7831162863405443598==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7831162863405443598==--
