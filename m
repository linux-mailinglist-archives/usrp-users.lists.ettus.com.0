Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8178B99C1B5
	for <lists+usrp-users@lfdr.de>; Mon, 14 Oct 2024 09:42:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 297F0385239
	for <lists+usrp-users@lfdr.de>; Mon, 14 Oct 2024 03:42:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728891733; bh=OfGu2Kd6x1+lbKj0idzhg+3d2eSguYpOgRWXCjjo0ZU=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ldkdEtZNA5fqfibDTIbd5wgCJguvJaVQ0DDndTZKOsSppSaxQUX+Y7YD6j+KsR2EM
	 1FVT0LAkwod/ShSsulLD4JFnufg40PhAtoWyxIVFDhcWbm5qBETAxTahc+7UEj5Jpf
	 6KXiH4tyxGl6OSHS4wTYfaPUmGIZcbqgvzf+4GFtTUNOXHgV8UDNmEPs1p3L9Y89zr
	 BDM3DyZwXHkV7F9NIvqc/W9cYm0zqOEUvBr9ulA+DpQz23irKT3ffybRKpa+ux+iCK
	 AKyyChEpBSnHVFNXhAyvAhShjU3Oi+/tb6bI7uP4Xp6QCOqyy/dCYgBpTuI9YKTJt/
	 9ar/Siye1yEwQ==
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 27C133851F5
	for <usrp-users@lists.ettus.com>; Mon, 14 Oct 2024 03:41:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=cyronics-com.20230601.gappssmtp.com header.i=@cyronics-com.20230601.gappssmtp.com header.b="glp3NyCE";
	dkim-atps=neutral
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-6e22f10cc11so27315417b3.1
        for <usrp-users@lists.ettus.com>; Mon, 14 Oct 2024 00:41:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cyronics-com.20230601.gappssmtp.com; s=20230601; t=1728891688; x=1729496488; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6319bcXQ9XVKzQkVi88FCDlbYTd/WknwPR9p4BX6vsE=;
        b=glp3NyCEOqXstVr+4v/mEkBjpXFCxx88wSPjgkRoULas2k4nIkKn4WVOS4bbooUlW1
         NrqspDe30FLu7dV+ciGB8zsyi4amEzZR1rHHMOp2Lk63WOkNSeZoB/YZ9t9p1RK8YOuC
         2RlbODpnJzRIeRyjldGKdi1ni466mAzEuzx77n+4fQtYbKegXc1rqmaA18jk+tlL+4Ta
         snDiQ4yPfo6OH4I6X1Dln4Jdep2vF/4xbKwXnKZfy7eIYajTGMYjjUafVWZFK8QSLMkK
         Edf7qMgej1MkQh8e8Gv1SrZMvlcsnixswTo+7O19ivl7xp2qRoUt7eUmjMWUYnmDCuIt
         tiNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728891688; x=1729496488;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6319bcXQ9XVKzQkVi88FCDlbYTd/WknwPR9p4BX6vsE=;
        b=XExmmU0epNptfbc3PLay2rMJya9UJv7IZAOlh5cJoZdtJczj3pwo360ZLWAO5NvYld
         FiOZJOYAFLdluljDgtjMjqPcntx7lW3cFIrCbwHLfwfddn6asSI7ZViJPGIjXK1z+Ocl
         PzaETzlHv3gMibTHntIrDCVy+Z39b7OkJBtUPSIvUCBdjwWfNPWmO5dlOJwzMG5mmJYb
         07mjEkktsG3NMuNyP0eCf1MmEFbaywb+YgDoLahkkwwHR7SuffZCKZaTiCH7282wQGAf
         2W4hWJFZFfJKln2rABJLvnL178sGlBaSo31rMC9dANTNrGUkl6/WqV3IM6W8p7q1Q1tF
         gJJw==
X-Gm-Message-State: AOJu0Yy1rOHtqHKx6ot3bU6fRY3GNfOONhyWHT2J2b6hZVMy4fgDo3g/
	O6OgetfD7iJx2uxo3Tyij5raebQQWz6WBzoNaIh0/Sjm4sLzwh4Fd50Dg8kFGEQaIWQTXfdUWzc
	dVc553udjaK9AijXflQU5f+IZm30xEQrs3f1hCdFCEIqYyg8LsMQ=
X-Google-Smtp-Source: AGHT+IHzmqt/XgvIqGpUqrSGYatk47Mt5R3n09DusWR3gGgKwP7id2/a1cNyR0vRTw5vEq2GwaLb0t3p/eR1IUCTXaY=
X-Received: by 2002:a05:690c:4389:b0:6e3:28ec:1a7f with SMTP id
 00721157ae682-6e3479c5fefmr51553627b3.23.1728891688356; Mon, 14 Oct 2024
 00:41:28 -0700 (PDT)
