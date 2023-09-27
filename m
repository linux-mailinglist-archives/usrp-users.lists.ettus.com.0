Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FAF17AFFA8
	for <lists+usrp-users@lfdr.de>; Wed, 27 Sep 2023 11:16:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 820E7384BFB
	for <lists+usrp-users@lfdr.de>; Wed, 27 Sep 2023 05:16:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695806160; bh=XxUVKKtcuq+5F5wPCpRnb1ojgk6Sl1nP37iPmxPtlQc=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=qlmIerPmCcHDJm0aAcMTMRE74CQTtg+vCzS/Dc2r/0XGOuzG/E6636cerekITLNC5
	 axcpJAmDRqZ4irtRHhTu0Vnc9wRYm2GfR/Rw50N9qXq9OpmaAEDbNl5IoBYMBD1sDM
	 GpvY/osH59ykHg6CmvEp1w4p4m738IbW6v65h2JStit8OUA1xfm6QowK4loXsA6ukO
	 84Qzw1LfpeFxZrsH22aul48PyRvwSm3+71B1wHBmzdTix81tJY6CcNEa/Vy37Z6v3v
	 rePIDvp9J3zl2MNueJnCPFo3KpmOcubHT5FqErS4JmvDMWuROEnhZAIzQRkUnStosT
	 U7ewz7TVFTZTA==
Received: from mail-40135.protonmail.ch (mail-40135.protonmail.ch [185.70.40.135])
	by mm2.emwd.com (Postfix) with ESMTPS id 85EAE384BFB
	for <usrp-users@lists.ettus.com>; Wed, 27 Sep 2023 05:15:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=protonmail.com header.i=@protonmail.com header.b="tYz7oIu5";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1695806153; x=1696065353;
	bh=5qv3BZvgAgQix+yJnfEcgj7H0VIIXkZUZBgggQbx+tw=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=tYz7oIu5oTDNxElgq99ugdNQzWLMkDirpOEtgg9tTnktGZFsIT6wY7s9y2mDlWIbX
	 4otWpG6E9Lnri2Gi1rZAceu6iO1Lx+dXKKB/zFfYwwsqZl5boE7xlvXxsxRrvUZV4J
	 nDO17jgusPYd3hRWDU2RvBHR6QI0Xf2DmqTDDZs3pHgZu89DglRSyVgJ+3f6uIMiUF
	 AOlQi5S1PzndqYWLEUvhLU0YWT3InoNk4f1/f/tgA6/ZlNVvZPQyF7H0RTz8m8Cubf
	 9HWSapvMM731iBp/XUQ1O38l6lIPH+VK/fba4nkk380F0emC0U1P3DrQaiYdXw/eVj
	 VrvOA7nBmEBoA==
Date: Wed, 27 Sep 2023 09:15:41 +0000
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <zP5lDefL4PI9LPxwTGSK8UXVw3M0v1GMJGaTNXYu0icvrj4DczzMUJDcogRl9IrqJ4x2_oQRfHftMRAaL-PmItJupVbQlvjBYz213OUciJU=@protonmail.com>
Feedback-ID: 47010692:user:proton
MIME-Version: 1.0
Message-ID-Hash: OJT2ZRT32ENWXXTPYOUKPYIJHSO6S7GG
X-Message-ID-Hash: OJT2ZRT32ENWXXTPYOUKPYIJHSO6S7GG
X-MailFrom: olo1618@protonmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] 10Gb Eth to X310 via PCIe Card Expansion Systems
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OJT2ZRT32ENWXXTPYOUKPYIJHSO6S7GG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Olo via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Olo <olo1618@protonmail.com>
Content-Type: multipart/mixed; boundary="===============1799113733085030681=="

This is a multi-part message in MIME format.

--===============1799113733085030681==
Content-Type: multipart/alternative;
 boundary="b1_Vxv0s88TrNSp3qdLsbLkvGkEgh8qiMG0vEfETUtyxg"

This is a multi-part message in MIME format.

--b1_Vxv0s88TrNSp3qdLsbLkvGkEgh8qiMG0vEfETUtyxg
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

SGVsbG8sCkkgd2FudCB0byBjb25uZWN0IFgzMTAgd2l0aCBteSBsYXB0b3AgdGhyb3VnaCAxMEdi
IGV0aCBjb25uZWN0aW9uIGFuZCBJIHdhbnQgdG8gYXNrOgoKLSBJZiBJbnRlbCBYNzEwIChEdWFs
IDEwR2IgY2FyZCkgd2l0aCBTb25udHRlY2ggRWNobyBFeHByZXNzIFNFIEkgKFBDSWUgQ2FyZCBF
eHBhbnNpb24gU3lzdGVtcykgKGh0dHBzOi8vd3d3LnNvbm5ldHRlY2guY29tL3Byb2R1Y3QvZWNo
by1leHByZXNzLXNlMS10YjMvb3ZlcnZpZXcuaHRtbCkgd2lsbCB3b3JrIChvciBpZiB5b3UgaGF2
ZSBhbnkgZXhwZXJpZW5jZSB3aXRoIGl0KS4KLSBXaGljaCBjYXJkIGRvIHlvdSByZWNvbW1lbmQg
bWUgdG8gdXNlPyAoSW4gZG9jdW1lbnRhdGlvbiBmb3IgMTBHIGV0aCBjb25uZWN0aW9uIChodHRw
czovL2ZpbGVzLmV0dHVzLmNvbS9tYW51YWwvcGFnZV91c3JwX3gzeDAuaHRtbCkgaXQgaXMgcmVj
b21tZW5kZWQgdG8gdXNlIEludGVsIFg1MjAtREEyIGNhcmQgYnV0IHlvdSBvbmx5c2VsbCBvbiB5
b3VyIHdlYnNpdGUgWDcxMC1EQTIgY2FyZCApLgoKVGhhbmsgeW91IGZvciB5b3VyIGFuc3dlYXIu
Ck9sbw==

