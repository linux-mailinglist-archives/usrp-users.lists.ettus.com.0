Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 648E1721074
	for <lists+usrp-users@lfdr.de>; Sat,  3 Jun 2023 16:28:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DAC5F383D11
	for <lists+usrp-users@lfdr.de>; Sat,  3 Jun 2023 10:28:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685802505; bh=lnPEaISLOST9axjlTSoNBKycNU3WlvGBOpaKGG0ljHw=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=SaFhXOO969tZGlUULDGqj+5fJDFHHx97RVH4MijaP2e6Cum9RmxejB843r1vbCyXC
	 ldWHCsnsJKuS/SqJL3tzbkyiKI03KVlUzlg+WE74HLYE0KBthl1afrxLWBwlPbJfoY
	 6SefGA3K7vh4tBWZiawrT/jwja2AOKJU2mJKcqp3DxKR9lZz2PIa+7/mjrlkNjv0O/
	 +1fRbE5f4+8l4MjkFqSWBtI1SR7ehvIocZuak6Hhz6J1LUIAxhrZ2RIOfZMq6nszm0
	 u0x2YPfRhMLTfuZTFMsO1zsg+o8RPXnc5eCQGsdFvIU4Cf9jE/H1xoBSc0a2lRgnnF
	 WVCl+lqNFxg1Q==
Received: from forward102c.mail.yandex.net (forward102c.mail.yandex.net [178.154.239.213])
	by mm2.emwd.com (Postfix) with ESMTPS id D7A543837B6
	for <usrp-users@lists.ettus.com>; Sat,  3 Jun 2023 10:28:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=yandex.ru header.i=@yandex.ru header.b="Mk7nMdt3";
	dkim-atps=neutral
Received: from mail-nwsmtp-mxback-production-main-65.iva.yp-c.yandex.net (mail-nwsmtp-mxback-production-main-65.iva.yp-c.yandex.net [IPv6:2a02:6b8:c0c:1617:0:640:6418:0])
	by forward102c.mail.yandex.net (Yandex) with ESMTP id 5B24A6002C
	for <usrp-users@lists.ettus.com>; Sat,  3 Jun 2023 17:27:59 +0300 (MSK)
Received: from mail.yandex.ru (2a02:6b8:c0c:9687:0:640:4783:0 [2a02:6b8:c0c:9687:0:640:4783:0])
	by mail-nwsmtp-mxback-production-main-65.iva.yp-c.yandex.net (mxback/Yandex) with HTTP id uRRWjH1W64Y0-WuEz8PyD;
	Sat, 03 Jun 2023 17:27:59 +0300
X-Yandex-Fwd: 2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail; t=1685802479;
	bh=aKdHtljX1SvUns5jcUgJgzDcdBAkRdBZbLY1dwnmH7Q=;
	h=Date:Subject:To:From:Message-Id;
	b=Mk7nMdt3PzCOY8/wjXF0yU6BueGcnyly4dPF03AgTpyBjkoJ23KdA/mPqvqNppEoc
	 rX5IHhjp4mqeXxg/3dAfB/kiaT0K8z7lNmWAtWGQQVXXz87kqwzm8KHr90MBuRj9N3
	 oRHlDoql0jnDjGX2uI4r1rN+XtBLAq51mnrJM9yM=
Authentication-Results: mail-nwsmtp-mxback-production-main-65.iva.yp-c.yandex.net; dkim=pass header.i=@yandex.ru
Received: from uvnkinrcvrcgfhhn.vla.yp-c.yandex.net (uvnkinrcvrcgfhhn.vla.yp-c.yandex.net [2a02:6b8:c0f:5c91:0:640:9b11:0])
	by mail-nwsmtp-mxback-production-main-24.vla.yp-c.yandex.net (mxback/Yandex) with HTTP id 6RRtXE1W78c0-7j7CZTuw
	for <nikitos1550@yandex.ru>; Sat, 03 Jun 2023 17:27:43 +0300
Received: by uvnkinrcvrcgfhhn.vla.yp-c.yandex.net with HTTP;
	Sat, 03 Jun 2023 17:27:43 +0300
From: Nikita Orlov <nikitos1550@yandex.ru>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Sat, 03 Jun 2023 17:27:58 +0300
Message-Id: <1310011685802077@mail.yandex.ru>
Message-ID-Hash: YD7OQMKATSYHQ5TWGQ5WZFOZUT6BOK6N
X-Message-ID-Hash: YD7OQMKATSYHQ5TWGQ5WZFOZUT6BOK6N
X-MailFrom: nikitos1550@yandex.ru
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] B210 GPSDO extension panel, gps_lock usage.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YD7OQMKATSYHQ5TWGQ5WZFOZUT6BOK6N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7034537108803879174=="

