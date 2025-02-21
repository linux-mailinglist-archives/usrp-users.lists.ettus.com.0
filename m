Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEC0A3F717
	for <lists+usrp-users@lfdr.de>; Fri, 21 Feb 2025 15:22:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8F142385CA3
	for <lists+usrp-users@lfdr.de>; Fri, 21 Feb 2025 09:22:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740147746; bh=31Of340QTO/di1tZyLqkpq3pKBVxEMbIeUnGIDpVoL4=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=R8A5f7NGwr2NOBr81KRX1uWLkq3ZDsFkYMNUnGExym0DmO4vguFPkpqUUWr/+xo6l
	 xzfrm9WUGvALCcyxoBtIl6Tgl5sAEKDM6tZMrrCghmDkDvVQDfYzQZsY5W4r6E+ZdC
	 acGvOFuMjgDEDmms1aR3aqB+cMBz7E824RLX4+uyySmCzb3BySw3LhxgnaEIK8tmnE
	 4RC/zKyls9f2LTqa296K5n1vmOenS7F5crrUki725yi0/myF/pGGbTIoG1rWJghrii
	 rRnlvVrhrUWUPzpWPctzSVSjsBRHrgnseNjt+QCQpyfXzHJAGNtMkSm8mUYw22vP/c
	 ldcT21dS5wMpg==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 089E2385BFB
	for <usrp-users@lists.ettus.com>; Fri, 21 Feb 2025 09:22:22 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="tqnvYbOw";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5e04cb346eeso3548398a12.2
        for <usrp-users@lists.ettus.com>; Fri, 21 Feb 2025 06:22:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1740147741; x=1740752541; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X1tcIOo6re2Zt5CReQqC1cHDGPwSamToQSPbpOqcbkY=;
        b=tqnvYbOwLklVHFZvgs7ND3ohWXvO+sqgne2pliYjAoQ0kKWzjC10ENmvMHQIAJ8P/6
         rVkw8CO35HVXLh43Pt5++ec24lggNH6aLWEuA2CQpcHdM5TfAFntO6BQDWbK2qt/ssDf
         hha9tJnOUZpdAc/l3gvWBl9+4TbRFNagd21EAT2fPBfOXK2pMVosx8bBxHrvEgOKtBoS
         J4yeaHHLVK6+wBilO45ysxUIM/X4sOVjxLd0vffpFaNWnZXSGve/dlKjEU/hPWopWN8i
         k/yJVkjKwMzVwcOzArGgf7Luh+IeriZVDnTcYYaouRAMZSFe7SMeR4DVikjyfruiIbko
         XJsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740147741; x=1740752541;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X1tcIOo6re2Zt5CReQqC1cHDGPwSamToQSPbpOqcbkY=;
        b=hk5C2Rao7lwdUymCnRP7YIi5cfZx5UMfVRA3cidABcIN43Tk0gDnyw3DEEUP4W3Ix3
         eW4s0gcsPoC0QCkrRVv+OAAo5y4n8uOD/vvASmeBFsyXs94SXdDxo7qq6JNzKIUF7dHe
         PDdmGsNu6oLSXwgHxapQbapjLl/o8jezEUjyBTvaSefD0qYtNXwgUBooBXhpI5ch7Vs7
         ezAWY9zWX5j2ghM2uOF+FtQnIcghufTQ185qfjhQgrt77GP4RscLQ+ZObJm+PQydDzSL
         rBIDnq62AMnq2Flv1zL2Nd14OvdSZIqYkvhb8Mhznbn+lO3flLsEoapbP9kEDqIfm/qN
         A3dA==
X-Gm-Message-State: AOJu0YwNhTPiqPYMjEhlgpKH7cHmDhsbi9x2e7g4Yt0ocyRelxUCWAjt
	ifJ81cfCdZfdEeeipnbZ3NzeGCljA0DlL1yrgyOjJ9r8gxyzoCGKQ/YdWEr+46fuw/FYeDDqy2p
	Nb07nmqm0iu5J8JpvrLdG8RlDGkNwapjUqo5MDbbIBOBN7K7v59w=