MIME-Version: 1.0
From: Nidhi Panda <nidhi.panda@cyronics.com>
Date: Mon, 14 Oct 2024 13:11:12 +0530
Message-ID: <CAF=K0BG2sDEHLxnXzckRh4WweQee-_L9tpDVYYSnK1JVMV6mNg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="000000000000f0ca1506246af667"
Message-ID-Hash: 3VPYZDOIYEN7AJ6ZGMZI5FGXVL7U23DM
X-Message-ID-Hash: 3VPYZDOIYEN7AJ6ZGMZI5FGXVL7U23DM
X-MailFrom: nidhi.panda@cyronics.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Adding RFNoC BLOCK with USRP X300
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3VPYZDOIYEN7AJ6ZGMZI5FGXVL7U23DM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--000000000000f0ca1506246af667
Content-Type: multipart/alternative; boundary="000000000000f0ca1306246af665"

--000000000000f0ca1306246af665
Content-Type: text/plain; charset="UTF-8"

Hello,

I am having USRP X300 device with following tool versions:

Vivado 2021.1 - AR76780n,
GNU radio version - v3.11.0.0git-820-g2adbd4ea
UHD version - UHD_4.7.0.0-84-gbdada1ed

I have created an FPGA image file for HG mode using "rfnoc_image_builder".
It includes radio0/1, DDC0/1, DUC0/1 and a replay module by default. I
tested it on hardware also. It works fine. Now I want to add different
RFNoC block in my design. On following
*"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0%22
<https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0%22>"* guide, I
am trying to add FFT IP. This gives a multi-driven clock error in
implementation. Is it because this guide is for the X310 board? Can anyone
guide me the process of editing ".yml script "to add an FFT block for USRP
X300. I have attached my .yml script for reference.

--000000000000f0ca1306246af665
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div>Hello,</div><div><div dir="ltr" class="gmail_signature" data-smartmail="gmail_signature"><div dir="ltr"><div><p dir="auto">I am having USRP X300 device with following tool versions:</p>
<p dir="auto">Vivado 2021.1 - AR76780n,<br>
GNU radio version - v3.11.0.0git-820-g2adbd4ea<br>
UHD version - UHD_4.7.0.0-84-gbdada1ed</p>
<p dir="auto">I have created an FPGA image file for HG mode using 
&quot;rfnoc_image_builder&quot;. It includes radio0/1, DDC0/1, DUC0/1 and a replay 
module by default. I tested it on hardware also. It works fine. Now I 
want to add different RFNoC block in my design. On following  <strong>&quot;<a href="https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0%22" rel="nofollow">https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0%22</a>&quot;</strong>
 guide, I am trying to add FFT IP. This gives a multi-driven clock error 
in implementation. Is it because this guide is for the X310 board? Can 
anyone guide me the process of editing &quot;.yml script &quot;to add an FFT block
 for USRP X300. I have attached my .yml script for reference.</p></div></div></div></div></div>

--000000000000f0ca1306246af665--

--000000000000f0ca1506246af667
Content-Type: application/x-yaml; name="x300_HG_with_fft.yml"
Content-Disposition: attachment; filename="x300_HG_with_fft.yml"
Content-Transfer-Encoding: base64
Content-ID: <f_m28pgjm70>
X-Attachment-Id: f_m28pgjm70

