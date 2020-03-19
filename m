Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2826718BCF7
	for <lists+usrp-users@lfdr.de>; Thu, 19 Mar 2020 17:45:12 +0100 (CET)
Received: from [::1] (port=44610 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jEyIA-00082n-8I; Thu, 19 Mar 2020 12:45:10 -0400
Received: from mail-qk1-f180.google.com ([209.85.222.180]:37572)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jEyI6-0007qe-1X
 for USRP-users@lists.ettus.com; Thu, 19 Mar 2020 12:45:06 -0400
Received: by mail-qk1-f180.google.com with SMTP id z25so3774129qkj.4
 for <USRP-users@lists.ettus.com>; Thu, 19 Mar 2020 09:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=hOt6b1C/RrUkIsuJ23UpchFDfZQ3npsTDk3Z+jynieo=;
 b=hsLlrLBwPqfA2HncLC/RaWmpmlqb98JXdpTjUXIfWRyXzb8KzyjUuOQfQthpLWRT5N
 zOERvzqPlLU4dsfT5nA177CVMTiYZG6vA9k+ddScMwvsbQq9daZkHFHN+hI18LqaZcYW
 H+eKu+dJlJohyvTi4AO0TntTbuXXeji/mBP6APx5RMxnx9+vKt3/PTkbVlCm95OWbOkB
 LwwgH1Mjg9a1ZpOKsljtiw86PUmT66s9ZREeLSqK4TMJjKnAmA6mKbhHhMheOaUxortt
 BiuaZ0IjxjfL/1EUzgf4V92sqRlExWmgUZPsxyctWeuHxgZH5Otw63pWcA72e3m3mdTu
 FG4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=hOt6b1C/RrUkIsuJ23UpchFDfZQ3npsTDk3Z+jynieo=;
 b=hg6MEfnwGz0fVs4+R3ApILhypN+4RAEBlpfEfYdoUpvMXcFYtP51XMtBvvtzMmA2vL
 kgQjPCtPqzQkmvY6LzadoicZTVRJwiXby5iElIzGFT8iC2wwXq2CYHat+R0HEvr0X7HB
 DOXKCqifLTFS4VWNuRcOse7CrJE5IUEoc2evhmCHUOlY71LZouvEJmyoAdTbjPJK/jIl
 ceaq2eYbtPJlU7RatEI7GNq+BE2qmoIuL/SoNxCxbo9jC2MZddEcrpB8XQgX1wgdpvJ0
 2rPT+79RuJVAPexNEcbp3pGN5iTmbjy6Yj/VAl3AhfjGE/acFHl+v8Ah76BfLLiaTpWH
 vfew==
X-Gm-Message-State: ANhLgQ2qQMEd864fsCgJVue00o1fhH+svPSHXuzExJu9MHCDllyI5Udl
 RYlAD3Y5vgmVn93PmjSAZxIQW1Nv
X-Google-Smtp-Source: ADFU+vtXs1yO8WchdTK1fxpLjyW0X5pMyDUZtLC72BUkxs6N2O83FKea6GFuplgv/WOpmojBZoB6yQ==
X-Received: by 2002:a05:620a:1671:: with SMTP id
 d17mr3811414qko.53.1584636265247; 
 Thu, 19 Mar 2020 09:44:25 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-12-204.dsl.bell.ca.
 [174.95.12.204])
 by smtp.gmail.com with ESMTPSA id n46sm2013079qtb.48.2020.03.19.09.44.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Mar 2020 09:44:24 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Thu, 19 Mar 2020 12:44:24 -0400
Message-Id: <9CDE9326-9BF7-4D29-81EF-DDA975BBA307@gmail.com>
References: <CACcka+344PO4uhAemdNLmEwGw+sGucMiXPuRkzFcY6ikwegU7g@mail.gmail.com>
In-Reply-To: <CACcka+344PO4uhAemdNLmEwGw+sGucMiXPuRkzFcY6ikwegU7g@mail.gmail.com>
To: Basse Ang <b4ss3k@gmail.com>
X-Mailer: iPhone Mail (17D50)
Subject: Re: [USRP-users] UHD SSL Error
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============6177542133782494787=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 


--===============6177542133782494787==
Content-Type: multipart/alternative; boundary=Apple-Mail-E11F5F32-D21E-4165-A9A6-FBF564AC44BD
Content-Transfer-Encoding: 7bit


--Apple-Mail-E11F5F32-D21E-4165-A9A6-FBF564AC44BD
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Ubuntu 14 is old enough that the CA certificate cache used by the SSL implem=
entation doesn=E2=80=99t have the CA certificate that used the certificate u=
sed by the Ettus server.=20

You really really should upgrade your system. Ubuntu 14 is ancient at this p=
oint.=20

