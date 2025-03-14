Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F009A61396
	for <lists+usrp-users@lfdr.de>; Fri, 14 Mar 2025 15:24:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D5019385E67
	for <lists+usrp-users@lfdr.de>; Fri, 14 Mar 2025 10:24:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741962272; bh=fjDFiqnHGCiYa3YRCGcTJKNhrbYlVBo5CuVUNEAfv4Q=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=rXrweL839Vu4ufh+GnOxU3uYSAbMTmg/qI2EZLhhaHawXYgeFyy5xr2XvAWokPTHL
	 72xcDH9IZeMMSmjQdCcYr6nF6NfmGm6mdlUHiquDlF9oZO+mSMjMz8ctTyEGDJdhDb
	 cov5H6oH0TAZqIOOrSOcJp4A/Dp9dowrcK+e6wpjguHSG4IXOG7kgbD76Wm3i3/Bhf
	 1EA86SzrH6GT+rI8khiYOVvOiEPWnqRvMXRiRAxp5phckxPhPDh6Jpm1NJndSIBbdF
	 cAQJKUpTF1853xY91nHmNpIv4EfUGZdmaxPImRNVXSwicykew0lbUGVYF+9FtohVWk
	 2Ujau0j32rkLA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 86B43385C85
	for <usrp-users@lists.ettus.com>; Fri, 14 Mar 2025 10:23:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741962234; bh=EHuQLs7sdSAlCAVVYuJFtOwrYxoDlFlPU3KJoSG1/GE=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=vjzNtZ153zgelKt3frXu3Fp0UOzRhQ55kuM1LnsTdQBS17W87UYen8s5tefKo967/
	 LWXuRt6Knsm2w+pzOE5ncVAKvvfCIRH9LPCoaZ3c2XIvHh84FUbFRHOOeqiw0Bbhjr
	 J3kNHNx29jw5BVrHJQjv/ZaITUwvSwXftkuK/gmhl7lQk6j5Wajl40C2zwPYRhTZw7
	 Z9I+jzRFKsyeFZNvmI5yTZNR8v9z6zW9iSnZ/a3i2pxPNTVB4r7re3W85wplomwP/D
	 VCFVzhqyInhMdD8YylJ0OUGBMeQhBjJ12/huwU+wzMs+qdsH2GZJWRj8uG6LBqlHUY
	 +s7qMj+PgGpVQ==
Date: Fri, 14 Mar 2025 14:23:54 +0000
To: usrp-users@lists.ettus.com
Message-ID: <bwDyVMhi3m9ro0VQsYpPpR8BZ4APTSuYdeqSR8aU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: PH1P110MB1284B8E0B18F2CF195B4345F98D3A@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM
MIME-Version: 1.0
Message-ID-Hash: RSN4APNAPBCAWMLVPJW75J7BIFOIV6VK
X-Message-ID-Hash: RSN4APNAPBCAWMLVPJW75J7BIFOIV6VK
X-MailFrom: joerg.hofrichter@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXT] Re: Trouble updating file system on X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RSN4APNAPBCAWMLVPJW75J7BIFOIV6VK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "joerg.hofrichter--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: joerg.hofrichter@emerson.com
Content-Type: multipart/mixed; boundary="===============4223315768333725694=="

This is a multi-part message in MIME format.

--===============4223315768333725694==
Content-Type: multipart/alternative;
 boundary="b1_bwDyVMhi3m9ro0VQsYpPpR8BZ4APTSuYdeqSR8aU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_bwDyVMhi3m9ro0VQsYpPpR8BZ4APTSuYdeqSR8aU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

Did you check with =E2=80=98mender show-artifact=E2=80=99 and/or =E2=80=98=
uhd_config_info --version=E2=80=99 which version is active now?

What does \`uhd_usrp_probe=E2=80=99 return?

Please also note that the ethernet link speed of the SFP ports is defined=
 by the FPGA image which is active. The FPGA image flavors are described =
here: https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_updating_fp=
ga_types . This means that you need to load the X4_200, X4_400 or X4_1600=
 FPGA image if you want to use 10 GbE (QSFP28 Port 0 needs to be used - p=
lease check that you did not accidently connect QSFP28 Port 1). The CG_40=
0 and CG_1600 FPGA image is needed for 100 GbE (on both QSFP28 Port 0 and=
 QSFP28 Port 1).

Kind regards,\
J=C3=B6rg

--b1_bwDyVMhi3m9ro0VQsYpPpR8BZ4APTSuYdeqSR8aU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi!</p><p>Did you check with =E2=80=98mender show-artifact=E2=80=99 an=
d/or =E2=80=98uhd_config_info --version=E2=80=99 which version is active =
now?</p><p>What does `uhd_usrp_probe=E2=80=99 return?</p><p>Please also n=
ote that the ethernet link speed of the SFP ports is defined by the FPGA =
image which is active. The FPGA image flavors are described here: https:/=
/files.ettus.com/manual/page_usrp_x4xx.html#x4xx_updating_fpga_types . Th=
is means that you need to load the X4_200, X4_400 or X4_1600 FPGA image i=
f you want to use 10 GbE (QSFP28 Port 0 needs to be used - please check t=
hat you did not accidently connect QSFP28 Port 1). The CG_400 and CG_1600=
 FPGA image is needed for 100 GbE (on both QSFP28 Port 0 and QSFP28 Port =
1).</p><p>Kind regards,<br>J=C3=B6rg</p><p><br></p>


--b1_bwDyVMhi3m9ro0VQsYpPpR8BZ4APTSuYdeqSR8aU--

--===============4223315768333725694==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4223315768333725694==--
