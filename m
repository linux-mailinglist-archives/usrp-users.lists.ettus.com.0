Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 973E54815DF
	for <lists+usrp-users@lfdr.de>; Wed, 29 Dec 2021 18:36:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 959803852BC
	for <lists+usrp-users@lfdr.de>; Wed, 29 Dec 2021 12:36:21 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bZqqH20A";
	dkim-atps=neutral
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 66A3E3850BA
	for <USRP-users@lists.ettus.com>; Wed, 29 Dec 2021 12:35:27 -0500 (EST)
Received: by mail-qv1-f41.google.com with SMTP id kk22so19873913qvb.0
        for <USRP-users@lists.ettus.com>; Wed, 29 Dec 2021 09:35:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=qrdvh7FOk0RlJAwUukraVuc+rxLod9BjPSj64NuF0Yg=;
        b=bZqqH20Ari6LsyO8KHFCgr7TJx5tbF7RvjZlIfPlopOEGr4f1hFoTKUtZc5O7wk7Lf
         FUbWzu189vT/Z0Ey8zNR0VSEXoxU1xS31gIJN2FRZyRNnQ/fKKd0C2a/9rNVL5oiZcRM
         8PRyNcjIY2Omnq7q+ypd9lQ8NgXPgRNJCxEKzk/QmNcuJzIr3WYaD3I+leQ4W5Q/eeWO
         86LBAzVj3AkbrF2x6UZQuv7wwyo0MFTH4706vsNVxzLJWBofRVei9iHvw3kvoPbxjEIs
         uN6DDLOH2jq/Rk1L/W0ZwsuZaLWaywkcxANpEepHdAyvkSjEvaa9MpuMQ+616+/wxUpH
         S07g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=qrdvh7FOk0RlJAwUukraVuc+rxLod9BjPSj64NuF0Yg=;
        b=Om8OgNYz7wD+j/rsRxGCemWYxSVV+uoaEJYY3ofHLRyGpIpg2A0OyAlOVxUKLuVwRJ
         AJ3Gy+HTtxuOBuCsHlG9QmCiXJXi5IX2j3IAM0D096wnQ7ii8dcv5Jw0XPcj4mkA53LR
         F3rM7RCHnaM2RNJq9VKZEfiV6XNj27LsWz3Xqmkpn9IPY0qE1NClq66V2l0uv/W6sowU
         VMWT1FqCTeKh4L9TqUn5MZfN33zI9ntwCMLKAaSIxJT5BBbWhDlW1fFalKQgdsFZ4Gt9
         cLbyQseKugM+09+8YeCHBxsQOlbe1geunK0sMhUEMd+pfFbkG2PXhqDx+zcMFJfIYBx2
         Ra0g==
X-Gm-Message-State: AOAM532s0Dmm2ByzMTBTrBUzK9KtSqqdezAVQBe9YZBuNq/FZ6N9VPOF
	IpjfW2kUezHZk0ZsJmICk3Y=
X-Google-Smtp-Source: ABdhPJxPj5NmkcJSBsXHIp6zguhjHZ89/108mqz+3QW+c48wY9ssKlTl4HDkyx1Y3Nx4TlPlm4FuuQ==
X-Received: by 2002:a0c:efcd:: with SMTP id a13mr24733023qvt.11.1640799326606;
        Wed, 29 Dec 2021 09:35:26 -0800 (PST)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.gmail.com with ESMTPSA id h6sm14236221qko.122.2021.12.29.09.35.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Dec 2021 09:35:26 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 29 Dec 2021 12:35:25 -0500
Message-Id: <2A643551-D6A8-4097-8472-54E761EAF5CA@gmail.com>
References: <CANP_ax+AaawkL=FWzKJv3KfjoK4p2ESKvxNw7ne89v=M7VnzAg@mail.gmail.com>
In-Reply-To: <CANP_ax+AaawkL=FWzKJv3KfjoK4p2ESKvxNw7ne89v=M7VnzAg@mail.gmail.com>
To: Temir Karakurum <temirkarakurum@gmail.com>
X-Mailer: iPhone Mail (19B74)
Message-ID-Hash: P4Y33YDEL2SIM7GY2V2DB5NXBV7RJB4P
X-Message-ID-Hash: P4Y33YDEL2SIM7GY2V2DB5NXBV7RJB4P
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E330 and rx-only USRPs
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P4Y33YDEL2SIM7GY2V2DB5NXBV7RJB4P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3935871501608530785=="


