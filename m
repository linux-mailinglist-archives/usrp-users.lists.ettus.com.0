Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0PD/EYDxjmk5GAEAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Fri, 13 Feb 2026 10:40:16 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3836E134955
	for <lists+usrp-users@lfdr.de>; Fri, 13 Feb 2026 10:40:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C25A138620C
	for <lists+usrp-users@lfdr.de>; Fri, 13 Feb 2026 04:40:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1770975613; bh=xVl0FJ24r1MAvLYWnOfTeAqqobgluxyoPZ5OV6dYXkw=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=FMd1Evk0zRiwhcUX+sBdyA/R9qCji8oxrzhTI5ilO2hKJTArB9UolPv8buSlByeNm
	 ZDC2AJf61X3j2SYCM1AQsEDs9pzwd+1kCuKDAy7YXXraGunwsDNMbIEHCS1xBRJMqu
	 EiGuglscTth/uS4ZT27UKUjVuhBR/cz1YMOzdHgluxexfIQ8FYXBWoTPVLG55F4xXM
	 /D6fdkuk4QMkhMKkfiAEYzTqAwM0UXQ7/hRk8ypPxxHO0BSGSEJzkGX/I3eHqXcAVA
	 MDwImABUd/8aLAyFzFOus0udUM4ESmrbBgO0+3RImxolhO1DNgFMRKjQKdTInGz1EY
	 ZTKBjaOD006lw==
Received: from resqmta-a2p-640029.sys.comcast.net (resqmta-a2p-640029.sys.comcast.net [96.103.146.59])
	by mm2.emwd.com (Postfix) with ESMTPS id 880CD38620C
	for <usrp-users@lists.ettus.com>; Fri, 13 Feb 2026 04:39:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=comcast.net header.i=@comcast.net header.b="eu99sTs9";
	dkim-atps=neutral
Received: from resomta-a2p-646964.sys.comcast.net ([96.103.145.236])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 256/256 bits)
	(Client did not present a certificate)
	by resqmta-a2p-640029.sys.comcast.net with ESMTPS
	id qpYtvXWrpHoL5qpeHvpsFB; Fri, 13 Feb 2026 09:39:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1770975581;
	bh=pFGQb50SBnUgQW750CitaAOAZ31/rUDv5yKBPnVt/G8=;
	h=Received:Received:Date:From:To:Message-ID:Subject:MIME-Version:
	 Content-Type:Xfinity-Spam-Result;
	b=eu99sTs9b2fi078rJ3muxFITdZyldTqIgIl4MBC0gaQl82FI4Hd5+DYrbSgeRXShk
	 FGi7nZVJKElwdkUxHqyFlrsPPID0wHg6bylYGU63LhPs2C9AC0QsW068zNWrM/TWAZ
	 xJYd7kRr2+9jVOQo5vfaB8zBd6AfgKh9BkULqv2oFy/dl4pBdIaQhfjnRvvs4/NQaw
	 4VBv3QFmebDbDSv6tX0srx3lnjUwymMQP0mtJD1qnmjjqq+ymFM/yrlvEkw7DkHeUn
	 XA9leTviEwVC8nFwvTeYUN/PgXKGFl9qIfGF4Th3hD/ZYrz6rXm2KO44KbxsUPH6lV
	 AyDhZamjBVsgQ==