--b1_Vxv0s88TrNSp3qdLsbLkvGkEgh8qiMG0vEfETUtyxg
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE0
cHg7Ij5IZWxsbyw8L2Rpdj48ZGl2IHN0eWxlPSJmb250LWZhbWlseTogQXJpYWwsIHNhbnMtc2Vy
aWY7IGZvbnQtc2l6ZTogMTRweDsiPkkgd2FudCB0byBjb25uZWN0IFgzMTAgd2l0aCBteSBsYXB0
b3AgdGhyb3VnaCAxMEdiIGV0aCBjb25uZWN0aW9uIGFuZCBJIHdhbnQgdG8gYXNrOjwvZGl2Pjxk
aXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBBcmlhbCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNHB4
OyI+PG9sPjxsaT5JZiA8Yj5JbnRlbDwvYj4gPGI+WDcxMDwvYj4mbmJzcDsoRHVhbCAxMEdiIGNh
cmQpIHdpdGggPGI+U29ubnR0ZWNoIEVjaG8gRXhwcmVzcyBTRSBJPC9iPiZuYnNwOyg8c3Bhbj5Q
Q0llIENhcmQgRXhwYW5zaW9uIFN5c3RlbXM8L3NwYW4+KSAoPHNwYW4+PGEgdGFyZ2V0PSJfYmxh
bmsiIHJlbD0ibm9yZWZlcnJlciBub2ZvbGxvdyBub29wZW5lciIgaHJlZj0iaHR0cHM6Ly93d3cu
c29ubmV0dGVjaC5jb20vcHJvZHVjdC9lY2hvLWV4cHJlc3Mtc2UxLXRiMy9vdmVydmlldy5odG1s
Ij5odHRwczovL3d3dy5zb25uZXR0ZWNoLmNvbS9wcm9kdWN0L2VjaG8tZXhwcmVzcy1zZTEtdGIz
L292ZXJ2aWV3Lmh0bWw8L2E+PC9zcGFuPikgd2lsbCB3b3JrIChvciBpZiB5b3UgaGF2ZSBhbnkg
ZXhwZXJpZW5jZSB3aXRoIGl0KS48L2xpPjxsaT5XaGljaCBjYXJkIGRvIHlvdSByZWNvbW1lbmQg
bWUgdG8gdXNlPyAoSW4gZG9jdW1lbnRhdGlvbiBmb3IgMTBHIGV0aCBjb25uZWN0aW9uICg8c3Bh
bj48YSB0YXJnZXQ9Il9ibGFuayIgcmVsPSJub3JlZmVycmVyIG5vZm9sbG93IG5vb3BlbmVyIiBo
cmVmPSJodHRwczovL2ZpbGVzLmV0dHVzLmNvbS9tYW51YWwvcGFnZV91c3JwX3gzeDAuaHRtbCI+
aHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vbWFudWFsL3BhZ2VfdXNycF94M3gwLmh0bWw8L2E+PC9z
cGFuPikgaXQgaXMgcmVjb21tZW5kZWQgdG8gdXNlIDxiPkludGVsPC9iPiZuYnNwOzxiPlg1MjA8
c3BhbiBzdHlsZT0iZGlzcGxheTogaW5saW5lICFpbXBvcnRhbnQ7IGJhY2tncm91bmQtY29sb3I6
IHJnYigyNTUsIDI1NSwgMjU1KTsiPi1EQTI8L3NwYW4+PC9iPiBjYXJkIGJ1dCB5b3UmbmJzcDs8
c3BhbiBzdHlsZT0iZGlzcGxheTogaW5saW5lICFpbXBvcnRhbnQ7IGJhY2tncm91bmQtY29sb3I6
IHJnYigyNTUsIDI1NSwgMjU1KTsiPm9ubHk8c3Bhbj4mbmJzcDs8L3NwYW4+PC9zcGFuPnNlbGwg
b24geW91ciB3ZWJzaXRlJm5ic3A7PGI+WDcxMC1EQTIgY2FyZDwvYj4gKS48L2xpPjwvb2w+PGRp
dj48YnI+PC9kaXY+PGRpdj48c3Bhbj5UaGFuayB5b3UgZm9yIHlvdXIgYW5zd2Vhci4mbmJzcDs8
L3NwYW4+PC9kaXY+PGRpdj48c3Bhbj5PbG88L3NwYW4+PC9kaXY+PC9kaXY+PGRpdiBjbGFzcz0i
cHJvdG9ubWFpbF9zaWduYXR1cmVfYmxvY2siIHN0eWxlPSJmb250LWZhbWlseTogQXJpYWwsIHNh
bnMtc2VyaWY7IGZvbnQtc2l6ZTogMTRweDsiPg0KPC9kaXY+DQo=


--b1_Vxv0s88TrNSp3qdLsbLkvGkEgh8qiMG0vEfETUtyxg--

--===============1799113733085030681==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1799113733085030681==--
