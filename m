Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 481B335E6AF
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 20:51:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8E5353844B1
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 14:51:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RZps4rkF";
	dkim-atps=neutral
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 6B5893844AE
	for <usrp-users@lists.ettus.com>; Tue, 13 Apr 2021 14:50:42 -0400 (EDT)
Received: by mail-qv1-f49.google.com with SMTP id i11so3098194qvu.10
        for <usrp-users@lists.ettus.com>; Tue, 13 Apr 2021 11:50:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=0L9tJaJNUXHjyVHAcKv17uE6lzPGrmXI/wUSw05B+Sw=;
        b=RZps4rkFB1n2Surex4cukpt67foE56GpIt6ZZioSurO2w7HdBSp4ooYiQiefPFfGpt
         qjuBrzL8vIqjuIex/mDrGi8CnPA4IERMwXqNu3TwSiqc1SVVOU0TrsAPepNQUNJr623g
         YX2sqxruwhhk9DfexZjIzaniTmvZLwMWhSsRlnZfFiehYFkhAKHhKbwfZK9dDV3if3LI
         leKuZD3Q+UoSpVJGsZT0mkb2byc8OxyTNivd3OflRlozZSeVpbRCLUYPOHCL9SBanHil
         h71hNtfckGikT0lvQR//RiMvcG8af5UW46SD4WIgVJil9IxJvVhJNJc7LszA0zbt71GG
         T3bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=0L9tJaJNUXHjyVHAcKv17uE6lzPGrmXI/wUSw05B+Sw=;
        b=GYosFGCcYr6iq7IXSNCNi1+ZXq9TK1lY1Q3E8PKeM4AUUtuQkeWYOe2vJc4dTgbgYc
         nagOEz3h+hPT/gqa/sEuf/LRtNBgNbDn7VINKS9v7h/7tmFCbNFirHYzQ+KOgKYPg5BO
         uipP86PJ3mnaH5K9/9Yj0CH8C73uWZ9ZBw4/Oe2U4d1vyZK/NBxvzjP0PJZSba9qsVXj
         hS7zRKn66GOkiyZLCzEExmoyzOkmsAK9T/6iHuFGaP5Qz9SCLrnKsUcwGtvBecv4ySAE
         QHifd9L7I3Wq/k9jSvHA2qeOEQBEPpNvV76CcfoOC0wH9sfjvHwDfK6uFs2yFWWHtUjC
         EgmQ==
X-Gm-Message-State: AOAM533TMP0IuXA3BY+CJTrDFs2oRElRgKLHLBVGLksxrzAk4U5X1Zs0
	2xiNATHEfQ1pPCX9jHSSYXduhBzhk/Q=
X-Google-Smtp-Source: ABdhPJzaEUE0nR5+1K/8bkSMdCdeVoMhPEMxxLOfx68rAkPso2iWWzkUxcR/oHIRuwXYicozsmnKAw==
X-Received: by 2002:a0c:f349:: with SMTP id e9mr7492836qvm.12.1618339841726;
        Tue, 13 Apr 2021 11:50:41 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id d14sm11103584qkg.33.2021.04.13.11.50.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 11:50:41 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 13 Apr 2021 14:50:40 -0400
Message-Id: <7C43CCBD-0058-4D7B-B832-962D6B1337E2@gmail.com>
References: <CAKJyDkJL27kZ6dUzMsMnendscmeQ1D5CZTnUGv4nSEehpbRwBQ@mail.gmail.com>
In-Reply-To: <CAKJyDkJL27kZ6dUzMsMnendscmeQ1D5CZTnUGv4nSEehpbRwBQ@mail.gmail.com>
To: Robin Coxe <coxe@quanttux.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: QEI4SFSCFC2Z3OSSIEMKSMW75YOEIZMQ
X-Message-ID-Hash: QEI4SFSCFC2Z3OSSIEMKSMW75YOEIZMQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: paradis@kwesst.com, Ettus Mail List <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205 mini-i isn't found by uhd_find_devices
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QEI4SFSCFC2Z3OSSIEMKSMW75YOEIZMQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3515046396145405960=="