--===============3935871501608530785==
Content-Type: multipart/alternative; boundary=Apple-Mail-E5D91B8B-153D-4B90-A724-FE2CF9F67AF4
Content-Transfer-Encoding: 7bit


--Apple-Mail-E5D91B8B-153D-4B90-A724-FE2CF9F67AF4
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

There has never been a. E330 product offering.=20

Sent from my iPhone

> On Dec 29, 2021, at 12:33 PM, Temir Karakurum <temirkarakurum@gmail.com> w=
rote:
>=20
> =EF=BB=BF
> Hi Marcus,
>=20
> Thanks for promptly replying. Has E330 ever been offered for purchase? If s=
o, has it been discontinued?
>=20
> Best,
> Temir
>=20
>> On Wed, Dec 29, 2021 at 8:31 PM Marcus D Leech <patchvonbraun@gmail.com> w=
rote:
>> The TwinRx daughter cards for X310.=20
>>=20
>> Sent from my iPhone
>>=20
>>>> On Dec 29, 2021, at 12:30 PM, Temir Karakurum <temirkarakurum@gmail.com=
> wrote:
>>>>=20
>>> =EF=BB=BF
>>> Hi there,
>>>=20
>>> I recently came across a presentation by Matt Ettus at grcon16, where he=
 introduces E330 as a receive-only alternative for E-series USRPs. I checked=
 Ettus store as well as googled for some info about E330 but could not find a=
nything useful. Has it ever been offered as a product by Ettus or NI?
>>>=20
>>> As a general question, most of my applications are receive-only in natur=
e (spectrum monitoring etc.) and usually Tx channels of the USRPs end up red=
undant. Is it possible to purchase rx-only devices?
>>>=20
>>> Best regards,
>>> Temir
>>>=20
>>>=20
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-E5D91B8B-153D-4B90-A724-FE2CF9F67AF4
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">There has never been a. E330 product offeri=
ng.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr">=
<br><blockquote type=3D"cite">On Dec 29, 2021, at 12:33 PM, Temir Karakurum &=
lt;temirkarakurum@gmail.com&gt; wrote:<br><br></blockquote></div><blockquote=
 type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div>Hi Marcus,</d=
iv><div><br></div><div>Thanks for promptly replying. Has E330 ever been offe=
red for purchase? If so, has it been discontinued?</div><div><br></div><div>=
Best,</div><div>Temir</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Wed, Dec 29, 2021 at 8:31 PM Marcus D Leech &lt=
;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
auto">The TwinRx daughter cards for X310.&nbsp;<br><br><div dir=3D"ltr">Sent=
 from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Dec 2=
9, 2021, at 12:30 PM, Temir Karakurum &lt;<a href=3D"mailto:temirkarakurum@g=
mail.com" target=3D"_blank">temirkarakurum@gmail.com</a>&gt; wrote:<br><br><=
/blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div d=
ir=3D"ltr">Hi there,<div><br></div><div>I recently came across a presentatio=
n by Matt Ettus at <a href=3D"https://youtu.be/kEAkIfWViQo?t=3D1254" target=3D=
"_blank">grcon16</a>, where he introduces E330 as a receive-only alternative=
 for E-series USRPs. I checked Ettus store as well as googled for some info a=
bout E330 but could not find anything useful. Has it ever been offered as a p=
roduct by Ettus or NI?</div><div><br></div><div>As a general question, most o=
f my applications are receive-only in nature (spectrum monitoring etc.) and u=
sually Tx channels of the USRPs end up redundant. Is it possible to purchase=
 rx-only devices?</div><div><br></div><div>Best regards,</div><div>Temir</di=
v><div><br></div><div><br></div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D=
"_blank">usrp-users@lists.ettus.com</a></span><br><span>To unsubscribe send a=
n email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_bl=
ank">usrp-users-leave@lists.ettus.com</a></span><br></div></blockquote></div=
></blockquote></div>
</div></blockquote></body></html>=

--Apple-Mail-E5D91B8B-153D-4B90-A724-FE2CF9F67AF4--

--===============3935871501608530785==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3935871501608530785==--
