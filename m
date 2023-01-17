Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B5366D3E7
	for <lists+usrp-users@lfdr.de>; Tue, 17 Jan 2023 02:42:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8B73F384475
	for <lists+usrp-users@lfdr.de>; Mon, 16 Jan 2023 20:42:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673919730; bh=KKuQCxTbQbyTNn8UtngVVw4YWnPAZHOuXziPoD+WQPk=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=kt6CJegWEjMNlj2t3r6excc6pMfuxlSYdyk4pbicSc3tJWKYRUY7yWZgM+sLq35As
	 6LO6JY3RsazeFe9zD2Ip+rKsWZ86ioC/6rmtuOfgq8wq5zHEcgl7zihMLX9jzuV2jr
	 hxymGCgAr6VTZEl8cuNsK+SiSTeYfJNr1x4qEzhEFVMk/6MDEqQQYl7gn8hcU2pdyC
	 pnVPpx83i3AvYgappCfATGX/1x+hkJKQtPqIZJogrLs73HQ28Z1GPxITgqwSPffZA8
	 amtJIMeMndkqb18Fib18bdbskwzPD0H0AYsO5bYnOhQ+GfMCncCh9tJrfm/qKc+INZ
	 DDmaBIq0mgHkA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AF0C438407F
	for <usrp-users@lists.ettus.com>; Mon, 16 Jan 2023 20:40:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673919659; bh=2JaIhu5KRIESsB+SiUFMxxppnI1N9+31GXNU1vdRzEY=;
	h=Date:To:From:Subject:From;
	b=V5+OB6lorFMrwVnwCwrNUzp4CGepn5X8/KXORkrdr0v0awOQJ0vDkosPeAsuFS2Z3
	 5/LqGVRyU6q/7TnEpoHL+g3ZOIPABXfOW8A6iiFqZ7i44uT9Y83yZbBgWhX7fIaxQb
	 alhX8wZ6YPH4RgVM1yd0OgzhhEHka61ZaomekEv18mzGFEuZnnjJQQbKekU8ERl2Oq
	 FOmAgiI35yZg858qn3FPsWNJvbGkzBHhw3LTjtgCEA8RFI3Tfipw2C3UYeeg7YikN0
	 TD4rFSnBoPERWTlaFnGsy9MCBl9yVeoUfMnEDrIyRFwB9FfZ6MAS+ujMFG8fX8Wygz
	 qNrunbWu182OA==
Date: Tue, 17 Jan 2023 01:40:59 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <fSfpS1KhB3kz3iGNO2RbaKQnTkhbk5pH9FskJJMqQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 32MOKPZCNE6Z5NTVIHJNGMRLZ5AANMMB
X-Message-ID-Hash: 32MOKPZCNE6Z5NTVIHJNGMRLZ5AANMMB
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Which image to use for Ettus n321
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/32MOKPZCNE6Z5NTVIHJNGMRLZ5AANMMB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1602303614081806733=="

This is a multi-part message in MIME format.

--===============1602303614081806733==
Content-Type: multipart/alternative;
 boundary="b1_fSfpS1KhB3kz3iGNO2RbaKQnTkhbk5pH9FskJJMqQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_fSfpS1KhB3kz3iGNO2RbaKQnTkhbk5pH9FskJJMqQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I ran uhd_images_downloader and I get the following output=E2=80=A6

`[INFO] Images destination: /usr/local/share/uhd/images`

`[INFO] Target x4xx_x410_fpga_default is up to date.`

`[INFO] Target x3xx_x310_fpga_default is up to date.`

`[INFO] Target x3xx_x300_fpga_default is up to date.`

`[INFO] Target e3xx_e310_sg1_fpga_default is up to date.`

`[INFO] Target e3xx_e310_sg3_fpga_default is up to date.`

`[INFO] Target e3xx_e320_fpga_default is up to date.`

`[INFO] Target n3xx_n310_fpga_default is up to date.`

`[INFO] Target n3xx_n300_fpga_default is up to date.`

`[INFO] Target n3xx_n320_fpga_default is up to date.`

`[INFO] Target b2xx_b200_fpga_default is up to date.`

`[INFO] Target b2xx_b200mini_fpga_default is up to date.`

