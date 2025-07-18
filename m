Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 115E5B0A6B2
	for <lists+usrp-users@lfdr.de>; Fri, 18 Jul 2025 16:57:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6923538645F
	for <lists+usrp-users@lfdr.de>; Fri, 18 Jul 2025 10:57:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1752850649; bh=IB0tmwEotfIvCxEP8f5iQ0yZTsDPlsViz1tHpM7NNys=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=rWXNjSUB6Bm/QhxlICWDKmw7kmLG/pnl11Kmw++zX/OGNxk0/qONBgqxMWYqU+vyC
	 pbburp7ZlvqIp6znMNGNUm07LWmZKdmHfz6Y2UukPZk0Yc57VdlQ6zq7GedPr1li72
	 HdKTVEvsBePEuPMYrhN9FUJLgexiiJiaZaLfwQ8pCas0h6sTZiX3bUI/ne5GNfa1dW
	 FeBcDc0MMkAHVfPEvd8RnIvMSnGn4xBfZIT9X6SKTWbx5pTx4ctMeuk2Oa02JaSyjA
	 SyXbV8NkdJm5zqHce6c8Sk/ThSfHwpbPHjo4JlJSNm5a51eLaZL0O50TX4PUixJxza
	 zfcAKfachaymw==
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	by mm2.emwd.com (Postfix) with ESMTPS id C3ED63863FD
	for <usrp-users@lists.ettus.com>; Fri, 18 Jul 2025 10:56:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IlWIJYXH";
	dkim-atps=neutral
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-61585dfc8f8so582096eaf.0
        for <usrp-users@lists.ettus.com>; Fri, 18 Jul 2025 07:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752850607; x=1753455407; darn=lists.ettus.com;
        h=user-agent:references:in-reply-to:to:from:subject:message-id:date
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=txper2F7MmQtd6jBgZfzNGBXNZ7q1K8+/U7Fv4MJlpo=;
        b=IlWIJYXH7BZxuo15c36KJ1J6qM4PvQPoy8N2fNcppH9WOR+mzxVw4g7o6HGuj67BwQ
         qb+5kpkIv42pwni5SK+h1CXm88bRKmy5AHl2R3juXecgGYK8op5kTPXs04Ofn/N3JQkZ
         D5fSYwOpzVH74yWfrnlFddGTxUjXaa8kOKzLeVav4UKXuHyBPAg9Lj3MoAxaf1MI99LG
         0/ycnDN6vR1ZVElSIX0rxlAalLo58dsq9CuqsDCa8mhoYBIyrU21DcQ7G/aYY/LWnYQj
         wDEm/fjIMyvomt8w9SaYlp3H31rWW++qyZZuUIDC9M0ffsZagZInZvPMOqp4F3MOk6pJ
         rOzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752850607; x=1753455407;
        h=user-agent:references:in-reply-to:to:from:subject:message-id:date
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=txper2F7MmQtd6jBgZfzNGBXNZ7q1K8+/U7Fv4MJlpo=;
        b=EAcYzA3Uod26KHOwmJOFn1XOmDNGl0oQq9YbKHj3HBBAJbN2EFZnwQa4BIZIL+x1hb
         +kPI75SgFE4KiEw0/pgzx89THyjMNQ9xNqHwjEAhAhNc+3Bhnb/SA9zIIW4IRmzkYrmH
         DR8X+hJGn41ZQ1aqtmPnXKkq+9JTMwBFtDZiybOum0rWj/KziYQcClwfb1ihCMENpuKZ
         +GtBnt4FdpQho4ajwYLr02bPybUDD8x5QN1HaH4iTvS/BFmtyB2ukNOj+YObK/iGKeke
         skVlh5u+XA/8IqSslKUUI/aX7+Vcg3EVuVibgrLXEiRPYQzvjdccV0uSJl7M7fIINynz
         lDzQ==
X-Forwarded-Encrypted: i=1; AJvYcCXKBhLr6GiaBJ/eyoZ41dAnbhcZDxmTSy+cGz0ekxf85xCIJmqSe7pM3nCwH7chak8bJ8jINZjWU/DW@lists.ettus.com
X-Gm-Message-State: AOJu0Yy8a0kK5v3U9+ckLhA5YfbniQczQglf9c3J3ttfRA3JkwBIzTIG
	Q9rdShJWCVglZ2MSSawXHZtDW5Q4T/56dkee/kIUl53I+NHV6zK7jBoA
X-Gm-Gg: ASbGnctZCUdbZIQZpv/da/pTdsoGkxlSonh5H7Vv9fz3XGrcKvcsMfBnFRwbbYTxFtA
	4rZYscQIRLJixhxC0TJE8MIHR387SnnShgj7DDPmnt8mlsU80iNfqgWm9no5nBRRT9nGGwTODWq
	XJ0WofI+2o2SgnJoc8TaweFH0RP/CUeBOXLvQFZvdmKJANWngqnD4C381Uw2il8x8/ZDjqIMNO9
	TOQLx9iO8/J7F6P0E/b6J69UmN7UITP7mbnRSiHmH44ZSPMpSMTk7XiNllOXpH0atDGGN6Uy2Wj
	YoBEVAb2q5LYJpVRZU+ft0ZBIakDDzobgczTl6R2zulfofoek8vS429rdMMjI1jxwhcUix3Dxah
	RcrIczdQbzX3QR+U4SfIfIgtO3cL3hO6mT5ICJg==
