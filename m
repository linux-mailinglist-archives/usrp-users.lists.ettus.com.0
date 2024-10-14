Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 082FA99CA7C
	for <lists+usrp-users@lfdr.de>; Mon, 14 Oct 2024 14:45:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A0B99385453
	for <lists+usrp-users@lfdr.de>; Mon, 14 Oct 2024 08:45:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728909939; bh=OAa1nH2Dt9exbq2xhiEgc0zd+lSdUcHy60JzJG8FUJo=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=xdgY+HneynHQ+JotLJ3K0qfcFhqmd8iIzeF75qzE9EyvKBYlxgj1NTBIEwVJSF2WG
	 hMJGt2tzPY7ghQtyNsPtEYdLlS78uNnN3lD4Se9woWmT6+yq0abbKMETlSb/tf6Mgm
	 HQKgccFiQWaHqiDyDtcuPdzJHKHX6ABFZscOY++jYfNGdoVNXQfE/COz+NW03E3Wd4
	 Pz1GN6pgGeGQ8yFLsRR+ZYqJY48vs5FA22XOl8qBE12PLHYDqlr11hq/FhoR71FM2a
	 nu0hODIEkKuTFUNgs19/WDZrPCnD9VkNRepWTlrd6uNCPAJFpPmBLY12NyiSmHiUG6
	 BvW4DqL62nJ+Q==
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 3B421385212
	for <usrp-users@lists.ettus.com>; Mon, 14 Oct 2024 08:45:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=cyronics-com.20230601.gappssmtp.com header.i=@cyronics-com.20230601.gappssmtp.com header.b="Wqn5f2AT";
	dkim-atps=neutral
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-6e330b7752cso26165907b3.1
        for <usrp-users@lists.ettus.com>; Mon, 14 Oct 2024 05:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cyronics-com.20230601.gappssmtp.com; s=20230601; t=1728909919; x=1729514719; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=uU4H9+uTAWYnraFzlh7vF3X2tNBDH313gBFXLXmMRhI=;
        b=Wqn5f2ATkgOqrDkuS9pCzxbTwLZ429/n4ayqYVufEl3OlOL3AoWQmyVG7/EU0m87ju
         WilBgBPozUCCVb5N0ufC19ZgKk+IogsNkO0KnPNXCpBvB2eCJ+autmo4CMZ35bRq/sQC
         3uuLjddn21EjAp10fGA5L6ML0onsd3FUb9z2a32WALTmQMsaqzfLzVeFEltSDyNOELJu
         ijxpz8nFyCHofywAYsgYdCvZBN1MvACegvVx6AgBxiTyR0JDGfRsHcUlZG9AMBSoIpnG
         EmoHs+1C5Lvoq0OcVFnJNrLRw0+Y+it/TSMYLrD9ssiCjhGejkVduisB+JGRKQagSG1Y
         h7QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728909919; x=1729514719;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uU4H9+uTAWYnraFzlh7vF3X2tNBDH313gBFXLXmMRhI=;
        b=eYxbDFVWQri98iUnXSd8GRLAk/DDvzU16JcOLJd9oZBHi2kCMWOt4gKA4XPV0xrcLG
         0RAy5/+mB2vDvj4zS94L3MIpwXcDUiCgZ54iHTw4wpxkcQoGsUll6fs8oAPwEhYioXUv
         uinnDxVVGdFEKN6sxAWjFeecsVHgzEcmv4DkkWUL4VlOK0eqfuZiJnzd/MUWZlyULO2P
         eyLhqxnrH6AoOdZrnEZAcByhZR04JfZzDE8QntJ7e/LKbcS5CuqWgyW7gsHumbnDXqHt
         lt47u8y3s9wZRQFDQQmJiEeFUDndzOkcS2VF2IvWEKd2L8idi7QKo9wA/o2NtVer9pCt
         pZNw==
X-Gm-Message-State: AOJu0Yzz0OTQ3FKc0R4qHRdZ8k/9iOXiICeDsCXsTsj3xeFvJXqjo4YD
	fy+48IpyZMqF2ishIHwfMLGSIQL+Dqv8LmtCusG66stZBvXvDQ4DzQkcp6XZV8uTRs2KCYNoKf1
	A7jspF5ZnXMXSWrauJqJcr9nshq+7XxuJIjFEouFUXAz6Cs1tEII=
