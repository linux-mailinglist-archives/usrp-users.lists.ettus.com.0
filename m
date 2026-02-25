Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CM0RGas5n2m5ZQQAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 25 Feb 2026 19:04:27 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 755EB19BFB1
	for <lists+usrp-users@lfdr.de>; Wed, 25 Feb 2026 19:04:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E919E385C58
	for <lists+usrp-users@lfdr.de>; Wed, 25 Feb 2026 13:04:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1772042664; bh=cE0X/I0INw8JavenDhttiQIApjSL0j/UP2340ZfwZPA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ykoiLTBypGe9rHNklF+tE9Q9BlKkcNtXtC195+3Fpv69csPLGbbiqd+jWKulo9fq6
	 0Vv3JDCg5EwGzHJSSZKYOfyFY50KuRbhEH1wxSQA+tR+ODFPf32CQqZpwavFL5rAy/
	 uZZbzqexEBOULab54+ua7XfLeT0Mjf9KdBl3r29Rdh94PFKT+WgdtNx4ExsG5eIu+Z
	 M4Zhy9BT2m0P5AOHzz9rcbwNrO31tcrzo406Znu8YVYr081Atic+WB40knm6+3799X
	 qqglJ8wRf7FEkPfvxLH+rsWS8LZan5+3i0W8MOtrU9cb5qGhVbfyQbO/aEd8AiPrm/
	 AYMsoo0x9KMPA==
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	by mm2.emwd.com (Postfix) with ESMTPS id E04A638659E
	for <usrp-users@lists.ettus.com>; Wed, 25 Feb 2026 13:03:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TIKAFlUz";
	dkim-atps=neutral
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-59e5aa4ca41so6638187e87.2
        for <usrp-users@lists.ettus.com>; Wed, 25 Feb 2026 10:03:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772042593; cv=none;
        d=google.com; s=arc-20240605;
        b=JnSmG+wYRVKmBhFvSIf2rEuxNj9mRDCMj42CAh9OxtVSiO19RD2b87pdIuUNiPImNp
         opWQefQ/61duFQ9iR6VeEy+fl2+P+G1fdn6LCNQaXXSvPyp1lR9B+hPZUlErhpWoB+0z
         53tASLTm35HNnrddGn9DjYr5CB2cgpH/mYotgkG2lueEtoS9tM8Y6/VI0lAYTh+D0eLI
         hdQ6AwCmkMyJhyF5PXC4I7ttek1d2vJRUIsSSUQAgFqpz/sdO1APebIkiP3F+Qe1HEyY
         3PGXmGPoKPgutIBwUVnvcKdrLgUk7c7ETIgmJGsLgjL5FjkgM437fbku+lDZPqH9RWtt
         pOrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cXC++NWrGbmQe1ke5wzYzvkpw/X+VrC8yPdSDAJ49i4=;
        fh=zOGNz1ktrlClpUY458x2Z6avAfJBElUsAF4MKUck3s8=;
        b=fAFk8rNU2TdyCJo5u6ZgQl+1bhi4w2KLm1fRc8SUAiDTa+ak76J6j9QC4wy3WJcUiI
         Qaq18AVdkyjwMfP6CiZArC1ENDS4CRv+aT+zmk1ox3NhWIjkWTSoG8aVlXKe4BSe2E35
         a8NEJ/7uTG+NJcjFFmyVKLT58x38/qFsDmbq8fb0zKihdaV48WX5zrUKcU+/eZwV+E3w
         u4FrZQqchGSd8L717zoazKheBPEeCpn4QuqTtgbsiWDbaad7cljHwGGcF0ucKYW5M7sQ
         /FbmVBGWuR3iYWYrwpqXGLAO8fOYK0sYDfQQRT2qQm1vPzvXIDOjPdM+IhLn4qXwSUNX
         Y1cQ==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772042593; x=1772647393; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cXC++NWrGbmQe1ke5wzYzvkpw/X+VrC8yPdSDAJ49i4=;
        b=TIKAFlUzxzGcDDBcCe8KplGE3bHkQhkix9yJo1j3AfCl+WjVLfXgyXf69FjsFTHgn6
         3KyhhwAfZpPerAb/tbomQHqiKAjsp7Fza1Uka+K2QMvva5TG6+u/WAwL+28enUcVYg3+
         SsJY7kwvL3mvaKUzhZTN1IhkqnmXDRswExqYICROymQjbVKtwjsFzCl/fkR8QBVvrTgu
         hPgufwomhqsyiGh/PnCGIp213edNIilli6am3QIfoA2nywCojqmoXC/ePk/CRhaAMZqe
         Z5uj6c/cE/uBHG+Bw5W0acckXGXApfCRSAFpnTgLxq6LpxPRtqkoamr60Vusgz7vMLT3
         ZlHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772042593; x=1772647393;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cXC++NWrGbmQe1ke5wzYzvkpw/X+VrC8yPdSDAJ49i4=;
        b=q+RhjaLmyx5XB7Rv65Fmx1A+dRHrqJh2qgSWvg/9bO5gWEMNQO4M5QgKHbDMjRdshL
         tyDOqO3U7un96SHZLcZhZ3ttqDzlNaOCNZYdSVQafrIpz7tLvPLfLzle0DmXG5xNvsmO
         dRu6o7X/PpSgJvPiFM//JoUDZUtFUl+PqxSwqIfzM0nfaOtlRGc/aBt8ZdMn5rV6DBzW
         GJptXPBbrRayMHh5+Olm3wZuY9yWV1ggtFi/6fcabFC2SVqRm8vBXoZurdnEAAfqD6cl
         1KmNSnGib1DGEB1pjgnM/3ffKaCkkNe+6nmKhsvmtj8gRLumnO9teCyUQSFoKG8gU6nG
         Q+Sg==