X-Google-Smtp-Source: AGHT+IHXBFF3WUGyDdcBLp3KECoCAGqKP0XLNek7kXdtoi15rH0oLLTjZJs72pkmXJ11F4wSM9eWGA==
X-Received: by 2002:a05:6870:2dca:b0:2d4:d07c:7cc5 with SMTP id 586e51a60fabf-2ffaf2a273amr8562750fac.12.1752850606741;
        Fri, 18 Jul 2025 07:56:46 -0700 (PDT)
Received: from [192.168.5.40] ([47.186.162.138])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-30104694f03sm728514fac.44.2025.07.18.07.56.45
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Jul 2025 07:56:46 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 18 Jul 2025 09:56:25 -0500
Message-ID: <Mailbird-bf754dc7-c1d6-4cbe-b514-34cb438ed7bc@gmail.com>
From: "page heller" <pageheller@gmail.com>
To: "" <joerg.hofrichter@emerson.com>,
 "usrp-users lists.ettus.com" <usrp-users@lists.ettus.com>
In-Reply-To: <BmuYwlXNGkHsyskcYyvsIBLPp8IQNFgM2poLmNbGVE@lists.ettus.com>
References: <CAFOi1A4wpfmWvTRwMf4SSFF9Q9d8aMmS4nZk=XLCwcvU3-UWuQ@mail.gmail.com>
 <BmuYwlXNGkHsyskcYyvsIBLPp8IQNFgM2poLmNbGVE@lists.ettus.com>
User-Agent: Mailbird/3.0.39.0
X-Mailbird-ID: Mailbird-bf754dc7-c1d6-4cbe-b514-34cb438ed7bc@gmail.com
Message-ID-Hash: N3B2Z5HNACO7LWURDUDRFEZNJXTKVM2Y
X-Message-ID-Hash: N3B2Z5HNACO7LWURDUDRFEZNJXTKVM2Y
X-MailFrom: pageheller@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: installing python3-uhd API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N3B2Z5HNACO7LWURDUDRFEZNJXTKVM2Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8886729235429847386=="

--===============8886729235429847386==
Content-Type: multipart/alternative;
 boundary="----=_NextPart_39837835.416929941198"

------=_NextPart_39837835.416929941198
Content-Type: text/plain;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks, Martin and=C2=A0J=C3=B6rg, for your prompt response. I did try=C2=
=A0`apt install python3-uhd` but could not import uhd. I think I'll do a fu=
ll backup, install the ppa and update. If that doesn't work I think I'll re=
install uhd. -p
On 7/18/2025 4:30:40 AM, joerg.hofrichter--- via USRP-users <usrp-users@lis=
ts.ettus.com> wrote:
Hi,
one addition: you need to add the EttusResearch PPA (https://launchpad.net/=
~ettusresearch/+archive/ubuntu/uhd) to your system before you can install U=
HD and the associated python bindings in the latest version (currently UHD =
4.8):
sudo add-apt-repository ppa:ettusresearch/uhd sudo apt update sudo apt inst=
all uhd-host python3-uhd
Kind regards,
J=C3=B6rg
_______________________________________________ USRP-users mailing list -- =
usrp-users@lists.ettus.com To unsubscribe send an email to usrp-users-leave=
@lists.ettus.com
------=_NextPart_39837835.416929941198
Content-Type: text/html;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<body><div id=3D"__MailbirdStyleContent" style=3D"font-size: 10pt;font-fami=
ly: Arial;color: #1A1A1A;text-align: left" dir=3D"ltr">
                                        Thanks, Martin and&nbsp;<span style=
=3D"color: rgb(0, 0, 0);font-family: Arial, Helvetica, sans-serif;font-size=
: 13px">J=C3=B6rg, for your prompt response. I did try</span><span style=3D=
"color: rgb(0, 0, 0);font-family: Arial, Helvetica, sans-serif;font-size: 1=
3px">&nbsp;`apt install python3-uhd` but could not import uhd. I think I'll=
 do a full backup, install the ppa and update. If that doesn't work I think=
 I'll reinstall uhd. -p</span><blockquote class=3D'history_container' type=
=3D'cite' style=3D'border-left-style:solid;border-width:1px; margin-top:20p=
x; margin-left:0px;padding-left:10px;'>
                        <p style=3D'color: #AAAAAA; margin-top: 10px;'>On 7=
/18/2025 4:30:40 AM, joerg.hofrichter--- via USRP-users &lt;usrp-users@list=
s.ettus.com&gt; wrote:</p><div style=3D'font-family:Arial,Helvetica,sans-se=
rif'><p>Hi,</p><p>one addition: you need to add the EttusResearch PPA (http=
s://launchpad.net/~ettusresearch/+archive/ubuntu/uhd) to your system before=
 you can install UHD and the associated python bindings in the latest versi=
on (currently UHD 4.8):</p><pre><code>sudo add-apt-repository ppa:ettusrese=
arch/uhd
sudo apt update
sudo apt install uhd-host python3-uhd</code></pre><p>Kind regards,<br>J=C3=
=B6rg</p>

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
</div></blockquote>
                                        </div></body>
------=_NextPart_39837835.416929941198--

--===============8886729235429847386==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8886729235429847386==--