Sent from my iPhone

> On Mar 19, 2020, at 11:36 AM, Basse Ang via USRP-users <usrp-users@lists.e=
ttus.com> wrote:
>=20
> =EF=BB=BF
> Hi
>=20
> just tried to install UHD into my ubuntu 14 hosts. doing for 2 months, I a=
lways ended with this error:
>=20
> oai@oai:~$ /usr/lib/uhd/utils/uhd_images_downloader.py
> [INFO] Images destination: /usr/share/uhd/images
> [INFO] No inventory file found at /usr/share/uhd/images/inventory.json. Cr=
eating an empty one.
> [ERROR] Downloader raised an unhandled exception: [Errno 1] _ssl.c:510: er=
ror:14090086:SSL routines:SSL3_GET_SERVER_CERTIFICATE:certificate verify fai=
led
> You can run this again with the '--verbose' flag to see more information
> If the problem persists, please email the output to: support@ettus.com
> oai@oai:~$ /usr/lib/uhd/utils/uhd_images_downloader.py --verbose
> [INFO] Images destination: /usr/share/uhd/images
> [INFO] No inventory file found at /usr/share/uhd/images/inventory.json. Cr=
eating an empty one.
> [DEBUG] URLs to download:
> usrp1/fpga-6bea23d/usrp1_b100_fw_default-g6bea23d.zip
> x3xx/fpga-bb85bdff/x3xx_x310_fpga_default-gbb85bdff.zip
> usrp2/fpga-6bea23d/usrp2_n210_fpga_default-g6bea23d.zip
> n230/fpga-bb85bdff/n230_n230_fpga_default-gbb85bdff.zip
> usrp1/fpga-6bea23d/usrp1_b100_fpga_default-g6bea23d.zip
> b2xx/fpga-bb85bdff/b2xx_b200_fpga_default-gbb85bdff.zip
> usrp2/fpga-6bea23d/usrp2_n200_fpga_default-g6bea23d.zip
> e3xx/fpga-bb85bdff/e3xx_e320_fpga_default-gbb85bdff.zip
> n3xx/fpga-bb85bdff/n3xx_n310_fpga_default-gbb85bdff.zip
> b2xx/fpga-bb85bdff/b2xx_b205mini_fpga_default-gbb85bdff.zip
> x3xx/fpga-bb85bdff/x3xx_x300_fpga_default-gbb85bdff.zip
> octoclock/uhd-14000041/octoclock_octoclock_fw_default-g14000041.zip
> usrp2/fpga-6bea23d/usrp2_usrp2_fw_default-g6bea23d.zip
> usrp2/fpga-6bea23d/usrp2_n200_fw_default-g6bea23d.zip
> usrp2/fpga-6bea23d/usrp2_usrp2_fpga_default-g6bea23d.zip
> b2xx/uhd-2bdad498/b2xx_common_fw_default-g2bdad498.zip
> n3xx/fpga-bb85bdff/n3xx_n320_fpga_default-gbb85bdff.zip
> b2xx/fpga-bb85bdff/b2xx_b200mini_fpga_default-gbb85bdff.zip
> usrp1/fpga-6bea23d/usrp1_usrp1_fpga_default-g6bea23d.zip
> usb/uhd-14000041/usb_common_windrv_default-g14000041.zip
> usrp2/fpga-6bea23d/usrp2_n210_fw_default-g6bea23d.zip
> n3xx/fpga-bb85bdff/n3xx_n300_fpga_default-gbb85bdff.zip
> e3xx/fpga-bb85bdff/e3xx_e310_fpga_default-gbb85bdff.zip
> b2xx/fpga-bb85bdff/b2xx_b210_fpga_default-gbb85bdff.zip
> [ERROR] Downloader raised an unhandled exception: [Errno 1] _ssl.c:510: er=
ror:14090086:SSL routines:SSL3_GET_SERVER_CERTIFICATE:certificate verify fai=
led
> You can run this again with the '--verbose' flag to see more information
> If the problem persists, please email the output to: support@ettus.com
> oai@oai:~$=20
>=20
>=20
> I have already udate my certificate, but it does not help.
>=20
> could anyone help me to figure out what should I do?
>=20
> Thank you
> Bass
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-E11F5F32-D21E-4165-A9A6-FBF564AC44BD
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Ubuntu 14 is old enough that the CA certifi=
cate cache used by the SSL implementation doesn=E2=80=99t have the CA certif=
icate that used the certificate used by the Ettus server.&nbsp;<div><br></di=
v><div>You really really should upgrade your system. Ubuntu 14 is ancient at=
 this point.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=
