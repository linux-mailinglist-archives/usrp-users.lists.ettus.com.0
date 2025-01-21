Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C39E2A17F6B
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jan 2025 15:07:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0DDF2385C37
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jan 2025 09:07:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737468467; bh=79bBw4Gg6A5bKTFh2hE0vgUxlggT8GmOtxgE3wG1Svc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=0/9czc2PBVMc2x1/D5q6dE4IQxGSu/qaNlPw2fGg1qkB7O+ON68HUEAegp+My7uyq
	 42MLNK77N9osUlG+pDaA2KFxvFFJ8sPwQ8NhmConmjajAsIctNQx6U1YV+3qd1Yeap
	 IML9eKa4t8zuoAcnDPzoOf4mJs+nTsdBi/HmRk1+IDyWqpP48FZKTbrQdP2Cmf0tzC
	 RQ2VKqDILyzyAtSWiJB1tCKa6vtMklLKKK+LG2DmaCdSqRhK1UjPcD3jeamEiUL2kZ
	 9zQw11UWGI0HrMb1X+t/C+MSHG51gjqbCcJZkZ45O8WnALuXL3vOOeW6n0Vav7Tlrq
	 Cn8UAGET9h8/Q==
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 9573838584A
	for <usrp-users@lists.ettus.com>; Tue, 21 Jan 2025 09:07:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="bC8YeGtt";
	dkim-atps=neutral
Received: by mail-il1-f178.google.com with SMTP id e9e14a558f8ab-3ce85545983so19845345ab.0
        for <usrp-users@lists.ettus.com>; Tue, 21 Jan 2025 06:07:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1737468425; x=1738073225; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ha7XEawhCgb7Wm2gjrKMj1Xv/70xuq7uBgyuNLzzz/s=;
        b=bC8YeGttBhzPEygOCBteg4gmzJIlgNEd3JYrJA1CNgC2u0kmv3eVBokJm82eUVZxPy
         b4uKxQPB6rOz7H4d9fVSRd/O+dzBkTiePiHMfX7fWR/LyVDAk136kRU4tG4Y6lX+iZ3A
         WqH/15Xf+3LBN3Uenzuqc4Bq1j16wSGIU1rcD+Crbgw5vQHG6z7PETQY9z8Qd9irKijj
         bmFZtN5n2tHljGhIA8qIGaodwAVOuNA+PNkjDBcjErOL+17s0NvrrUYyi5U/U+uLtn7+
         vq1/rWmjhLWdcdeKkHEd3NpFvPVDrSRQ/elRmG50VIOm+lUdCoKb5ZgUeWIPJnYOz1fA
         uu7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737468425; x=1738073225;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ha7XEawhCgb7Wm2gjrKMj1Xv/70xuq7uBgyuNLzzz/s=;
        b=ALV1JcdNX3gzBFwCXBBUWJg8h8tXmYnm7hpPYC1Tuw1zoc1JoUyDQ00YqktbpvRIe8
         VHUhCd7CgFMz9FXTcmp4rSFGGwgp+3f7Ek3yAIOi9Th47hNVrQF53cR1WpKmOfkRNnGI
         J/6KFM1ACYJJs9o6jh5aBJPDbDavE+JtmrcYmZOzN3p9q48Z+MidWo4t0wsnJVDFt11/
         hCnKUfiUURAlLeKYBE/Z2650nvSe6tl7ecdb/bEFK/kRM1AOp70+OYVcbw/9SNsMbR9B
         qhCbl5HF9zCvVo0SMoAGTZKvEWrGF9dGF+gtjvqx5wCtxy3Y4YJ+X9rEO/WY7yGGvWxD
         KufQ==
X-Gm-Message-State: AOJu0YzIQszPeD/ZSq5NL8xeEEN1FPVPvjY9f2A0BGmbtiXf0k1dBqUR
	DKdpDZ+xZxF6e8BWsEM+RaL+Dl/Qu6NH3DNwv5TCF0TRXLnOiMByYeue/sjcdFFGn1e9gmEHOHa
	kNLNnoYWEdrivN1i+EilpL7p9FjEEJXPw1rJZWSm5jfRhXyQx7Ss=
