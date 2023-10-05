Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FC87BA345
	for <lists+usrp-users@lfdr.de>; Thu,  5 Oct 2023 17:53:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 57D37385418
	for <lists+usrp-users@lfdr.de>; Thu,  5 Oct 2023 11:53:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696521183; bh=bHbPVE3CNEBI0Dc+jaj1ZHmkZdRc7w1huCfVlegz/4A=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Au5vSMLTFF1oh2eSh4Rc+DWbum8GPkVMkJ0/sbPckehpGiPhB0cQmPPeAjMI6lUHp
	 mDT7AdSgvVj7yvuNjRlH0k6Uj8sm0UjXrknB1FrOnua9ddmohbVoxDThj8+DRmsxjY
	 UwQKzNTOhUJsnFkqV+Jq2rvpQq8rJN6e7Hg7fkCBSJWOj0cStCPkTOdv7L/7rQDNaI
	 IzBvb4rJmaUBUYhIzAa3iD98RpHvr9zyqSXx679wGx2DiT+y8fqsLgB19m/ZYEhOT/
	 tKvulvEnB9cAHBwlbA7PXnCDLARNQgU2HjWDVEafnCLiotAaUagAzun3RlGizXXDRl
	 GqHseTdkLSmQg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D444C385396
	for <usrp-users@lists.ettus.com>; Thu,  5 Oct 2023 11:52:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696521154; bh=sMKYC1RTtTbRXGswDnxNKRzaT6zVjHncrxhTKi9EsUM=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=XZecDL1tETylxo1ZkKV6w0zVfdwydy55hWKB6WtWEQSmbpDDyUF0HyHNoH9jVDd9I
	 Ka9LRMEMMvIMfMWWwAQAnB7Xs9qUhT47NGZioxpvZoc/qrXIkhcnTr0VnZJ6HJWmr4
	 JIWk3Wdc+symUrADJpRxNB/biNCb+pj7C/6OCNbpXITnICQIPJQRi26l6qzTUx9Zyi
	 PhJwVMv9eAtAq7aChBJwcpg7TbPB+BxxA2QbxeTe8rvuX0Pg/UqPUg/h0rgtI/dY4W
	 0sX7iPf8bANSxkocLZk0LjdHAB0pna2+/rJgJp2e0vPmi+3yOfwPRtu5uG3lomXX/v
	 l3/BjvD5ZkzUw==
Date: Thu, 5 Oct 2023 15:52:34 +0000
To: usrp-users@lists.ettus.com
From: usama.khurram@hotmail.com
Message-ID: <kD9pULH193Yh1cqAp0vMudJJz0JS81oYxRh061SuBU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: eb80a5b9-cab8-5f06-a732-d0a64f7ae1bf@gmail.com
MIME-Version: 1.0
Message-ID-Hash: GPE7VD75O355YUJIJKLVA5Y5XJAG7L6R
X-Message-ID-Hash: GPE7VD75O355YUJIJKLVA5Y5XJAG7L6R
X-MailFrom: usama.khurram@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus, USRP N310, MPM major compat number mismatch error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GPE7VD75O355YUJIJKLVA5Y5XJAG7L6R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2988038584234392299=="

This is a multi-part message in MIME format.

--===============2988038584234392299==
Content-Type: multipart/alternative;
 boundary="b1_kD9pULH193Yh1cqAp0vMudJJz0JS81oYxRh061SuBU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_kD9pULH193Yh1cqAp0vMudJJz0JS81oYxRh061SuBU
Content-Type: text/plain; charset=us-ascii

So, i have improvement, i have changed the UHD version to 4.3.0.0, now getting some other errors despite it is already updated in my IMAGES folder. 

sama@modena:\~$ uhd_image_loader --args type=n3xx,addr=192.168.30.212

\[INFO\] \[UHD\] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.3.0.HEAD-0-g1f8fd345

