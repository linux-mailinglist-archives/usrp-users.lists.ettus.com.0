Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C0B3686C3
	for <lists+usrp-users@lfdr.de>; Thu, 22 Apr 2021 20:50:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5297338497A
	for <lists+usrp-users@lfdr.de>; Thu, 22 Apr 2021 14:50:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UdHegbK4";
	dkim-atps=neutral
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by mm2.emwd.com (Postfix) with ESMTPS id A470338422E
	for <USRP-users@lists.ettus.com>; Thu, 22 Apr 2021 14:50:09 -0400 (EDT)
Received: by mail-qv1-f41.google.com with SMTP id h3so21782565qve.13
        for <USRP-users@lists.ettus.com>; Thu, 22 Apr 2021 11:50:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=5qRt7hwAlSjEFeruUAV4fZn3Ov/7Int5Vz6TVeqisfw=;
        b=UdHegbK4tin4TDpge9+qAjOQdbH80dNURY9TqAoJlCbRtm0mBNeJYIKobJQmt34T0+
         lhV9sg4M3t4wUphEA8l/O0E4NnkH6zFS6Egb2zuWElaDr8UGyFGOA62tk+TSaTTBtJZ+
         bJJb3xlU9Zp1BZSCCDKHVJTm2VlTj30pbkJbeyTgR33DTqh/chldT0kItXmvOk/hainK
         mY0+9kNksq1BDsRNOiLtXrgam2LqFLIZhr3wcnhMW79vu3nGb2eSe6mv0fqA/5k/bhFQ
         9pp8c0Cppfiu6Zj6Kwfu8h1fdBCOP6nVQThC/wdMNTqeZUyzeu5+JW7Uz6FMcr2d0N48
         HwTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=5qRt7hwAlSjEFeruUAV4fZn3Ov/7Int5Vz6TVeqisfw=;
        b=R8ZOBXLk5Xsr0zBITY+PdGbzHPhjXP/tMFMyC0oOyBwyb4UQc6SY+prUH4K00PRadi
         pkYHNwIKPAdh3RSp1XHrD27WZCkmIHGIAwd972l7gfjGmQMpPRrtOTI7dE/syg3Lz9Ga
         NNUw1hfXCV5N8dtiXZYwGJr/UpukSPWscdLiXzKUGEaN/wPeFEK2JlgzDrLrrvEzFQI/
         AwWG4RswcTkkQKw9dblmEd+Js1UoDbeT/A7uA8zbcoU2uEvye9dQtMGXRXJ9zsXfn6nV
         ammd1yBUUNGSW4zbeNep1ZbqAh/OxLCQoMuwpIKJZ7uKwQZKlV0lfAJRse36U4BQoWQ/
         3rsg==
X-Gm-Message-State: AOAM533Qih+5flFSueHzRg1qYh0SceCMgGvyraYuXqz/Kr2s4XzrjUSm
	xijOTxd20d/9OT/v+xXSawIpK07mQ50=
X-Google-Smtp-Source: ABdhPJzgVB60qVtNQKjNiVTLRWrcYT601hIcwYZPXcL2Xzxp8U+MRB0xtrqeqSMhtoE50JLpzzxEfw==
X-Received: by 2002:a05:6214:7e6:: with SMTP id bp6mr5111834qvb.37.1619117408981;
        Thu, 22 Apr 2021 11:50:08 -0700 (PDT)
Received: from ?IPv6:2605:b100:d09:eacd:c86:266f:af75:c913? ([2605:b100:d09:eacd:c86:266f:af75:c913])
        by smtp.gmail.com with ESMTPSA id e13sm3031434qtm.35.2021.04.22.11.50.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Apr 2021 11:50:08 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 22 Apr 2021 14:50:07 -0400
Message-Id: <9152B1EF-94BE-4491-A667-8748CC4C110A@gmail.com>
References: <CABD0DOtYe=rSkdNqgQbWymNq4eNO2+LmW35+1WkvO4zcE8+H5Q@mail.gmail.com>
In-Reply-To: <CABD0DOtYe=rSkdNqgQbWymNq4eNO2+LmW35+1WkvO4zcE8+H5Q@mail.gmail.com>
To: Glenn Hazelwood <hazelnutvt04@gmail.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: 4YZWWE5N5U3Y3CH3RR7RPPYEWMMKQXJD
X-Message-ID-Hash: 4YZWWE5N5U3Y3CH3RR7RPPYEWMMKQXJD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Zero Samples for UHD 3.15 and B205mini with Ubuntu 18.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4YZWWE5N5U3Y3CH3RR7RPPYEWMMKQXJD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1960960990268364882=="


