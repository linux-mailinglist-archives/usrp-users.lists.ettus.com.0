Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B1FD711DCAB
	for <lists+usrp-users@lfdr.de>; Fri, 13 Dec 2019 04:45:54 +0100 (CET)
Received: from [::1] (port=35596 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ifbtn-0003tJ-Jb; Thu, 12 Dec 2019 22:45:51 -0500
Received: from mail-io1-f46.google.com ([209.85.166.46]:45546)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <padorin.kurpinsky@gmail.com>)
 id 1ifbtk-0003p6-CT
 for usrp-users@lists.ettus.com; Thu, 12 Dec 2019 22:45:48 -0500
Received: by mail-io1-f46.google.com with SMTP id i11so939286ioi.12
 for <usrp-users@lists.ettus.com>; Thu, 12 Dec 2019 19:45:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=h8SnfVCUxt68k1gXc0I5Xs2qAMcf1fg47VetiFfEjMU=;
 b=eFlh6Bqz3euucAnFKMDw2fmKCDAiewYQiMO2br6kXdLRK0pshvmQ94RQKv5SZ9RwqK
 l6ga6WDHeBbbn/a4jV8i4uNQquilrDnlayNfTiHi7B6OJr/Gy1jdC9404x426N+eDc2s
 tdSaaLh3Ens3YoZRxTc4UaLB51biVFJuo50YUyibjnY/BUUF5sg3tCroNR5QUkFtNu90
 HoTv83XnB0JVDZ6oAM+KNLwaphfyrf+lHrRzLVOtO20piAYOLp/yvGteegDb2WJPwbyT
 F5P1sGp8OuS4jSDSQUFoZIES9D+laqKxR9TDqmIEmULj/aRMYCew4RMOqlojaufoph8A
 6PAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=h8SnfVCUxt68k1gXc0I5Xs2qAMcf1fg47VetiFfEjMU=;
 b=RlvcTLBAMBXPBfjyCWKtUw3XC2xqDLoE2+gqLzKUjl+Ea+w4RAR08lMNS8x0gFgbbW
 NkghjA+mChud2qj7JcS9ABGYgKV3NA4XdzND0iLMAHSX5ncfqjTb69YWcS6D7twVNWjj
 H6jWkFZncv7Vf/ByaDA0zO8e3DutLCNmL2ddfISsFRr2ONnQTHvh8CNTwoGB8YgFia+m
 y/kNkfyPWowkba8644ldLPyy4wGpBSXj7NGlN7fNZMmOvtvJ8V0KhoPDSnztdQAg8EkG
 qMv86ur5sTlVVzj+9W0A3T9CaxKojOwMK9JyJZgVK/RHJ4jPHjnLE5f+dTuv1/h01/nL
 hejA==
X-Gm-Message-State: APjAAAUO0eEKPCVv0y9IiRE7trmTg/OvF33IMtPYU+/abTCBD/wZRLn/
 h0FTPZw08KsuMcnJHElekiNIzshSiMENL9F9Zj7fDz1R
X-Google-Smtp-Source: APXvYqyJ5xAA/qSqiqEGpXDfdbeDLkimY6GzDe8N/wETnv7Y2aSxEpebUDGDh/GUyLgxBJuGvNjuDq9X4K4qkicvKYs=
X-Received: by 2002:a05:6638:304:: with SMTP id
 w4mr11102687jap.81.1576208707420; 
 Thu, 12 Dec 2019 19:45:07 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 13 Dec 2019 12:44:56 +0900
Message-ID: <CAB3EzyLimQqAM+L9vH3YNvWpRPUVDDpjDRBemh-NF0j+MuB1sg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Does USRP B210 support 2x2 30.72Mhz sampling rate?
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
From: Padorin Kurpinsky via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Padorin Kurpinsky <padorin.kurpinsky@gmail.com>
Content-Type: multipart/mixed; boundary="===============6960895084747161997=="
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

--===============6960895084747161997==
Content-Type: multipart/alternative; boundary="000000000000190c3105998db04c"

--000000000000190c3105998db04c
Content-Type: text/plain; charset="UTF-8"

Hi all,

The USRP B210 spec [1] says it supports  30.72 MHz of instantaneous
bandwidth. However, If I run benchmark_rate, i.e., sudo ./benchmark_rate
--rx_rate 30.72e6 --tx_rate 30.72e6 --channels 0,1. Then, it shows a lot of
U and O. Is this because my host PC is not powerful enough? I'm using
i7-8750H. Thank you.

[1]
https://www.ettus.com/wp-content/uploads/2019/01/b200-b210_spec_sheet.pdf

--000000000000190c3105998db04c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>The USRP B210 spec [1] says it =
supports=C2=A0 30.72 MHz of instantaneous bandwidth. However, If I run benc=
hmark_rate, i.e., sudo ./benchmark_rate --rx_rate 30.72e6 --tx_rate 30.72e6=
 --channels 0,1. Then, it shows a lot of U and O. Is this because my host P=
C is not powerful enough? I&#39;m using i7-8750H. Thank you.</div><div><br>=
</div><div>[1]=C2=A0<a href=3D"https://www.ettus.com/wp-content/uploads/201=
9/01/b200-b210_spec_sheet.pdf">https://www.ettus.com/wp-content/uploads/201=
9/01/b200-b210_spec_sheet.pdf</a></div></div>

--000000000000190c3105998db04c--


--===============6960895084747161997==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6960895084747161997==--

