Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE3C3B6B03
	for <lists+usrp-users@lfdr.de>; Tue, 29 Jun 2021 00:38:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 456923843DF
	for <lists+usrp-users@lfdr.de>; Mon, 28 Jun 2021 18:38:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XvMOPMOX";
	dkim-atps=neutral
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id C0BC3384395
	for <USRP-users@lists.ettus.com>; Mon, 28 Jun 2021 18:37:43 -0400 (EDT)
Received: by mail-qk1-f172.google.com with SMTP id y29so27636816qky.12
        for <USRP-users@lists.ettus.com>; Mon, 28 Jun 2021 15:37:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=iN60cB484ltmjr4j4t0FGCo+EsmJmhVSI50SJER2mQ4=;
        b=XvMOPMOX4w7CHMNZmoQ/VmUZTtuJJ2EJuY9/KZdbUj0xSJcmi3CD373tUmBJJMjtTE
         yViqavgMXAApLg7Hy99Nzg1x0Wm9rFOaE0BzW7fSpg0s2XnAx1afeJqhZVkVa8aeFyfz
         xh93iclg/rZRZqFdG0st4wuBnMby7OAU6yjBw9HIQjP5QlenTpMZH6XxFQI9TuqU3TG5
         ZMR1YkDutT6sxWE647ayUPi7T/St6RNDGLs48DGYAiXbulgNFHSsCwI1j9Wqa7Ici0Be
         1+zo2TSeDmYHgnPCSdBBCGTD5siZVm+V2nupYB+Yg7Ol8jxfpMwImz5hdRHPCb5FCUQk
         6tXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=iN60cB484ltmjr4j4t0FGCo+EsmJmhVSI50SJER2mQ4=;
        b=HoWIBJZzL179XplqIWBRFWwzO7u5aZdfd/wYOJScWBVB93/fF9iq1TunRf8hh7eliv
         fUUulvXCVg9BC4JmobcSl+2hVspeLlni3Py2e0eXDOp49KktCMN2kB/l7RyoBLMPjC6o
         E10LWdVw5cF7Cczur+oqpsmkP2Tfcx8BGCe2Frc331RMwTHRDSHaxv/ZV2kOR9pvlrg1
         P7Mr9RNuMO/6IWcne2PwiijFHrmiJtK1gualWqdcd8B6W3i0Vmh2OLdQiq3friZ+ySFy
         OZkiNkkX3HtWZGjV1QOo+57QXRMOLXjSQbuX0E16G4WIgHJ1Jh+dggs3JE+8NnhngW1p
         sBTw==
X-Gm-Message-State: AOAM530jv+mk5znW6oW0gRPWyBQGUrtJxwvRk8au+HKedn3d2yYnplZr
	wSZ0jv3FOdZZ+92WgctJ+FnXXJF0a8dxYQ==
X-Google-Smtp-Source: ABdhPJxjhXDxTiTV6OAmh0m+C8yRZHFPJhE7uNELnjxzpLkQ+oND2St/r1lHji/Uaj4puqfehyRpHw==
X-Received: by 2002:a05:620a:1661:: with SMTP id d1mr18203193qko.463.1624919862993;
        Mon, 28 Jun 2021 15:37:42 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id w1sm797553qtk.67.2021.06.28.15.37.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jun 2021 15:37:42 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 28 Jun 2021 18:37:41 -0400
Message-Id: <FC578D72-9DBD-4EE1-BFC4-7885BB4F5EEE@gmail.com>
References: <e5LtCLgQ31fiPRnJohe95igyA4IoNqOJHtdjjtPwjWA@lists.ettus.com>
In-Reply-To: <e5LtCLgQ31fiPRnJohe95igyA4IoNqOJHtdjjtPwjWA@lists.ettus.com>
To: rblack@swri.org
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: TKPSSQTW4OVBC3JNOZQL2DOXIQHGZMRL
X-Message-ID-Hash: TKPSSQTW4OVBC3JNOZQL2DOXIQHGZMRL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc radio transmit control
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TKPSSQTW4OVBC3JNOZQL2DOXIQHGZMRL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0461247588930794176=="


--===============0461247588930794176==
Content-Type: multipart/alternative; boundary=Apple-Mail-D36F8DD8-F6AA-4035-8F14-B70AD49CFA11
Content-Transfer-Encoding: 7bit


--Apple-Mail-D36F8DD8-F6AA-4035-8F14-B70AD49CFA11
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

What bandwidth/sample rate?

Sent from my iPhone

> On Jun 28, 2021, at 6:27 PM, rblack@swri.org wrote:
>=20
> =EF=BB=BF
> More like sending radar pulses, than OOK. And working through the host sof=
tware interface will be too slow for this.
>=20
> It may indeed require a custom block.
>=20
>=20
>=20
> thanks rb
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-D36F8DD8-F6AA-4035-8F14-B70AD49CFA11
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">What bandwidth/sample rate?<br><br><div dir=
=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"c=
ite">On Jun 28, 2021, at 6:27 PM, rblack@swri.org wrote:<br><br></blockquote=
></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<p>More like send=
ing radar pulses, than OOK.   And working through the host software interfac=
e will be too slow for this.    </p><p>It may indeed require a custom block.=
</p><p><br></p><p>thanks rb</p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-D36F8DD8-F6AA-4035-8F14-B70AD49CFA11--

--===============0461247588930794176==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0461247588930794176==--