=3D"ltr"><br><blockquote type=3D"cite">On Mar 19, 2020, at 11:36 AM, Basse A=
ng via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br><br></blockqu=
ote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"lt=
r"><div dir=3D"ltr"><div>Hi<br><br></div>just tried to install UHD into my u=
buntu 14 hosts. doing for 2 months, I always ended with this error:<br><br>o=
ai@oai:~$ /usr/lib/uhd/utils/uhd_images_downloader.py<br>[INFO] Images desti=
nation: /usr/share/uhd/images<br>[INFO] No inventory file found at /usr/shar=
e/uhd/images/inventory.json. Creating an empty one.<br>[ERROR] Downloader ra=
ised an unhandled exception: [Errno 1] _ssl.c:510: error:14090086:SSL routin=
es:SSL3_GET_SERVER_CERTIFICATE:certificate verify failed<br>You can run this=
 again with the '--verbose' flag to see more information<br>If the problem p=
ersists, please email the output to: <a href=3D"mailto:support@ettus.com">su=
pport@ettus.com</a><br>oai@oai:~$ /usr/lib/uhd/utils/uhd_images_downloader.p=
y --verbose<br>[INFO] Images destination: /usr/share/uhd/images<br>[INFO] No=
 inventory file found at /usr/share/uhd/images/inventory.json. Creating an e=
mpty one.<br>[DEBUG] URLs to download:<br>usrp1/fpga-6bea23d/usrp1_b100_fw_d=
efault-g6bea23d.zip<br>x3xx/fpga-bb85bdff/x3xx_x310_fpga_default-gbb85bdff.z=
ip<br>usrp2/fpga-6bea23d/usrp2_n210_fpga_default-g6bea23d.zip<br>n230/fpga-b=
b85bdff/n230_n230_fpga_default-gbb85bdff.zip<br>usrp1/fpga-6bea23d/usrp1_b10=
0_fpga_default-g6bea23d.zip<br>b2xx/fpga-bb85bdff/b2xx_b200_fpga_default-gbb=
85bdff.zip<br>usrp2/fpga-6bea23d/usrp2_n200_fpga_default-g6bea23d.zip<br>e3x=
x/fpga-bb85bdff/e3xx_e320_fpga_default-gbb85bdff.zip<br>n3xx/fpga-bb85bdff/n=
3xx_n310_fpga_default-gbb85bdff.zip<br>b2xx/fpga-bb85bdff/b2xx_b205mini_fpga=
_default-gbb85bdff.zip<br>x3xx/fpga-bb85bdff/x3xx_x300_fpga_default-gbb85bdf=
f.zip<br>octoclock/uhd-14000041/octoclock_octoclock_fw_default-g14000041.zip=
<br>usrp2/fpga-6bea23d/usrp2_usrp2_fw_default-g6bea23d.zip<br>usrp2/fpga-6be=
a23d/usrp2_n200_fw_default-g6bea23d.zip<br>usrp2/fpga-6bea23d/usrp2_usrp2_fp=
ga_default-g6bea23d.zip<br>b2xx/uhd-2bdad498/b2xx_common_fw_default-g2bdad49=
8.zip<br>n3xx/fpga-bb85bdff/n3xx_n320_fpga_default-gbb85bdff.zip<br>b2xx/fpg=
a-bb85bdff/b2xx_b200mini_fpga_default-gbb85bdff.zip<br>usrp1/fpga-6bea23d/us=
rp1_usrp1_fpga_default-g6bea23d.zip<br>usb/uhd-14000041/usb_common_windrv_de=
fault-g14000041.zip<br>usrp2/fpga-6bea23d/usrp2_n210_fw_default-g6bea23d.zip=
<br>n3xx/fpga-bb85bdff/n3xx_n300_fpga_default-gbb85bdff.zip<br>e3xx/fpga-bb8=
5bdff/e3xx_e310_fpga_default-gbb85bdff.zip<br>b2xx/fpga-bb85bdff/b2xx_b210_f=
pga_default-gbb85bdff.zip<br>[ERROR] Downloader raised an unhandled exceptio=
n: [Errno 1] _ssl.c:510: error:14090086:SSL routines:SSL3_GET_SERVER_CERTIFI=
CATE:certificate verify failed<br>You can run this again with the '--verbose=
' flag to see more information<br>If the problem persists, please email the o=
utput to: <a href=3D"mailto:support@ettus.com">support@ettus.com</a><br>oai@=
oai:~$ <br><br><br></div><div>I have already udate my certificate, but it do=
es not help.<br><br></div><div>could anyone help me to figure out what shoul=
d I do?<br><br></div><div>Thank you<br></div><div>Bass<br></div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></body></html>=

--Apple-Mail-E11F5F32-D21E-4165-A9A6-FBF564AC44BD--


--===============6177542133782494787==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6177542133782494787==--

