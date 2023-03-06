Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D1D6ABA80
	for <lists+usrp-users@lfdr.de>; Mon,  6 Mar 2023 10:57:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 16B1A3852DF
	for <lists+usrp-users@lfdr.de>; Mon,  6 Mar 2023 04:57:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678096630; bh=7WaNd4MxEcSnEsQ1T7hVmpJHHZ3zDxZ5KaA3zcyth7k=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=sE8hIP36nQmLm48SkOqnguRSpdrk7H4Bj+o3G7db3W5ar3dLHrIi34ObfRc67bm1e
	 KPAnQAP1pwhEVZPkzh+doCmL4d2EEvwDLiObGC+0wcnp1UX21EpPAatmK1ZSw8ZvlX
	 8xHBHuvzvDCIFT/O4XuUKrXTixabkT6JOVe43ISqgsH7ksGP98/P5ZehzSbxiZ0uCn
	 c+hAhnZUQBmDWvd81FuN+EcD5joP9O7KcCAlRCkpgojQ/cINN8q2s28lbacLzRjOpl
	 I+csd8L/S6UtYMsSPhigfyUuDzMwq36SEjFP75Ykc0zHrir6gMB0AIHEtuk0Bb31z/
	 CqCbpQUlKs/Ig==
Received: from mail-4324.protonmail.ch (mail-4324.protonmail.ch [185.70.43.24])
	by mm2.emwd.com (Postfix) with ESMTPS id 1B8293852DF
	for <usrp-users@lists.ettus.com>; Mon,  6 Mar 2023 04:57:03 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=protonmail.com header.i=@protonmail.com header.b="oA+e2LVZ";
	dkim-atps=neutral
Date: Mon, 06 Mar 2023 09:56:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1678096622; x=1678355822;
	bh=8EnKU53MWb+6gSiKfMQp7VZTYwOnfqloAXms76xD/wk=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=oA+e2LVZsOV2kuES3Xaa1unN03Q0xrVxBRcBRVXK/DX8X2r+WM1RfovOAQDlKCYmf
	 g18A6FAXKoHZLqBK8HtcTvUjn2Bj2A3LLPJV6jjB2uXNF83W753fcjbXIxfdzwGuGe
	 c3zBh1BXv1aJqf30nVL7h6AKUuAu0qfx12zQs191qlB9/1rjjR/qiOxoblL0J5VAQQ
	 +cFEjCF2Y3gIoibM1BcKIs0TFMtKtEUmfbxYsNtbyP7eGdSLg0sub7lkFmR/NwjRk2
	 F1CGTaN1Pgw9kBpbsVVnAY7vSE99RfGcjQColIdSCwZZj5QzKErrnhrLX2Df7xMH3u
	 +cuQQF8bqRS7Q==
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <8NUNVvJOOiemNjxv7ueYH0Y-xzwLALqCr4V1LAO3UKpqh0Ziv5SE5eF4hoAEt3mXKZ313vV_jLOTO8o8TIygAQjpwGICYqVA6a_oT8J7ty4=@protonmail.com>
Feedback-ID: 47010692:user:proton
MIME-Version: 1.0
Message-ID-Hash: LOADPTS5EHARZYYQPL2S2MQ7RGSIQ3KK
X-Message-ID-Hash: LOADPTS5EHARZYYQPL2S2MQ7RGSIQ3KK
X-MailFrom: olo1618@protonmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Using 10 Gigabit Ethernet for USRP X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LOADPTS5EHARZYYQPL2S2MQ7RGSIQ3KK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Olo via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Olo <olo1618@protonmail.com>
Content-Type: multipart/mixed; boundary="===============3619773222423904953=="

This is a multi-part message in MIME format.

--===============3619773222423904953==
Content-Type: multipart/alternative;
 boundary="b1_0kCcIKFFu15gwgmaxkiSaZiK8SCoMFD2uWKWIdFuRg"

This is a multi-part message in MIME format.

--b1_0kCcIKFFu15gwgmaxkiSaZiK8SCoMFD2uWKWIdFuRg
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