`[INFO] Target b2xx_b210_fpga_default is up to date.`

`[INFO] Target b2xx_b205mini_fpga_default is up to date.`

`[INFO] Target b2xx_common_fw_default is up to date.`

`[INFO] Target usrp2_usrp2_fw_default is up to date.`

`[INFO] Target usrp2_usrp2_fpga_default is up to date.`

`[INFO] Target usrp2_n200_fpga_default is up to date.`

`[INFO] Target usrp2_n200_fw_default is up to date.`

`[INFO] Target usrp2_n210_fpga_default is up to date.`

`[INFO] Target usrp2_n210_fw_default is up to date.`

`[INFO] Target usrp1_usrp1_fpga_default is up to date.`

`[INFO] Target usrp1_b100_fpga_default is up to date.`

`[INFO] Target usrp1_b100_fw_default is up to date.`

`[INFO] Target octoclock_octoclock_fw_default is up to date.`

`[INFO] Target usb_common_windrv_default is up to date.`

I have an ettus n321, however, It does not appear any of the images can b=
e used for it according to their names. Is it safe to just use the image =
=E2=80=9Cn3xx_n320_fpga_default=E2=80=9D

Thanks,

Joe

--b1_fSfpS1KhB3kz3iGNO2RbaKQnTkhbk5pH9FskJJMqQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I ran uhd_images_downloader and I get the following output=
=E2=80=A6</p><p><code>[INFO] Images destination: /usr/local/share/uhd/image=
s</code></p><p><code>[INFO] Target x4xx_x410_fpga_default is up to date.</c=
ode></p><p><code>[INFO] Target x3xx_x310_fpga_default is up to date.</code>=
</p><p><code>[INFO] Target x3xx_x300_fpga_default is up to date.</code></p>=
<p><code>[INFO] Target e3xx_e310_sg1_fpga_default is up to date.</code></p>=
<p><code>[INFO] Target e3xx_e310_sg3_fpga_default is up to date.</code></p>=
<p><code>[INFO] Target e3xx_e320_fpga_default is up to date.</code></p><p><=
code>[INFO] Target n3xx_n310_fpga_default is up to date.</code></p><p><code=
>[INFO] Target n3xx_n300_fpga_default is up to date.</code></p><p><code>[IN=
FO] Target n3xx_n320_fpga_default is up to date.</code></p><p><code>[INFO] =
Target b2xx_b200_fpga_default is up to date.</code></p><p><code>[INFO] Targ=
et b2xx_b200mini_fpga_default is up to date.</code></p><p><code>[INFO] Targ=
et b2xx_b210_fpga_default is up to date.</code></p><p><code>[INFO] Target b=
2xx_b205mini_fpga_default is up to date.</code></p><p><code>[INFO] Target b=
2xx_common_fw_default is up to date.</code></p><p><code>[INFO] Target usrp2=
_usrp2_fw_default is up to date.</code></p><p><code>[INFO] Target usrp2_usr=
p2_fpga_default is up to date.</code></p><p><code>[INFO] Target usrp2_n200_=
fpga_default is up to date.</code></p><p><code>[INFO] Target usrp2_n200_fw_=
default is up to date.</code></p><p><code>[INFO] Target usrp2_n210_fpga_def=
ault is up to date.</code></p><p><code>[INFO] Target usrp2_n210_fw_default =
is up to date.</code></p><p><code>[INFO] Target usrp1_usrp1_fpga_default is=
 up to date.</code></p><p><code>[INFO] Target usrp1_b100_fpga_default is up=
 to date.</code></p><p><code>[INFO] Target usrp1_b100_fw_default is up to d=
ate.</code></p><p><code>[INFO] Target octoclock_octoclock_fw_default is up =
to date.</code></p><p><code>[INFO] Target usb_common_windrv_default is up t=
o date.</code></p><p>I have an ettus n321, however, It does not appear any =
of the images can be used for it according to their names. Is it safe to ju=
st use the image =E2=80=9Cn3xx_n320_fpga_default=E2=80=9D</p><p><br></p><p>=
Thanks,</p><p>Joe</p>

--b1_fSfpS1KhB3kz3iGNO2RbaKQnTkhbk5pH9FskJJMqQ--

--===============1602303614081806733==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1602303614081806733==--