X-Gm-Gg: ASbGncvxxK5iRpJKF4Dc01nEnHVaGGq1G3oKt7pyZGunjHVyt1Ks9P/L+V2jEcCOtZD
	2NqTFmLJJo+FZAbf097Nu0V7vqdOodv8wVyylQfkgRvr1dk8uZdT5pOCFuWIJVLdaP5MzXJob4f
	7FSS2gp9G9acBSHwiIaL/YWAtd9y84JW+3ciXgeQ==
X-Google-Smtp-Source: AGHT+IHWZI+vhSWg3IkofjsJTLZmVFJ4QJDJ3FPiPNdrMIcKAJWmC1zhCqR055XK7z4P7W3vzbB16z+LXYQROlMR0B4=
X-Received: by 2002:a50:ea85:0:b0:5e0:8b75:5451 with SMTP id
 4fb4d7f45d1cf-5e0b70f07b1mr2620136a12.15.1740147741605; Fri, 21 Feb 2025
 06:22:21 -0800 (PST)
MIME-Version: 1.0
References: <sjXrQPQKOG67eb28aNUtX1AmuSrgYrp7NI3NJgrVB9I@lists.ettus.com>
In-Reply-To: <sjXrQPQKOG67eb28aNUtX1AmuSrgYrp7NI3NJgrVB9I@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 21 Feb 2025 15:22:09 +0100
X-Gm-Features: AWEUYZnVoa0HsqMBqXKT6IsdboLvU9wRuJfzJsEecix-3KsfY1CgwfM3JCigB68
Message-ID: <CAFOi1A4vAFttf8nLxu6bHV67A-UXaqe49wLsihNofbP2+xeQHA@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: 7KTWG7ISVYX7AZ7R2XY7BPGES2JADGBE
X-Message-ID-Hash: 7KTWG7ISVYX7AZ7R2XY7BPGES2JADGBE
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Build UHD image from GRC file
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7KTWG7ISVYX7AZ7R2XY7BPGES2JADGBE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6691331963229259513=="

--===============6691331963229259513==
Content-Type: multipart/alternative; boundary="000000000000feda20062ea7b7f0"

--000000000000feda20062ea7b7f0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, please uninstall. I recommend the latest GNU Radio (3.10.12), we added
a lot of updates and bug fixes for RFNoC in gr-uhd there.
--M

On Fri, Feb 21, 2025 at 12:55=E2=80=AFPM <anjana.krishnan@technosci.com> wr=
ote:

> Hi Martin,
>
> Thank you for the quick reply.
>
> I had installed UHD and GNU Radio building from the source, referring to
> document =E2=80=98Building and Installing the USRP open-source Toolchain =
(UHD and
> GNU Radio) on Linux =E2=80=98.
>
> Should the previous versions be uninstalled and then reinstalled with the
> latest version. With UHD-4.8 which GNU Radio version would be compatible.
>
>
> Thank you.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000feda20062ea7b7f0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yes, please uninstall. I recommend the latest GNU Rad=
io (3.10.12), we added a lot of updates and bug fixes for RFNoC in gr-uhd t=
here.</div><div>--M</div></div><br><div class=3D"gmail_quote gmail_quote_co=
ntainer"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 21, 2025 at 12:5=
5=E2=80=AFPM &lt;<a href=3D"mailto:anjana.krishnan@technosci.com">anjana.kr=
ishnan@technosci.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><p>Hi Martin,</p><p>Thank you for the quick reply.</p><=
p>I had installed UHD and GNU Radio building from the source, referring to =
document =E2=80=98Building and Installing the USRP open-source Toolchain (U=
HD and GNU Radio) on Linux =E2=80=98.</p><p>Should the previous versions be=
 uninstalled and then reinstalled with the latest version. With UHD-4.8 whi=
ch GNU Radio version would be compatible.</p><p><br></p><p>Thank you.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000feda20062ea7b7f0--

--===============6691331963229259513==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6691331963229259513==--
