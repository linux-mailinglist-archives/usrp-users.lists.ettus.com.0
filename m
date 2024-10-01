Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C972D98C27D
	for <lists+usrp-users@lfdr.de>; Tue,  1 Oct 2024 18:10:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 487AA385163
	for <lists+usrp-users@lfdr.de>; Tue,  1 Oct 2024 12:10:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727799003; bh=JxGQBFwdV68sjEz12Xwm5CoB6D19owugtAUR7tHT03s=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=nA6+zkMBWNPN3Xv3E4EHD9kiBuM2cQxm0R/Ef2pFkNIE3/Z2lgVrK2wPbCCk55LCT
	 OAQ0xJ/M91A6OVKlQecAF4hkpDF1hXjTbyzUurQYKcrKZkQVvwzXV9xLnTmnCLqvwW
	 5WMJEWcXB8zay/YC0ijLXG7l4Zz59kXEXq/kenGdFRU4617ipO9/ae4ZhqG4KNyWXi
	 5u+Lw+IAfMAojb0en6CSVZNuyyrJltcTNsTsI/MjH5XUPrtL1cCvla5i4thYgxDNow
	 GU0FelTLdCPy5H0oOLJ2jijiroC9m0rkhbq4od0vlzKUJ06PXV2yiSfVUqa/QJFDpf
	 cdselhCBQzbyA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E5F36384E7A
	for <usrp-users@lists.ettus.com>; Tue,  1 Oct 2024 12:09:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727798998; bh=0w3K9WH20nXZHWNlL0ttQQuMaX1wDUrOYt2Dmv099Hk=;
	h=Date:To:From:Subject:From;
	b=pUH9TzexW5jkGjnSYXB3k3Gj3VYd2bRZaJ0XLhR359wwY2Lzh9uRbjhwvkeYn/32f
	 BLXzmkGM/jPz1+/afoCNOAGvCRQcVdfKZ6ciQ74Q9L4vahGuNPB2h7BTJ6ToMbxij3
	 zX7+ZHjk1eoXmMGrqqLdvlCGGb5SbmAwQ+soCgJIym16xIvuESSx61wom+DgjYKxNk
	 S/FqtDCD2FULR/Owv5Lxi6FSaZ5JQHgJ4n4mAxHXireBDMBT37O2yBsmpHqgd2hPUE
	 H3A4d/cX+UsvzbmdejbiUzYZ7YR2clrG/gPhWq5gDKI9gzPi6WRXhUAsYEWbKdrdSA
	 IOaEf42ape7bA==
Date: Tue, 1 Oct 2024 16:09:58 +0000
To: usrp-users@lists.ettus.com
Message-ID: <U4mx9FzgikzVEzY3DLPLwFHaGd0AKrLVBvCkUpi08Us@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: MHKZZQRL2OAQDI2FUYWNHHYC5VQ5R7YF
X-Message-ID-Hash: MHKZZQRL2OAQDI2FUYWNHHYC5VQ5R7YF
X-MailFrom: mruane@silveredge-gs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MHKZZQRL2OAQDI2FUYWNHHYC5VQ5R7YF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: mruane--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: mruane@silveredge-gs.com
Content-Type: multipart/mixed; boundary="===============5123183528426554932=="

This is a multi-part message in MIME format.

--===============5123183528426554932==
Content-Type: multipart/alternative;
 boundary="b1_U4mx9FzgikzVEzY3DLPLwFHaGd0AKrLVBvCkUpi08Us"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_U4mx9FzgikzVEzY3DLPLwFHaGd0AKrLVBvCkUpi08Us
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all!

I=E2=80=99m an FPGA developer, dragged into the Yocto world a few years a=
go with the move to Zynq and ZynqMP architectures.   As a research group,=
 we mainly develop on Xilinx dev boards like the ZCU102 MPSoC, and ZCU111=
 RFSoC.

Having recent success adding the Xillinx Deep-Learning Processor (DPU) to=
 the FPGA fabric, building the Vitis-AI libraries into the rootfs, and ac=
celerating ML applications on various models, we decided to move things o=
ver to an x410 to take advantage of the RFSoC in a complete SDR product.

The FPGA design was straight forward, and the Make-based FPGA build scrip=
ts, which I am typically not a fan of, was quite well thought out, worked=
 wonderfully, and was easy to modify to customize the flow, and add chang=
es to the block design.   With a little digging, it was also fairly strai=
ghtforward to incorporate the changes into the XSA/device tree for use in=
 building the rootfs.

Incorporating the Vitis-AI libraries and DPU drivers into the KAS/Kirksto=
ne/Mender/Titanium build system is another story.   Long story short, aft=
er the typical, lengthy, Yocto debug process, it ultimately fails at what=
 seems to be a kernel incompatibility between the mainline kernel and the=
 Vitis-AI requirements.   This particular time, it manifests as syntax er=
rors in the zocl module compilation, though I suspect it is actually a ca=
scading series of failures that can not be solved one at a time.

Researching the failure on the Xilinx forum leads to assertions that cert=
ain parts of the Vitis-AI libraries (as well as many other Xilinx applica=
tions that exercise features of the FPGA) require the Xilinx fork of the =
Linux Kernel, linux-xlnx.

Has anyone attempted to switch kernels in a UHD system, or to integrate t=
he linux-xlnx kernel features into the UHD kernel?

--b1_U4mx9FzgikzVEzY3DLPLwFHaGd0AKrLVBvCkUpi08Us
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi all!</p><p>I=E2=80=99m an FPGA developer, dragged into the Yocto worl=
d a few years ago with the move to Zynq and ZynqMP architectures.   As a re=
search group, we mainly develop on Xilinx dev boards like the ZCU102 MPSoC,=
 and ZCU111 RFSoC.</p><p>Having recent success adding the Xillinx Deep-Lear=
ning Processor (DPU) to the FPGA fabric, building the Vitis-AI libraries in=
to the rootfs, and accelerating ML applications on various models, we decid=
ed to move things over to an x410 to take advantage of the RFSoC in a compl=
ete SDR product.</p><p>The FPGA design was straight forward, and the Make-b=
ased FPGA build scripts, which I am typically not a fan of, was quite well =
thought out, worked wonderfully, and was easy to modify to customize the fl=
ow, and add changes to the block design.   With a little digging, it was al=
so fairly straightforward to incorporate the changes into the XSA/device tr=
ee for use in building the rootfs.</p><p>Incorporating the Vitis-AI librari=
es and DPU drivers into the KAS/Kirkstone/Mender/Titanium build system is a=
nother story.   Long story short, after the typical, lengthy, Yocto debug p=
rocess, it ultimately fails at what seems to be a kernel incompatibility be=
tween the mainline kernel and the Vitis-AI requirements.   This particular =
time, it manifests as syntax errors in the zocl module compilation, though =
I suspect it is actually a cascading series of failures that can not be sol=
ved one at a time.</p><p>Researching the failure on the Xilinx forum leads =
to assertions that certain parts of the Vitis-AI libraries (as well as many=
 other Xilinx applications that exercise features of the FPGA) require the =
Xilinx fork of the Linux Kernel, linux-xlnx.</p><p>Has anyone attempted to =
switch kernels in a UHD system, or to integrate the linux-xlnx kernel featu=
res into the UHD kernel?</p>

--b1_U4mx9FzgikzVEzY3DLPLwFHaGd0AKrLVBvCkUpi08Us--

--===============5123183528426554932==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5123183528426554932==--
