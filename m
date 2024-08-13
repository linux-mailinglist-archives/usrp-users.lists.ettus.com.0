Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE3A9507D3
	for <lists+usrp-users@lfdr.de>; Tue, 13 Aug 2024 16:36:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ADE4F384ACE
	for <lists+usrp-users@lfdr.de>; Tue, 13 Aug 2024 10:36:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1723559792; bh=Ru7Bx9Eo7DEb7hbDsJHEM+vOKQHPR3+hrQ6YuQbmqLc=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=IQDgl/AmmcNF/OOaMBb4hLXCZYVF6SnQc6DTM0BvZhpUH909nrFgufpdjZmGvk0BS
	 wy721xy77kVMBLur0jqEry2KISwLjPXCxk+m72pthbKrO5Dicrl9vmaSNecdJOcqsy
	 /78EXIaq8uMkXsPirIdSp7hEa0MtJDWWXrgUF3RIu3lwzB+nU4m5ETXF2XAXGTDKFl
	 ltKfySE8CASOy2hcnc1deTdc2ssajsS1oj0XUmAiDWMwSUgiZUImBNMCZmU1A8r31b
	 RGuTYuPoekWvBC8fR6xbyv2URCocsxyG+CcYqoKuEqlKX/BmgAa4rRxcivJAC8JrjA
	 vhR2xIb18qZTQ==
Received: from mail-4325.protonmail.ch (mail-4325.protonmail.ch [185.70.43.25])
	by mm2.emwd.com (Postfix) with ESMTPS id DCD51383CF2
	for <usrp-users@lists.ettus.com>; Tue, 13 Aug 2024 10:36:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=protonmail.com header.i=@protonmail.com header.b="pK6vB33N";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1723559775; x=1723818975;
	bh=mk5L3zncQAiezUAcFy1SD3PX8O5H+Xs1SN4CPtToYNc=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=pK6vB33NH7CTQqYOAtgVGA+EQvnQYtLhEudeI6J51q9pn1Uk6cs5vYvKy2+BTJCBL
	 kep9015xb4Ugtp/WihFFixICAjq6YyLwVENQGSaVNsO3A77sE3zeh9WoKw2Wtq7uO8
	 WWSPX0Pwm914Cd6IAzbFBiEn4QQ2kkG3GeZIfiCmwVY7v/gWeeyHLUkS0+/YjTzI+Y
	 wdWovfqsHIX/09/loI7hy/VszAA4GYf45t/r+cDV3iGi8INQna9nc79SFFRkwoWhKL
	 n2kzLhBsS8seeGi8XnRcFYlaKekgD1WqB6LzVzrYmoyzwHq2+S+PN07wNO9zB9xrpG
	 919mS7HwqTlhw==
Date: Tue, 13 Aug 2024 14:36:11 +0000
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <XbpcZvaMMXT6CtwRg8IyAm_D2T57dOfmrN5Tjze8-OitQI63xUXP7Iz7dQKf7Z15YiSgFNB5CiBc5htCR1LFxrkVuo_pk0mDDm-_3hxSHEw=@protonmail.com>
Feedback-ID: 47010692:user:proton
X-Pm-Message-ID: af47275829f97869b4f7c82e51e7a7b904afe783
MIME-Version: 1.0
Message-ID-Hash: BTW577EENZ44LPBWPE2TDU5RN4OCABTV
X-Message-ID-Hash: BTW577EENZ44LPBWPE2TDU5RN4OCABTV
X-MailFrom: olo1618@protonmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Receiving on All Channels with X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BTW577EENZ44LPBWPE2TDU5RN4OCABTV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Olo via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Olo <olo1618@protonmail.com>
Content-Type: multipart/mixed; boundary="===============3613034929983334036=="

This is a multi-part message in MIME format.

--===============3613034929983334036==
Content-Type: multipart/alternative;
 boundary="b1_8AdobxtdVzX1lmlwD7cFE4BJ7lcI4L96LGteAyu0"

This is a multi-part message in MIME format.

--b1_8AdobxtdVzX1lmlwD7cFE4BJ7lcI4L96LGteAyu0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