--===============7034537108803879174==
Content-Transfer-Encoding: base64
Content-Type: text/html; charset=utf-8

PGRpdj5IZWxsbyE8L2Rpdj48ZGl2PsKgPC9kaXY+PGRpdj5JIGhhdmUgVVNSUCBCMjEwIGJvYXJk
IGFuZCBJIGJvdWdodCBzb21lIDEwTUh6IE9DWE8gdGhhdCBjYW4gYmUgaW5zdGFsbGVkIGludG8g
R1BTRE8gcGFuZWwgb24gdGhlIEIyMTAgcGNiYS48L2Rpdj48ZGl2PkkgYnJpZWZseSBjaGVja2Vk
IG15IE9YQ08gaXQgaGFzIHNvbWUgTUNVIChjaGluZXNlIFNUQyksIHRoYXQganVzdCBzZW5kOjwv
ZGl2PjxkaXY+PGRpdj4kR1BHR0EsMDAyODExLjA1OCwwMDAwLjAwMDAsTiwwMDAwMC4wMDAwLEUs
MCwwMCwsLE0sLCwsMDAwMCowOTwvZGl2PjxkaXY+ZWFjaCBvbmUgc2Vjb25kLjwvZGl2PjxkaXY+
dGhlcmUgaXMgMTBNSHogb3V0cHV0IG9uIHBpbiAyIChhY2NvcmRpbmcgPGEgaHJlZj0iaHR0cHM6
Ly9maWxlcy5ldHR1cy5jb20vc2NoZW1hdGljcy9iMjAwL2IyMTAucGRmIiByZWw9Im5vb3BlbmVy
IG5vcmVmZXJyZXIiIHRhcmdldD0iX2JsYW5rIj5odHRwczovL2ZpbGVzLmV0dHVzLmNvbS9zY2hl
bWF0aWNzL2IyMDAvYjIxMC5wZGY8L2E+wqBzY2hlbWF0aWMpLCBidXQgcGluIDMgKGdwc19sb2Nr
KTwvZGl2PjxkaXY+aXMgbm90IGNvbm5lY3RlZCBhbnl3aGVyZSBvbiBPQ1hPIHBjYmEsIHNvIGl0
IGFsd2F5cyAwLiBBbHNvIEkgZGlkbid0IGNoZWNrIGFueXRoaW5nIGFib3V0IFBQUy48L2Rpdj48
ZGl2PsKgPC9kaXY+PGRpdj5BcyBJIGNhbiBzZWUgdGhlIHNjaGVtYXRpY3MsIHRoaXMgc2lnbmFs
IG5vdCBvbmx5IGZpcmUgY29ycmVzcG9uZGluZyBMRUQsIGJ1dCBhbHNvIGNvbm5lY3RlZCB0byBz
b21lIEZQR0EgcGluLjwvZGl2PjxkaXY+wqA8L2Rpdj48ZGl2Pk15IHF1ZXN0aW9uIGlzOiBpcyBp
dCBlbm91Z2ggZm9yIGRlc2NyaWJlZCBPQ1hPIGRldmljZSB0aGF0IGl0IGdpdmVzIDEwTUh6IG91
dHB1dCAoYW5kIEkgc3RhcnQgdWhkIGFwcGxpY2F0aW9ucyB3aXRoIGFyZyBjbG9ja19zb3VyY2U9
Z3BzZG8pPC9kaXY+PGRpdj5hbmQgZG9lc24ndCBwdWxsdXAgZ3BzX2xvY2sgcGluIG9yIGdwc19s
b2NrIHBpbiBpcyBzb21laG93IG1hdHRlcnMgZm9yIHNvZnR3YXJlIGFuZCBJIHNob3VsZCBwYXRj
aCBzb2Z0d2FyZSBvciBwdWxsIHVwIHRoaXMgcGluPzwvZGl2PjwvZGl2PjxkaXY+LS3CoDwvZGl2
PjxkaXY+TmlraXRhIE9ybG92PC9kaXY+PGRpdj5Ta3lwZTogbmlrX3N0ZXQ8L2Rpdj48ZGl2PlFR
OiAyNzE3ODQ2MDgzPC9kaXY+PGRpdj7CoDwvZGl2Pg==
--===============7034537108803879174==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7034537108803879174==--
