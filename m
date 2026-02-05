Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cJEmGYXmhGlf6QMAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 05 Feb 2026 19:50:45 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E818F693E
	for <lists+usrp-users@lfdr.de>; Thu, 05 Feb 2026 19:50:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 27F5D386872
	for <lists+usrp-users@lfdr.de>; Thu,  5 Feb 2026 13:50:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1770317443; bh=Epb9Q7q/4jNWmjXiNkxr0WadLrcx9p8Nas3DXysodX4=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=MfuRVw3PdnF4iF+SHXBxZTBUuHnXybDlT5oFdEBEcBQr1FslV8Ym5vYvdnAhNPvBP
	 ssIZnBU8NnjV6qYz9As6uicGv6Dt3yP5SYpMn/zKia+rpdNEZAFei4Jc6ZVf/XtPj4
	 /9SOQUTrL8KqQ3LLZYaUVDM5j24JatXTPbT9BLwbNLooJBB8VQI6gf547GuHREMh9j
	 u/dGR1sZX6+uDZFr9/NOxNs+yiVXgCdj4l2haoELnN9oS6waW6gaQ0dh8ySDTetpZS
	 ISjOGDdG7z5L8wTlyWEnt3xioPFDVPiY86yrsI5nrH5wNPWR+H4/QezW+q9kU/q7fW
	 5hXPDMOB6HBKA==
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by mm2.emwd.com (Postfix) with ESMTPS id C3C1F38660F
	for <usrp-users@lists.ettus.com>; Thu,  5 Feb 2026 13:50:02 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="a66WSjBn";
	dkim-atps=neutral
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-89476eaaf16so11275836d6.1
        for <usrp-users@lists.ettus.com>; Thu, 05 Feb 2026 10:50:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770317402; cv=none;
        d=google.com; s=arc-20240605;
        b=TsrO7AUgvpNd1LRpoYKymV7TIPjXJAzc8CAAMV8+tX5pxI9tUOm4cjvxfz3Mxz762y
         gu/6VF7QLnVloGIgmcq8szLnV/avgsildPyPsKBpXqO18hHrYX4oeyiifNAcvZ7MrVh1
         Owp5laztXtl3bqTXHQQUu16IOX16H2C3Rk6oQ/JNixV//oIdq2nzN0/VfLQ8J1V5aRCw
         euDzTjBsfchHjFL+H5Dscv0EMGDg/Gc9jaIjH8p3fk3Qy2Z5b+ZvqgfQ+OBwLUjx82f4
         cRZQ1cYYGGtEVg6P2HKLV1Z2ebew0U7eTbRHyO0tRBoD+vzq7iuzxyIpgBgRhWH7/EMi
         c/7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=uuA4d/1kc8Xmw9nqDfhIrwgdfeo0xuB29sJDIxkU30Q=;
        fh=Rni46yqVkxPnzoJaeasF2jRWS6SwffKhmhdmBaa8z1Q=;
        b=Px5atkbfJf8KR4vw7njA6hT14K+sp4GSjaxWZqbOWSp0HZvXEUI1fVKFtLsuBV5HJK
         W+SaXQ61QUj7T8XGtTrbdkZnzLyhn+TfQkcMG3FM6a5oVp8guwhGieC/qNcXOmqt79jk
         fLPhpvn4VE/rW5ovc1sD/1a3hlOhSjR5Gr9luR50UVL6EPedLitUfb8bC4wdLUdgNS2Y
         XHYXL5gwNhhApV1sOKu1K3rXupwZQSQPUzEJ8gG6byReZa40/b4ClygYDH3L4dHn4Nu/
         Lo8Y0KHRK8T/QvE9djSgglIS7MpeturQAAuXvKC6tI/lDmHlmwkvD1hMI57/1adHIf2p
         n3kA==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1770317402; x=1770922202; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uuA4d/1kc8Xmw9nqDfhIrwgdfeo0xuB29sJDIxkU30Q=;
        b=a66WSjBnKc5brKmr1FfqEbO/BUrinxruw7ltAk7DCrkP4YZDGuRQqi7rgv5RpaUFLZ
         kCJYgx6bdO5Y96UZYh9qOY0mOwco5E3MXTIEIFmoFRMDfVq+R8tg3arbVM9QyuFkmuRT
         J6BvJkACpsJf5/LtucixT5F1tA2WpCSXh5q/F1PVIWgSeJXI000+x8AjtTlRr1++xpQE
         8gybVyJxHbedftwc1r1a8MTl5Wn8shrWMlCZ7WrlJncuF3ZkSAHjJSJZM78fvA5ZDtE8
         +jwMnoDGwC+pZAUIgTRkhAcnMHHWkEBcazOQO9A9V3nR2J+301x5EsYNuKwbUu+OsC/J
         GjAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770317402; x=1770922202;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uuA4d/1kc8Xmw9nqDfhIrwgdfeo0xuB29sJDIxkU30Q=;
        b=rNp0lPuqZjX62jdMowp+fDynbXbd0W2XCnWdSKKgDNZFQEee5RoceaUMj1raGvyKNP
         dDNUAZryucJgD/6uI8CWaRxDKbtQ+W6432OkdhxT8wpn2NJoQrXc6otlE97mvtGTpWh3
         jjSBDjLVvzO+eyJ2WHw0b39bsnz2XeYwltMGzIWYJ0lYD21qdehDvdAOTB3E0zxhmC51
         zK3YdPv/cIEVJNvsJY1fV/b5Inqw6dFvmez47qHqwp/L6dAqB3CiNKbAPD3fto7nYzRg
         jdc+xzHtRes96VmD0rtHhjFwtS0J8oW/v6Ubw1brnIIOlJwftqW5DNYImGLB9eAW59iS
         rn6Q==