X-Gm-Message-State: AOJu0YwCP2KnHsbVEmxYXpTo+gjNj0qC1ud6Wy5nujXLsvDmCHjXxfJB
	sb0fOd6PXKMYsqjpSyogoP6xmjFNt/1s5opUTnmm716KL7gxWdt4Kf62vhbUneG5B2pVLXl1Bat
	eZs3KkhBFmAeuzjfOpEc96/8CNKXM9bxEFzat
X-Gm-Gg: ATEYQzzKc4wpJEkLB06LZlm97XNGLTbkXKJF6pVAgWmHpVWnqbusNODme8efIsgOj97
	bNNgpOTJeho35A2Ewuj/3yHGQoPEMwthIOHAY3bwd6Gm0O1ffx5gQJZPhBTAbnWFPnm5n8vN9n9
	VyTDkZaAp4E9a+AWSPG1sJa0g60wO8+IqpJCTdGvUOlN2mEg3yheIcla1ZcKsxfoAeubACSNOlx
	tBlWpGVKG39C6Qhp/Cdm6cGILaB2jNJ44Ox+INSpng/j+wxkTgz+YvLk5RmzXswgy6KBbAk42RE
	Nw20EtE/wGULT0qsoUlDPoEOQPt8Z6qdxHeD0u6bYSfAT4E6qAzjNeHFnyApKZ8Zqb+LvysIdld
	ARi/ItZ/mrkCB5LbkQdD/qfazb0s=
X-Received: by 2002:a05:6512:61a2:b0:5a0:ff34:c3d9 with SMTP id
 2adb3069b0e04-5a0ff34c596mr1338431e87.42.1772042593162; Wed, 25 Feb 2026
 10:03:13 -0800 (PST)
MIME-Version: 1.0
References: <467c7e31778a4b5e9012fdf820209e5b@dlr.de>
In-Reply-To: <467c7e31778a4b5e9012fdf820209e5b@dlr.de>
From: Ryan Wolfarth <ryan.a.wolfarth@gmail.com>
Date: Wed, 25 Feb 2026 13:03:01 -0500
X-Gm-Features: AaiRm50cswkHO0DdWx8VcgIrxAY3U-uV-oG19lTR8N1D4LFUotJ7JvMZbi6h2Ps
Message-ID: <CAJjPGR1yUsqhyOqYE1Ho8KGehjWNWxKmoSMJ6CWAAcN4KnOP3g@mail.gmail.com>
To: Emanuel.Staudinger@dlr.de
Message-ID-Hash: AMZSI6BQV4JO2W5ZT4QWDHZIFELN6VUJ
X-Message-ID-Hash: AMZSI6BQV4JO2W5ZT4QWDHZIFELN6VUJ
X-MailFrom: ryan.a.wolfarth@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Suitable PC hardware for X440
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AMZSI6BQV4JO2W5ZT4QWDHZIFELN6VUJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1888215659739324119=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_TWO(0.00)[2];
	R_DKIM_REJECT(0.00)[gmail.com:s=20230601];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ryanawolfarth@gmail.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,gmail.com:-];
	NEURAL_HAM(-0.00)[-0.946];
	TAGGED_RCPT(0.00)[usrp-users];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,dlr.de:url,emwd.com:dkim]