X-Google-Smtp-Source: AGHT+IFNAMa/RsrTSBj7YBiTZmRMPTN2ZSAlMtEyq9ZgtlYt25+Q69GXH4LtYwnswy5PEqN9/MhtCy3mE1ZVI4L7WUw=
X-Received: by 2002:a05:690c:c9b:b0:6e2:fcb5:52fa with SMTP id
 00721157ae682-6e344c487cfmr68259517b3.9.1728909919457; Mon, 14 Oct 2024
 05:45:19 -0700 (PDT)
MIME-Version: 1.0
From: Nidhi Panda <nidhi.panda@cyronics.com>
Date: Mon, 14 Oct 2024 18:15:03 +0530
Message-ID: <CAF=K0BEbZY47TP06ujgGf1zjphTaDqQbrb=xMnyFAMK2_PTsTQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="000000000000994a2906246f3582"
Message-ID-Hash: BZT3C5PCWWBDITZHFL5O2GTYM74BVHGV
X-Message-ID-Hash: BZT3C5PCWWBDITZHFL5O2GTYM74BVHGV
X-MailFrom: nidhi.panda@cyronics.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Error on adding RFNoC BLOCK - FFT.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BZT3C5PCWWBDITZHFL5O2GTYM74BVHGV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--000000000000994a2906246f3582
Content-Type: multipart/alternative; boundary="000000000000994a2706246f3580"

--000000000000994a2706246f3580
Content-Type: text/plain; charset="UTF-8"

Hello,

I am having USRP X300 device with following tool versions:

Vivado 2021.1 - AR76780n,
GNU radio version - v3.11.0.0git-820-g2adbd4ea
UHD version - UHD_4.7.0.0-84-gbdada1ed

By using the *"**https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0
<https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0>**"* guide, I
am trying to add FFT IP in my design.  THis gives following error:

Starting DRC Task
INFO: [DRC 23-27] Running DRC with 8 threads
ERROR: [DRC MDRV-1] Multiple Driver Nets: Net bus_clk_gen/inst/CLK_OUT4 has
multiple drivers: bus_clk_gen/inst/clkout1_buf/O,
bus_clk_gen/inst/clkout4_buf/O, and radio_clk_gen/inst/clkout1_buf/O.
INFO: [Project 1-461] DRC finished with 1 Errors


I have attached a .yml script file for your reference. Please guide me with
the process of adding RFNoC blocks..

Regards,
NIdhi

--000000000000994a2706246f3580
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><div dir=3D"ltr" class=3D"gmail_sign=
ature"><div dir=3D"ltr"><div><p dir=3D"auto">I am having USRP X300 device w=
ith following tool versions:</p>
<p dir=3D"auto">Vivado 2021.1 - AR76780n,<br>
GNU radio version - v3.11.0.0git-820-g2adbd4ea<br>
UHD version - UHD_4.7.0.0-84-gbdada1ed</p></div></div></div></div><pre></pr=
e><div>By using the  <strong>&quot;</strong><b><a href=3D"https://kb.ettus.=
com/Getting_Started_with_RFNoC_in_UHD_4.0">https://kb.ettus.com/Getting_Sta=
rted_with_RFNoC_in_UHD_4.0</a></b><strong>&quot;</strong>
 guide, I am trying to add FFT IP in my design.=C2=A0 THis gives following =
error:</div><div><br></div><div>Starting DRC Task<br>INFO: [DRC 23-27] Runn=
ing DRC with 8 threads<br>ERROR: [DRC MDRV-1] Multiple Driver Nets: Net bus=
_clk_gen/inst/CLK_OUT4 has multiple drivers: bus_clk_gen/inst/clkout1_buf/O=
, bus_clk_gen/inst/clkout4_buf/O, and radio_clk_gen/inst/clkout1_buf/O.<br>=
INFO: [Project 1-461] DRC finished with 1 Errors</div><div><br></div><div><=
br></div><div>I have attached a .yml script file for your reference. Please=
 guide me with the process of adding RFNoC blocks..</div><div><br></div><di=
v>Regards,</div><div>NIdhi<br></div></div>

--000000000000994a2706246f3580--

