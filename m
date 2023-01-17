Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE8B670C2F
	for <lists+usrp-users@lfdr.de>; Tue, 17 Jan 2023 23:54:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CFECB3842AD
	for <lists+usrp-users@lfdr.de>; Tue, 17 Jan 2023 17:54:01 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673996041; bh=ALOs1MELM/Ukj58KgpbV+81QzP5CdulisfBHG7oLUs8=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=RPXCWq0CfCYAB2xqJlJzDUJYceLzy4Yp5eXtfD+KziqG+FHN8K38nErYGwMTffaP3
	 ieKoQV5yyOk4GCxfFjlXjXCUrEab5UJqP6JX9nos1jaI8ZgpEaOnOl4sA0X4n3k66S
	 gLVy9G11kTfTiXh640M6tW/qd9pS58guhwcVmg10M4Q0W3yRlNO4lfMv+OF2ZYpGIw
	 2Roz+UqoVaB7l8ldkFnpQz9si5w82tgE9WsGf9ibhUjDu/YzvfuM6Rx91wcAkdWMIy
	 0TaV6w68SA1CB+rUg20cBiKum0DzChFJ2mYGUJkKLMCwEM8GDZ8FvnT9ElxjqaKpU8
	 Cl3RXRLn8IYeQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0CF93384083
	for <usrp-users@lists.ettus.com>; Tue, 17 Jan 2023 17:52:49 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673995969; bh=NknBTsHZVP+Z5lMDGxuFNwd1oBu1zwNGdptgxUplhpw=;
	h=Date:To:From:Subject:From;
	b=vVI9S+6XlXjI6YoY+IoDwo4aL9tMcrR/jZBDWmekD2IUV3F2cvSpXe8RJJYavzqjA
	 0ad6xF4nkJe5vvJnUcSgIpZYfLw1cEE5wvrmNqsApvpsdQPTGUbLBhnhEdXyCVklVL
	 OvdTY1lAJxa0rLeYAAz/Wi0g5YSFjeHHK2g7wzeeryVOsauyBp7Nozodw0bBlcaArj
	 GdamBigqViOqvqkhciTWcw5LLN8aIELWaFjKJ9TD+eNm16Sg7sZ4IOYi/NxCBwfA/P
	 sAXRyZmHdpwDrUde7BEwiZI57f9RtQGXSeDFGUDrqHOYKqf6uATRNsqQKsmTDEyYdq
	 yU70WhSloo9Jw==
Date: Tue, 17 Jan 2023 22:52:49 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <rUpbJzimNmayXIaB27UEwJGDnfJRgoDNRs3mUMvLwQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 3O266A4KJM6COJHGRAVE3G3RS4Y2PID4
X-Message-ID-Hash: 3O266A4KJM6COJHGRAVE3G3RS4Y2PID4
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Running "make xsim"
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3O266A4KJM6COJHGRAVE3G3RS4Y2PID4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4841210993789444198=="

This is a multi-part message in MIME format.

--===============4841210993789444198==
Content-Type: multipart/alternative;
 boundary="b1_rUpbJzimNmayXIaB27UEwJGDnfJRgoDNRs3mUMvLwQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_rUpbJzimNmayXIaB27UEwJGDnfJRgoDNRs3mUMvLwQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I am currently following the instructions listed at this link: https://fi=
les.ettus.com/manual/md_usrp3_sim_running_testbenches.html

I am currently having trouble making the testbench for the N321. I have b=
een able to successfully build the project, however, I am confused in reg=
ards to getting the simulation running on Vivado.=20

In which directory should I make the command =E2=80=9Cmake xsim.=E2=80=9D=
 I found a folder =E2=80=9C/workarea/uhd/fpga/usrp3/top/n3xx/sim=E2=80=9D=
 with 6 directories, each with a Makefile and testbench systemverilog fil=
e. Is there something I should do with those? When I run =E2=80=9Cmake xs=
im=E2=80=9D in them, I get a =E2=80=9CNo rule to make target=E2=80=9D err=
or.

Thanks

Joe

--b1_rUpbJzimNmayXIaB27UEwJGDnfJRgoDNRs3mUMvLwQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I am currently following the instructions listed at this =
link: https://files.ettus.com/manual/md_usrp3_sim_running_testbenches.htm=
l</p><p>I am currently having trouble making the testbench for the N321. =
I have been able to successfully build the project, however, I am confuse=
d in regards to getting the simulation running on Vivado. </p><p>In which=
 directory should I make the command =E2=80=9Cmake xsim.=E2=80=9D I found=
 a folder =E2=80=9C/workarea/uhd/fpga/usrp3/top/n3xx/sim=E2=80=9D with 6 =
directories, each with a Makefile and testbench systemverilog file. Is th=
ere something I should do with those? When I run =E2=80=9Cmake xsim=E2=80=
=9D in them, I get a =E2=80=9CNo rule to make target=E2=80=9D error.</p><=
p>Thanks</p><p>Joe</p>


--b1_rUpbJzimNmayXIaB27UEwJGDnfJRgoDNRs3mUMvLwQ--

--===============4841210993789444198==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4841210993789444198==--
