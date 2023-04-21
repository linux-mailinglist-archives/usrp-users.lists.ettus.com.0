Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D82046EAB3D
	for <lists+usrp-users@lfdr.de>; Fri, 21 Apr 2023 15:07:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3058B38454B
	for <lists+usrp-users@lfdr.de>; Fri, 21 Apr 2023 09:07:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682082475; bh=U+WwME4n3aIBJ6yfMWNRh2/EYybtU+udWrsnc7aKxLg=;
	h=From:Date:In-Reply-To:To:References:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=xhxcmpnhUoq2Azk7rtDxiZE5+USuRpweGA8xp/T/xWleRD21v5s9PTT/arwLzaz2T
	 S0UVFBg+FgP+O2TFAEVSblKoF7vhHuWzVKwLDyqh9oOoCA1aHIvqdb070NV/cXgn/c
	 3hC7BgxTWYlYnni93kOmeVpoyW4aN9lvk4lv2ugwg6H1C4+UaRN5D48xx+mkGADWmq
	 oGiMdlt/zzEPetVGJ7bRzUQU+/x1V4CDn1eqTtUyA2jOzwcx1vlwrIdx5qdq9qmVer
	 dOzzF8hg/dtceP9Jj+fE7FKwGJ+/OtrMQ8rc7ZQ9WMr9QdaEDeiz40tTBUYkQ9Imao
	 u0Gsg1DFx1TRA==
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 925363845D0
	for <usrp-users@lists.ettus.com>; Fri, 21 Apr 2023 09:00:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=md1tech-co-uk.20221208.gappssmtp.com header.i=@md1tech-co-uk.20221208.gappssmtp.com header.b="2L9yUxFG";
	dkim-atps=neutral
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-3f182d745deso17449215e9.0
        for <usrp-users@lists.ettus.com>; Fri, 21 Apr 2023 06:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=md1tech-co-uk.20221208.gappssmtp.com; s=20221208; t=1682082042; x=1684674042;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=4beFxoOOGhy6LCLLfieAn9rzReUr5x3XCTKT2ufwQ7s=;
        b=2L9yUxFGxxuBesQvyir3rOLvIg0fn15refzkmNnPeDALGpN60jeNcCojAAH/9f0NSC
         AGPOtY5iN0NVEH9WxNcu4ORLJJSZhOoK4mYXoVjFB3yK9XKgai3IFuFNTfOyMi5nhuot
         cbLWKaFSArxDO8SQ++avDdS26c1TSy4+XHng0KJxCnoqUmwIObNiI3/mqL8h5d0xdABo
         r8LHlgZ+4Wiwx55HdHW9us8xpdF3hHnAfs9roZ0a2O/aDurxF39kl5yUDBLMVGkpqsPe
         8oSXxt30eVzuGyRiJTcRnno3YuqF+uMwAwtBi/iuf/4hgKT8pT5dvRiDYUJiT7fsZKWb
         3BYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682082042; x=1684674042;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4beFxoOOGhy6LCLLfieAn9rzReUr5x3XCTKT2ufwQ7s=;
        b=cl5aJq0f/nUXixAA2PEWheoWT4oUljoOUU10OtikL93JfZeZ93AAksFgNNwKLY1cBv
         wkgUL9ko83vGtnPwsgq1JQyFzIdnInSKYcUXdhyGSO/oAua7m3e9XNwPNmANYy50ORPl
         VHEALxEpGpckqXdd0+yPyc4FrGtPpr/J3zPzJaYUmEPTez+SPwDSDWY3WGtVB5F9Mki/
         1//UKC30e0rm2jPRDXIx6EvdU9mrUVdG1y5gpwBDHNZJ9J/+qK5xVtVapfUBmUb6ezcJ
         w1M8MgYJSw5ITPeFigkT2cf37jfXCm8HTCva+3OXbTosbVnY8P4q3U+U19R3IVMi0EHf
         XbZw==
X-Gm-Message-State: AAQBX9cZIBlGq3HPWKENnL7qGSTA26+R5WtUhvNmy5LrKwODEO1y80vT
	EIahlUC7mWHKmsIS+nSyVCfec42oC7T4mjIf4go=
