Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A317944EC83
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 19:18:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9BCEA3845B0
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 13:18:24 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="R00ge7A7";
	dkim-atps=neutral
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 1ECD1384345
	for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 13:17:39 -0500 (EST)
Received: by mail-qt1-f174.google.com with SMTP id v22so4631730qtx.8
        for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 10:17:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=+YFq7y9hAkDRkVqNPp0TOIDLZ+g2QgFlwPtaIEhyLsc=;
        b=R00ge7A7aPeAItHIDqmjP1j/f5nB7re2e0Sz1MUHHCorVarpHB0uN8Xtv17dpP2aB7
         AKIyhaxWjqXDxdc/ZDl71Tn50aV5fbUjoBbATOH2Su3x4JJFwZ7yUxlLtsfKTmiLuq8M
         GnQVaksrPYvw6EDPXzzRXU6w+hq/YRcCToU1hSuoyNFxQppaLeE1mZvSQa3eCuipXhEp
         g2KyB9aYlOH4ZLOg5kUSSqWaiOMs6Z9c3R6HxFUWI/FezCKI4dmM2a7BKa92CiNbF3/Y
         aS1Wo4QEg8aPigTgP7tjff6NrPQYlQO+Oex6Pg3iec6Qq1iA6MSraKC5FhPxcHEbmWCO
         EFYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=+YFq7y9hAkDRkVqNPp0TOIDLZ+g2QgFlwPtaIEhyLsc=;
        b=fDaawphBKR/mpdFYDV4s7HLr4eenQrfxeXsGbBH16EjfwvjOMYVIe14ToIjEoPU7bX
         91BolFnSnnBjiZsHb27JCIi8dXwzAFxGyYe75LeQXm5HlbdMDtVuvlEKnk24kQc2rm9I
         Ebf9pMfgBNtTCYVM1SqTvLQzMSjBKOiQqbjPwk8oDw2cNZhnsbFQBOaFQwahojDyEy9E
         H9OtaMpma2OVr7QqlB7CKDVMFu3gjdhdQesv1rY0ZgbNJkOdM2RG3hLKX7QSfngJZR9x
         JBmKtjI0kPGBSoqz28QXIwRTzM4g7gkO9ExRC3I8mDNBPvLZR5ak7BVyKqkFRRGTFr9/
         swAA==
X-Gm-Message-State: AOAM5301uA/rhHi1PDo+SA53q7OwnSOBVkLjYdn9R2HFdn2TkrjuDzfl
	TOx2l2PTF/DHyFeYWEx72GI=
X-Google-Smtp-Source: ABdhPJxVOaFrDe1gMQtGXBd/rjEGXMgf7wXp6tdLpAWefHav9QZnPBYxGvVFUaHIdbMaYELbmDZfnQ==
X-Received: by 2002:ac8:5619:: with SMTP id 25mr18096535qtr.325.1636741058649;
        Fri, 12 Nov 2021 10:17:38 -0800 (PST)
Received: from [192.168.2.213] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id m19sm2412762qkn.129.2021.11.12.10.17.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Nov 2021 10:17:38 -0800 (PST)
Message-ID: <678493ce-f272-2cd9-82e8-a3ceb184d633@gmail.com>
Date: Fri, 12 Nov 2021 13:17:37 -0500
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
 <d3ab3578-ab06-ad4b-e7e3-0bd70e278b8a@gmail.com>
 <CAB__hTQ7qgs72PRST+oxfk++aSk-wbQanAF+n6=iqF2XDSq__w@mail.gmail.com>
 <68dfeaf8-8a74-4902-a939-b9f79640b230@gmail.com>
 <CAB__hTSmvEquWz1GFsZDf297roNWMTBw-DymFHYxs16pUJOP0Q@mail.gmail.com>
 <09b6ddf3-81ca-b6fc-491c-66b7bfaf83d7@gmail.com>
 <CAB__hTTGkMcTz4a7ht_Uhb=V3o8EsC8hO5acqfwKkNYa46rsxg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTTGkMcTz4a7ht_Uhb=V3o8EsC8hO5acqfwKkNYa46rsxg@mail.gmail.com>
Message-ID-Hash: DQRQFCWHATTXTULHANI763JT5YN44M2B
X-Message-ID-Hash: DQRQFCWHATTXTULHANI763JT5YN44M2B
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 file system problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DQRQFCWHATTXTULHANI763JT5YN44M2B/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4931290041047213087=="

This is a multi-part message in MIME format.
--===============4931290041047213087==
Content-Type: multipart/alternative;
 boundary="------------BQzNXV2ASA0YTc4Tp7KMgrT9"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------BQzNXV2ASA0YTc4Tp7KMgrT9
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-11-12 13:14, Rob Kossler wrote:
>
>
>
> I will try soon, but such experiments are "expensive" because when it=20
> fails I have to re-burn the file system and then reconfigure stuff=20
> afterwords=C2=A0since I don't know how to recover from the=C2=A0issue.=C2=
=A0 My guess=20
> was that either the mount or the eject was writing a date (perhaps an=20
> "accessed" date in some metadata) that was much in the future relative=20
> to the file system "Aug 6 2021" date that it gets and somehow this=20
> date mismatch was causing the fsck failure.=C2=A0 But I am not=20
> knowledgeable on this.
>
> Regarding your NTPD comment, perhaps it isn't accessing any RTC.=C2=A0=20
> Perhaps it is storing the time in the file system somewhere such that=20
> it can access=C2=A0it on next boot?
Your comments indicated the resulting time after reboot in this case was=20
*correct*, which would mean that something would have to be "keeping=20
time" across the
 =C2=A0 reboot.=C2=A0 Or did you mean just that the time after reboot, wi=
thout the=20
network cable connected, but with NTPD turned on, was "closer" to=20
correct than without?



--------------BQzNXV2ASA0YTc4Tp7KMgrT9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-11-12 13:14, Rob Kossler wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTTGkMcTz4a7ht_Uhb=3DV3o8EsC8hO5acqfwKkNYa46rsxg@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div><br>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>I will try soon, but such experiments are "expensive"
            because when it fails I have to re-burn the file system and
            then reconfigure stuff afterwords=C2=A0since I don't know how=
 to
            recover from the=C2=A0issue.=C2=A0 My guess was that either t=
he mount
            or the eject was writing a date (perhaps an "accessed" date
            in some metadata) that was much in the future relative to
            the file system "Aug 6 2021" date that it gets and somehow
            this date mismatch was causing the fsck failure.=C2=A0 But I =
am
            not knowledgeable on this.=C2=A0=C2=A0</div>
          <div><br>
          </div>
          <div>Regarding your NTPD comment, perhaps it isn't accessing
            any RTC.=C2=A0 Perhaps it is storing the time in the file sys=
tem
            somewhere such that it can access=C2=A0it on next boot?</div>
        </div>
      </div>
    </blockquote>
    Your comments indicated the resulting time after reboot in this case
    was *correct*, which would mean that something would have to be
    "keeping time" across the<br>
    =C2=A0 reboot.=C2=A0 Or did you mean just that the time after reboot,=
 without
    the network cable connected, but with NTPD turned on, was "closer"
    to correct than without?<br>
    <br>
    <br>
    <br>
  </body>
</html>
--------------BQzNXV2ASA0YTc4Tp7KMgrT9--

--===============4931290041047213087==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4931290041047213087==--
