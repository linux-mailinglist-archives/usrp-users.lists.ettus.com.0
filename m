Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gFoTAy3PpWm1GwAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Mon, 02 Mar 2026 18:55:57 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B6D1DE21D
	for <lists+usrp-users@lfdr.de>; Mon, 02 Mar 2026 18:55:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4EFAD385BA2
	for <lists+usrp-users@lfdr.de>; Mon,  2 Mar 2026 12:55:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1772474154; bh=0rIXa9GqUjkOu/M+RAZaKvN796Ds+YYpyFFPjyxdp2Q=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=MkIoC6Vw0iW7sX12QDhz7k0x5yrbYn5+ay8pgjMOqGg+Ek95dZWE7zcaBBZriiFx1
	 UCfs/BtYLsan3f3t+CX3kX6Fb4ZEkuQ0cJ/Epy7Ecv5YI8MGnhL601irpxer5p2URt
	 t5t6L5CEi7m/S+cj+2tWQ/U8Tz4eAE38IBrIU+kssZCSrxLWeFc+Mvyk8AnIxiAnu8
	 hE2oQ5olcOW0/6r2s29ebL05DXNlKrfPYwzSoqfCuhVVOJavNr5jXmyqxaNOD1Ly69
	 Fy6K93gUfhDjCMkGfTcWs1dHAw83ruvkJLzcpXrrXuv7MV5CrTts6DAEwIVHsYqU0J
	 +Ewx2tusmAtYA==
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 76ED2385B60
	for <usrp-users@lists.ettus.com>; Mon,  2 Mar 2026 12:54:58 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="Kki5IIhw";
	dkim-atps=neutral
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-662f9aeb782so3863203eaf.3
        for <usrp-users@lists.ettus.com>; Mon, 02 Mar 2026 09:54:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772474097; cv=none;
        d=google.com; s=arc-20240605;
        b=g/UhzhxzZX4YxjCU7XXC30vLjmjtA1ce8j+WKdn4RMTrduZJYw3HGzqR8tjMgTe4tD
         Pz55JfrcNZXvMcH9RwXWCwJV/yAO4lI2HLhDkVSmqkGYtd+LhY/w37CxvI1Qy0JFk0sd
         8cEbTUvDLUnjN+aFGz4Ui4SOb1Zr9u5+ZqElxZ1g2j/8zMsFpTuqnZHsTiN7IUYX0S3o
         KeZE9aML6sYY5VQcZRe/Dg0gs79sqXzbPRnnHt4q/LS+9y1YNNrnJwiCyvvpWRd2KwhB
         1+8gKEWbZWOygRKrUlon016HA3cVk1HwKfsllQsjXpp6w3DLXEcMPk49YQ1Dzv7Mh1v4
         zYlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=0P3cT0dbQNsHJt/fZaCni+27mynUnoedJDNHHUlEqE8=;
        fh=7x+5Qq5FC8MUtCGcJvrnDrCV484FJE2pnnNf2U13jts=;
        b=lJUFl8XbrGHw1jAxuGbH5YM53wLLHL40RZXs02fROlYEpNcGntjfhPTAwXeRSxmq6Q
         xJks8ruatwLbkmTGr4W9dlZzGls8KMOIvl1i7C0ztf3WavYlB6p/iz2TEDSpicW43Y2H
         p7gsUTnfWpr1lVqed8V8VcOofJlSV+WM49jbUpytLS/3WTqbYP2sJbhWArdRKGeQ6d+6
         ju7iAFaPQP/4GVIeWOkfBInTIQ5P65JB24ivNX9tkRfvnthY3WYaWvIK34od3VBTeAQ5
         ODzzcWXC3Ca9Tbwk39pMe/K7m0G3EbYW0I50yaz5fypMmWSVXtImmFLE1RanKV+HuptZ
         M32g==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1772474097; x=1773078897; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0P3cT0dbQNsHJt/fZaCni+27mynUnoedJDNHHUlEqE8=;
        b=Kki5IIhwjw5p50qUgCj4bAGWunaUUodcGPknyCKqRAFXFoK/0V6Y/FphFlA8NpEQQD
         NhHnOFjHRwbKyr89SMgCQ+OfMgRPUBXvhCR3sxtJJgfyRA51Ti6jsx+b5Sx6MhnnuZtZ
         MWg2v+sAQTIUeU8YU0mmnGgKQgxn0JBt6pOvGyl4D9CmIKYFx9GjshylX809YCWHD8kZ
         aUDQpgguHzgXyCW0ToEB5xQSBwQmqX/NzFgqu4MCxJRuLnH2eO/YS+YtpbzM6QP7cHs3
         1+QRQ5VAdbsCadUeKOsIMKmr5BUhLGfQpTlYEi4Foeql8xuqgyGFn+zP4IZtuS4zc2D0
         SyDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772474097; x=1773078897;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0P3cT0dbQNsHJt/fZaCni+27mynUnoedJDNHHUlEqE8=;
        b=lzk1yhXt0dzAEnRwTSMXB0TuOTvSOAjBlw6BNxrfOEh9haGdEgBgQZdL7WeZnnd+KS
         LaWiIyKTvl8OA6UX/cfTSFVl9lpaAGOLRtihqCKsaaZHfkUoMA1/trujdUCLz79+CQAf
         bIIpObxZ4RLah79uuwZJztH8ta+IIz1Wfs788L4MGDc998UDfov6fMJ8I7HCNURFfJvu
         KCN7GsvLj+++BSL1de2CclltQkRknM143BjWOIvVpsx5p0dWXGZiiLOmlb44k7u3UgpC
         ojkr5PAi+/M5FSWW4bakGxx5lGN5HKEWLL/7UW6u2ROUHI6dIAswDZKLaoJVE8GF5HmZ
         OyYA==
