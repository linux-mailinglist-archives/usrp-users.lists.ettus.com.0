Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 34269A29C94
	for <lists+usrp-users@lfdr.de>; Wed,  5 Feb 2025 23:23:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DA5ED38608B
	for <lists+usrp-users@lfdr.de>; Wed,  5 Feb 2025 17:23:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738794228; bh=HkHmZOCSH/FqqmWq1IpRn4k+j4uwZvvVdCkz0QikGVc=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=GTzLeDWtY8P0Dl9ASxk3TmmKYRfDu/2SaUPbwCB2PhSs/hYRoJGfV+tqL565TOnuT
	 PWPQLqaVva+HnQom15mTY+/rLnfL9yaJxFlNkwzFMFTCrWHW6iy4TOOWmKOAMN2t5L
	 WRcrTD44nxwszPOCbAE1SeqMqprVJ+EHjs1apZoc25ZxSr8HAAEXOSxuFRHqFzMRTI
	 8cIfEecdmMJh/9D7Iy4XSmKeMzL+Hrkb88fEa8n9NqjgLw+OQI2Ib8zJLb9bQrrZPA
	 vKxi8FsjHOPAVCXALYCERXo+XQoVhaxzXihuMrtzkA68MH8Ra94tjPMyn/5patJf/3
	 AWFxKgiC35R1A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BCBAB385FFA
	for <usrp-users@lists.ettus.com>; Wed,  5 Feb 2025 17:23:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738794217; bh=mDmXzx8nKdl0kSEn0dW4ZFdvcO6GDqxg8plhR+SFphM=;
	h=Date:To:From:Subject:From;
	b=o1QDEiDwRyXeJqiv8tbaeBRKAlMGZPoQ3lbjxGXNz3+QZMXJVub64kpqSxOW3dNZd
	 GWM7I/oTeZDnzyrLfYKRxF4yUWWGX9vfaKJ2c8yGjnN/3KmYZ2FNFwfeEFcg1TPtT5
	 KO/yfi7gY5mUzqNPfWhC+2sh3Ly4OuY/18YpCQOMsYpd1PMeliKVl3O/jZv+PiCcX9
	 +Vyk4KwSzXE722WjEVsokHQLtXJLQlv/8SYfnmHCS4eoZxrjC/8tvOWUPqH0RTpp8j
	 MfpXnZgHg4IvUBniF+Yu20Wbnn7acG76jQYFdOtH9PkzeTDiGpSmmYlJ3tRf483xSd
	 iMGxWG2acXMEQ==
Date: Wed, 5 Feb 2025 22:23:37 +0000
To: usrp-users@lists.ettus.com
From: dhpanchaai@gmail.com
Message-ID: <lGIYOZyz2CQOcVPhVCFBLmBewwlajc0rrTfkBxof8A@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: JHBMVJMBAYIRBTYTC3EXWRFU6Z6PO4MX
X-Message-ID-Hash: JHBMVJMBAYIRBTYTC3EXWRFU6Z6PO4MX
X-MailFrom: dhpanchaai@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Build custom fpga image for x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JHBMVJMBAYIRBTYTC3EXWRFU6Z6PO4MX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0598212386478787972=="

This is a multi-part message in MIME format.

--===============0598212386478787972==
Content-Type: multipart/alternative;
 boundary="b1_lGIYOZyz2CQOcVPhVCFBLmBewwlajc0rrTfkBxof8A"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_lGIYOZyz2CQOcVPhVCFBLmBewwlajc0rrTfkBxof8A
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I would like to build an fpga custom fpga image for x410. I would need to=
 be able to TX/RX anywhere between 250 to 300 MHz. The prebuilt UC_200 is=
 too low and the CG_400 can=E2=80=99t be adjusted and a bit overkill. Any=
 recommendations on how to best do that? Which version of Vivado would I =
need? I currently am using UHD 4.7 and have Vivado 2023.1 installed on my=
 machine. I was wondering if its possible to tweak the UC_200 prebuilt im=
age to do that? Thanks

--b1_lGIYOZyz2CQOcVPhVCFBLmBewwlajc0rrTfkBxof8A
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p><p>I would like to build an fpga custom fpga image for x410. I =
would need to be able to TX/RX anywhere between 250 to 300 MHz. The prebu=
ilt UC_200 is too low and the CG_400 can=E2=80=99t be adjusted and a bit =
overkill. Any recommendations on how to best do that? Which version of Vi=
vado would I need? I currently am using UHD 4.7 and have Vivado 2023.1 in=
stalled on my machine. I was wondering if its possible to tweak the UC_20=
0 prebuilt image to do that? Thanks</p>


--b1_lGIYOZyz2CQOcVPhVCFBLmBewwlajc0rrTfkBxof8A--

--===============0598212386478787972==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0598212386478787972==--
