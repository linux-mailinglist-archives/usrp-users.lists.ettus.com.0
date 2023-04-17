Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 888B06E408F
	for <lists+usrp-users@lfdr.de>; Mon, 17 Apr 2023 09:19:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2009D383CE7
	for <lists+usrp-users@lfdr.de>; Mon, 17 Apr 2023 03:19:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681715961; bh=+cmGrRYb5hG88V1jTEs2kxigS3iWQTw/ZIc2dh2EUEs=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=Ag/2Jyx4/5cAnPBfPgdoMwmy989J1ulDtbvqhIAlvTjcH5AW00oqlaRfm5SXTYm4U
	 WFa2lGqJNEF2zuxV4ehyRTNVwaD/dTj8YmyfBcsFNfUFR4K7rB26DwWdFrIlV2lSn1
	 Hotjos0FzjuE4U5pEnMYG3ZCOfMDAHsahCyCXs8twdRRuHinP0ryCbKzJFv86mHdHR
	 1OwIVvVIolmFgthOZ3vqKe/hVT03QC2u2T24h15a3NpakA8Dihjb5sw5AOKCnLqKoV
	 VdRIULebM5P9YzC1z4XiuxyDdqpxJJXlbREOrYLUnqImc2WvaXwryhqolrgKBVFjgg
	 ktHaXB8iLT46A==
Received: from mail-4324.protonmail.ch (mail-4324.protonmail.ch [185.70.43.24])
	by mm2.emwd.com (Postfix) with ESMTPS id D5180380B29
	for <usrp-users@lists.ettus.com>; Mon, 17 Apr 2023 03:18:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=protonmail.com header.i=@protonmail.com header.b="LF6lJk/C";
	dkim-atps=neutral
Date: Mon, 17 Apr 2023 07:18:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1681715915; x=1681975115;
	bh=6j8NQ3KEdSuvLDwXuZk2vdPXnusJXR26iEPWLSfX7+8=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=LF6lJk/ChYx1ttIfS65lQnHq4FmHW2TIdzsvnZ8R8Q6YjXTfsKEcVHIqFgSOjAeJn
	 6jLeO3cHPx7xrK7fVFeR7ou8yNFbowI/C9kVRR1nh/7S9U3jjtC1g3YfJ128siqTUa
	 0YIVsOfwobph67F7WxOfE9z/iWk37WOkmvJox5xLYNdn7I5vT9kXm97wW4RXW+A/pf
	 OwXdhBPXRCYAM/ewvcRBeRBlQqmb7HDG68ceOH4NB0i8jXGs1nieqfyPTKIqnzyTHf
	 dVDM6Ybyo/98ku7YNAq16WMQdtiNSjr5qL8/MnzatSFBw7Yl1ov7tZIbV55q0BktwZ
	 ftpxGZzZKpcFA==
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <Yu8hM_nJsK57X9mKULaNxA3ktU1VuFvAmcjSBfYHr51gCh0-g_iRiIDS2DEqd407uvQRTpvYDpGrdgSqPj7aAXldawHHt9Jy1pObZ0sSmL8=@protonmail.com>
Feedback-ID: 47010692:user:proton
MIME-Version: 1.0
Message-ID-Hash: SHRHAGZOMPAHDIKDXRDAIKRLE3EYPIDE
X-Message-ID-Hash: SHRHAGZOMPAHDIKDXRDAIKRLE3EYPIDE
X-MailFrom: olo1618@protonmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD in Qt c++ windows
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SHRHAGZOMPAHDIKDXRDAIKRLE3EYPIDE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Olo via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Olo <olo1618@protonmail.com>
Content-Type: multipart/mixed; boundary="===============5662529687119224541=="

This is a multi-part message in MIME format.

--===============5662529687119224541==
Content-Type: multipart/alternative;
 boundary="b1_ijtuWZcGkTSUExs5os7zA2HHdEA2plsZL2dOAyHhDc"

This is a multi-part message in MIME format.

--b1_ijtuWZcGkTSUExs5os7zA2HHdEA2plsZL2dOAyHhDc
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

