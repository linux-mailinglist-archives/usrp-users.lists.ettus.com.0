Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AF06CAACF0E
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 22:56:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AEB1838619E
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 16:56:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746564990; bh=ZqO3ueUOk73hFvi1sn9HKSt4x1Hki1r7jTZ/n2Vsido=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0NdlIjxsnKd/iAeVYjkfAh6x5TXR10leZPZdL5VLuVHmvipPFbcI7jHpoSU5nY2hq
	 C9yynLsT/LfLMXxaDffVIMeV5FMSL7r4IS0bhgaP088y8EKfBK4BWdMmE5crxv6PB5
	 S5de8RV/FzRgehPOPnr3e7CWXrv5nDU3OXxqEBmRQGGoT77DaWo+ZFQmXcsnXqCRmY
	 FCyI850625vSIO9/mkVTtFSGh9Zvc+3Eb5mPtcJh93fqLouU/Cu1jl4GoNhqAk8YVZ
	 IHBtsbx+7EsIkdMZz2U6wJkcb6ObnLsKZK8YZq04EEjO2bzbvkxzZRvXfS8Xo53h3H
	 qk9iaOswVh2fg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AE2033858E8
	for <usrp-users@lists.ettus.com>; Tue,  6 May 2025 16:55:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746564936; bh=D024P0RrPhDy5ZHxMVA+2G9WoneruNYd+U7d3JBLcG0=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=iJK74FBqr2wrsydHI/7sG9UOsYMzHDE75pz6Mre9fVe/tHIMu37SQcG+k1ulgA1AR
	 eo0kLId7ZaLjoJhRUF8ScIXeryCtc/P9gN16g5aEkGOCHr8sJKX6ZSRWn9ZgZu99uc
	 geYn4xU+9YOf27OxFVh9cuWMUCGNYPwGU3VHPwT/qLrrWA5m4vXu7Y2SjZbWd8kiZ4
	 pwlvd23/6VHfZI3dFg07KSx/gu3h4+O5GeSgAsx4Nv2MfevApX/cT/KtQwvGPmm21J
	 c7FuPj2T/xsEaDoDh1BkaAiPwbbDqq3x/tB4P4dFyg0gehUBZbeJ/8JVaXKGTq3j/m
	 mKkKFoewrY93Q==
Date: Tue, 6 May 2025 20:55:36 +0000
To: usrp-users@lists.ettus.com
From: whw@appliedradar.com
Message-ID: <3xfUWORCCTzqcoRfgPtb2rkS1pX8xhI4VAyxu4rQCA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 5dffa0c4-78cf-4954-92bb-cdff513277c0@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 5DNLL3UIU6DISM2RU76WRD233O53JSMD
X-Message-ID-Hash: 5DNLL3UIU6DISM2RU76WRD233O53JSMD
X-MailFrom: whw@appliedradar.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205mini Discovery Issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5DNLL3UIU6DISM2RU76WRD233O53JSMD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3497636970822483261=="

This is a multi-part message in MIME format.

--===============3497636970822483261==
Content-Type: multipart/alternative;
 boundary="b1_3xfUWORCCTzqcoRfgPtb2rkS1pX8xhI4VAyxu4rQCA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_3xfUWORCCTzqcoRfgPtb2rkS1pX8xhI4VAyxu4rQCA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

We tried plugging the unit into several PC=E2=80=99s and laptops, and it =
seems the device is not enumerating. I am starting to think the FX3 EEPRO=
M is corrupt. Is there a way for the user to reset the FX3 firmware to fa=
ctory setting? Is a programming cable, FX3 image, and programmer availabl=
e?

--b1_3xfUWORCCTzqcoRfgPtb2rkS1pX8xhI4VAyxu4rQCA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>We tried plugging the unit into several PC=E2=80=99s and laptops, and =
it seems the device is not enumerating. I am starting to think the FX3 EE=
PROM is corrupt. Is there a way for the user to reset the FX3 firmware to=
 factory setting? Is a programming cable, FX3 image, and programmer avail=
able?</p>


--b1_3xfUWORCCTzqcoRfgPtb2rkS1pX8xhI4VAyxu4rQCA--

--===============3497636970822483261==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3497636970822483261==--