--000000000000994a2906246f3582
Content-Type: application/x-yaml; name="x310_HG_rfnoc_image_core_FFT.yml"
Content-Disposition: attachment; filename="x310_HG_rfnoc_image_core_FFT.yml"
Content-Transfer-Encoding: base64
Content-ID: <f_m290bciz0>
X-Attachment-Id: f_m290bciz0

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
Z2UKZGV2aWNlOiAneDMxMCcKaW1hZ2VfY29yZV9uYW1lOiAndXNycF94MzEwX2ZwZ2FfWEcnICAj
IFRoaXMgaXMgdXNlZCBmb3IgdGhlIGJpdGZpbGUsIERUUywgYW5kIHJlcG9ydApkZWZhdWx0X3Rh
cmdldDogJ1gzMTBfWEcnCmluaGVyaXQ6CiAgLSAneWFtbF9pbmNsdWRlL3gzeHhfcmFkaW9fYmFz
ZS55bWwnCgojIEEgbGlzdCBvZiBhbGwgc3RyZWFtIGVuZHBvaW50cyBpbiBkZXNpZ24KIyAtLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCnN0cmVhbV9lbmRwb2ludHM6CiAg
ZXAwOiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAjIFN0cmVhbSBlbmRwb2ludCBu
YW1lCiAgICBidWZmX3NpemU6IDMyNzY4ICAgICAgICAgICAgICAgICAgICAjIEluZ3Jlc3MgYnVm
ZmVyIHNpemUgZm9yIGRhdGEKICBlcDE6CiAgICBidWZmX3NpemU6IDAKICBlcDI6CiAgICBidWZm
X3NpemU6IDMyNzY4CiAgZXAzOgogICAgYnVmZl9zaXplOiAwCiAgZXA0OgogICAgYnVmZl9zaXpl
OiA0MDk2CiAgICBjdHJsOiBGYWxzZQogICAgZGF0YTogVHJ1ZQogIGVwNToKICAgIGJ1ZmZfc2l6
ZTogNDA5NgogICAgY3RybDogRmFsc2UKICAgIGRhdGE6IFRydWUKICBlcF9mZnQ6ICAgICAgICAg
ICAgICAgICMgVGhlIG5hbWUgY2FuIGJlIGluY3JlbWVudGVkIGZyb20gcHJldmlvdXMgU0VQCiAg
ICBjdHJsOiBGYWxzZSAgICAgICAgICAjIE9ubHkgdGhlIGZpcnN0IFNFUCBuZWVkcyBjb250cm9s
IHRyYWZmaWMKICAgIGRhdGE6IFRydWUgICAgICAgICAgICMgV2UgZG8gd2FudCB0byBwYXNzIGRh
dGEgdGhyb3VnaCB0aGlzIFNFUAogICAgYnVmZl9zaXplOiAzMjc2OCAgICAgIyBJbmdyZXNzIGJ1
ZmZlciBzaXplIGZvciBkYXRhCgojIEEgbGlzdCBvZiBhbGwgTm9DIGJsb2NrcyBpbiBkZXNpZ24K
IyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCm5vY19ibG9ja3M6CiAgcmVwbGF5
MDoKICAgIGJsb2NrX2Rlc2M6ICdyZXBsYXkueW1sJwogICAgcGFyYW1ldGVyczoKICAgICAgTlVN
X1BPUlRTOiAyCiAgICAgIE1FTV9EQVRBX1c6IDY0CiAgICAgIE1FTV9BRERSX1c6IDMwCiAgICBw
cmlvcml0eTogOTkgIyBNYWtlIHN1cmUgdGhleSBjb21lIGFmdGVyIHRoZSBibG9ja3MgZGVmaW5l
ZCBpbiB4M3h4X3JhZGlvX2Jhc2UueW1sCiAgZmZ0MDogICAgICAgICAgICAgICAgICAgICAgICAg
ICMgRkZUIGJsb2NrIG5hbWUKICAgIGJsb2NrX2Rlc2M6ICdmZnRfMXg2NC55bWwnICAgIyBCbG9j
ayBZQU1MIGRlc2NyaXB0b3IgZmlsZQogICAgcGFyYW1ldGVyczogICAgICAgICAgICAgICAgICAj
IFNwZWNpZnkgYW55IFZlcmlsb2cgbW9kdWxlIHBhcmFtZXRlcnMgKG9wdGlvbmFsKQogICAgICBF
Tl9GRlRfU0hJRlQ6IDEKCgojIEEgbGlzdCBvZiBhbGwgc3RhdGljIGNvbm5lY3Rpb25zIGluIGRl
c2lnbgojIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQojIEZvcm1h
dDogQSBsaXN0IG9mIGNvbm5lY3Rpb24gbWFwcyAobGlzdCBvZiBrZXktdmFsdWUgcGFpcnMpIHdp
dGggdGhlIGZvbGxvd2luZyBrZXlzCiMgICAtIHNyY2JsayAgPSBTb3VyY2UgYmxvY2sgdG8gY29u
bmVjdAojICAgLSBzcmNwb3J0ID0gUG9ydCBvbiB0aGUgc291cmNlIGJsb2NrIHRvIGNvbm5lY3QK
IyAgIC0gZHN0YmxrICA9IERlc3RpbmF0aW9uIGJsb2NrIHRvIGNvbm5lY3QKIyAgIC0gZHN0cG9y
dCA9IFBvcnQgb24gdGhlIGRlc3RpbmF0aW9uIGJsb2NrIHRvIGNvbm5lY3QKY29ubmVjdGlvbnM6
CiAgIyBSZXBsYXkgQ29ubmVjdGlvbnMKICAtIHsgc3JjYmxrOiBlcDQsICAgICBzcmNwb3J0OiBv
dXQwLCAgZHN0YmxrOiByZXBsYXkwLCBkc3Rwb3J0OiBpbl8wIH0KICAtIHsgc3JjYmxrOiByZXBs
YXkwLCBzcmNwb3J0OiBvdXRfMCwgZHN0YmxrOiBlcDQsICAgICBkc3Rwb3J0OiBpbjAgIH0KICAt
IHsgc3JjYmxrOiBlcDUsICAgICBzcmNwb3J0OiBvdXQwLCAgZHN0YmxrOiByZXBsYXkwLCBkc3Rw
b3J0OiBpbl8xIH0KICAtIHsgc3JjYmxrOiByZXBsYXkwLCBzcmNwb3J0OiBvdXRfMSwgZHN0Ymxr
OiBlcDUsICAgICBkc3Rwb3J0OiBpbjAgIH0KICAtIHsgc3JjYmxrOiBlcF9mZnQsIHNyY3BvcnQ6
IG91dDAsICBkc3RibGs6IGZmdDAsICAgZHN0cG9ydDogaW5fMCB9CiAgLSB7IHNyY2JsazogZmZ0
MCwgICBzcmNwb3J0OiBvdXRfMCwgZHN0YmxrOiBlcF9mZnQsIGRzdHBvcnQ6IGluMCAgfQogICMK
ICAjIEJTUCBDb25uZWN0aW9ucwogIC0geyBzcmNibGs6IHJlcGxheTAsICBzcmNwb3J0OiBheGlf
cmFtLCAgZHN0YmxrOiBfZGV2aWNlXywgZHN0cG9ydDogZHJhbSB9CgojIEEgbGlzdCBvZiBhbGwg
Y2xvY2sgZG9tYWluIGNvbm5lY3Rpb25zIGluIGRlc2lnbgojIC0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQojIEZvcm1hdDogQSBsaXN0IG9mIGNvbm5lY3Rp
b24gbWFwcyAobGlzdCBvZiBrZXktdmFsdWUgcGFpcnMpIHdpdGggdGhlIGZvbGxvd2luZyBrZXlz
CiMgICAtIHNyY2JsayAgPSBTb3VyY2UgYmxvY2sgdG8gY29ubmVjdCAoQWx3YXlzICJfZGV2aWNl
Il8pCiMgICAtIHNyY3BvcnQgPSBDbG9jayBkb21haW4gb24gdGhlIHNvdXJjZSBibG9jayB0byBj
b25uZWN0CiMgICAtIGRzdGJsayAgPSBEZXN0aW5hdGlvbiBibG9jayB0byBjb25uZWN0CiMgICAt
IGRzdHBvcnQgPSBDbG9jayBkb21haW4gb24gdGhlIGRlc3RpbmF0aW9uIGJsb2NrIHRvIGNvbm5l
Y3QKY2xrX2RvbWFpbnM6CiAgICAtIHsgc3JjYmxrOiBfZGV2aWNlXywgc3JjcG9ydDogZHJhbSwg
IGRzdGJsazogcmVwbGF5MCwgZHN0cG9ydDogbWVtICB9CiAgICAtIHsgc3JjYmxrOiBfZGV2aWNl
Xywgc3JjcG9ydDogY2UsIGRzdGJsazogZmZ0MCwgZHN0cG9ydDogY2UgfQogICAgLSB7IHNyY2Js
azogX2RldmljZV8sIHNyY3BvcnQ6IHJmbm9jX2NoZHIsIGRzdGJsazogZmZ0MCwgZHN0cG9ydDog
Y2UgfQogICAgLSB7IHNyY2JsazogX2RldmljZV8sIHNyY3BvcnQ6IHJhZGlvLCBkc3RibGs6IGZm
dDAsIGRzdHBvcnQ6IGNlIH0K
--000000000000994a2906246f3582
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--000000000000994a2906246f3582--