SGVsbG8sCkltIHRyeWluZyB0byB3b3JrIHdpdGggbXkgQjIxMCBpbiBRdC4gVGhlIHRoaW5nIGlz
IEkgaGF2ZSBhZGRlZCBpbiAucHJvIGZpbGUgKHVzaW5nIHFtYWtlKSBVSEQgKDQuMy4wLjApIGxp
YiBhbmQgaW5jbHVkZSBoZWFkZXIgZmlsZXMgdG8gbXkgcHJvamVjdCB3aXRoIGJvb3N0ICgxLjgy
LjApIGxpYnJhcnkgYW5kIEkgY2FudCBkbyBwcmV0dHkgbXV0Y2ggYW55dGhpbmcuIEkgdHJpZWQg
dG8gbGlzdCBhbGwgZGV2aWNlcyBhbmQgSSBjYW50IGV2ZW50IHNldCB1aGQ6OmRldmljZV9hZGRy
X3QgaGludDsgYmVjYXVzZSBJIGdvdCBleGVwdGlvbiB0aGVyZSAoU3RvcHBlZCBpbiB0aHJlYWQg
MCBieTogRXhjZXB0aW9uIGF0IC4uLiByZWFkIGFjY2VzcyB2aW9sYXRpb24gLi4uKS4gVGhlIGV4
YW1wbGVzIGluIFVIRCBmb2xkZXIgd29ya3MgZ3JlYXQuIFBsZWFzZSBkb250IGJlIG1hZCBhdCBt
ZSBiZWNhdXNlIG9mIG15IGVuZ2xpc2ggb3IgbGFjayBvZiBpbmZvIGJ1dCBJIGZlbGwgbGlrZSBJ
bSByZWFsbHkgbG9zdCBhdCB0aGlzIHBvaW50LgoKbXkgU1c6Ci13aW5kb3dzIDEwCi1RdCA1LjEy
LjIKLW1zdmMyMDE5IHg2NAotdWhkIDQuMy4wLjAKLWJvb3N0IDEuODIuMAoKVGhhbmtzIGZvciBh
bnkgcmVzcG9uc2UuCk9sbwoKU2VudCB3aXRoIFtQcm90b24gTWFpbF0oaHR0cHM6Ly9wcm90b24u
bWUvKSBzZWN1cmUgZW1haWwu

