Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8130A9BCA76
	for <lists+usrp-users@lfdr.de>; Tue,  5 Nov 2024 11:31:52 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 49401385A0F
	for <lists+usrp-users@lfdr.de>; Tue,  5 Nov 2024 05:31:51 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730802711; bh=ilxqIkfMjZyrBHM94p/mytNs8Fji95gE0zzefRsg44I=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=GnW93tgg+bXd1YN1dqa/9C0q/W4hakKOcyr2yh2NEmuBgwijETP/hN/1Kc2plknGe
	 ehjNvZQ55Q/Gbkk0qPVSXNG3ARRR0BFZIl7whSR5a/DfcXOqHyjiaB0IHJqOIScyKK
	 dPSScD+a4wBpf0fbHiVHG4sUGw/oB/Zf606H+e/jTlyufetkKrW6OjQfqmei8IoGGK
	 mOAykUfNOXS/hDcvMJTtDH+ud9F5GxIxJnFqdWMzgO2l6kz3dNpRa+rb+e08U1hmFt
	 7SKJ7Gp6hxlWrmLQ6qRiGv+fKCW83KZSHMUPfX8sdU1JOmAssxCVKmkx8rsATkL9wr
	 rYEugZdow6kAw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 719A2385823
	for <usrp-users@lists.ettus.com>; Tue,  5 Nov 2024 05:31:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730802664; bh=fofPoHV0hD+Jdh0QUkTe6Kmo2lKUF1gE34CWspQxY7M=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=JDz1qrZycAzdafINaGAc9u5Jfcx7Bbc1SUJxw5we1Bd2gYaXgsRhvYmJPI69rrzDt
	 6urro8Mz+2IVbH0xiePnq2jr32abRNcZnBJ/04zsKhmDXt9gktbob8nRpeMtlq1eRa
	 d7si3rkDXbhOr2YolyPrxiIjB9Z7KuH05+z8t7sdJa5PNxzpbZYogtDx/743wKHPIG
	 ZxotzxBjyNfXLIJalouPiPaMkC/dz7cbZpReCAl9malwsZjeQFp5yrpyzBfzGGA/yx
	 /qD6INB3mkYckx3SH+2yR5Gkfhvg/sCXwRXt9nAWskCzenulaZ+85ChXDKHfFKLS3F
	 Dy8nOjYDPNmzQ==
Date: Tue, 5 Nov 2024 10:31:04 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <s2yGmwm1bd2g2rt3seE3QgA0P0NJeyOnxSd8ymHDGw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: Yvw2Bw6DDQD6Lc3mUNHrpa299kSvPTEkM1Wsy3HbvaY@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: IBWFZJIB4QHFHILZGG5MGJ6WMUXFULV7
X-Message-ID-Hash: IBWFZJIB4QHFHILZGG5MGJ6WMUXFULV7
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IBWFZJIB4QHFHILZGG5MGJ6WMUXFULV7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6135985730601917163=="

This is a multi-part message in MIME format.

--===============6135985730601917163==
Content-Type: multipart/alternative;
 boundary="b1_s2yGmwm1bd2g2rt3seE3QgA0P0NJeyOnxSd8ymHDGw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_s2yGmwm1bd2g2rt3seE3QgA0P0NJeyOnxSd8ymHDGw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Mike,

One thing that sped up development for me regarding device-tree was abili=
ty to reload it quickly after changes. The quickest option to load device=
-tree for FPGA code is to modify related device-tree overlay, compile it =
manually and reload it without restarting the device. To compile default =
device-tree you can execute following commands from =E2=80=98uhd/fpga/usr=
p3/top/x400/dts=E2=80=99 directory:

gcc -I ./ -E -nostdinc -undef -D__DTS__ -x assembler-with-cpp -o usrp_x41=
0_fpga_X4.dts.preprocessed usrp_x410_fpga_X4.dts

dtc -I dts -O dtb -o x410_X4.dtbo -b 0 -@ usrp_x410_fpga_X4.dts.preproces=
sed

Your modifications you can put in some file and include it in =E2=80=98us=
rp_x410_fpga_X4.dts=E2=80=99.

The =E2=80=98x410_X4.dtbo=E2=80=99 file can be copied to =E2=80=98/lib/fi=
rmware=E2=80=99 directory in USRP=E2=80=99s filesystem. You can back-up y=
our =E2=80=98x410.dtbo=E2=80=99 and create symbolic link to =E2=80=98x410=
.dtbo ->  x410_X4.dtbo=E2=80=99.

The overlay is reloaded when =E2=80=98usrp-hwd=E2=80=99 service (which ex=
ecutes =E2=80=98usrp_hwd.py=E2=80=99 program) is loaded:\
systemctl restart usrp-hwd

The DT overlay can be reloaded manually in bash. I=E2=80=99m using follow=
ing script for this:

OVERLAY_NAME=3D=E2=80=9Dx410_X4"

echo ${OVERLAY_NAME}

SYSFS_OVERLAY_BASE_DIR=3D/sys/kernel/config/device-tree/overlays

if \[ -d ${SYSFS_OVERLAY_BASE_DIR}/${OVERLAY_NAME} \]; then

  rmdir  ${SYSFS_OVERLAY_BASE_DIR}/${OVERLAY_NAME}

fi

rmdir ${SYSFS_OVERLAY_BASE_DIR}/\*

cp -f ${OVERLAY_NAME}.{bin,dtbo} /lib/firmware

mkdir ${SYSFS_OVERLAY_BASE_DIR}/${OVERLAY_NAME}

echo ${OVERLAY_NAME}.dtbo > ${SYSFS_OVERLAY_BASE_DIR}/${OVERLAY_NAME}/pat=
h

Another useful script is =E2=80=98fpga_bit_to_bin.py=E2=80=99 that is som=
ewhere in UHD. It is much faster and convenient to use than Vivado=E2=80=99=
s tcl scripts for conversion between =E2=80=98bit=E2=80=99 format (that V=
ivado generates) and =E2=80=98bin=E2=80=99 format (that is expected by =E2=
=80=98usrp_hwd.py=E2=80=99).

Best Regards,\
Piotr Krysik

--b1_s2yGmwm1bd2g2rt3seE3QgA0P0NJeyOnxSd8ymHDGw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello Mike,</p><p>One thing that sped up development for me regarding de=
vice-tree was ability to reload it quickly after changes. The quickest opti=
on to load device-tree for FPGA code is to modify related device-tree overl=
ay, compile it manually and reload it without restarting the device. To com=
pile default device-tree you can execute following commands from =E2=80=
=98uhd/fpga/usrp3/top/x400/dts=E2=80=99 directory:</p><p>gcc -I ./ -E -nost=
dinc -undef -D__DTS__ -x assembler-with-cpp -o usrp_x410_fpga_X4.dts.prepro=
cessed usrp_x410_fpga_X4.dts</p><p>dtc -I dts -O dtb -o x410_X4.dtbo -b 0 -=
@ usrp_x410_fpga_X4.dts.preprocessed</p><p>Your modifications you can put i=
n some file and include it in =E2=80=98usrp_x410_fpga_X4.dts=E2=80=99.</p><=
p>The =E2=80=98x410_X4.dtbo=E2=80=99 file can be copied to =E2=80=98/lib/fi=
rmware=E2=80=99 directory in USRP=E2=80=99s filesystem. You can back-up you=
r =E2=80=98x410.dtbo=E2=80=99 and create symbolic link to =E2=80=98x410.dtb=
o -&gt;  x410_X4.dtbo=E2=80=99.</p><p>The overlay is reloaded when =
=E2=80=98usrp-hwd=E2=80=99 service (which executes =E2=80=98usrp_hwd.py=
=E2=80=99 program) is loaded:<br>systemctl restart usrp-hwd</p><p>The DT ov=
erlay can be reloaded manually in bash. I=E2=80=99m using following script =
for this:<br><br></p><p>OVERLAY_NAME=3D=E2=80=9Dx410_X4"</p><p>echo ${OVERL=
AY_NAME}</p><p>SYSFS_OVERLAY_BASE_DIR=3D/sys/kernel/config/device-tree/over=
lays</p><p>if [ -d ${SYSFS_OVERLAY_BASE_DIR}/${OVERLAY_NAME} ]; then</p><p>=
  rmdir  ${SYSFS_OVERLAY_BASE_DIR}/${OVERLAY_NAME}</p><p>fi</p><p>rmdir ${S=
YSFS_OVERLAY_BASE_DIR}/*</p><p>cp -f ${OVERLAY_NAME}.{bin,dtbo} /lib/firmwa=
re</p><p>mkdir ${SYSFS_OVERLAY_BASE_DIR}/${OVERLAY_NAME}</p><p>echo ${OVERL=
AY_NAME}.dtbo &gt; ${SYSFS_OVERLAY_BASE_DIR}/${OVERLAY_NAME}/path</p><p><br=
></p><p>Another useful script is =E2=80=98fpga_bit_to_bin.py=E2=80=99 that =
is somewhere in UHD. It is much faster and convenient to use than Vivado=
=E2=80=99s tcl scripts for conversion between =E2=80=98bit=E2=80=99 format =
(that Vivado generates) and =E2=80=98bin=E2=80=99 format (that is expected =
by =E2=80=98usrp_hwd.py=E2=80=99).</p><p>Best Regards,<br>Piotr Krysik</p>

--b1_s2yGmwm1bd2g2rt3seE3QgA0P0NJeyOnxSd8ymHDGw--

--===============6135985730601917163==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6135985730601917163==--
