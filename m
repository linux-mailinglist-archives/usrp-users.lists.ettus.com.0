Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D0AA1815C
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jan 2025 16:50:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 26CEF385E97
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jan 2025 10:50:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737474608; bh=wyjKgjAlUCxJhkKBY3bockcRlMLVhEV/YYsY99635wY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=M+BAhe1k9z+YmFVwBgHbUZcUafweiOAvi7/qCyFiHWe26B+hBSb9knU7rJF330iYZ
	 55bNiORUWhhB6O+GMaTJsPEKjHmV9z/lIdpipo7dmzW1WSGmsSeB4+pTWBYtwL1L6V
	 QBFexnrQe60RfrVp7NMl2Jv3Qfjdw5kiRWSrgr1jJQnh1GSY3iAc9XoMX9OmZw2QAg
	 AhGS5O7qV00qJNM2np42rhEHXQ4h7s/4d1095iPVvwA8Kavsx3oBorpWgZIUgTJQWw
	 I56X/tHeXf75TnsKIidWRzg/WAaUCmIIWBXZSxY7Bn1i2CUQ9Hd0LF1eGfw1Qz3P+S
	 TOUdL2JvybsMA==
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id E3D00385CE3
	for <usrp-users@lists.ettus.com>; Tue, 21 Jan 2025 10:49:03 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SnrDGM2Z";
	dkim-atps=neutral
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-6df83fd01cbso25236366d6.2
        for <usrp-users@lists.ettus.com>; Tue, 21 Jan 2025 07:49:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737474542; x=1738079342; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6YG+jhuKzXD/pdTDzAbL5+4KAzMk3Jwsh6eXDlXYuuo=;
        b=SnrDGM2ZqY1ftvh8pWzXbbx62v9u1OKMsJo9hdUJ5tmMP9afc/lwQt8P/XzxCD7I6y
         zEIXlllyPhJNe7zKs/f8OSOIM6eOMLJdgvEPeKIqElvnbF9p+2UV7JXRNY1HFpPYg1qj
         A5lBqk8WWvqC9LHFSueXChRkOacdNuoCzdQ2GH6+Zy7ALv29FUM82SGyGqeLWjDAHXY7
         MtRKwyFtu3CE1eJqJYW1FZTdbt4FiYuOt2QBiSGf980PXdOXKbJT0asN7Jpj+ZBnHcWK
         klfTcv5xY+mmIkBLeU8Trosy5XF+OfIh/9ZFxP4DVMVhqGpXPcXpHNEUL4xFXeuC0kf1
         esFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737474542; x=1738079342;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6YG+jhuKzXD/pdTDzAbL5+4KAzMk3Jwsh6eXDlXYuuo=;
        b=WSwGFAtD0ZQCkuff9yJtI2DdAQigjcKy26fJe8RxLJAfCuip07ovQaOBh6rGDEBauw
         8fimSHIsQqu0b5EG2JwNPEQOP4sQHgGFRPDRJLE5WjSk4wCzBVfMuDJes58vQGtlotMY
         qKD9jt0ae3zI4rhwBo/TfSp95jTWakaeBRsxlaVpPb7Vvo4G/qdERma1sWx3B4yL2bMj
         +IubKxCeQLII8f6sD3m94v37w3WzyvOSaD/g7izSZQ8NE3zNsIbTXCpebgLd+ChqFSWf
         oSHQVFOGlFXnkVbLrEoxNs+3VfsPrlNQ4FlNvPTHvxGxKEgSQCY3KwkQx4i68obdRUon
         bFAQ==
X-Gm-Message-State: AOJu0YxTL3X+ozMQdR7Zrpm88bTPsSdfEdzr2YJiYUvtvDb6ZTDAHBYb
	3+f5yGKBRIVDTMv+8wPs18ioxSVDvDtcX+uJ31Q//yMzi8D/iWV6BceoRA==
X-Gm-Gg: ASbGncsedzxOaLOhQN3rY7HyCVZC3zunxMaFnzPCMPpVAoIQyjKTHkWdDURE6MwmzG0
	n5kOLfJsBRyAbGEiDDj89/tkp4ZLijTbA+5jixenZMoUknGe0uJdnXeIrFlSpoMG/jaXBFhf+C6
	E7NCwQ4v7QNoprQ8oaATAP6lN7dy6OItYIX9IvVWW/b5qcVB5xEQ7gcjT22wZbqtFtLXbQZ+Tsd
	OwkMXv3q6FknJFX3NiKAWlskpkBsdm1KVQviycvhY8YSovWibADVT6xfD2NugyEY9ZPQQigiGDM
	IE5vtq37me6AoksX0yN5SG4TeeV7Xys6eLKaXLR2eENXet8ImM/DmilKWahnac4oo77K