--===============1960960990268364882==
Content-Type: multipart/alternative; boundary=Apple-Mail-8408DE48-353B-4399-BE05-E29794ADD3E5
Content-Transfer-Encoding: 7bit


--Apple-Mail-8408DE48-353B-4399-BE05-E29794ADD3E5
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Given that samples conceptually are anywhere i the range {-1.0,1.0} why woul=
d you not expect some zero-valued samples?=20

Consider a normalized sine wave. Does it ever cross the zero line?

Also if you=E2=80=99re getting a lot of maximum valued samples, your input p=
ower is too high and/or your gain is too high.=20



Sent from my iPhone

> On Apr 22, 2021, at 2:33 PM, Glenn Hazelwood <hazelnutvt04@gmail.com> wrot=
e:
>=20
> =EF=BB=BF
> I am using UHD 3.15 on a Jetson Xavier with Ubuntu 18.04.4 LTS with a n Et=
tus B205mini SDR. I am developing my application in C++. My cpu_format is 'f=
c32' (complex 32-bit floats)  and my over-the-wire-format is sc16 (complex 1=
6-bit ints).=20
>=20
> My application is receiving complex samples with one channel. I tune to a f=
requency, wait for the LO to settle and then recv() to get the samples like i=
n the UHD example, rx_multi_samples.cpp. But then I increment the tune frequ=
ency, tune to the new frequency, wait for the LO again and then recv() again=
 until I have received samples from all of the tuning frequencies of interes=
t.
>=20
> Is it normal to get zero-valued samples even after waiting for the LO to s=
ettle?
>=20
>=20
> P.S. Bonus issue:
> Also when I plot the samples, I see some of the samples (real and complex p=
arts) go to 1.0 and -1.0, which is the max value for several samples. I set t=
he gain to 50.
>=20
> --=20
> Diftor heh smusma
> -Famous Vulcan Phrase ;)
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-8408DE48-353B-4399-BE05-E29794ADD3E5
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Given that samples conceptually are anywher=
e i the range {-1.0,1.0} why would you not expect some zero-valued samples?&=
nbsp;<div><br></div><div>Consider a normalized sine wave. Does it ever cross=
 the zero line?</div><div><br></div><div>Also if you=E2=80=99re getting a lo=
t of maximum valued samples, your input power is too high and/or your gain i=
s too high.&nbsp;</div><div><br></div><div><br></div><div><div><br><div dir=3D=
"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite=
">On Apr 22, 2021, at 2:33 PM, Glenn Hazelwood &lt;hazelnutvt04@gmail.com&gt=
; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr=
">=EF=BB=BF<div dir=3D"ltr">I am using UHD 3.15 on a Jetson Xavier with Ubun=
tu 18.04.4 LTS with a n Ettus B205mini SDR. I am developing my application i=
n C++. My cpu_format is 'fc32' (complex 32-bit floats)&nbsp; and my over-the=
-wire-format is sc16 (complex 16-bit ints).&nbsp;<div><br></div><div>My appl=
ication is receiving&nbsp;complex samples with one channel. I tune to a freq=
uency, wait for the LO to settle and then recv() to get the samples like in t=
he UHD example, rx_multi_samples.cpp. But then I increment the tune frequenc=
y, tune to the new frequency, wait for the LO again and then recv() again un=
til I have received samples from all of the&nbsp;tuning frequencies of inter=
est.<div><br></div><div>Is it normal to get zero-valued samples even after w=
aiting for the&nbsp;LO to settle?</div><div><br></div><div><br></div><div>P.=
S. Bonus issue:</div><div>Also when I plot the samples, I see some of the sa=
mples (real and complex parts) go to 1.0 and -1.0, which is the max value fo=
r several samples. I set the gain to 50.<br clear=3D"all"><div><br></div>-- <=
br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signat=
ure"><div dir=3D"ltr"><div><div dir=3D"ltr"><span style=3D"line-height:19.04=
6875px;background-color:rgb(255,255,255)"><font color=3D"#000000" face=3D"tr=
ebuchet ms, sans-serif">Diftor heh smusma<br></font></span></div><div><span s=
tyle=3D"line-height:19.046875px;background-color:rgb(255,255,255)"><font col=
or=3D"#000000" face=3D"trebuchet ms, sans-serif">-Famous Vulcan Phrase ;)<br=
></font></span></div></div></div></div></div></div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></div></body></html>=

--Apple-Mail-8408DE48-353B-4399-BE05-E29794ADD3E5--

--===============1960960990268364882==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1960960990268364882==--