X-Google-Smtp-Source: AKy350b9A/hEIDVoeIxpAw1vJ0wpWMIjVbgR1idTZHaZKUeUC87JVs8WgWuIS6vO6WbATHLNTMpi8A==
X-Received: by 2002:a7b:c3d5:0:b0:3ee:b3bf:5f7c with SMTP id t21-20020a7bc3d5000000b003eeb3bf5f7cmr1928256wmj.23.1682082040730;
        Fri, 21 Apr 2023 06:00:40 -0700 (PDT)
Received: from smtpclient.apple (69.85-31-62.static.virginmediabusiness.co.uk. [62.31.85.69])
        by smtp.gmail.com with ESMTPSA id u15-20020a05600c210f00b003f17848673fsm4747759wml.27.2023.04.21.06.00.39
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Apr 2023 06:00:40 -0700 (PDT)
From: Ian Chodera <iac@md1tech.co.uk>
Message-Id: <E86D0222-38DB-4F37-A112-F1A4747BDD8D@md1tech.co.uk>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.500.231\))
Date: Fri, 21 Apr 2023 14:00:28 +0100
In-Reply-To: <eaa094dc-31d8-0fe6-8267-77a20d9b2f66@ettus.com>
To: =?utf-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
References: <F31D8B08-5590-4DDF-973A-104B8F61C219@md1tech.co.uk>
 <eaa094dc-31d8-0fe6-8267-77a20d9b2f66@ettus.com>
X-Mailer: Apple Mail (2.3731.500.231)
Message-ID-Hash: ZE7EZFW5AJOW3635M2FIX6GCDMFYHV4X
X-Message-ID-Hash: ZE7EZFW5AJOW3635M2FIX6GCDMFYHV4X
X-MailFrom: iac@md1tech.co.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B200-mini not detected
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZE7EZFW5AJOW3635M2FIX6GCDMFYHV4X/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4898094170541879811=="


--===============4898094170541879811==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_F1C4D28E-4199-40BC-8167-0770DE8E4629"


--Apple-Mail=_F1C4D28E-4199-40BC-8167-0770DE8E4629
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi Cedric and Marcus

Thanks for the replies. Neither of them have helped though

>sudo uhd_find_devices --args 'type=3Db200'
No UHD Devices Found

I had in fact already tried both option, having trawled the internet for =
suggestions before joining this list

Ian Chodera
MD1 Technology Ltd.

e: iac@md1tech.co.uk
w: www.md1tech.co.uk


=EF=BF=BC



MD1TechnologyLtd. is registered in England & Wales with company number =
09378746.=20
Registered address: Cheltenham Film & Photographic Studios, Hatherley =
Lane, Cheltenham, Gloucestershire, England. GL51 6PN.
VAT registration number: GB 206 3877 05

> On 21 Apr 2023, at 13:52, Marcus M=C3=BCller =
<marcus.mueller@ettus.com> wrote:
>=20
> Hi Ian,
>=20
> that looks quite good:
>=20
> On 21.04.23 14:09, Ian Chodera wrote:
>=20
>> Bus 001 Device 008: ID 2500:0021 Ettus Research LLC USRP B200-mini
>=20
> So, first thing I'd try is
>=20
> uhd_find_devices --args 'type=3Db200'
>=20
> to force UHD to look for B200-series devices (which does include the =
B210, and B20x-mini variants).
>=20
> If that doesn't help, might be a permission problem. How did you =
install UHD on your machine?
>=20
> Best regards,
> Marcus
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com


--Apple-Mail=_F1C4D28E-4199-40BC-8167-0770DE8E4629
Content-Type: multipart/related;
	type="text/html";
	boundary="Apple-Mail=_2F71146B-861E-43EC-8DDF-B51D84F55D1B"


