Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 171839B7C97
	for <lists+usrp-users@lfdr.de>; Thu, 31 Oct 2024 15:18:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BE4CF386346
	for <lists+usrp-users@lfdr.de>; Thu, 31 Oct 2024 10:18:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730384328; bh=AYbFnbSHCioE6tMou1yx6ZSsnidmCKuJO/TGw3OHppw=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=NtGkfwWxXZQOQy0trqvwcmxOySDVbQFum7qqB7NEMv7yxSeoUSHAIrMbldYX6m+pS
	 ww6NuLLd+a1UnzbgE6eN8Qaw7rzSKJn+FjC6FQAO5Ovx8HbJo9jFDZh6PsNLCbLhhI
	 6WWAXdfPAv+LFQmQKl8bZ1sFe5x4ImmlYHgf3cmmuPWp5M3tAMor3Dtu5qv75qYq0s
	 NRWjbMIK9OmcXPhiWmpOqCEgtDBAj5xknG30VmwhjCLBriBTcMD28Cjwg9dAUBmyUp
	 NB5+B+ATTuKl5WrSeHhK6WfFKCc280XaDZP7gROVPweu/o+x8QOckB2xDCcjY0+qvr
	 WVcPipAntjFoQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 81E5B386143
	for <usrp-users@lists.ettus.com>; Thu, 31 Oct 2024 10:18:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730384314; bh=xGFFxyK2+XgD+4KClShwbCSy5hcL80Ha2hppbrFbc2I=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=mwGjv5hflorxCTTqKmffk2GizciRjRi7JhkBMi4E3y/c80uJIAQ3fTOBIbv0QuJrq
	 nfkBgTNB2FKuOo/+FZQWxCFEb7aaygQfVwOASg+soE2Htc+yFVSIayHa/8eOAp6Qg7
	 kIivn3e+V2ByYM5OIU8QKcaTV0s4aTbmF9RDimC5lVXHRPDKI4WJPl8gEYpyDPf8Os
	 QkF8/VtaIBwjRQQaITCETrBy7qoihjb9aNBk5njRBkkW7iMw6Yy4l/Cu4pUqZO+js4
	 2s6QdhJMcUbxPYYKPbyKlTVAfbfxHAYofow6LaZRvYIQY6Uok+YQdeWeyQh69UC58H
	 4GguSFeuk9L4g==
Date: Thu, 31 Oct 2024 14:18:34 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <MaeZAvnlBFsbC3cItZXE5YuOh4ZAwBdT47SrAQm8C8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: NDw2PYqB5g7SdXcvTs7TK4LjcVGVmolXP5iE5AIA8@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: FE434UP6C3YMTFVRHVR3SXSZFFJRMFBW
X-Message-ID-Hash: FE434UP6C3YMTFVRHVR3SXSZFFJRMFBW
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FE434UP6C3YMTFVRHVR3SXSZFFJRMFBW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3358669484921633154=="

This is a multi-part message in MIME format.

--===============3358669484921633154==
Content-Type: multipart/alternative;
 boundary="b1_MaeZAvnlBFsbC3cItZXE5YuOh4ZAwBdT47SrAQm8C8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_MaeZAvnlBFsbC3cItZXE5YuOh4ZAwBdT47SrAQm8C8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Mike,

When I did the port the most cumbersome part of it was device-tree (i.e. =
in terms of troubles-per-character). Probably the one reason was that I d=
idn=E2=80=99t know all the conventions that are used there. Or maybe that=
 some conventions were a bit illusory and each driver had its own. So whe=
n you say it might be because of device-tree my immediate reaction is =E2=
=80=98it=E2=80=99s ALWAYS device-tree=E2=80=99s fault=E2=80=98.

With the interrupts - the convention in Linux was silly as there is some =
offset between ZYNQ interrupt numbers and Linux=E2=80=99s interrupt numbe=
rs. I don=E2=80=99t remember what it was exactly, but something above 80.=
 You can check what interrupt numbers are used with: cat /proc/interrupts

Regarding the network boot - I remember now why I didn=E2=80=99t use the =
netboot_pxe - because in comparison with NI=E2=80=99s netboot it didn=E2=80=
=99t set some important variables like revision number. As a result wrong=
 device-tree was loaded - one of the symptoms can be seen on the control =
UART port. The builtin micro-controller prints a lot of errors.

So that more work is required to make PXE boot working and NI=E2=80=99s n=
etboot should be used for now. I don=E2=80=99t yet know how to make it mo=
re clean and robust. Currently it seems a bit messy, but at least it work=
s.

Best Regards,\
Piotr Krysik

--b1_MaeZAvnlBFsbC3cItZXE5YuOh4ZAwBdT47SrAQm8C8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello Mike,</p><p>When I did the port the most cumbersome part of it was=
 device-tree (i.e. in terms of troubles-per-character). Probably the one re=
ason was that I didn=E2=80=99t know all the conventions that are used there=
. Or maybe that some conventions were a bit illusory and each driver had it=
s own. So when you say it might be because of device-tree my immediate reac=
tion is =E2=80=98it=E2=80=99s ALWAYS device-tree=E2=80=99s fault=E2=80=
=98.</p><p>With the interrupts - the convention in Linux was silly as there=
 is some offset between ZYNQ interrupt numbers and Linux=E2=80=99s interrup=
t numbers. I don=E2=80=99t remember what it was exactly, but something abov=
e 80. You can check what interrupt numbers are used with: cat /proc/interru=
pts</p><p>Regarding the network boot - I remember now why I didn=E2=80=
=99t use the netboot_pxe - because in comparison with NI=E2=80=99s netboot =
it didn=E2=80=99t set some important variables like revision number. As a r=
esult wrong device-tree was loaded - one of the symptoms can be seen on the=
 control UART port. The builtin micro-controller prints a lot of errors.</p=
><p>So that more work is required to make PXE boot working and NI=E2=80=
=99s netboot should be used for now. I don=E2=80=99t yet know how to make i=
t more clean and robust. Currently it seems a bit messy, but at least it wo=
rks.</p><p>Best Regards,<br>Piotr Krysik</p><p><br></p>

--b1_MaeZAvnlBFsbC3cItZXE5YuOh4ZAwBdT47SrAQm8C8--

--===============3358669484921633154==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3358669484921633154==--