X-Gm-Message-State: AOJu0YwPo8a46o8wgRhE6Lj67tmuNGZiVL7UicAMkuWlH12hHmpEV/vM
	4DOF+e9SjraNxeMUFwPfzyaAbvYFPQ8e7CPDEkgFIJIrDrOhH4aaSEsTeHVQTYYbHPzfCiC1KM1
	kRXodv0DF4+0tGwRyiw9p5DLCeWubdi4r36WDPAYkSuvFIHmlAIxUcrKX2xmR
X-Gm-Gg: ATEYQzwahE4YHUy05lmSz6lpQ7mGIkZUX24uhBQxvD9tmvy8pZO4oqc5EMEY/JmV3Fn
	0VN8BeVoi6cCWsPOy+XSxpSkZSOR3Ia6iw1ScAX3ERzU8bG7bd4Zy0w8YZJoNCR+e8P07liE6sG
	PhtbcEWD5ICPEI01y5aw+xUkz03BdoWAnsYKLFBAfqtYOMYJNAQ/igA7PSg564yywQPZX9K0hSP
	5tANbNcnirdVc/31hCYOPs2J4Se7EuOsH9TOBiznWu+WU9UFZ0JX8v9kmwtrCE9AnOVel72xpTp
	iuzv8kcNdXtA1Lv+TZRMnv+9W1rU59V5h6U/rhMk0w==
X-Received: by 2002:a05:6820:4a8e:b0:679:e7ba:79e9 with SMTP id
 006d021491bc7-679faf3fb14mr5877007eaf.63.1772474097082; Mon, 02 Mar 2026
 09:54:57 -0800 (PST)