--Apple-Mail=_2F71146B-861E-43EC-8DDF-B51D84F55D1B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"overflow-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;">Hi Cedric and =
Marcus<div><br></div><div>Thanks for the replies. Neither of them have =
helped though</div><div><br></div><div><div>&gt;sudo uhd_find_devices =
--args 'type=3Db200'</div><div>No UHD Devices =
Found</div><div><br></div><div>I had in fact already tried both option, =
having trawled the internet for suggestions before joining this =
list</div><div><br></div><div>
<meta charset=3D"UTF-8"><div style=3D"caret-color: rgb(0, 0, 0); color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 12px; font-style: =
normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
text-decoration: none;">Ian Chodera<br>MD1 Technology =
Ltd.<br><br>e:&nbsp;iac@md1tech.co.uk<br>w:&nbsp;www.md1tech.co.uk<br><br>=
<br></div><span><img alt=3D"9001-RGB-Logo-136x136.jpg" =
src=3D"cid:05D4E7B7-B20C-49B6-8A13-474D7AB3AC07"></span><meta =
charset=3D"UTF-8"><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, =
0, 0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><br><br><br>MD1TechnologyLtd. is registered in =
England &amp;&nbsp;Wales with company number =
09378746.&nbsp;<br>Registered address:&nbsp;Cheltenham Film =
&amp;&nbsp;Photographic Studios, Hatherley Lane,&nbsp;Cheltenham, =
Gloucestershire, England. GL51 6PN.<br>VAT registration number: GB 206 =
3877 05</div>
</div>
<div><br><blockquote type=3D"cite"><div>On 21 Apr 2023, at 13:52, Marcus =
M=C3=BCller &lt;marcus.mueller@ettus.com&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div><div>Hi Ian,<br><br>that looks =
quite good:<br><br>On 21.04.23 14:09, Ian Chodera =
wrote:<br><br><blockquote type=3D"cite">Bus 001 Device 008: ID 2500:0021 =
Ettus Research LLC USRP B200-mini<br></blockquote><br>So, first thing =
I'd try is<br><br>uhd_find_devices --args 'type=3Db200'<br><br>to force =
UHD to look for B200-series devices (which does include the B210, and =
B20x-mini variants).<br><br>If that doesn't help, might be a permission =
problem. How did you install UHD on your machine?<br><br>Best =
regards,<br>Marcus<br>_______________________________________________<br>U=
SRP-users mailing list -- usrp-users@lists.ettus.com<br>To unsubscribe =
send an email to =
usrp-users-leave@lists.ettus.com<br></div></div></blockquote></div><br></d=
iv></body></html>=

--Apple-Mail=_2F71146B-861E-43EC-8DDF-B51D84F55D1B
Content-Transfer-Encoding: base64
Content-Disposition: inline;
	filename=9001-RGB-Logo-136x136.jpg
Content-Type: image/jpeg;
	name="9001-RGB-Logo-136x136.jpg"
Content-Id: <05D4E7B7-B20C-49B6-8A13-474D7AB3AC07>