--b1_ijtuWZcGkTSUExs5os7zA2HHdEA2plsZL2dOAyHhDc
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE0
cHg7Ij5IZWxsbyw8L2Rpdj48ZGl2IHN0eWxlPSJmb250LWZhbWlseTogQXJpYWwsIHNhbnMtc2Vy
aWY7IGZvbnQtc2l6ZTogMTRweDsiPkltIDxzcGFuPnRyeWluZyB0byB3b3JrIHdpdGggbXkgQjIx
MCBpbiBRdC4gVGhlIHRoaW5nIGlzIEkgaGF2ZSBhZGRlZCBpbiAucHJvIGZpbGUgKHVzaW5nIHFt
YWtlKSZuYnNwOyBVSEQgKDQuMy4wLjApIGxpYiBhbmQgaW5jbHVkZSBoZWFkZXIgZmlsZXMgdG8g
bXkgcHJvamVjdCB3aXRoIGJvb3N0ICgxLjgyLjApIGxpYnJhcnkgYW5kIEkgY2FudCBkbyBwcmV0
dHkgbXV0Y2ggYW55dGhpbmcuIEkgdHJpZWQgdG8gbGlzdCBhbGwgZGV2aWNlcyBhbmQgSSBjYW50
IGV2ZW50IHNldCA8c3Bhbj51aGQ6OmRldmljZV9hZGRyX3QgaGludDsgYmVjYXVzZSBJIGdvdCBl
eGVwdGlvbiB0aGVyZSAoU3RvcHBlZCBpbiB0aHJlYWQgMCBieTogRXhjZXB0aW9uIGF0IC4uLiBy
ZWFkIGFjY2VzcyB2aW9sYXRpb24gLi4uKS4gVGhlIGV4YW1wbGVzIGluIFVIRCBmb2xkZXIgd29y
a3MgZ3JlYXQuIFBsZWFzZSBkb250IGJlIG1hZCBhdCBtZSBiZWNhdXNlIG9mIG15IGVuZ2xpc2gg
b3IgbGFjayBvZiBpbmZvIGJ1dCBJIGZlbGwgbGlrZSBJbSByZWFsbHkgbG9zdCBhdCB0aGlzIHBv
aW50LiZuYnNwOzwvc3Bhbj48L3NwYW4+PC9kaXY+PGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IEFy
aWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE0cHg7Ij48c3Bhbj48c3Bhbj48YnI+PC9zcGFu
Pjwvc3Bhbj48L2Rpdj48ZGl2IHN0eWxlPSJmb250LWZhbWlseTogQXJpYWwsIHNhbnMtc2VyaWY7
IGZvbnQtc2l6ZTogMTRweDsiPm15IFNXOjwvZGl2PjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBB
cmlhbCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNHB4OyI+LXdpbmRvd3MgMTA8L2Rpdj48ZGl2
IHN0eWxlPSJmb250LWZhbWlseTogQXJpYWwsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTRweDsi
Pi1RdCA1LjEyLjI8L2Rpdj48ZGl2IHN0eWxlPSJmb250LWZhbWlseTogQXJpYWwsIHNhbnMtc2Vy
aWY7IGZvbnQtc2l6ZTogMTRweDsiPi1tc3ZjMjAxOSB4NjQ8L2Rpdj48ZGl2IHN0eWxlPSJmb250
LWZhbWlseTogQXJpYWwsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTRweDsiPi11aGQgNC4zLjAu
MDwvZGl2PjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBBcmlhbCwgc2Fucy1zZXJpZjsgZm9udC1z
aXplOiAxNHB4OyI+LWJvb3N0IDEuODIuMDwvZGl2PjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBB
cmlhbCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNHB4OyI+PGJyPjwvZGl2PjxkaXYgc3R5bGU9
ImZvbnQtZmFtaWx5OiBBcmlhbCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNHB4OyI+VGhhbmtz
IGZvciBhbnkgcmVzcG9uc2UuPC9kaXY+PGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IEFyaWFsLCBz
YW5zLXNlcmlmOyBmb250LXNpemU6IDE0cHg7Ij5PbG88L2Rpdj48ZGl2IHN0eWxlPSJmb250LWZh
bWlseTogQXJpYWwsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTRweDsiPjxicj48L2Rpdj4NCjxk
aXYgY2xhc3M9InByb3Rvbm1haWxfc2lnbmF0dXJlX2Jsb2NrIiBzdHlsZT0iZm9udC1mYW1pbHk6
IEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE0cHg7Ij4NCiAgICA8ZGl2IGNsYXNzPSJw
cm90b25tYWlsX3NpZ25hdHVyZV9ibG9jay11c2VyIHByb3Rvbm1haWxfc2lnbmF0dXJlX2Jsb2Nr
LWVtcHR5Ij4NCiAgICAgICAgDQogICAgICAgICAgICA8L2Rpdj4NCiAgICANCiAgICAgICAgICAg
IDxkaXYgY2xhc3M9InByb3Rvbm1haWxfc2lnbmF0dXJlX2Jsb2NrLXByb3RvbiI+DQogICAgICAg
IFNlbnQgd2l0aCA8YSB0YXJnZXQ9Il9ibGFuayIgaHJlZj0iaHR0cHM6Ly9wcm90b24ubWUvIiBy
ZWw9Im5vb3BlbmVyIG5vcmVmZXJyZXIiPlByb3RvbiBNYWlsPC9hPiBzZWN1cmUgZW1haWwuDQog
ICAgPC9kaXY+DQo8L2Rpdj4NCg==


--b1_ijtuWZcGkTSUExs5os7zA2HHdEA2plsZL2dOAyHhDc--

--===============5662529687119224541==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5662529687119224541==--