X-Gm-Gg: ASbGncvkvdElxjBO1eUSWGSsG0tK/qixbbFSjVs6CzP/snGhOdKqKvfFx4qfOWN6uJN
	Xq4XfaiW0kQH6kpt3AfkBnetfXoiEm/WOaVt3QObXf555MdxEzIk=
X-Google-Smtp-Source: AGHT+IHj/EljfkYFG+rJcEPaORepfLTEdygZsEBbvsQmzUrPNLVyKt6S9CmKUhxAvQIwKnJS/WL9F/DzguLent9o8eo=
X-Received: by 2002:a05:6e02:360a:b0:3ce:7da0:6fe2 with SMTP id
 e9e14a558f8ab-3cf7458f6c7mr117478195ab.0.1737468424752; Tue, 21 Jan 2025
 06:07:04 -0800 (PST)
MIME-Version: 1.0
References: <fa011fa259474bd088c828de1e4da1a7@h-da.de>
In-Reply-To: <fa011fa259474bd088c828de1e4da1a7@h-da.de>
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Tue, 21 Jan 2025 08:06:28 -0600
X-Gm-Features: AbW1kvbLcBr1bxiOh5bjOdxjstAevmINHo1V_9SQWhZZ96p2ky6cE3Hgm5W2B3M
Message-ID: <CACaXmv9wT_=xBZDSQ=sjCZpqm25qBqtw_xQnLM8O0XVXYMj7Qw@mail.gmail.com>
To: "Heinz, Dominik" <dominik.heinz@h-da.de>
Message-ID-Hash: XUCK6DEYP3UQSOLCQEN3NUF57AEAZONI
X-Message-ID-Hash: XUCK6DEYP3UQSOLCQEN3NUF57AEAZONI
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: SSL Handshake Failure When Downloading USRP Firmware Images
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XUCK6DEYP3UQSOLCQEN3NUF57AEAZONI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6775544949579906056=="

--===============6775544949579906056==
Content-Type: multipart/alternative; boundary="000000000000442cdf062c37e45e"

--000000000000442cdf062c37e45e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, we are aware of this problem, and we are actively working to resolve
it.  I'll post updates here on the mailing list.

*=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94*
*Neel Pandeya*
*National Instruments (NI)*
*Austin, Texas, USA*
*neel.pandeya@ettus.com* <neel.pandeya@ettus.com>
*neel.pandeya@emerson.com* <neel.pandeya@emerson.com>
*+1-512-413-5696*
*=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94*




On Tue, 21 Jan 2025 at 08:03, Heinz, Dominik <dominik.heinz@h-da.de> wrote:

> I'm encountering an SSL handshake failure while trying to download
> firmware images for my SDR using the uhd_images_downloader tool.
>
> The error occurs both when using the tool and when accessing
> https://files.ettus.com/binaries/images/ directly in a browser (any
> browser, - firefox, chrome etc)
> Specifically, the SSL error that is shown in the browser is:
> SSL_ERROR_NO_CYPHER_OVERLAP
>
> And the following is the error outputput of the uhd_images_downloader too=
l.
>
> gnb@xgoss-host:~$ sudo uhd_images_downloader
> [INFO] Using base URL: https://files.ettus.com/binaries/cache/
> [INFO] Images destination: /usr/share/uhd/images
> [INFO] Target b2xx_common_fw_default is up to date.
> [INFO] Target usrp2_usrp2_fw_default is up to date.
> [INFO] Target usrp2_usrp2_fpga_default is up to date.
> [INFO] Target usrp2_n200_fpga_default is up to date.
> [INFO] Target usrp2_n200_fw_default is up to date.
> [INFO] Target usrp2_n210_fpga_default is up to date.
> [INFO] Target usrp2_n210_fw_default is up to date.
> [INFO] Target usrp1_usrp1_fpga_default is up to date.
> [INFO] Target usrp1_b100_fpga_default is up to date.
> [INFO] Target usrp1_b100_fw_default is up to date.
> [INFO] Target octoclock_octoclock_fw_default is up to date.
> [INFO] Target usb_common_windrv_default is up to date.
> [ERROR] Downloader raised an unhandled exception:
> HTTPSConnectionPool(host=3D'files.ettus.com', port=3D443): Max retries
> exceeded with url:
> /binaries/cache/x4xx/uhd-c37b318/x4xx_x410_fpga_default-gc37b318.zip
> (Caused by SSLError(SSLError(1, '[SSL: SSLV3_ALERT_HANDSHAKE_FAILURE] ssl=
v3
> alert handshake failure (_ssl.c:1007)')))
> You can run this again with the '--verbose' flag to see more information.
> If the problem persists, please email the output to the usrp-users mailin=
g
> list.
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000442cdf062c37e45e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div><div class=3D"gmail_default" style=
=3D"font-family:verdana,sans-serif">Yes, we are aware of this problem, and =
we are actively working to resolve it.=C2=A0 I&#39;ll post updates here on =
the mailing list.</div><br clear=3D"all"></div><div><div dir=3D"ltr" class=
=3D"gmail_signature"><div dir=3D"ltr"><div><div style=3D"border:0px;font-st=
retch:inherit;line-height:inherit;font-size-adjust:inherit;margin:0px;paddi=
ng:0px;vertical-align:baseline;color:rgb(0,0,0)"><font face=3D"monospace"><=
b>=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94<span style=
=3D"font-style:inherit;font-variant:inherit;font-stretch:inherit;line-heigh=
t:inherit;font-size-adjust:inherit;border:0px;margin:0px;padding:0px;vertic=
al-align:baseline;color:inherit">=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94</span></b></font></div><di=
v style=3D"border:0px;font-stretch:inherit;line-height:inherit;font-size-ad=
just:inherit;margin:0px;padding:0px;vertical-align:baseline;color:rgb(136,1=
36,136)"><font face=3D"monospace"><b>Neel Pandeya</b></font></div><div styl=
e=3D"border:0px;font-stretch:inherit;line-height:inherit;font-size-adjust:i=
nherit;margin:0px;padding:0px;vertical-align:baseline;color:rgb(136,136,136=
)"><font face=3D"monospace"><b>National Instruments (NI)</b></font></div><d=
iv style=3D"border:0px;font-stretch:inherit;line-height:inherit;font-size-a=
djust:inherit;margin:0px;padding:0px;vertical-align:baseline;color:rgb(136,=
136,136)"><font face=3D"monospace"><b>Austin, Texas, USA</b></font></div><d=
iv style=3D"border:0px;font-stretch:inherit;line-height:inherit;font-size-a=
djust:inherit;margin:0px;padding:0px;vertical-align:baseline;color:rgb(17,8=
5,204)"><a href=3D"mailto:neel.pandeya@ettus.com" style=3D"border:0px;font-=
style:inherit;font-variant:inherit;font-stretch:inherit;line-height:inherit=
;font-size-adjust:inherit;margin:0px;padding:0px;vertical-align:baseline;co=
lor:rgb(17,85,204)" target=3D"_blank"><font face=3D"monospace"><b>neel.pand=
eya@ettus.com</b></font></a></div><div style=3D"border:0px;font-stretch:inh=
erit;line-height:inherit;font-size-adjust:inherit;margin:0px;padding:0px;ve=
rtical-align:baseline;color:rgb(17,85,204)"><a href=3D"mailto:neel.pandeya@=
emerson.com" style=3D"border:0px;font-style:inherit;font-variant:inherit;fo=
nt-stretch:inherit;line-height:inherit;font-size-adjust:inherit;margin:0px;=
padding:0px;vertical-align:baseline;color:rgb(17,85,204)" target=3D"_blank"=
><font face=3D"monospace"><b>neel.pandeya@emerson.com</b></font></a></div><=
div style=3D"border:0px;font-stretch:inherit;line-height:inherit;font-size-=
adjust:inherit;margin:0px;padding:0px;vertical-align:baseline;color:rgb(136=
,136,136)"><font face=3D"monospace"><b>+1-512-413-5696</b></font></div><div=
 style=3D"border:0px;font-stretch:inherit;line-height:inherit;font-size-adj=
ust:inherit;margin:0px;padding:0px;vertical-align:baseline;color:rgb(0,0,0)=
"><font face=3D"monospace"><b>=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94</b></font></div></div><div style=3D"border:0=
px;font-stretch:inherit;line-height:inherit;font-size-adjust:inherit;margin=
:0px;padding:0px;vertical-align:baseline;color:rgb(0,0,0)"><font face=3D"mo=
nospace"><b><br></b></font></div><div style=3D"border:0px;font-stretch:inhe=
rit;line-height:inherit;font-size-adjust:inherit;margin:0px;padding:0px;ver=
tical-align:baseline;color:rgb(0,0,0)"><font face=3D"monospace"><b><br></b>=
</font></div></div></div></div><br></div><br><div class=3D"gmail_quote gmai=
l_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 21 Jan 202=
5 at 08:03, Heinz, Dominik &lt;<a href=3D"mailto:dominik.heinz@h-da.de">dom=
inik.heinz@h-da.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div class=3D"msg6814543311668744958">




<div dir=3D"ltr">
<div id=3D"m_6814543311668744958divtagdefaultwrapper" style=3D"font-size:12=
pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"ltr">
<p></p>
<div>
<div>I&#39;m encountering an SSL handshake failure while trying to download=
 firmware images for my SDR using the uhd_images_downloader tool.</div>
<div><br>
</div>
<div>The error occurs both when using the tool and when accessing <a href=
=3D"https://files.ettus.com/binaries/images/" target=3D"_blank">
https://files.ettus.com/binaries/images/</a> directly in a browser (any bro=
wser, - firefox, chrome etc)<br>
</div>
</div>
<div>Specifically, the SSL error that is shown in the browser is: <span>SSL=
_ERROR_NO_CYPHER_OVERLAP</span><br>
</div>
<div><br>
</div>
<div>And the following is the error outputput of the uhd_images_downloader =
tool.<br>
</div>
<div><br>
gnb@xgoss-host:~$ sudo uhd_images_downloader <br>
[INFO] Using base URL: <a href=3D"https://files.ettus.com/binaries/cache/" =
target=3D"_blank">https://files.ettus.com/binaries/cache/</a><br>
[INFO] Images destination: /usr/share/uhd/images<br>
[INFO] Target b2xx_common_fw_default is up to date.<br>
[INFO] Target usrp2_usrp2_fw_default is up to date.<br>
[INFO] Target usrp2_usrp2_fpga_default is up to date.<br>
[INFO] Target usrp2_n200_fpga_default is up to date.<br>
[INFO] Target usrp2_n200_fw_default is up to date.<br>
[INFO] Target usrp2_n210_fpga_default is up to date.<br>
[INFO] Target usrp2_n210_fw_default is up to date.<br>
[INFO] Target usrp1_usrp1_fpga_default is up to date.<br>
[INFO] Target usrp1_b100_fpga_default is up to date.<br>
[INFO] Target usrp1_b100_fw_default is up to date.<br>
[INFO] Target octoclock_octoclock_fw_default is up to date.<br>
[INFO] Target usb_common_windrv_default is up to date.<br>
[ERROR] Downloader raised an unhandled exception: HTTPSConnectionPool(host=
=3D&#39;<a href=3D"http://files.ettus.com" target=3D"_blank">files.ettus.co=
m</a>&#39;, port=3D443): Max retries exceeded with url: /binaries/cache/x4x=
x/uhd-c37b318/x4xx_x410_fpga_default-gc37b318.zip (Caused by SSLError(SSLEr=
ror(1, &#39;[SSL: SSLV3_ALERT_HANDSHAKE_FAILURE]
 sslv3 alert handshake failure (_ssl.c:1007)&#39;)))<br>
You can run this again with the &#39;--verbose&#39; flag to see more inform=
ation.<br>
If the problem persists, please email the output to the usrp-users mailing =
list.<br>
<br>
<br>
</div>
<br>
<p></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div></div>

--000000000000442cdf062c37e45e--

--===============6775544949579906056==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6775544949579906056==--