X-Rspamd-Queue-Id: 755EB19BFB1
X-Rspamd-Action: no action

--===============1888215659739324119==
Content-Type: multipart/alternative; boundary="0000000000004ad7ff064ba9d1ba"

--0000000000004ad7ff064ba9d1ba
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Emanuel,

I'm in the process of building a similar workstation for work with an X440.
I don't have any firm recommendations, but I am interested to hear from
others on the forum. My understanding is that with full-rate streaming,
existing workstations are not going to be able to do much more than write
samples to storage. If you need any processing applied to those samples,
you probably need to build a custom RFNoC block for the FPGA.

I'm also targeting the Threadripper series hosted on a Asus Pro WS
WRX90E-SAGE SE. As for SSDs, I'm planning to use mdadm to apply RAID 0 to
four gen 5 NVMe drives.

Thanks,
Ryan

On Wed, Feb 25, 2026 at 3:53=E2=80=AFAM Emanuel.Staudinger--- via USRP-user=
s <
usrp-users@lists.ettus.com> wrote:

> Hi everybody,
>
>
>
> we foresee a X440 for our research and are looking for hints on suitable
> PC hardware/architectures for high-rate streaming and storage of I/Q
> samples, as well as online-processing.
>
> 100Gbit-NICs can be found in the knowledge base, yet I would be more be
> interested in suitable CPUs etc.
>
> Given the high bandwidth we have a Ryzen Threadripper based system in min=
d.
>
>
>
> Does anyone have experience with Xeon oder Epyc based systems in this
> regards?
>
> Do you have recommendations for suitable SSDs for raw data storage (not
> necessarily consumer grade, can also be SSDs built for servers)?
>
>
>
> Any insight is highly appreciated.
>
> Kind regards,
>
> Emanuel
>
> =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94
>
> *Deutsches Zentrum f=C3=BCr Luft- und Raumfahrt* e.V. (DLR)
>
> Institut f=C3=BCr Kommunikation und Navigation | Communication Systems |
> Oberpfaffenhofen, M=C3=BCnchener Str. 20 | 82234 We=C3=9Fling
>
>
>
> Dr.-Ing. *Emanuel Staudinger*
>
> Telefon +49-8153-28-2887 | Telefax +49-8153-28-1871
>
> DLR.de <http://www.dlr.de/>
>
>
>
> DLR is represented by the Executive Board and employees authorised by it.
> Head of DLR's legal department, Linder Hoehe, 51147 Cologne, can provide
> information (DLR.de/imprint).
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000004ad7ff064ba9d1ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Emanuel,<div><br></div><div>I&#39;m in the process of b=
uilding a similar workstation for work with an X440. I don&#39;t have any f=
irm recommendations, but I am interested to hear from others on the forum. =
My understanding is that with full-rate streaming, existing workstations ar=
e not going to be able to do much more than write samples to storage. If yo=
u need any processing applied to those samples, you probably need to build =
a custom RFNoC block for the=C2=A0FPGA.=C2=A0</div><div><br></div><div>I&#3=
9;m also targeting the Threadripper series hosted on a=C2=A0Asus Pro WS WRX=
90E-SAGE SE. As for SSDs, I&#39;m planning to use mdadm to apply RAID 0 to =
four gen 5 NVMe drives.=C2=A0</div><div><br></div><div>Thanks,</div><div>Ry=
an</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Wed, Feb 25, 2026 at 3:53=E2=80=AFAM Emanuel.Staudinger--- via U=
SRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blan=
k">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div><div lang=3D"EN-US"><div><p class=3D"MsoN=
ormal"><span lang=3D"DE">Hi everybody,<u></u><u></u></span></p><p class=3D"=
MsoNormal"><span lang=3D"DE"><u></u>=C2=A0<u></u></span></p><p class=3D"Mso=
Normal">we foresee a X440 for our research and are looking for hints on sui=
table PC hardware/architectures for high-rate streaming and storage of I/Q =
samples, as well as online-processing.<u></u><u></u></p><p class=3D"MsoNorm=
al">100Gbit-NICs can be found in the knowledge base, yet I would be more be=
 interested in suitable CPUs etc.<u></u><u></u></p><p class=3D"MsoNormal">G=