SGVsbG8sCnBsZWFzZSBJIHdhbnQgdG8ga25vdyBpZiBpdCBpcyBwb3NzaWJsZSB0byBjb25uZWN0
IFVTUlAgWDMxMCB3aXRoIHR3byBUd2luUlggdG8gbXkgbm90ZWJvb2sgdGhyb3VnaHQgZHVhbCAx
MEdiRSB0byB0aHVuZGVyYm9sdCBhZGFwdGVyIGZyb20gU3RhcnRlY2ggKHByb2R1Y3QgaW4gbGlu
ayk6Cmh0dHBzOi8vd3d3LnN0YXJ0ZWNoLmNvbS9lbi11cy9uZXR3b3JraW5nLWlvL2JuZHRiMjEw
Z3NmcAoKSXQgdXNlcyBQQ0llIENhcmQgd2l0aCBJbnRlbCA4MjU5OSBjaGlwc2V0IHdoaWNoIGlz
IHN1aXRhYmxlIGZvciB0aGlzIHB1cnBvdXNlIChtZW50aW9uZWQgaW4gdGhpcyBsaW5rcyk6Cmh0
dHBzOi8vZmlsZXMuZXR0dXMuY29tL21hbnVhbC9wYWdlX3VzcnBfeDN4MC5odG1sCgphbmQKaHR0
cHM6Ly9rYi5ldHR1cy5jb20vVVNSUC0yOTc0I0Nob29zaW5nX2FuX0ludGVyZmFjZQpUaGFuayB5
b3UgZm9yIHlvdXIgcmVwbHku

