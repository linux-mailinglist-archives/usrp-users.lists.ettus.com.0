Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6464461738D
	for <lists+usrp-users@lfdr.de>; Thu,  3 Nov 2022 02:06:43 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BA44538428C
	for <lists+usrp-users@lfdr.de>; Wed,  2 Nov 2022 21:06:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667437601; bh=97DzNncHYVS7bWQY8LsFawyq5YXVSGNqvCurgy0jkpI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=noK6sncmhguZm9Lq//JAWJbaRXrvS4Z+zcs9/Sed3manvAToj/9ox2rzjsH16m0ZL
	 1FMH7+aVDFe9KvjSRB1+PTql8RXvEoEJnQPoP2bspkTPow9n2rv81Y0F+f8olxWXZ/
	 MDpyDoDL+33fG9GUE2exx63dhYQgTUx18fGU/cHPjZg6YipRzhiMnJwDqXGxowJXpP
	 41d7PD4MVujVX+Yo+IgJ4oZHtKQw2jNvkkl6zr33lQBy2qqsE6G9NkOjrh1R8e1C7e
	 E9nv8QKdr2BIg5+bW07VAgrMMiGb8uBt9wn43kc+ew4wSwo8iWmky3nABlaw/GVWt9
	 8PHkRVFTKWCPw==
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 11C58384256
	for <usrp-users@lists.ettus.com>; Wed,  2 Nov 2022 21:05:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kTrcib6L";
	dkim-atps=neutral
Received: by mail-qk1-f174.google.com with SMTP id k2so263487qkk.7
        for <usrp-users@lists.ettus.com>; Wed, 02 Nov 2022 18:05:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rKj70foSc3iWfG9RiDN+3KIrzRv87QfeXbGm73WLPeg=;
        b=kTrcib6Lng20W2TB3mEhQndvOwKPSavmc22fyvH6uhbsCnIk0+syUgjCe35/N5EzGF
         7jpeH0if9eCdlKFlk88G+5alKbPVdHyQnQn2YEORR4+PBpio7H1ugRp/cEmFfUyRtU90
         voOinbs+ZcrGfj+W3Lq4FiC34cUYnzxTC10tX676zna4uChivTHzYmAMzn8TWTETWLs4
         nDzMTW+blXSLDCG0IbmKQu+RVu7Bz1A94L07lyO1lSNsRxSSEqTb+hfuGvemN5gCCfCA
         Oqo1sXuFV6BgsVCyQk6YyI4LCdOSe/9x41fv1x+1Qu74L+ZzZsJIVIcZwzvaPw+SZ3ZI
         BR3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rKj70foSc3iWfG9RiDN+3KIrzRv87QfeXbGm73WLPeg=;
        b=Sdh3DSX5XAsgpt1N41SSjlX5hgtvUhz1zG5fMx2lzM3ok473HukgDi3LODFROTIGss
         lASGUEEh9ZRTyVrJPdVEAL3vYdVsyl49TcnvXuJZ962EyBCcZwe9axfXo+q3qim+r5eR
         woTkEnFaT2bgEykFkABQ/9fKGzGnFQzkr8zAiBmVxm/7JoIBSHWgTD2/24O3+QE0GfeS
         WtZ+qAp5HE6XRgoP+dMO1aULAbaFvWvKmVZ0DbImRC3tXBXwQOi0ZIxePsJgb1Xb/+sy
         hVfxWbNWHVgpRIqIZmYZsmRf7rnSZR9qKJMuKGv4TIhZWEtyp+eXUUcDC2Whue5yn34d
         s+Qw==
X-Gm-Message-State: ACrzQf0XyVhpJ51U1Iaw1odWHsk3gM8JD1uUazNg4FtBNKGMQQ5lwBO+
	MgmJSFVBaIY5spmy//1zBKoP9hII6pc=
X-Google-Smtp-Source: AMsMyM6zCC7431jY0HeYJTbBkAH2xM2Lxwk/2Dgd8VyMXlgFEohDFkZgxQQlyYU05t8kRFiMwmUnEA==
X-Received: by 2002:ae9:ef93:0:b0:6fa:1745:1008 with SMTP id d141-20020ae9ef93000000b006fa17451008mr19514848qkg.706.1667437552817;
        Wed, 02 Nov 2022 18:05:52 -0700 (PDT)