/9j/4AAQSkZJRgABAQABLAEsAAD/4QCgRXhpZgAATU0AKgAAAAgABgESAAMAAAABAAEAAAEaAAUA
AAABAAAAVgEbAAUAAAABAAAAXgEoAAMAAAABAAIAAAEyAAIAAAAUAAAAZodpAAQAAAABAAAAegAA
AAAAAAEsAAAAAQAAASwAAAABMjAyMTowNDowNyAxNzo0NjowMQAAAqACAAQAAAABAAAAiKADAAQA
AAABAAAAiAAAAAD/4Qv1aHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVn
aW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5z
Ong9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJYTVAgQ29yZSA2LjAuMCI+IDxyZGY6UkRGIHht
bG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxy
ZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNv
bS94YXAvMS4wLyIgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIiB4
bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RFdnQ9
Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZUV2ZW50IyIgeG1sbnM6
cGhvdG9zaG9wPSJodHRwOi8vbnMuYWRvYmUuY29tL3Bob3Rvc2hvcC8xLjAvIiB4bXA6TW9kaWZ5
RGF0ZT0iMjAyMS0wNC0wN1QxNzo0NjowMSswMTowMCIgeG1wOk1ldGFkYXRhRGF0ZT0iMjAyMS0w
NC0wN1QxNzo0NjowMSswMTowMCIgcGhvdG9zaG9wOklDQ1Byb2ZpbGU9InNSR0IgSUVDNjE5NjYt
Mi4xIiBwaG90b3Nob3A6Q29sb3JNb2RlPSIzIj4gPGRjOnRpdGxlPiA8cmRmOkFsdD4gPHJkZjps
aSB4bWw6bGFuZz0ieC1kZWZhdWx0Ij5DZXJ0aWZpY2F0aW9uIEJhZGdlc19DTVlLIChXaGl0ZSkg
QVNTRVRTXyhNYXIgMjEpPC9yZGY6bGk+IDwvcmRmOkFsdD4gPC9kYzp0aXRsZT4gPHhtcE1NOkhp
c3Rvcnk+IDxyZGY6U2VxPiA8cmRmOmxpIHN0RXZ0OnNvZnR3YXJlQWdlbnQ9IkFmZmluaXR5IFB1
Ymxpc2hlciAxLjkuMiIgc3RFdnQ6YWN0aW9uPSJwcm9kdWNlZCIgc3RFdnQ6d2hlbj0iMjAyMS0w
NC0wN1QxNzo0NjowMSswMTowMCIvPiA8L3JkZjpTZXE+IDwveG1wTU06SGlzdG9yeT4gPC9yZGY6
RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPD94cGFja2V0IGVuZD0idyI/PgD/7QB+
UGhvdG9zaG9wIDMuMAA4QklNBAQAAAAAAEUcAVoAAxslRxwCAAACAAIcAgUAMUNlcnRpZmljYXRp
b24gQmFkZ2VzX0NNWUsgKFdoaXRlKSBBU1NFVFNfKE1hciAyMSkAOEJJTQQlAAAAAAAQBWnt1ACD
dh7/5rXkq2nCA//iAmRJQ0NfUFJPRklMRQABAQAAAlRsY21zBDAAAG1udHJSR0IgWFlaIAflAAQA
BwAPADcAH2Fjc3BNU0ZUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD21gABAAAAANMtbGNtcwAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC2Rlc2MAAAEIAAAA
PmNwcnQAAAFIAAAATHd0cHQAAAGUAAAAFGNoYWQAAAGoAAAALHJYWVoAAAHUAAAAFGJYWVoAAAHo
AAAAFGdYWVoAAAH8AAAAFHJUUkMAAAIQAAAAIGdUUkMAAAIQAAAAIGJUUkMAAAIQAAAAIGNocm0A
AAIwAAAAJG1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIgAAABwAcwBSAEcAQgAgAEkARQBDADYAMQA5
ADYANgAtADIALgAxAABtbHVjAAAAAAAAAAEAAAAMZW5VUwAAADAAAAAcAE4AbwAgAGMAbwBwAHkA
cgBpAGcAaAB0ACwAIAB1AHMAZQAgAGYAcgBlAGUAbAB5WFlaIAAAAAAAAPbWAAEAAAAA0y1zZjMy
AAAAAAABDEIAAAXe///zJQAAB5MAAP2Q///7of///aIAAAPcAADAblhZWiAAAAAAAABvoAAAOPUA
AAOQWFlaIAAAAAAAACSfAAAPhAAAtsNYWVogAAAAAAAAYpcAALeHAAAY2XBhcmEAAAAAAAMAAAAC
ZmYAAPKnAAANWQAAE9AAAApbY2hybQAAAAAAAwAAAACj1wAAVHsAAEzNAACZmgAAJmYAAA9c/8AA
EQgAiACIAwERAAIRAQMRAf/EAB8AAAEFAQEBAQEBAAAAAAAAAAABAgMEBQYHCAkKC//EALUQAAIB
AwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBka
JSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SV
lpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX2
9/j5+v/EAB8BAAMBAQEBAQEBAQEAAAAAAAABAgMEBQYHCAkKC//EALURAAIBAgQEAwQHBQQEAAEC
dwABAgMRBAUhMQYSQVEHYXETIjKBCBRCkaGxwQkjM1LwFWJy0QoWJDThJfEXGBkaJicoKSo1Njc4
OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoKDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uLj5OXm5+jp6vLz9PX29/j5+v/bAEMAAQEB
AQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEB
AQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEB
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
--Apple-Mail=_2F71146B-861E-43EC-8DDF-B51D84F55D1B--

--Apple-Mail=_F1C4D28E-4199-40BC-8167-0770DE8E4629--

--===============4898094170541879811==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4898094170541879811==--
