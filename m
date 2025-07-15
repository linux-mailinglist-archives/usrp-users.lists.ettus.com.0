Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B98AB0675E
	for <lists+usrp-users@lfdr.de>; Tue, 15 Jul 2025 22:00:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 184213863F2
	for <lists+usrp-users@lfdr.de>; Tue, 15 Jul 2025 16:00:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1752609612; bh=9wM1a2G6fTWXEsTYOouDWg1NooiEXglw5yZs5cx5gN0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=0sw0oGpluU8YxcEvmGFwuHGs9u6bNDbPS82bO1cjaeC4Zpq+I2Gi8MC6Y8WPNsrR9
	 k0UreXmH/OtTH9wrNG//wKIoadkAphRtsbFFgegqfWLmEgwlgnOpr5Kn3FOU/BTcI4
	 Dl0nf3acdouJpORGjkXT5Sz01gfreWSzryzLxQIYD3HgDuAt7yPIs97Vreh+23/pYE
	 /nQ3e8ma5WoGTqz5P5BlbbT3hCLYJKHrLyec0ul/F/NcJUZ8EPPXrf9kO8riT2Utn9
	 enBvVzkpZVDQc4PWcJ094dZMe9pMWkn5onJ8MUp87xnaBTvY58gFzKbFB51mY7KVJP
	 P0sopdm8J8TFA==
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 4CE45386408
	for <usrp-users@lists.ettus.com>; Tue, 15 Jul 2025 15:59:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Kq5vDyUJ";
	dkim-atps=neutral
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3a54700a46eso3690976f8f.1
        for <usrp-users@lists.ettus.com>; Tue, 15 Jul 2025 12:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752609564; x=1753214364; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6w47SIFgH0W7DqUsOFh42L8PGCqk2rMToGwZZnRkSlI=;
        b=Kq5vDyUJsiklTUp5R46AraPNB5lkxKlecCKJpN9Jg3ho5WU4j5tn1DWEiqMGVI0p7/
         E/DIfL0lVS3n8m2a1cRcyj4P0Kqu4UOgXSyXMeS4IVZ9xEw+uTV8qfjvbQPIq0iqOG+M
         7NnoPD6m6odd7tjRVW276/LY9JS0tH2wPZL7zgpRrjaETifI6z4D04HSq787V7SCIPUY
         bKU64Lt3wG2Qg1rRUd0wuyqxLJEw1PilCVmhi8OEIE/+pGIn8tjIukA6tNqeSyoDW69k
         iBrYno7dtA+/MPZDIE+fglBch9EkdCN3RKaiVn/Q2Lbfz+b8YtgOHs/ksDvGLxRjR9Ru
         Yi2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752609564; x=1753214364;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6w47SIFgH0W7DqUsOFh42L8PGCqk2rMToGwZZnRkSlI=;
        b=jM/Kp9nQq0z/DDnyWB6yWfyo6t7mWK4y1U87zKBjMXF8UY5nqfxDeWd+XXS7tiCB+9
         CFje18uZpUuEHc8nS99Cm7svmhchQA/1DwfcA+rbb8dXqiaqT4ABJUjwnyLT3OqfPX7/
         JWDd4FbmCIyDHFc6VEPaBvsIcyua5aQFsNduV9ZFs8QAs9ilQe5hZKwXjRLCrEbggJcx
         s2BGSrn2VfHZgGerwwcMxce+hxzWr+5yOj4D/f7PKSPD5rKrxyXMvXUhDeHMyVLVWl2m
         kH5vVItj+Gx5fjGT5/k+NhFSQBn48OVdKTFxv6LGWkhVUqz3iLZrdg7b1rAo36fDvZTe
         wkQw==
X-Gm-Message-State: AOJu0YxARbOaU6rS0BvljkXNlw9Q3jo71RvKZ2BsZWmFIPaLVJ1X9SXe
	X96mG6HQ3HBHd5HiFfFOPe/AaGM6NUBEF9zCP9LbDElTKqTc5SroBJhw9ybOBcJX53cPkFEEUMY
	Zll3h65Rx7WvB7duihgs8vd4hzVbNaiwlLw==
X-Gm-Gg: ASbGncvWrJNYGrWPnrK3HiOmG7Sg+7E/CnQbxPJz853zysX+QGmGI588zIegys+aZpa
	C/H4c1whDTSQg7trC/Qful5l86VMznCSQgkTSfdu86H1J8MIRC5aOSHFTxi3RSIyYSdpvN2sUC9
	hgItzvBXY0lkjcodvnIvpZ8YT1vzFi+hKK1oQRyRkukh5rLe8Nn92LPdlQEF1tp0Esb8fA6dcR9
	qB8mb8=
X-Google-Smtp-Source: AGHT+IEBjuoqmL5M0LUL8XN39tuOkmqt79kpF5xi2aFk/jobXQCV1va5npjJTz1NtEsiNYmS4A8ryona8e7vcXq+6G4=
X-Received: by 2002:a05:6000:41fa:b0:3a4:e387:c0bb with SMTP id
 ffacd0b85a97d-3b60dd8e79cmr339964f8f.59.1752609563898; Tue, 15 Jul 2025
 12:59:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAE=q3UOip8_jiUiozNZ35TcgL3MmnJxVjzAtFn01442OWUU7rA@mail.gmail.com>
 <CAFOi1A4fU+cS4aiOnhJOFN7YJGvjaNEra6_Z5CFhVLc0hoLdUQ@mail.gmail.com>