Received: from oxapp-ch2g-13o.email.comcast.net ([96.118.135.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 256/256 bits)
	(Client did not present a certificate)
	by resomta-a2p-646964.sys.comcast.net with ESMTPS
	id qpeFvxwRIvJvYqpeGvPBdb; Fri, 13 Feb 2026 09:39:41 +0000
Date: Fri, 13 Feb 2026 03:39:39 -0600 (CST)
To: Cornel Balint <cornel.balint@upt.ro>,
	Cornel Balint via USRP-users <usrp-users@lists.ettus.com>
Message-ID: <340170367.1065690.1770975579813@connect.xfinity.com>
In-Reply-To: <PAXP251MB0496A9CD08E45AEC6C8900489360A@PAXP251MB0496.EURP251.PROD.OUTLOOK.COM>
References: <PAXP251MB0496A9CD08E45AEC6C8900489360A@PAXP251MB0496.EURP251.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.6-Rev83
X-Originating-IP: 2601:243:2401:b4a0:49f4:bfec:8ccb:e179
X-Originating-Port: 23530
X-Originating-Client: open-xchange-appsuite
X-CMAE-Envelope: MS4xfIxNd09OXIQ/i2wuRmvFCu8xxVilehGrT/aUsYkDI1Xd5zrMJ7WDioOVi6qeVrqvvVfiB709tf2OWt6+oqug9DabDtYeXCh4cIQUbk6RD3qPID33totO
 8NDjWGPMv0+5nZ4PncwgR70hgyo9q26OZKuJn3MESuk6b0iT+8UMSjtxPSBpSpP+xWj7MlxgKwtf4nk4NAPpkJVrAZSTioxAkYeRSw4hPwXSXsWE5HFo+14p
 iAxipR5WVdRe7nNMduHsoA==
Message-ID-Hash: NTOBCQ4AXKHELWBZ5LDQZLZATFQ7D7TU
X-Message-ID-Hash: NTOBCQ4AXKHELWBZ5LDQZLZATFQ7D7TU
X-MailFrom: joe1518@comcast.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: NI USRP 2950 FPGA Image
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NTOBCQ4AXKHELWBZ5LDQZLZATFQ7D7TU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: JOE QUATTROCHI via USRP-users <usrp-users@lists.ettus.com>
Reply-To: JOE QUATTROCHI <joe1518@comcast.net>
Content-Type: multipart/mixed; boundary="===============8221575081054153530=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.29 / 15.00];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	R_SPF_NA(0.00)[no SPF record];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	FREEMAIL_REPLYTO(0.00)[comcast.net];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	ARC_NA(0.00)[];
	DKIM_MIXED(0.00)[];
	R_DKIM_REJECT(0.00)[comcast.net:s=20190202a];
	HAS_REPLYTO(0.00)[joe1518@comcast.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_XOIP(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	HAS_X_PRIO_THREE(0.00)[3];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,comcast.net:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[connect.xfinity.com:mid]
X-Rspamd-Queue-Id: 3836E134955
X-Rspamd-Action: no action

--===============8221575081054153530==
Content-Type: multipart/alternative;
	boundary="----=_Part_1065689_295458649.1770975579807"

------=_Part_1065689_295458649.1770975579807
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

fraud

> On 02/12/2026 2:33 AM CST Cornel Balint via USRP-users <usrp-users@lists.=
ettus.com> wrote:
> =20
> =20
> Dear USRP community,
> =20
> I have a NI USRP 2950R. On the board there are two labels: 154573F-02L an=
d F60967. After a wrong FPGA image loading, there is no ethernet connectivi=
ty, and I cannot access the USRP. I tried to load an image using NI Package=
 Manager. I installed NI-USRP and NI-RIO. My USRP connected via PCIE to hos=
t is detected by NI Configuration Utility, and an image is requested. I sel=
ect usrp_x300_fpga_HG image from the folder \Program Files\National Instrum=
ents\NI-USRP\FPGA\ but the Utility program report: =E2=80=9CIncompatible im=
age selected. The device's revision is newer than selected image revision=
=E2=80=9D.
>=20
> I check the internet and I find a suggestion to search an image in the fo=
lder \USRP-RIO\USRP-2950. A folder named URSP-RIO exists but there is no  i=
mages in this folder and no subfolder USRP-2950 exists.
>=20
> Where can I find the appropriate image for my NI USRP 2950R? How to proce=
ed?
>=20
> Maybe helps: On the board there are two labels: 154573F-02L and F60967.
> Thank you very much,
>=20
> Cornel
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>=20

------=_Part_1065689_295458649.1770975579807
MIME-Version: 1.0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!doctype html>
<html>
 <head>=20
  <meta charset=3D"UTF-8">=20
 </head>
 <body>
  <div style=3D"font-size: 12pt; font-family: helvetica,arial,sans-serif; c=
olor: #333333;">
   <span style=3D"font-family: helvetica; font-size: 12pt;">fraud</span>
  </div>=20
  <blockquote type=3D"cite">=20
   <div>
    On 02/12/2026 2:33 AM CST Cornel Balint via USRP-users &lt;usrp-users@l=
ists.ettus.com&gt; wrote:
   </div>=20
   <div>
    &nbsp;
   </div>=20
   <div>
    &nbsp;
   </div>=20
   <div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_Embedde=
dFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt=
; color: #000000;">
    Dear USRP community,
   </div>=20
   <div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_Embedde=
dFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt=
; color: #000000;">
    &nbsp;
   </div>=20
   <div class=3D"elementToProof" style=3D"line-height: 1.38; margin: 0cm 0c=
m 8pt; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: #000000;">
    I have a NI USRP 2950R. On the board there are two labels: 154573F-02L =
and F60967. After a wrong FPGA image loading, there is no ethernet connecti=
vity, and I cannot access the USRP. I tried to load an image using NI Packa=
ge Manager. I installed NI-USRP and NI-RIO. My USRP connected via PCIE to h=
ost is detected by NI Configuration Utility, and an image is requested. I s=
elect usrp_x300_fpga_HG image from the folder \Program Files\National Instr=
uments\NI-USRP\FPGA\ but the Utility program report: =E2=80=9CIncompatible =
image selected. The device's revision is newer than selected image revision=
=E2=80=9D.
   </div>=20
   <div class=3D"elementToProof" style=3D"line-height: 1.38; margin: 0cm 0c=
m 8pt; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: #000000;">
    I check the internet and I find a suggestion to search an image in the =
folder \USRP-RIO\USRP-2950. A folder named URSP-RIO exists but there is no&=
nbsp; images in this folder and no subfolder USRP-2950 exists.
   </div>=20
   <div class=3D"elementToProof" style=3D"line-height: 1.38; margin: 0cm 0c=
m 8pt; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: #000000;">
    Where can I find the appropriate image for my NI USRP 2950R? How to pro=
ceed?
   </div>=20
   <div class=3D"elementToProof" style=3D"line-height: 1.38; margin: 0cm 0c=
m 8pt; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: #000000;">
    Maybe helps: On the board there are two labels: 154573F-02L and F60967.
    <br>Thank you very much,
   </div>=20
   <div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_Embedde=
dFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt=
; color: #000000;">
    Cornel
   </div> _______________________________________________
   <br>USRP-users mailing list -- usrp-users@lists.ettus.com
   <br>To unsubscribe send an email to usrp-users-leave@lists.ettus.com
  </blockquote>
 </body>
</html>
------=_Part_1065689_295458649.1770975579807--

--===============8221575081054153530==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8221575081054153530==--