RGVhciBFdHR1cyBTdXBwb3J0IFRlYW0sCgpJIGhvcGUgdGhpcyBtZXNzYWdlIGZpbmRzIHlvdSB3
ZWxsLgoKSSBhbSBjdXJyZW50bHkgd29ya2luZyB3aXRoIGFuIFgzMTAgU0RSIGVxdWlwcGVkIHdp
dGggdHdvIFR3aW5SWCBkYXVnaHRlcmJvYXJkcywgYW5kIEkgYW0gbG9va2luZyB0byByZWNlaXZl
IGRhdGEgc2ltdWx0YW5lb3VzbHkgYWNyb3NzIGFsbCBmb3VyIGNoYW5uZWxzLiBNeSBnb2FsIGlz
IHRvIG1heGltaXplIHRoZSBhdmFpbGFibGUgYmFuZHdpZHRoIGJ5IGNvbmZpZ3VyaW5nIHRoZSBz
eXN0ZW0gdG8gcmVjZWl2ZSBvbiBhbGwgY2hhbm5lbHMgaW4gcGFyYWxsZWwuCgpDb3VsZCB5b3Ug
cGxlYXNlIGFkdmlzZSBvbiB0aGUgYmVzdCBhcHByb2FjaCB0byBhY2hpZXZlIHRoaXM/IFNwZWNp
ZmljYWxseSwgSSB3b3VsZCBsaWtlIHRvIGtub3cgaWYgaXQgaXMgbmVjZXNzYXJ5IHRvIHVzZSBh
IHNwZWNpYWxpemVkIFJGTm9DIGdyYXBoIGZvciB0aGlzIHNldHVwLCBvciBpZiB0aGUgdWhkOjpt
dWx0aV91c3JwIGNsYXNzIGluIHRoZSBVSEQgbGlicmFyeSwgYWxvbmcgd2l0aCBhIGNvcnJlc3Bv
bmRpbmcgcnhfc3RyZWFtZXIsIHdvdWxkIGJlIHN1ZmZpY2llbnQgdG8gYWNjb21wbGlzaCB0aGlz
IHRhc2suCgpJIGFwcHJlY2lhdGUgYW55IGd1aWRhbmNlIG9yIHJlY29tbWVuZGF0aW9ucyB5b3Ug
Y2FuIHByb3ZpZGUuCgpUaGFuayB5b3UgZm9yIHlvdXIgc3VwcG9ydC4KCkJlc3QgcmVnYXJkcywK
T2xvLg==