X-Google-Smtp-Source: AGHT+IHeX0o01VdKfTph8RWoVi9WYuoFuI0VnvvN5nzTFj6G04tKTF9c4Y7pYVfj7biuo4BFQSQ0ow==
X-Received: by 2002:a05:6214:260a:b0:6d8:8a60:ef2c with SMTP id 6a1803df08f44-6e1b2140cadmr262853316d6.2.1737474541180;
        Tue, 21 Jan 2025 07:49:01 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-05-174-88-53-166.dsl.bell.ca. [174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6e1afcf6fbfsm52161396d6.124.2025.01.21.07.49.00
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jan 2025 07:49:00 -0800 (PST)
Message-ID: <c130004f-4be4-4f9c-8594-ab3e18145844@gmail.com>
Date: Tue, 21 Jan 2025 10:48:59 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAHN4qvbbJ4NozJzQJJzx4CgTPHua5wCiWa9xVDYLB73EXa2qrQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAHN4qvbbJ4NozJzQJJzx4CgTPHua5wCiWa9xVDYLB73EXa2qrQ@mail.gmail.com>
Message-ID-Hash: ZDNALDS3C3SDM4RGFVJ2GD33H6PIZWNP
X-Message-ID-Hash: ZDNALDS3C3SDM4RGFVJ2GD33H6PIZWNP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: - Unable to Access USRP Driver Windows and API Documentation on files.ettus.com
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZDNALDS3C3SDM4RGFVJ2GD33H6PIZWNP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6093135553974932755=="

This is a multi-part message in MIME format.
--===============6093135553974932755==
Content-Type: multipart/alternative;
 boundary="------------bNDKltmZd0OLtSp0rbmOd0yZ"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------bNDKltmZd0OLtSp0rbmOd0yZ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 21/01/2025 10:46, Luis Oliveira wrote:
> Hi everyone,
> I encountered while trying to access the following page on the website:
> https://files.ettus.com/manual/page_python.html=20
> <https://files.ettus.com/manual/page_python.html>
> USRP Hardware Driver (UHD) - Ettus Research | Ettus Research, a=20
> National Instruments Brand | The leader in Software Defined Radio=20
> (SDR) <https://www.ettus.com/sdr-software/uhd-usrp-hardware-driver/>
> When attempting to visit the page, I receive an error indicating that=20
> the SSL/TLS configuration of the server is outdated (details provided=20
> below).
> Is there an alternative way for me to access the information on the=20
> unavailable page? I was specifically looking for documentation on how=20
> to use the USRP API in Windows.
> Thank you in advance for your assistance.
> image.png
> image.png
> My very best regards,
> Lu=C3=ADs Oliveira
>
There is a problem with the webserver configuration, NI USRP people are=20
aware, and have escalated to the company that actually
 =C2=A0 provides this website.

In the meantime, just for the docs, there's an alternative site:

https://uhd.readthedocs.io/

--------------bNDKltmZd0OLtSp0rbmOd0yZ
Content-Type: multipart/related;
 boundary="------------H4EGUqiMCR0JlS5YZSkB2hit"

--------------H4EGUqiMCR0JlS5YZSkB2hit
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 21/01/2025 10:46, Luis Oliveira
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAHN4qvbbJ4NozJzQJJzx4CgTPHua5wCiWa9xVDYLB73EXa2qrQ@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr">Hi everyone,<br>
          <div
style=3D"border:0px;font-variant-numeric:inherit;font-variant-east-asian:=
inherit;font-variant-alternates:inherit;font-stretch:inherit;font-size:12=
pt;line-height:inherit;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontS=
ervice,Calibri,Helvetica,sans-serif;font-size-adjust:inherit;font-kerning=
:inherit;font-feature-settings:inherit;margin:1em 0px;padding:0px;vertica=
l-align:baseline;color:rgb(0,0,0)">I
            encountered while trying to access the following page on the
            website:</div>
          <div
style=3D"border:0px;font-variant-numeric:inherit;font-variant-east-asian:=
inherit;font-variant-alternates:inherit;font-stretch:inherit;font-size:12=
pt;line-height:inherit;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontS=
ervice,Calibri,Helvetica,sans-serif;font-size-adjust:inherit;font-kerning=
:inherit;font-feature-settings:inherit;margin:1em 0px;padding:0px;vertica=
l-align:baseline;color:rgb(0,0,0)"><a
              title=3D"https://files.ettus.com/manual/page_python.html"
              class=3D"gmail-x_x_OWAAutoLink moz-txt-link-freetext"
              id=3D"gmail-LPlnkOWAa39d1557-9c3a-c7ed-302f-e52971f9cdf6"
              href=3D"https://files.ettus.com/manual/page_python.html"
style=3D"border:0px;font:inherit;margin:0px;padding:0px;vertical-align:ba=
seline"
              moz-do-not-send=3D"true">https://files.ettus.com/manual/pag=
e_python.html</a><br>
            <a
href=3D"https://www.ettus.com/sdr-software/uhd-usrp-hardware-driver/"
              moz-do-not-send=3D"true">USRP Hardware Driver (UHD) - Ettus
              Research | Ettus Research, a National Instruments Brand |
              The leader in Software Defined Radio (SDR)</a></div>
          <div
style=3D"border:0px;font-variant-numeric:inherit;font-variant-east-asian:=
inherit;font-variant-alternates:inherit;font-stretch:inherit;font-size:12=
pt;line-height:inherit;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontS=
ervice,Calibri,Helvetica,sans-serif;font-size-adjust:inherit;font-kerning=
:inherit;font-feature-settings:inherit;margin:1em 0px;padding:0px;vertica=
l-align:baseline;color:rgb(0,0,0)">When
            attempting to visit the page, I receive an error indicating
            that the SSL/TLS configuration of the server is outdated
            (details provided below).</div>
          <div
style=3D"border:0px;font-variant-numeric:inherit;font-variant-east-asian:=
inherit;font-variant-alternates:inherit;font-stretch:inherit;font-size:12=
pt;line-height:inherit;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontS=
ervice,Calibri,Helvetica,sans-serif;font-size-adjust:inherit;font-kerning=
:inherit;font-feature-settings:inherit;margin:1em 0px;padding:0px;vertica=
l-align:baseline;color:rgb(0,0,0)">Is
            there an alternative way for me to access the information on
            the unavailable page? I was specifically looking for
            documentation on how to use the USRP API in Windows.</div>
          <div class=3D"gmail-x_elementToProof"
style=3D"border:0px;font-variant-numeric:inherit;font-variant-east-asian:=
inherit;font-variant-alternates:inherit;font-stretch:inherit;font-size:12=
pt;line-height:inherit;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontS=
ervice,Calibri,Helvetica,sans-serif;font-size-adjust:inherit;font-kerning=
:inherit;font-feature-settings:inherit;margin:1em 0px;padding:0px;vertica=
l-align:baseline;color:rgb(0,0,0)">Thank
            you in advance for your assistance.<br>
            <img src=3D"cid:part1.ZnrXbsFy.elsu8bu7@gmail.com"
              alt=3D"image.png" class=3D"" width=3D"542" height=3D"197"><=
br>
            <img src=3D"cid:part2.X2TxjOHU.UVXd1xpj@gmail.com"
              alt=3D"image.png" class=3D"" width=3D"542" height=3D"165"><=
/div>
          <div class=3D"gmail-x_elementToProof"
style=3D"border:0px;font-variant-numeric:inherit;font-variant-east-asian:=
inherit;font-variant-alternates:inherit;font-stretch:inherit;font-size:12=
pt;line-height:inherit;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontS=
ervice,Calibri,Helvetica,sans-serif;font-size-adjust:inherit;font-kerning=
:inherit;font-feature-settings:inherit;margin:0px;padding:0px;vertical-al=
ign:baseline;color:rgb(0,0,0)"><span
              style=3D"color:inherit;font-size:15px">My very best regards=
,<br>
              Lu=C3=ADs Oliveira</span></div>
        </div>
      </div>
      <br>
    </blockquote>
    There is a problem with the webserver configuration, NI USRP people
    are aware, and have escalated to the company that actually<br>
    =C2=A0 provides this website.<br>
    <br>
    In the meantime, just for the docs, there's an alternative site:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://uhd.readthedocs.io=
/">https://uhd.readthedocs.io/</a><br>
    <br>
  </body>
</html>
--------------H4EGUqiMCR0JlS5YZSkB2hit
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Id: <part1.ZnrXbsFy.elsu8bu7@gmail.com>
Content-Transfer-Encoding: base64

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
k4P8VEN9MiJAPkPuLCNQWwTQQdApp5xmHn/scbP1sS3m6aef6cQMWBki7h5WAogAw2qZ8cxX
1wZxiAD1/RQRoD67Ok8qb5l0GKc9/4gAdbylm890rf/oCmVEgK5YinxOB4HaIoAb9Ou+TxUF
7MLYKta6dRvMpZeuNIcffni1f+/ZZ58137rzrqLDsnQp5pve9MbqNZLG44//uG9Zph0k6p5c
naWzZ5x+/fKvJ/cZ2oq7Ls+aO3dutQdR3/Xwwz8wn/j4RT32cst4zTVfqA4tyjnNs+Q9+tLQ
M59Z9dmeg+dS96Vm3txAO1VOu8HVMyPEzvZsY679pKwyAyT+ojaQfaA//OE/mWuu+XJ1KGXJ
rOsnP/lxs+jdiyYPkxK/kWWWR86f1/d1gFjH4VNlS7ioDe13SN7ee+opk6enb9u2zXz+82sq
gc29xGZHHfW2SZ/86U9/Zq79yl+aiy+5qOgUXLGPfbjWSy+9ZB555NGi02d1Ce68eUdUeZdL
0vm7W77RU6dLfLy0vSi9361D2hZJvnfs2BHk7vISX5SD7uS0Xg2oXVtp/Y/VM60Pb3jDnKpN
lEts+uD3HuxrF91260MfOtNoOyjPfP3rtyRnSdXv3Ly6danEZr7OK/QeZeKrYzmcUu2+5lvt
qjyljqQO5Uy1TeprvvJK3yEnOPuuHD+Q53zCppsn8TtpH05/35LkmCHV/msCPt+Wd9xxx7f6
/Mm2m90W2fVe2227bt1997drB/Ay3pC6EfqqRAiEr/y+elKnDbFt5XIItaOh9vLHP/5J1adp
e6/1wFeunJU7bbTLdt183ev+XU9/pe2g5Ndmof21e15UUz5UOn5x61iO3WKTDbE+IVS3fP1s
qv+w05LtIdrXSpt9zz/ekz1+zm1L3DZ0kL4x1K5pmXw2bHIcaaelK5hl7Oc76FFXHMUOggyd
cSPlkS3SYptlS1f09DWylUlWSz/00Pers9Pcvi/VJ8faJ994K9YxhNot7Veu33CDt59M9Y32
O3P9J2bnknOU6o6lS/q9ZGfb0RtqiQDqkLYqL0HMn52/wtxxx53BAFkqgOxBlXMEtm/fbvbf
f7/qwCi5cpe7idHOPvusKtCQjlYuDUC2bNnSMzBSZ9+1a1d1MrdcrgggZZDDDXXwrfnQ/Yfy
dxk0yN5PuTT4kr/Z+37tSmoHRCkRoPQ9kgc7uJYyP//8C1XeDj30UHPbrbdP7h3Mua+0E02V
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
HBdVESBAgAABAgQIECBAgACBcAEhQDipBgkQIECAAAECBAgQIECAQE4BIUDOcVEVAQIECBAg
QIAAAQIECBAIFxAChJNqkAABAgQIECBAgAABAgQI5BQQAuQcF1URIECAAAECBAgQIECAAIFw
ASFAOKkGCRAgQIAAAQIECBAgQIBATgEhQM5xURUBAgQIECBAgAABAgQIEAgXEAKEk2qQAAEC
BAgQIECAAAECBAjkFBAC5BwXVREgQIAAAQIECBAgQIAAgXABIUA4qQYJECBAgAABAgQIECBA
gEBOASFAznFRFQECBAgQIECAAAECBAgQCBcQAoSTapAAAQIECBAgQIAAAQIECOQUEALkHBdV
ESBAgAABAgQIECBAgACBcAEhQDipBgkQIECAAAECBAgQIECAQE4BIUDOcVEVAQIECBAgQIAA
AQIECBAIFxAChJNqkAABAgQIECBAgAABAgQI5BQQAuQcF1URIECAAAECBAgQIECAAIFwASFA
OKkGCRAgQIAAAQIECBAgQIBATgEhQM5xURUBAgQIECBAgAABAgQIEAgXEAKEk2qQAAECBAgQ
IECAAAECBAjkFBAC5BwXVREgQIAAAQIECBAgQIAAgXABIUA4qQYJECBAgAABAgQIECBAgEBO
ASFAznFRFQECBAgQIECAAAECBAgQCBf4A4DDwJdFgCVrAAAAAElFTkSuQmCC
--------------H4EGUqiMCR0JlS5YZSkB2hit
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Id: <part2.X2TxjOHU.UVXd1xpj@gmail.com>
Content-Transfer-Encoding: base64

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

--------------H4EGUqiMCR0JlS5YZSkB2hit--

--------------bNDKltmZd0OLtSp0rbmOd0yZ--

--===============6093135553974932755==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6093135553974932755==--