MIME-Version: 1.0
References: <CACaXmv__wwR+LsJrq9osOPcsq_8H1f6tMJxCrDDEBz3yM95zXw@mail.gmail.com>
In-Reply-To: <CACaXmv__wwR+LsJrq9osOPcsq_8H1f6tMJxCrDDEBz3yM95zXw@mail.gmail.com>
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Mon, 2 Mar 2026 11:54:20 -0600
X-Gm-Features: AaiRm520MVn0EQkEF355TxwBOaffrxIVZINsOII_vlhHWSYQZPdDNnONaXtJIbw
Message-ID: <CACaXmv9vjG7Vsy7OpRv5ZzDUBvv=OPGjV0zJ4hC=UOr3yx4Fww@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: G644EFMF76ZADWYDJ5T4ZOR75SPCLZ45
X-Message-ID-Hash: G644EFMF76ZADWYDJ5T4ZOR75SPCLZ45
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Save-the-Date: NEWSDR 2026 at WPI on June 4-5
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G644EFMF76ZADWYDJ5T4ZOR75SPCLZ45/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0351925424441182210=="
X-Rspamd-Queue-Id: 19B6D1DE21D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	TO_DN_ALL(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ettus.com];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCPT_COUNT_ONE(0.00)[1];
	R_DKIM_REJECT(0.00)[ettus-com.20230601.gappssmtp.com:s=20230601];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20230601.gappssmtp.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.950];
	FROM_NEQ_ENVFROM(0.00)[neel.pandeya@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,emwd.com:dkim]
X-Rspamd-Action: no action

--===============0351925424441182210==
Content-Type: multipart/alternative; boundary="000000000000ee3409064c0e4820"

--000000000000ee3409064c0e4820
Content-Type: text/plain; charset="UTF-8"

We've created a landing page for the event:

https://newsdr.org/workshops/newsdr-2026/

More details to come soon!


On Sat, 28 Feb 2026 at 15:38, Neel Pandeya <neel.pandeya@ettus.com> wrote:

> Save-the-Date: NEWSDR 2026 at WPI on June 4-5
>
> We would like to announce the 16th annual New England Workshop on Software
> Defined Radio (NEWSDR) event on Friday June 5, to be hosted in-person at
> Worcester Polytechnic Institute (WPI), in Worcester, Massachusetts, USA.
> There will also be a set of tutorials and workshops on Thursday June 4.
>
> Registration and the Call for Participation will open soon.
>
> We will post the event page on our website soon.
>
> We will be looking for poster presentations, exhibitors, and sponsors.
>
> We look forward to seeing you all at the event!
>
>
> *https://newsdr.org/ <https://newsdr.org/>*
>

--000000000000ee3409064c0e4820
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:verdana,sans-serif">We&#39;ve created a landing page for the event=
:</div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif=
"><br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-=
serif"><a href=3D"https://newsdr.org/workshops/newsdr-2026/">https://newsdr=
.org/workshops/newsdr-2026/</a></div><div class=3D"gmail_default" style=3D"=
font-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" styl=
e=3D"font-family:verdana,sans-serif">More details to come soon!</div><div c=
lass=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div><=
/div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sat, 28 Feb 2026 at 15:38, Neel Pandeya &lt;<a href=
=3D"mailto:neel.pandeya@ettus.com">neel.pandeya@ettus.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><=
div><font face=3D"verdana, sans-serif">Save-the-Date: NEWSDR 2026 at WPI on=
 June 4-5</font></div><font face=3D"verdana, sans-serif"><br>We would like =
to announce the 16th annual New England Workshop on Software Defined Radio =
(NEWSDR) event on Friday June 5, to be hosted in-person at Worcester Polyte=
chnic Institute (WPI), in Worcester, Massachusetts, USA. There will also be=
 a set of tutorials and workshops on Thursday June 4.<br><br>Registration a=
nd the Call for Participation will open soon.<br><br><span class=3D"gmail_d=
efault" style=3D"font-family:verdana,sans-serif"></span>We will post the ev=
ent page on our website soon.</font><div><font face=3D"verdana, sans-serif"=
><br></font></div><div><font face=3D"verdana, sans-serif">We will be lookin=
g for poster presentations, exhibitors, and sponsors.<br><br>We look forwar=
d to seeing you all at the event!<br><br><b><span class=3D"gmail_default" s=
tyle=3D"font-family:verdana,sans-serif"></span><a href=3D"https://newsdr.or=
g/" target=3D"_blank">https://newsdr.org/</a><br></b></font><br></div></div=
>
</blockquote></div></div>

--000000000000ee3409064c0e4820--

--===============0351925424441182210==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0351925424441182210==--