iven the high bandwidth we have a Ryzen Threadripper based system in mind.<=
u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D=
"MsoNormal">Does anyone have experience with Xeon oder Epyc based systems i=
n this regards?<u></u><u></u></p><p class=3D"MsoNormal">Do you have recomme=
ndations for suitable SSDs for raw data storage (not necessarily consumer g=
rade, can also be SSDs built for servers)?<u></u><u></u></p><p class=3D"Mso=
Normal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">Any insight is highl=
y appreciated.<u></u><u></u></p><p class=3D"MsoNormal">Kind regards,<u></u>=
<u></u></p><p class=3D"MsoNormal">Emanuel<u></u><u></u></p><p class=3D"MsoN=
ormal"><span lang=3D"DE" style=3D"font-size:10pt;font-family:Arial,sans-ser=
if;color:dimgray">=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94<span><u></u><u></u></span></span></p><p class=
=3D"MsoNormal"><b><span lang=3D"DE" style=3D"font-size:10pt;font-family:Ari=
al,sans-serif;color:dimgray">Deutsches Zentrum f=C3=BCr Luft- und Raumfahrt=
</span></b><span lang=3D"DE" style=3D"font-size:10pt;font-family:Arial,sans=
-serif;color:dimgray"> e.V. (DLR)<u></u><u></u></span></p><p class=3D"MsoNo=
rmal" style=3D"line-height:16pt"><a name=3D"m_-7474683484356104355_m_122306=
7260780431128_Institut"></a><span lang=3D"DE" style=3D"font-size:8.5pt;font=
-family:Arial,sans-serif;color:dimgray">Institut f=C3=BCr Kommunikation und=
 Navigation | Communication Systems | Oberpfaffenhofen, M=C3=BCnchener Str.=
 20 | 82234 We=C3=9Fling<u></u><u></u></span></p><p class=3D"MsoNormal"><sp=
an lang=3D"DE" style=3D"font-size:10pt;font-family:Arial,sans-serif;color:r=
gb(31,73,125)"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><a nam=
e=3D"m_-7474683484356104355_m_1223067260780431128_Funktion"></a><span lang=
=3D"DE" style=3D"font-size:10pt;font-family:Arial,sans-serif;color:dimgray"=
>Dr.-Ing. <b>Emanuel Staudinger</b> <u></u><u></u></span></p><p class=3D"Ms=
oNormal" style=3D"line-height:16pt"><a name=3D"m_-7474683484356104355_m_122=
3067260780431128_Telefon"></a><span lang=3D"DE" style=3D"font-size:8.5pt;fo=
nt-family:Arial,sans-serif;color:dimgray">Telefon +49-8153-28-2887 | Telefa=
x +49-8153-28-1871<u></u><u></u></span></p><p class=3D"MsoNormal" style=3D"=
line-height:16pt"><span lang=3D"DE" style=3D"font-size:8.5pt;font-family:Ar=
ial,sans-serif;color:dimgray"><a href=3D"http://www.dlr.de/" target=3D"_bla=
nk"><span lang=3D"EN-US" style=3D"color:blue">DLR.de</span></a></span><u><s=
pan style=3D"font-size:8.5pt;font-family:Arial,sans-serif;color:blue"><u></=
u><u></u></span></u></p><p class=3D"MsoNormal"><span style=3D"font-size:7pt=
;color:rgb(115,115,115)"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNorm=
al"><span style=3D"font-size:7pt;color:rgb(115,115,115)">DLR is represented=
 by the Executive Board and employees authorised by it.<br>Head of DLR&#39;=
s legal department, Linder Hoehe, 51147 Cologne, can provide information (<=
/span><span style=3D"font-size:12pt"><a href=3D"https://DLR.de/imprint" tar=
get=3D"_blank"><span style=3D"font-size:7pt;color:blue">DLR.de/imprint</spa=
n></a></span><span style=3D"font-size:7pt;color:rgb(115,115,115)">).</span>=
<span style=3D"font-size:12pt"><u></u><u></u></span></p><p class=3D"MsoNorm=
al"><u></u>=C2=A0<u></u></p></div></div>___________________________________=
____________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--0000000000004ad7ff064ba9d1ba--

--===============1888215659739324119==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1888215659739324119==--
