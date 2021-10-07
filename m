Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 79619424C3B
	for <lists+usrp-users@lfdr.de>; Thu,  7 Oct 2021 05:32:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3E97A384503
	for <lists+usrp-users@lfdr.de>; Wed,  6 Oct 2021 23:32:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ny+yvnop";
	dkim-atps=neutral
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 5367A3844CD
	for <USRP-users@lists.ettus.com>; Wed,  6 Oct 2021 23:31:38 -0400 (EDT)
Received: by mail-qt1-f177.google.com with SMTP id i1so3736555qtr.6
        for <USRP-users@lists.ettus.com>; Wed, 06 Oct 2021 20:31:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=Ey8AYlj3hQancUetwOipX2CSUQSVxYFs5Am8YJeGxJI=;
        b=ny+yvnophuqWmqlOH4q6NOHy3wxOwbAOj8vyj7+Tdoa18j/O4go05v9syBNrHblJtO
         My5R0Dla/WehPtDLhPvB/ztptT5YnNPhUM1QKWxTufZbM/3yms19wmDX4wefaoTqM4N/
         J0ouJrB+3IQibaUippawYoy0KLkggTbmEFSS/xds3HjrOFL5cCMFdPA0h9iMDGwA8iXb
         cAQ6RqlMQPYh2vmLVh3Hc4SftrBW81J8lQSYLBxUIabwX/TW76y+yBaH5G5qNhzZ/GLd
         Xf6ANs+syBGPiSeOEWiRo99yRlYG2werzw5wEl9ZH4Wn/f0tf/3hE5yHEpcGkFFZr3Pm
         cfrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=Ey8AYlj3hQancUetwOipX2CSUQSVxYFs5Am8YJeGxJI=;
        b=8DYvvi5hE7RKh1wzkEsK1WctLiLRzKSfCaLqkuT0h5hYfiU9V7EwIw6znWS8r7XvoN
         B5DOzSPdMEUi44WNYfpkMgavmveb75rcT6T2U72s+o+xUMvR1Qic6AjBiaCbDt1UKBTq
         YRvzdcHBxJVVmGcZYQsABwpL/2l58432eNeALeQIr6OCkmxEo68oJpq3UWe20x877jQH
         zObXsmaBNn/QbGylT0KXs01XlpQ70R39/8OyL/x26pbji3M8LuLY8fbqNk3qq6ailkGW
         2ftWGbVqBA9MGkKn6Mp9kRkViqFiL+t16cMP2J7zJpPG0aYjUhRb9AJ1MyZ2eNFhK0fc
         BbEw==
X-Gm-Message-State: AOAM533O5RF+VgN5DF3UPcs1hef4eN+BrJvTpqChJeBT56EQPL9LZZLa
	ciJ/0KDuW9XBMwbxSfY47LgZNq2Ksrw=
X-Google-Smtp-Source: ABdhPJwe2K9t2umL4drsmNW+waGzm2imXdZjOPLuV8ULh6GTmtnwcErkq3D/H8KusrNuO/aaO4VQLQ==
X-Received: by 2002:ac8:5752:: with SMTP id 18mr2362642qtx.203.1633577497834;
        Wed, 06 Oct 2021 20:31:37 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.gmail.com with ESMTPSA id d17sm16963458qte.0.2021.10.06.20.31.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Oct 2021 20:31:37 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 6 Oct 2021 23:31:35 -0400
Message-Id: <1830882A-DB39-41C5-8768-308676FF442E@gmail.com>
References: <kW9pVYx8m772lqgtfBe7cMwxjorQbwQyeBq4lKHjxQ@lists.ettus.com>
In-Reply-To: <kW9pVYx8m772lqgtfBe7cMwxjorQbwQyeBq4lKHjxQ@lists.ettus.com>
To: arjan.feta@unifi.it
X-Mailer: iPhone Mail (18G82)
Message-ID-Hash: FF5PXF53EIJBKG5KSERCGHS2J475FYBR
X-Message-ID-Hash: FF5PXF53EIJBKG5KSERCGHS2J475FYBR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Set RX power reference using a power calibration database
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FF5PXF53EIJBKG5KSERCGHS2J475FYBR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4864192579717186114=="


--===============4864192579717186114==
Content-Type: multipart/alternative; boundary=Apple-Mail-E1F6FCBC-861A-455D-97EC-2F60F7B5C914
Content-Transfer-Encoding: 7bit


--Apple-Mail-E1F6FCBC-861A-455D-97EC-2F60F7B5C914
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

The power cal API is brand new and the documentation has some rough edges.=20=


Im hoping to get some more details out of R&D and will post to the list.=20



Sent from my iPhone

> On Oct 6, 2021, at 7:02 PM, arjan.feta@unifi.it wrote:
>=20
> =EF=BB=BF
> Hi all,
>=20
> I am trying to calibrate a twinrx (rx direction) using uhd_power_cal.py. T=
his script generates a outputfile.pickle. How is this file passed in order t=
o be able to set a power reference level?
>=20
> I deduce it needs the calibration data for setting the power reference lev=
el since I get this error:
>=20
> radio_block.set_rx_power_reference(-4.0,0)
>=20
> Traceback (most recent call last):
>=20
> File "<ipython-input-5-092ddd34efe0>", line 1, in <module>
>=20
> radio_block.set_rx_power_reference(-4.0,0)
>=20
> RuntimeError: RuntimeError: Attempting to set power for key x3xx_pwr_twinr=
x_rx_rx1, but no cal data available!
>=20
> Regards,
>=20
>=20
>=20
> Arjan
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-E1F6FCBC-861A-455D-97EC-2F60F7B5C914
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">The power cal API is brand new and the docu=
mentation has some rough edges.&nbsp;<div><br></div><div>Im hoping to get so=
me more details out of R&amp;D and will post to the list.&nbsp;</div><div><b=
r></div><div><br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"l=
tr"><br><blockquote type=3D"cite">On Oct 6, 2021, at 7:02 PM, arjan.feta@uni=
fi.it wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D=
"ltr">=EF=BB=BF<p>Hi all,</p><p>I am trying to calibrate a twinrx (rx direct=
ion) using uhd_power_cal.py. This script generates a outputfile.pickle. How i=
s this file passed in order to be able to set a power reference level?</p><p=
>I deduce it needs the calibration data for setting the power reference leve=
l since I get this error:</p><p><em><strong>radio_block.set_rx_power_referen=
ce(-4.0,0)</strong></em></p><p><em>Traceback (most recent call last):</em></=
p><p><em>  File "&lt;ipython-input-5-092ddd34efe0&gt;", line 1, in &lt;modul=
e&gt;</em></p><p><em>    radio_block.set_rx_power_reference(-4.0,0)</em></p>=
<p><em>RuntimeError: RuntimeError: Attempting to set power for key x3xx_pwr_=
twinrx_rx_rx1, but no cal data available!</em></p><p>Regards,</p><p><br></p>=
<p>Arjan</p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-E1F6FCBC-861A-455D-97EC-2F60F7B5C914--

--===============4864192579717186114==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4864192579717186114==--
