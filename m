Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 999E237A7C8
	for <lists+usrp-users@lfdr.de>; Tue, 11 May 2021 15:35:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A12CA384210
	for <lists+usrp-users@lfdr.de>; Tue, 11 May 2021 09:35:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=external.thalesgroup.com header.i=@external.thalesgroup.com header.b="jJmlHYkJ";
	dkim-atps=neutral
Received: from thsbbfxrt02p.thalesgroup.com (thsbbfxrt02p.thalesgroup.com [192.93.158.29])
	by mm2.emwd.com (Postfix) with ESMTPS id 2061A384293
	for <usrp-users@lists.ettus.com>; Tue, 11 May 2021 09:34:58 -0400 (EDT)
Received: from thsbbfxrt02p.thalesgroup.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 4Fff6n6GwXzJqF1;
	Tue, 11 May 2021 15:34:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=external.thalesgroup.com; s=xrt20181201; t=1620740097;
	bh=qkEAA3XPZxrmbIkuHCVs9fPMwt8/84VBGkhAnXr1pRc=;
	h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Transfer-Encoding:MIME-Version:From;
	b=jJmlHYkJvQ3dpIIqIAsAVlmFOU/C/90g44xKR8lGC6wRYjfnMQmAnDPyco8cqeIZQ
	 tmdBq+l92xVZ/4k3MxbnvNT0ETpX34gvzLrvE1dUV/z6q8p0v/aa2sUn8EWweeqSZr
	 PfsRSBwZpZb4sPw6lMRrDMEMLj81KR473VOyi1Jqznf3e78xzufJCPbLDEfLbApx3d
	 m0ifyKMGyaSWoXScGQOgzmmz6dtXWj1ugAmCNSCaMCfqANDb8vSpCf9cXxb7tuHEVS
	 roUzKUm2k7BfStwMc1eUBxEf4YY7qVJM5R76Ldg8pGjbh1aUOzJBh/2xj4u4oxwYYT
	 4RtWfwu6UvU3g==
To: =?iso-8859-1?Q?Marcus_M=FCller?= <mueller@kit.edu>,
	"discuss-gnuradio@gnu.org" <discuss-gnuradio@gnu.org>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Reference indefined
Thread-Index: AddGV3R8o1DlNYlKRB6UZy+LHtwFhP//5AaA///a8lD//5qOAA==
Date: Tue, 11 May 2021 13:34:56 +0000
Message-ID: <7c28722f0d0c43c9ad3f1a564fae4b86@external.thalesgroup.com>
References: <0c89473ac31d4a3b97c2a20cc11c54ff@external.thalesgroup.com>
 <20b1a5fa-0ed1-a7a4-6e23-4d2ebd658b50@kit.edu>
 <c31f00abc165454b8105b11eca161217@external.thalesgroup.com>
In-Reply-To: <c31f00abc165454b8105b11eca161217@external.thalesgroup.com>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-pmwin-version: 4.0.3, Antivirus-Engine: 3.80.1, Antivirus-Data: 5.83
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
Message-ID-Hash: UQQLEUCK45XUR2Q6R4AV2G6OF7VOQBHD
X-Message-ID-Hash: UQQLEUCK45XUR2Q6R4AV2G6OF7VOQBHD
X-MailFrom: frederique.courant@external.thalesgroup.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reference indefined
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UQQLEUCK45XUR2Q6R4AV2G6OF7VOQBHD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: COURANT Frederique - Contractor via USRP-users <usrp-users@lists.ettus.com>
Reply-To: COURANT Frederique - Contractor <frederique.courant@external.thalesgroup.com>
Content-Transfer-Encoding: quoted-printable

I have tried to add ${GNURADIO_BLOCKS_INCLUDE_DIRS} and ${GR_BLOCKS_INCLUDE=
_DIRS} without any success.

Anyone could give an example of CMakeList that use uhd and gnuradio module =
please ?

Thanks.

Regards.

Fred

-----Message d'origine-----
De=A0: Discuss-gnuradio <discuss-gnuradio-bounces+frederique.courant=3Dexte=
rnal.thalesgroup.com@gnu.org> De la part de COURANT Frederique - Contractor
Envoy=E9=A0: mardi 11 mai 2021 13:55
=C0=A0: Marcus M=FCller <mueller@kit.edu>; discuss-gnuradio@gnu.org
Objet=A0: RE: Reference indefined

Sorry I would like to say 3.7.11.

If I have understand I need to add ${GNURADIO_BLOCKS_INCLUDE_DIRS} in my CM=
akeFiles that's all ?

Thank you very much for your help.

Regards.

Fred

-----Message d'origine-----
De=A0: Discuss-gnuradio <discuss-gnuradio-bounces+frederique.courant=3Dexte=
rnal.thalesgroup.com@gnu.org> De la part de Marcus M=FCller Envoy=E9=A0: ma=
rdi 11 mai 2021 13:39 =C0=A0: discuss-gnuradio@gnu.org Objet=A0: Re: Refere=
nce indefined

Hi Fred,

indeed, your link_directories need to include the BLOCKS library, not just =
RUNTIME, when you're linking against any code in gr::blocks.

I might be a bit behind on current GNU Radio developments, but GNU Radio 3.=
11 isn't even in development yet, far as I can tell. Is it possible you're =
referring to 3.10.0.git?

Best regards,
Marcus

On 11.05.21 13:30, COURANT Frederique - Contractor wrote:
> Hello Users,
>=20
> =A0
>=20
> I try to develop my own program in C++ with UHD3.14 and gnuradio 3.11.
>=20
> I have no problem to compile blocks that are including in uhd but when=20
> I want to compile with a sig_source or magphase_to_complex blocks =A0
> that are including in Gnuradio blocks I have the following error :
>=20
> Main.cpp(.text+0x1351) : r=E9f=E9rence indefinite vers "=A0
> gr::analog::sig_source_c::make(double, gr::analog::gr_waveform_t, double =
int) "
>=20
> Main.cpp(.text+0x1351) : r=E9f=E9rence indefinite vers "=A0
> gr::blocks::magphase_to_complex::make(double, gr::analog::gr_waveform_t, =
double int) "
>=20
> =A0
>=20
> In think I forgot something in my CMakeFiles, I have
> include_directories(${GNURADIO_ALL_INCLUDE_DIRS}) and
> link_directories(${GNURADIO_RUNTIME_LIBRARY_DIRS})
>=20
> =A0
>=20
> Someone could help me please or give an example of CMakeFiles that are=20
> using UHD and Gnuradio for compile a program.
>=20
> =A0
>=20
> Thanks for your help.
>=20
> =A0
>=20
> Regards.
>=20
> =A0
>=20
> Fred
>=20
> =A0
>=20

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