--b1_0kCcIKFFu15gwgmaxkiSaZiK8SCoMFD2uWKWIdFuRg
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE0
cHg7Ij48L2Rpdj48c3BhbiBzdHlsZT0ibGluZS1oZWlnaHQ6MS41Ij5IZWxsbyw8L3NwYW4+PGRp
diBzdHlsZT0ibGluZS1oZWlnaHQ6MS41Ij5wbGVhc2UgSSB3YW50IHRvIGtub3cgaWYgaXQgaXMg
cG9zc2libGUgdG8gY29ubmVjdCBVU1JQIFgzMTAgd2l0aCB0d28gVHdpblJYIHRvIG15IG5vdGVi
b29rIHRocm91Z2h0IGR1YWwgMTBHYkUgdG8gdGh1bmRlcmJvbHQgYWRhcHRlciBmcm9tIFN0YXJ0
ZWNoIChwcm9kdWN0IGluIGxpbmspOjwvZGl2PjxkaXYgc3R5bGU9ImxpbmUtaGVpZ2h0OjEuNSI+
PHNwYW4+PGEgaHJlZj0iaHR0cHM6Ly93d3cuc3RhcnRlY2guY29tL2VuLXVzL25ldHdvcmtpbmct
aW8vYm5kdGIyMTBnc2ZwIiByZWw9Im5vcmVmZXJyZXIgbm9mb2xsb3cgbm9vcGVuZXIiIHRhcmdl
dD0iX2JsYW5rIiBzdHlsZT0iY29sb3I6dmFyKC0taW50ZXJhY3Rpb24tbm9ybSk7dGV4dC1kZWNv
cmF0aW9uOnVuZGVybGluZTtjdXJzb3I6cG9pbnRlciI+aHR0cHM6Ly93d3cuc3RhcnRlY2guY29t
L2VuLXVzL25ldHdvcmtpbmctaW8vYm5kdGIyMTBnc2ZwPC9hPjwvc3Bhbj48YnI+PC9kaXY+PGRp
diBzdHlsZT0ibGluZS1oZWlnaHQ6MS41Ij48YnI+PC9kaXY+PGRpdiBzdHlsZT0ibGluZS1oZWln
aHQ6MS41Ij5JdCB1c2VzJm5ic3A7PHNwYW4gc3R5bGU9ImNvbG9yOnJnYigzNywgNTUsIDcwKTtm
b250LWZhbWlseTomcXVvdDtvcGVuIHNhbnMmcXVvdDssICZxdW90O2hlbHZldGljYSBuZXVlJnF1
b3Q7LCBIZWx2ZXRpY2EsIEFyaWFsLCBzYW5zLXNlcmlmO2ZvbnQtc2l6ZToxNC40cHg7dGV4dC1h
bGlnbjpsZWZ0O2JhY2tncm91bmQtY29sb3I6cmdiKDI1NSwgMjU1LCAyNTUpO2Rpc3BsYXk6aW5s
aW5lICFpbXBvcnRhbnQiPlBDSWUgQ2FyZCB3aXRoIEludGVsIDgyNTk5IGNoaXBzZXQgd2hpY2gg
aXMgc3VpdGFibGUgZm9yIHRoaXMgcHVycG91c2UgKG1lbnRpb25lZCBpbiB0aGlzIGxpbmtzKTo8
L3NwYW4+PC9kaXY+PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS41Ij48c3BhbiBzdHlsZT0iY29s
b3I6cmdiKDM3LCA1NSwgNzApO2ZvbnQtZmFtaWx5OiZxdW90O29wZW4gc2FucyZxdW90OywgJnF1
b3Q7aGVsdmV0aWNhIG5ldWUmcXVvdDssIEhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWY7Zm9u
dC1zaXplOjE0LjRweDt0ZXh0LWFsaWduOmxlZnQ7YmFja2dyb3VuZC1jb2xvcjpyZ2IoMjU1LCAy
NTUsIDI1NSk7ZGlzcGxheTppbmxpbmUgIWltcG9ydGFudCI+PHNwYW4+PGEgaHJlZj0iaHR0cHM6
Ly9maWxlcy5ldHR1cy5jb20vbWFudWFsL3BhZ2VfdXNycF94M3gwLmh0bWwiIHJlbD0ibm9yZWZl
cnJlciBub2ZvbGxvdyBub29wZW5lciIgdGFyZ2V0PSJfYmxhbmsiIHN0eWxlPSJjb2xvcjp2YXIo
LS1pbnRlcmFjdGlvbi1ub3JtKTt0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO2N1cnNvcjpwb2lu
dGVyIj5odHRwczovL2ZpbGVzLmV0dHVzLmNvbS9tYW51YWwvcGFnZV91c3JwX3gzeDAuaHRtbDwv
YT48L3NwYW4+PGJyPjwvc3Bhbj48L2Rpdj48ZGl2IHN0eWxlPSJsaW5lLWhlaWdodDoxLjUiPjxz
cGFuIHN0eWxlPSJjb2xvcjpyZ2IoMzcsIDU1LCA3MCk7Zm9udC1mYW1pbHk6JnF1b3Q7b3BlbiBz
YW5zJnF1b3Q7LCAmcXVvdDtoZWx2ZXRpY2EgbmV1ZSZxdW90OywgSGVsdmV0aWNhLCBBcmlhbCwg
c2Fucy1zZXJpZjtmb250LXNpemU6MTQuNHB4O3RleHQtYWxpZ246bGVmdDtiYWNrZ3JvdW5kLWNv
bG9yOnJnYigyNTUsIDI1NSwgMjU1KTtkaXNwbGF5OmlubGluZSAhaW1wb3J0YW50Ij5hbmQmbmJz
cDs8L3NwYW4+PC9kaXY+PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS41Ij48c3Bhbj48YSBocmVm
PSJodHRwczovL2tiLmV0dHVzLmNvbS9VU1JQLTI5NzQjQ2hvb3NpbmdfYW5fSW50ZXJmYWNlIiBy
ZWw9Im5vcmVmZXJyZXIgbm9mb2xsb3cgbm9vcGVuZXIiIHRhcmdldD0iX2JsYW5rIiBzdHlsZT0i
Y29sb3I6dmFyKC0taW50ZXJhY3Rpb24tbm9ybSk7dGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTtj
dXJzb3I6cG9pbnRlciI+aHR0cHM6Ly9rYi5ldHR1cy5jb20vVVNSUC0yOTc0I0Nob29zaW5nX2Fu
X0ludGVyZmFjZTwvYT48L3NwYW4+PGJyPjwvZGl2PjxkaXYgc3R5bGU9ImxpbmUtaGVpZ2h0OjEu
NSI+PGJyPjwvZGl2PjxzcGFuIHN0eWxlPSJsaW5lLWhlaWdodDoxLjUiPlRoYW5rIHlvdSBmb3Ig
eW91ciByZXBseS48L3NwYW4+PGRpdiBjbGFzcz0icHJvdG9ubWFpbF9zaWduYXR1cmVfYmxvY2si
IHN0eWxlPSJmb250LWZhbWlseTogQXJpYWwsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTRweDsi
PjxkaXYgY2xhc3M9InByb3Rvbm1haWxfc2lnbmF0dXJlX2Jsb2NrLXByb3RvbiI+DQogICAgPC9k
aXY+DQo8L2Rpdj4NCg==


--b1_0kCcIKFFu15gwgmaxkiSaZiK8SCoMFD2uWKWIdFuRg--

--===============3619773222423904953==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3619773222423904953==--