IyBHZW5lcmFsIHBhcmFtZXRlcnMKIyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLQpzY2hlbWE6IHJmbm9jX2ltYWdlYnVpbGRlcl9hcmdzICAgICAgICAgIyBJZGVudGlm
aWVyIGZvciB0aGUgc2NoZW1hIHVzZWQgdG8gdmFsaWRhdGUgdGhpcyBmaWxlCmNvcHlyaWdodDog
Pi0gICAgICAgICAgICAgICAgICAgICAgICAgICAjIENvcHlyaWdodCBpbmZvcm1hdGlvbiB1c2Vk
IGluIGZpbGUgaGVhZGVycwogIENvcHlyaWdodCAyMDIzIEV0dHVzIFJlc2VhcmNoLCBhIE5hdGlv
bmFsIEluc3RydW1lbnRzIEJyYW5kCmxpY2Vuc2U6ID4tICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAjIExpY2Vuc2UgaW5mb3JtYXRpb24gdXNlZCBpbiBmaWxlIGhlYWRlcnMKICBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogTEdQTC0zLjAtb3ItbGF0ZXIKdmVyc2lvbjogJzEuMCcgICAgICAg
ICAgICAgICAgICAgICAgICAgICMgRmlsZSB2ZXJzaW9uCmNoZHJfd2lkdGg6IDY0ICAgICAgICAg
ICAgICAgICAgICAgICAgICAjIEJpdCB3aWR0aCBvZiB0aGUgQ0hEUiBidXMgZm9yIHRoaXMgaW1h
Z2UKZGV2aWNlOiAneDMxMCcKaW1hZ2VfY29yZV9uYW1lOiAndXNycF94MzAwX2ZwZ2FfSEcnICAg
ICMgVGhpcyBpcyB1c2VkIGZvciB0aGUgYml0ZmlsZSwgRFRTLCBhbmQgcmVwb3J0CmRlZmF1bHRf
dGFyZ2V0OiAnWDMwMF9IRycKaW5oZXJpdDoKICAtICd5YW1sX2luY2x1ZGUveDN4eF9yYWRpb19i
YXNlLnltbCcKCiMgQSBsaXN0IG9mIGFsbCBzdHJlYW0gZW5kcG9pbnRzIGluIGRlc2lnbgojIC0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0Kc3RyZWFtX2VuZHBvaW50czoK
IyAgIGVwMDoKIyAgICAgYnVmZl9zaXplOiAzMjc2OAojICAgZXAxOgojICAgICBidWZmX3NpemU6
IDAKIyAgIGVwMjoKIyAgICAgYnVmZl9zaXplOiAzMjc2OAojICAgZXAzOgojICAgICBidWZmX3Np
emU6IDAKIyAgIGVwNDoKIyAgICAgYnVmZl9zaXplOiA0MDk2CiMgICAgIGN0cmw6IEZhbHNlCiMg
ICAgIGRhdGE6IFRydWUKIyAgIGVwNToKIyAgICAgYnVmZl9zaXplOiA0MDk2CiMgICAgIGN0cmw6
IEZhbHNlCiMgICAgIGRhdGE6IFRydWUKCiAgZXBfZmZ0OgogICAgY3RybDogRmFsc2UKICAgIGRh
dGE6IFRydWUKICAgIGJ1ZmZfc2l6ZTogMzI3NjgKCiMgQSBsaXN0IG9mIGFsbCBOb0MgYmxvY2tz
IGluIGRlc2lnbgojIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIyBub2NfYmxv
Y2tzOgojICAgcmVwbGF5MDoKIyAgICAgYmxvY2tfZGVzYzogJ3JlcGxheS55bWwnCiMgICAgIHBh
cmFtZXRlcnM6CiMgICAgICAgTlVNX1BPUlRTOiAyCiMgICAgICAgTUVNX0RBVEFfVzogNjQKIyAg
ICAgICBNRU1fQUREUl9XOiAzMAojICAgICBpb19wb3J0czogICAgICAgICAgICAjIEFkZCB0aGlz
IHNlY3Rpb24gaWYgbWlzc2luZyBpbiByZXBsYXkueW1sCiMgICAgICAgaW5fMDoKIyAgICAgICAg
IGRyaXZlOiBtYXN0ZXIKIyAgICAgICBvdXRfMDoKIyAgICAgICAgIGRyaXZlOiBzbGF2ZQojICAg
ICAgIGluXzE6CiMgICAgICAgICBkcml2ZTogbWFzdGVyCiMgICAgICAgb3V0XzE6CiMgICAgICAg
ICBkcml2ZTogc2xhdmUKIyAgICAgcHJpb3JpdHk6IDk5CgogIGZmdDA6CiAgICBibG9ja19kZXNj
OiAnZmZ0XzF4NjQueW1sJwogICAgIyBwYXJhbWV0ZXJzOgogICAgIyAgIEVOX0ZGVF9TSElGVDog
MQogICAgIyBpb19wb3J0czogICAgICAgICAgICAjIEFkZCB0aGlzIHNlY3Rpb24gaWYgbWlzc2lu
ZyBpbiBmZnRfMXg2NC55bWwKICAgICMgICBpbl8wOgogICAgIyAgICAgZHJpdmU6IG1hc3Rlcgog
ICAgIyAgIG91dF8wOgogICAgIyAgICAgZHJpdmU6IHNsYXZlCgoKIyBBIGxpc3Qgb2YgYWxsIHN0
YXRpYyBjb25uZWN0aW9ucyBpbiBkZXNpZ24KIyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KIyBGb3JtYXQ6IEEgbGlzdCBvZiBjb25uZWN0aW9uIG1hcHMgKGxpc3Qg
b2Yga2V5LXZhbHVlIHBhaXJzKSB3aXRoIHRoZSBmb2xsb3dpbmcga2V5cwojICAgLSBzcmNibGsg
ID0gU291cmNlIGJsb2NrIHRvIGNvbm5lY3QKIyAgIC0gc3JjcG9ydCA9IFBvcnQgb24gdGhlIHNv
dXJjZSBibG9jayB0byBjb25uZWN0CiMgICAtIGRzdGJsayAgPSBEZXN0aW5hdGlvbiBibG9jayB0
byBjb25uZWN0CiMgICAtIGRzdHBvcnQgPSBQb3J0IG9uIHRoZSBkZXN0aW5hdGlvbiBibG9jayB0
byBjb25uZWN0CmNvbm5lY3Rpb25zOgogICMgUmVwbGF5IENvbm5lY3Rpb25zCiAgIyAtIHsgc3Jj
YmxrOiBlcDQsICAgICBzcmNwb3J0OiBvdXQsICBkc3RibGs6IHJlcGxheTAsIGRzdHBvcnQ6IGlu
XzAgfQogICMgLSB7IHNyY2JsazogcmVwbGF5MCwgc3JjcG9ydDogb3V0XzAsIGRzdGJsazogZXA0
LCAgICBkc3Rwb3J0OiBpbiB9CiAgIyAtIHsgc3JjYmxrOiBlcDUsICAgICBzcmNwb3J0OiBvdXQs
ICBkc3RibGs6IHJlcGxheTAsIGRzdHBvcnQ6IGluXzEgfQogICMgLSB7IHNyY2JsazogcmVwbGF5
MCwgc3JjcG9ydDogb3V0XzEsIGRzdGJsazogZXA1LCAgICBkc3Rwb3J0OiBpbiB9CiAgCiAgIyBG
RlQgQ29ubmVjdGlvbnMKICAtIHsgc3JjYmxrOiBlcF9mZnQsICBzcmNwb3J0OiBvdXQsICBkc3Ri
bGs6IGZmdDAsICAgZHN0cG9ydDogaW5fMCB9CiAgLSB7IHNyY2JsazogZmZ0MCwgICAgc3JjcG9y
dDogb3V0XzAsIGRzdGJsazogZXBfZmZ0LCBkc3Rwb3J0OiBpbiB9CgogICMgQlNQIENvbm5lY3Rp
b25zCiAgIyAtIHsgc3JjYmxrOiByZXBsYXkwLCBzcmNwb3J0OiBheGlfcmFtLCBkc3RibGs6IF9k
ZXZpY2VfLCBkc3Rwb3J0OiBkcmFtIH0KCiMgQSBsaXN0IG9mIGFsbCBjbG9jayBkb21haW4gY29u
bmVjdGlvbnMgaW4gZGVzaWduCiMgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCiMgRm9ybWF0OiBBIGxpc3Qgb2YgY29ubmVjdGlvbiBtYXBzIChsaXN0IG9m
IGtleS12YWx1ZSBwYWlycykgd2l0aCB0aGUgZm9sbG93aW5nIGtleXMKIyAgIC0gc3JjYmxrICA9
IFNvdXJjZSBibG9jayB0byBjb25uZWN0IChBbHdheXMgIl9kZXZpY2UiXykKIyAgIC0gc3JjcG9y
dCA9IENsb2NrIGRvbWFpbiBvbiB0aGUgc291cmNlIGJsb2NrIHRvIGNvbm5lY3QKIyAgIC0gZHN0
YmxrICA9IERlc3RpbmF0aW9uIGJsb2NrIHRvIGNvbm5lY3QKIyAgIC0gZHN0cG9ydCA9IENsb2Nr
IGRvbWFpbiBvbiB0aGUgZGVzdGluYXRpb24gYmxvY2sgdG8gY29ubmVjdApjbGtfZG9tYWluczoK
ICAjIC0geyBzcmNibGs6IF9kZXZpY2VfLCBzcmNwb3J0OiBkcmFtLCAgZHN0YmxrOiByZXBsYXkw
LCBkc3Rwb3J0OiBtZW0gfQogIC0geyBzcmNibGs6IF9kZXZpY2VfLCBzcmNwb3J0OiBjZSwgICAg
ZHN0YmxrOiBmZnQwLCAgICBkc3Rwb3J0OiBjZSB9CiAgLSB7IHNyY2JsazogX2RldmljZV8sIHNy
Y3BvcnQ6IHJmbm9jX2NoZHIsIGRzdGJsazogZmZ0MCwgZHN0cG9ydDogY2UgfQogIC0geyBzcmNi
bGs6IF9kZXZpY2VfLCBzcmNwb3J0OiByYWRpbywgZHN0YmxrOiBmZnQwLCAgICBkc3Rwb3J0OiBj
ZSB9Cgo=
--000000000000f0ca1506246af667
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--000000000000f0ca1506246af667--