In-Reply-To: <CAFOi1A4fU+cS4aiOnhJOFN7YJGvjaNEra6_Z5CFhVLc0hoLdUQ@mail.gmail.com>
From: David <vitishlsfan21@gmail.com>
Date: Tue, 15 Jul 2025 12:59:12 -0700
X-Gm-Features: Ac12FXyeCLK_3cFZhVSTs93EeZB2QhEGLdyOrHs6z0YYaCx7kQECDOS7Bwmg7v8
Message-ID: <CAE=q3UM_TAA0riFVU2LL9_oOvC0M6x0N8fnrUKEaQ2MbfV8PhA@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: 7MEYUZPTW2QWQWVYQQXUTHHU6LOSRBDH
X-Message-ID-Hash: 7MEYUZPTW2QWQWVYQQXUTHHU6LOSRBDH
X-MailFrom: vitishlsfan21@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: OOT Python Bindings in UHD-4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7MEYUZPTW2QWQWVYQQXUTHHU6LOSRBDH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8958990324036629627=="

--===============8958990324036629627==
Content-Type: multipart/alternative; boundary="0000000000007c77930639fd36b3"

--0000000000007c77930639fd36b3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Martin,

Thanks, I gave it a good try, and ran into some cmake issues where UHD 4.6
was missing a cmake module PYTHON_INSTALL_MODULE(). I tried adding it
myself but cmake isn't my favorite, and updated to UHD 4.8.

Thanks for the clarification,

David



On Tue, Jul 15, 2025 at 1:13=E2=80=AFAM Martin Braun <martin.braun@ettus.co=
m> wrote:

> Hey David,
>
> yes, we recommend you use the latest version of `rfnoc-gain` as a
> reference for your Python bindings. Note that gr-ettus is also no longer
> required.
>
> Also note that rfnoc-example was renamed to rfnoc-gain, and we continue t=
o
> provide incremental improvements and bugfixes. Therefore, if you're just
> looking at code as a reference, I recommend looking at the version on
> master branch:
> https://github.com/EttusResearch/uhd/tree/master/host/examples/rfnoc-gain=
/python
>
> --M
>
> On Tue, Jul 15, 2025 at 12:48=E2=80=AFAM David <vitishlsfan21@gmail.com> =
wrote:
>
>> Hello all,
>>
>> I want to use my C++ RFNoC block controller in python. I am on UHD4.6
>> with Ubuntu 22.04. My goal is being able to use my setters and getters f=
or
>> the block user registers from C++ in python.
>>
>> I see that in the UHD-4.7 release the rfnoc-example module started to
>> include the python bindings for OOT modules. Can I use that as a referen=
ce
>> point for UHD-4.6, or is there another method that is preferred?
>>
>> I am not using GNURadio, besides having gr-ettus and GNR installed, and
>> would prefer to stay away from those python libaries if possible.
>>
>> Thanks,
>>
>> David
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000007c77930639fd36b3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Martin,</div><div><br></div><div>Thanks, I gave it a =
good try, and ran into some cmake issues where UHD 4.6 was missing a cmake =
module PYTHON_INSTALL_MODULE(). I tried adding it myself but cmake isn&#39;=
t my favorite, and updated to UHD 4.8.</div><div><br></div><div>Thanks for =
the=C2=A0clarification,</div><div><br></div><div>David</div><div><br></div>=
<div><br></div></div><br><div class=3D"gmail_quote gmail_quote_container"><=
div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 15, 2025 at 1:13=E2=80=AFA=
M Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.com">martin.braun@e=
ttus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr"><div>Hey David,</div><div><br></div><div>yes, we r=
ecommend you use the latest version of `rfnoc-gain` as a reference for your=
 Python bindings. Note that gr-ettus is also no longer required.</div><div>=
<br></div><div>Also note that rfnoc-example was renamed to rfnoc-gain, and =
we continue to provide incremental improvements and bugfixes. Therefore, if=
 you&#39;re just looking at code as a reference, I recommend looking at the=
 version on master branch:=C2=A0<a href=3D"https://github.com/EttusResearch=
/uhd/tree/master/host/examples/rfnoc-gain/python" target=3D"_blank">https:/=
/github.com/EttusResearch/uhd/tree/master/host/examples/rfnoc-gain/python</=
a></div><div><br></div><div>--M</div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 15, 2025 at 12:48=E2=80=AF=
AM David &lt;<a href=3D"mailto:vitishlsfan21@gmail.com" target=3D"_blank">v=
itishlsfan21@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr"><div>Hello all,</div><div><br></div>=
<div>I want to use my C++ RFNoC block controller in python. I am on UHD4.6 =
with Ubuntu 22.04. My goal is being able to use my setters and getters for =
the block user registers from C++ in python.</div><div><br></div><div>I see=
 that in the UHD-4.7 release the rfnoc-example module started to include th=
e python bindings for OOT modules. Can I use that as a reference point for =
UHD-4.6, or is there another method that is preferred?</div><div><br></div>=
<div>I am not using GNURadio, besides having gr-ettus and GNR installed, an=
d would prefer to stay away from those python libaries if possible.</div><d=
iv><br></div><div>Thanks,</div><div><br></div><div>David</div><div><br></di=
v></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000007c77930639fd36b3--

--===============8958990324036629627==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8958990324036629627==--