X-Gm-Message-State: AOJu0YzC4mtIwOEmruSg9y2e8QZLKHm6ZTINJ3UhRUQbEMs6YddxGgfE
	bOV9vnnyUcNqf6mBY0mJNQHk7A0QgEoufTebzs71jmKZon3aYov38BaAEnCEkXCpjiLWLZJS9pZ
	P54ukf4lYhG7pAFSk4sXzUAVE0sdAEflT1yyPUw2cgNHcwHbIoa2rriryTg==
X-Gm-Gg: AZuq6aK8sKZVkW2FCg48obP2JzHNNAMqry9XFSABq4LtJgrhqm60d3WqJiAbBI0g191
	SxWkYGnYubMEJRGBtO/ff17J8vIxAAjZZtud5n/cYq+mNmxF1BouMdZcb0Wb8AsT+9UkpTvkLNb
	V2MGNyUpdXdsTSwYPGFQ0hjnvb+A546ZuEUTfRGnZpfP5prPij/a6IFGp6U5hv0BezA1w/d9Cr/
	6QLgOxVkxIzp1oBqhZHhGGvH7NvySMTjSCt/7cP8RwytBV87Sa/QmVqM0HGQFABJhGoKK7h5Q/r
	j4G9t5oOg+tslnVYtaCsZ6YQ1o5eQuIM7M9Qtg==
X-Received: by 2002:a05:6214:29e6:b0:894:2c12:aed9 with SMTP id
 6a1803df08f44-8953c7f212dmr1564256d6.5.1770317401846; Thu, 05 Feb 2026
 10:50:01 -0800 (PST)