--===============3515046396145405960==
Content-Type: multipart/alternative; boundary=Apple-Mail-B88A7641-068C-4AF6-B3A0-A267E5B4ABD1
Content-Transfer-Encoding: 7bit


--Apple-Mail-B88A7641-068C-4AF6-B3A0-A267E5B4ABD1
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

This is the kind of error that happens when you have a =E2=80=9Cmixed=E2=80=9D=
 system with libraries and utilities from different builds.=20

Also after rhe build/install did you =E2=80=9Csudo ldconfig=E2=80=9D ?

Sent from my iPhone

> On Apr 13, 2021, at 2:38 PM, Robin Coxe <coxe@quanttux.com> wrote:
>=20
> =EF=BB=BF
> Have you checked the B205mini-i board itself to ensure the USB connector p=
ins are soldered down securely?   There have been instances where a dislodge=
d connector caused USB connection issues.   (If not, you can either retouch t=
he connections yourself with a soldering iron or RMA to NI.)
>=20
>=20
>=20
>> On Tue, Apr 13, 2021 at 11:32 AM <paradis@kwesst.com> wrote:
>> Hi Marcus, thanks for the response. So I tried to do what you suggested, b=
ut unfortunately it=E2=80=99s giving me and error, and google isn=E2=80=99t b=
eing helpful at all, maybe you=E2=80=99ve seen this before?
>>=20
>> /usr/local/lib64/uhd/utils/b2xx_fx3_utils: symbol lookup error: /usr/loca=
l/lib64/uhd/utils/b2xx_fx3_utils: undefined symbol: _ZN10b200_iface16fx3_sta=
te_stringB5cxx11Eh
>>=20
>>=20
>>=20
>> It seems like the b2xx_fx3_utils is looking for a symbol it can find, is t=
here something else I need to do before using the B2xx_fx3_utils?
>>=20
>> Thanks!
>>=20
>>=20
>>=20
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-B88A7641-068C-4AF6-B3A0-A267E5B4ABD1
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">This is the kind of error that happens when=
 you have a =E2=80=9Cmixed=E2=80=9D system with libraries and utilities from=
 different builds.&nbsp;<div><br></div><div>Also after rhe build/install did=
 you =E2=80=9Csudo ldconfig=E2=80=9D ?<br><div><br><div dir=3D"ltr">Sent fro=
m my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 13, 2=
021, at 2:38 PM, Robin Coxe &lt;coxe@quanttux.com&gt; wrote:<br><br></blockq=
uote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"l=
tr">Have you checked the B205mini-i board itself to ensure&nbsp;the USB conn=
ector pins are soldered down securely?&nbsp; &nbsp;There have been instances=
 where a dislodged connector caused USB connection issues.&nbsp; &nbsp;(If n=
ot, you can either retouch the connections yourself with a soldering iron or=
 RMA to NI.)<div><br></div><div><br></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 13, 2021 at 11:32 AM &l=
t;<a href=3D"mailto:paradis@kwesst.com">paradis@kwesst.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi Marcus, thanks=
 for the response. So I tried to do what you suggested, but unfortunately it=
=E2=80=99s giving me and error, and google isn=E2=80=99t being helpful at al=
l, maybe you=E2=80=99ve seen this before?</p><p>/usr/local/lib64/uhd/utils/b=
2xx_fx3_utils: symbol lookup error: /usr/local/lib64/uhd/utils/b2xx_fx3_util=
s: undefined symbol: _ZN10b200_iface16fx3_state_stringB5cxx11Eh</p><p><br></=
p><p>It seems like the b2xx_fx3_utils is looking for a symbol it can find, i=
s there something else I need to do before using the B2xx_fx3_utils?</p><p>T=
hanks!</p><p><br></p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></div></body></html>=

--Apple-Mail-B88A7641-068C-4AF6-B3A0-A267E5B4ABD1--

--===============3515046396145405960==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3515046396145405960==--