--b1_8AdobxtdVzX1lmlwD7cFE4BJ7lcI4L96LGteAyu0
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiBBcmlhbCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAx
NHB4OyBsaW5lLWhlaWdodDogbm9ybWFsOyBmb250LXdlaWdodDogNDAwOyI+RGVhciBFdHR1cyBT
dXBwb3J0IFRlYW0sPC9zcGFuPjxkaXY+PGJyPjwvZGl2PjxkaXY+PHNwYW4gc3R5bGU9ImZvbnQt
ZmFtaWx5OiBBcmlhbCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNHB4OyBsaW5lLWhlaWdodDog
bm9ybWFsOyBmb250LXdlaWdodDogNDAwOyI+SSBob3BlIHRoaXMgbWVzc2FnZSBmaW5kcyB5b3Ug
d2VsbC48L3NwYW4+PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj48c3BhbiBzdHlsZT0iZm9udC1m
YW1pbHk6IEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE0cHg7IGxpbmUtaGVpZ2h0OiBu
b3JtYWw7IGZvbnQtd2VpZ2h0OiA0MDA7Ij5JIGFtIGN1cnJlbnRseSB3b3JraW5nIHdpdGggYW4g
WDMxMCBTRFIgZXF1aXBwZWQgd2l0aCB0d28gVHdpblJYIGRhdWdodGVyYm9hcmRzLCBhbmQgSSBh
bSBsb29raW5nIHRvIHJlY2VpdmUgZGF0YSBzaW11bHRhbmVvdXNseSBhY3Jvc3MgYWxsIGZvdXIg
Y2hhbm5lbHMuIE15IGdvYWwgaXMgdG8gbWF4aW1pemUgdGhlIGF2YWlsYWJsZSBiYW5kd2lkdGgg
YnkgY29uZmlndXJpbmcgdGhlIHN5c3RlbSB0byByZWNlaXZlIG9uIGFsbCBjaGFubmVscyBpbiBw
YXJhbGxlbC48L3NwYW4+PC9kaXY+PGRpdj48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6IEFyaWFs
LCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE0cHg7IGxpbmUtaGVpZ2h0OiBub3JtYWw7IGZvbnQt
d2VpZ2h0OiA0MDA7Ij48YnI+PC9zcGFuPjwvZGl2PjxkaXY+PHNwYW4gc3R5bGU9ImxpbmUtaGVp
Z2h0OiBub3JtYWw7IGZvbnQtZmFtaWx5OiBBcmlhbCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAx
NHB4OyBmb250LXdlaWdodDogNDAwOyI+Q291bGQgeW91IHBsZWFzZSBhZHZpc2Ugb24gdGhlIGJl
c3QgYXBwcm9hY2ggdG8gYWNoaWV2ZSB0aGlzPyBTcGVjaWZpY2FsbHksIEkgd291bGQgbGlrZSB0
byBrbm93IGlmIGl0IGlzIG5lY2Vzc2FyeSB0byB1c2UgYSBzcGVjaWFsaXplZCBSRk5vQyBncmFw
aCBmb3IgdGhpcyBzZXR1cCwgb3IgaWYgdGhlIHVoZDo6bXVsdGlfdXNycCBjbGFzcyBpbiB0aGUg
VUhEIGxpYnJhcnksIGFsb25nIHdpdGggYSBjb3JyZXNwb25kaW5nIHJ4X3N0cmVhbWVyLCB3b3Vs
ZCBiZSBzdWZmaWNpZW50IHRvIGFjY29tcGxpc2ggdGhpcyB0YXNrLjwvc3Bhbj48L2Rpdj48ZGl2
PjxzcGFuIHN0eWxlPSIiPjxicj48L3NwYW4+PC9kaXY+PGRpdj48c3BhbiBzdHlsZT0iZm9udC1m
YW1pbHk6IEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE0cHg7IGxpbmUtaGVpZ2h0OiBu
b3JtYWw7IGZvbnQtd2VpZ2h0OiA0MDA7Ij5JIGFwcHJlY2lhdGUgYW55IGd1aWRhbmNlIG9yIHJl
Y29tbWVuZGF0aW9ucyB5b3UgY2FuIHByb3ZpZGUuPC9zcGFuPjwvZGl2PjxkaXY+PHNwYW4gc3R5
bGU9IiI+PGJyPjwvc3Bhbj48L2Rpdj48ZGl2PjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTogQXJp
YWwsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTRweDsgbGluZS1oZWlnaHQ6IG5vcm1hbDsgZm9u
dC13ZWlnaHQ6IDQwMDsiPlRoYW5rIHlvdSBmb3IgeW91ciBzdXBwb3J0Ljwvc3Bhbj48L2Rpdj48
ZGl2PjxzcGFuIHN0eWxlPSIiPjxicj48L3NwYW4+PC9kaXY+PGRpdj48c3BhbiBzdHlsZT0ibGlu
ZS1oZWlnaHQ6IG5vcm1hbDsgZm9udC1mYW1pbHk6IEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNp
emU6IDE0cHg7IGZvbnQtd2VpZ2h0OiA0MDA7Ij5CZXN0IHJlZ2FyZHMsPC9zcGFuPjwvZGl2Pjxk
aXY+PHNwYW4gc3R5bGU9ImxpbmUtaGVpZ2h0OiBub3JtYWw7IGZvbnQtZmFtaWx5OiBBcmlhbCwg
c2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNHB4OyBmb250LXdlaWdodDogNDAwOyI+T2xvLjwvc3Bh
bj48L2Rpdj48ZGl2PjxzcGFuIHN0eWxlPSJsaW5lLWhlaWdodDogbm9ybWFsOyBmb250LWZhbWls
eTogQXJpYWwsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTRweDsgZm9udC13ZWlnaHQ6IDQwMDsi
Pjxicj48L3NwYW4+PC9kaXY+


--b1_8AdobxtdVzX1lmlwD7cFE4BJ7lcI4L96LGteAyu0--

--===============3613034929983334036==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3613034929983334036==--