MIME-Version: 1.0
References: <CAPP35V-Y6Nr6du9kiQOg5hMG9xkDYDnQ8NaXUPGhatOK0pE10Q@mail.gmail.com>
In-Reply-To: <CAPP35V-Y6Nr6du9kiQOg5hMG9xkDYDnQ8NaXUPGhatOK0pE10Q@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 5 Feb 2026 19:49:50 +0100
X-Gm-Features: AZwV_QjyeTp5Dvd3MasBtkS2093TPJUgI9dr5DkCyI5Hqf5s1086SX3zol7jjZ4
Message-ID: <CAFOi1A4w9idRL_v_r0s4tdwmZzQ-sFpxLOs=6gX9jbtaA+qo+A@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: BGS5E27BWEDDRMAMFL55EWEIC3DVSTM3
X-Message-ID-Hash: BGS5E27BWEDDRMAMFL55EWEIC3DVSTM3
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N210 with LFTX / LFRX supported LabVIEW version
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BGS5E27BWEDDRMAMFL55EWEIC3DVSTM3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2214688765322120554=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	MISSING_TO(2.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	R_SPF_NA(0.00)[no SPF record];
	R_DKIM_REJECT(0.00)[ettus-com.20230601.gappssmtp.com:s=20230601];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	DMARC_NA(0.00)[ettus.com];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20230601.gappssmtp.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martin.braun@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,emwd.com:dkim,ettus.com:email]
X-Rspamd-Queue-Id: 6E818F693E
X-Rspamd-Action: no action

--===============2214688765322120554==
Content-Type: multipart/alternative; boundary="000000000000e083c8064a18233c"

--000000000000e083c8064a18233c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ravi,

there's usually not a lot of LabView-related chatter here, so don't be
surprised if you don't get an answer. In this case, I believe there is
no restriction. Any LV version from the last few years should be fine.

--M

On Fri, Jan 23, 2026 at 5:29=E2=80=AFAM Ravi Paswan via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello Community,
>
> I am looking for information regarding which version of LabVIEW is
> supported or recommended for use with the USRP N210, specifically when
> using LFRX and LFTX daughterboards.
>
> Could you please provide guidance on the most compatible version for this
> hardware configuration?
>
> Best regards,
> Ravi Paswan
>
>
> *Disclaimer: **=C2=A9 2026 VVDN Technologies Pvt. Ltd. This e-mail contai=
ns
> PRIVILEGED AND CONFIDENTIAL INFORMATION intended solely for the use of th=
e
> addressee(s). If you are not the intended recipient, please notify the
> sender by e-mail and delete the original message. Further, you are not to
> copy, disclose, or distribute this e-mail or its contents to any other
> person and any such actions are unlawful.*
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e083c8064a18233c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Ravi,</div><div><br></div><div>there&#39;s usually=
 not a lot of LabView-related chatter here, so don&#39;t be surprised if yo=
u don&#39;t get an answer. In this case, I believe there is no=C2=A0restric=
tion. Any LV version from the last few years should be fine.</div><div><br>=
</div><div>--M</div></div><br><div class=3D"gmail_quote gmail_quote_contain=
er"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 23, 2026 at 5:29=E2=
=80=AFAM Ravi Paswan via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.=
ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello Community,=
</div><div><br></div><div>I am looking for information regarding which vers=
ion of LabVIEW is supported or recommended for use with the USRP N210, spec=
ifically when using LFRX and LFTX daughterboards.</div><div><br></div><div>=
Could you please provide guidance on the most compatible version for this h=
ardware configuration?</div><div><br></div><div>Best regards,</div><div>Rav=
i Paswan</div><div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr"><div><div><br></div></div></div></div></div></div>

<br>
<div style=3D"text-align:left"><img src=3D"https://vvdnnewdev.vvdncloud.com=
/images/it/vvdn_at_mwc.jpg"></div><div style=3D"text-align:left"><i style=
=3D"font-family:georgia,serif;font-size:small;color:rgb(80,0,80)">Disclaime=
r:=C2=A0</i><i style=3D"font-family:georgia,serif;color:rgb(80,0,80);font-s=
ize:12px;text-align:justify">=C2=A9 2026 VVDN Technologies Pvt. Ltd. This e=
-mail contains PRIVILEGED AND CONFIDENTIAL INFORMATION intended solely for =
the use of the addressee(s). If you are not the intended recipient, please =
notify the sender by e-mail and delete the original message. Further, you a=
re not to copy, disclose, or distribute this e-mail or its contents to any =
other person and any such actions are unlawful.</i></div>__________________=
_____________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000e083c8064a18233c--

--===============2214688765322120554==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2214688765322120554==--