\[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.30.212,type=n3xx,product=n310,serial=319841E,claimed=False,skip_init=1

\[WARNING\] \[MPM.PeriphManager\] Cannot run deinit(), device was never fully initialized!

\[INFO\] \[MPMD\] Claimed device without full initialization.

**Error: EnvironmentError: IOError: Could not find the image 'usrp_n310_fpga.bit' in the image directory /usr/local/share/uhd/images**

For more information regarding image paths, please refer to the UHD manual.

usama@modena:\~$ uhd_images_downloader

\[INFO\] Using base URL: https://files.ettus.com/binaries/cache/

\[INFO\] Images destination: /usr/local/share/uhd/images

\[ERROR\] Invalid permissions to write images destination

usama@modena:\~$ sudo uhd_images_downloader

\[INFO\] Using base URL: https://files.ettus.com/binaries/cache/

\[INFO\] Images destination: /usr/local/share/uhd/images

\[INFO\] Target x4xx_x410_fpga_default is up to date.

\[INFO\] Target x3xx_x310_fpga_default is up to date.

\[INFO\] Target x3xx_x300_fpga_default is up to date.

\[INFO\] Target e3xx_e310_sg1_fpga_default is up to date.

\[INFO\] Target e3xx_e310_sg3_fpga_default is up to date.

\[INFO\] Target e3xx_e320_fpga_default is up to date.

**\[INFO\] Target n3xx_n310_fpga_default is up to date.**

\[INFO\] Target n3xx_n300_fpga_default is up to date.

\[INFO\] Target n3xx_n320_fpga_default is up to date.

\[INFO\] Target b2xx_b200_fpga_default is up to date.

\[INFO\] Target b2xx_b200mini_fpga_default is up to date.

\[INFO\] Target b2xx_b210_fpga_default is up to date.

\[INFO\] Target b2xx_b205mini_fpga_default is up to date.

\[INFO\] Target b2xx_common_fw_default is up to date.

\[INFO\] Target usrp2_usrp2_fw_default is up to date.

\[INFO\] Target usrp2_usrp2_fpga_default is up to date.

\[INFO\] Target usrp2_n200_fpga_default is up to date.

\[INFO\] Target usrp2_n200_fw_default is up to date.

\[INFO\] Target usrp2_n210_fpga_default is up to date.

\[INFO\] Target usrp2_n210_fw_default is up to date.

\[INFO\] Target usrp1_usrp1_fpga_default is up to date.

\[INFO\] Target usrp1_b100_fpga_default is up to date.

\[INFO\] Target usrp1_b100_fw_default is up to date.

\[INFO\] Target octoclock_octoclock_fw_default is up to date.

\[INFO\] Target usb_common_windrv_default is up to date.

usama@modena:\~$

--b1_kD9pULH193Yh1cqAp0vMudJJz0JS81oYxRh061SuBU
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>So, i have improvement, i have changed the UHD version to 4.3.0.0, now g=
etting some other errors despite it is already updated in my IMAGES folder.=
 </p><p><br></p><p>sama@modena:~$ uhd_image_loader --args type=3Dn3xx,addr=
=3D192.168.30.212</p><p>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_1=
07400; UHD_4.3.0.HEAD-0-g1f8fd345</p><p>[INFO] [MPMD] Initializing 1 device=
(s) in parallel with args: mgmt_addr=3D192.168.30.212,type=3Dn3xx,product=
=3Dn310,serial=3D319841E,claimed=3DFalse,skip_init=3D1</p><p>[WARNING] [MPM=
.PeriphManager] Cannot run deinit(), device was never fully initialized!</p=
><p>[INFO] [MPMD] Claimed device without full initialization.</p><p><strong=
>Error: EnvironmentError: IOError: Could not find the image 'usrp_n310_fpga=
.bit' in the image directory /usr/local/share/uhd/images</strong></p><p>For=
 more information regarding image paths, please refer to the UHD manual.</p=
><p>usama@modena:~$ uhd_images_downloader</p><p>[INFO] Using base URL: http=
s://files.ettus.com/binaries/cache/</p><p>[INFO] Images destination: /usr/l=
ocal/share/uhd/images</p><p>[ERROR] Invalid permissions to write images des=
tination</p><p>usama@modena:~$ sudo uhd_images_downloader</p><p>[INFO] Usin=
g base URL: https://files.ettus.com/binaries/cache/</p><p>[INFO] Images des=
tination: /usr/local/share/uhd/images</p><p>[INFO] Target x4xx_x410_fpga_de=
fault is up to date.</p><p>[INFO] Target x3xx_x310_fpga_default is up to da=
te.</p><p>[INFO] Target x3xx_x300_fpga_default is up to date.</p><p>[INFO] =
Target e3xx_e310_sg1_fpga_default is up to date.</p><p>[INFO] Target e3xx_e=
310_sg3_fpga_default is up to date.</p><p>[INFO] Target e3xx_e320_fpga_defa=
ult is up to date.</p><p><strong>[INFO] Target n3xx_n310_fpga_default is up=
 to date.</strong></p><p>[INFO] Target n3xx_n300_fpga_default is up to date=
.</p><p>[INFO] Target n3xx_n320_fpga_default is up to date.</p><p>[INFO] Ta=
rget b2xx_b200_fpga_default is up to date.</p><p>[INFO] Target b2xx_b200min=
i_fpga_default is up to date.</p><p>[INFO] Target b2xx_b210_fpga_default is=
 up to date.</p><p>[INFO] Target b2xx_b205mini_fpga_default is up to date.<=
/p><p>[INFO] Target b2xx_common_fw_default is up to date.</p><p>[INFO] Targ=
et usrp2_usrp2_fw_default is up to date.</p><p>[INFO] Target usrp2_usrp2_fp=
ga_default is up to date.</p><p>[INFO] Target usrp2_n200_fpga_default is up=
 to date.</p><p>[INFO] Target usrp2_n200_fw_default is up to date.</p><p>[I=
NFO] Target usrp2_n210_fpga_default is up to date.</p><p>[INFO] Target usrp=
2_n210_fw_default is up to date.</p><p>[INFO] Target usrp1_usrp1_fpga_defau=
lt is up to date.</p><p>[INFO] Target usrp1_b100_fpga_default is up to date=
.</p><p>[INFO] Target usrp1_b100_fw_default is up to date.</p><p>[INFO] Tar=
get octoclock_octoclock_fw_default is up to date.</p><p>[INFO] Target usb_c=
ommon_windrv_default is up to date.</p><p>usama@modena:~$</p>

--b1_kD9pULH193Yh1cqAp0vMudJJz0JS81oYxRh061SuBU--

--===============2988038584234392299==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2988038584234392299==--