Received: from [192.168.2.167] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id m8-20020a05620a290800b006ce40fbb8f6sm9948297qkp.21.2022.11.02.18.05.51
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 18:05:52 -0700 (PDT)
Message-ID: <6110af43-326b-6dcd-e1bb-11ad590f1b8b@gmail.com>
Date: Wed, 2 Nov 2022 21:05:51 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CANsNear2pq3y6SP31Z=Y0Qk=aLhS-4qRqBg1g8W6Lk+0nwM_sw@mail.gmail.com>
 <CANsNeapRKvT4Uu_cmJ9tF-qrg2D10FYUZmoTFgq4521ODFUt-g@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CANsNeapRKvT4Uu_cmJ9tF-qrg2D10FYUZmoTFgq4521ODFUt-g@mail.gmail.com>
Message-ID-Hash: 4JIN6OMREBUS6VP5P2NDVKUETDVXWYLI
X-Message-ID-Hash: 4JIN6OMREBUS6VP5P2NDVKUETDVXWYLI
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 GnuRadio upgrade?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4JIN6OMREBUS6VP5P2NDVKUETDVXWYLI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3918010163915318139=="

This is a multi-part message in MIME format.
--===============3918010163915318139==
Content-Type: multipart/alternative;
 boundary="------------rQPrDITGgo46h3k900QP00rL"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------rQPrDITGgo46h3k900QP00rL
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 02/11/2022 16:39, Rich Gopstein wrote:
> I tried following the instructions in here:=20
> https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_R=
FNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source=20
>
> to cross compile GnuRadio on my Ubuntu box, but the cmake failed=20
> because=C2=A0the OE environment was from 2016 and had old library versi=
ons.
>
> I could really use some suggestions on how to get a more modern=20
> GnuRadio (3.9+) on the E310.
>
> Thanks.
> Rich
Here's a direct link to the images:

https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v4.3.0.0/


That image includes GR 3.8.3


>
> On Tue, Oct 25, 2022 at 2:32 PM Rich Gopstein <rich@ourowndomain.com>=20
> wrote:
>
>     I'd like to run GR 3.9 or later on the E310.=C2=A0 Is there a
>     documented process to upgrade GR on the E310?
>
>     Thanks.
>     Rich
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------rQPrDITGgo46h3k900QP00rL
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 02/11/2022 16:39, Rich Gopstein
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CANsNeapRKvT4Uu_cmJ9tF-qrg2D10FYUZmoTFgq4521ODFUt-g@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">I tried following the instructions in here:=C2=A0<=
a
href=3D"https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Buil=
ding_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source"
          moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">https:=
//kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD=
_/_GNU_Radio_/_gr-ettus_from_Source</a>
        <div>to cross compile GnuRadio on my Ubuntu box, but the cmake
          failed because=C2=A0the OE environment was from 2016 and had ol=
d
          library versions.</div>
        <div><br>
        </div>
        <div>I could really use some suggestions on how to get a more
          modern GnuRadio (3.9+) on the E310.</div>
        <div><br>
          Thanks.</div>
        <div>Rich</div>
      </div>
    </blockquote>
    Here's a direct link to the images:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/bi=
naries/cache/e3xx/meta-ettus-v4.3.0.0/">https://files.ettus.com/binaries/=
cache/e3xx/meta-ettus-v4.3.0.0/</a><br>
    <br>
    <br>
    That image includes GR 3.8.3<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CANsNeapRKvT4Uu_cmJ9tF-qrg2D10FYUZmoTFgq4521ODFUt-g@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 25, 2022 at 2:3=
2
          PM Rich Gopstein &lt;<a href=3D"mailto:rich@ourowndomain.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">rich=
@ourowndomain.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">
            <div>I'd like to run GR 3.9 or later on the E310.=C2=A0 Is th=
ere
              a documented process to upgrade GR on the E310?</div>
            <div><br>
            </div>
            <div>Thanks.</div>
            <div>Rich</div>
            <div><br>
            </div>
          </div>
        </blockquote>
      </div>
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

--------------rQPrDITGgo46h3k900QP00rL--

--===============3918010163915318139==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3918010163915318139==--
