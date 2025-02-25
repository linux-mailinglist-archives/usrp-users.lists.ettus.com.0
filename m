Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 92922A44154
	for <lists+usrp-users@lfdr.de>; Tue, 25 Feb 2025 14:51:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3E866385D2E
	for <lists+usrp-users@lfdr.de>; Tue, 25 Feb 2025 08:51:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740491516; bh=fRGzukxKvjm10TsfCjkJtqkCfblecIE36yMaXSd6IyE=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=uiqF/Hcc556s7XJncU+mhxXF3Lh2tzUKctVCGSx5mb8mj/8l+oLEYheCW9457F4Qp
	 t/OuTB3o5Ui3cWe3+8Tzixjp85PwBWu4+VSaIpWql8oksl0aZXHsc79AbSbntc8vKf
	 fODoFcgN9FBzTNbPk2D6XTMOBQfXXi4a/7wK+7GWPo9YIENHsUJlbxlJUygzZGaSUN
	 pTjldbGVlcuOOOl3AvZes+189PC3ELTB2/JdRcA/38+TUY1QSiwMZ9MdHu/wCDBqXo
	 ckmhzNaPr6TkMwovZeIdEuiOcJgMg0rulXcuCS8iBWoU1fHsUfzBshB4Uke60OCkk8
	 HAQepPuiNY+uQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 64B67385CCC
	for <usrp-users@lists.ettus.com>; Tue, 25 Feb 2025 08:50:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740491455; bh=Aqf2NdGWgUVQZ9E9uqKLfPcTAEBhqPanaIbEAurAkrE=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Idm6jVV4RrAV268kyZvRYlAaZMjUliEzj8q+2n6kXpTFscd48f+8JbwtPlRkWJvya
	 C6Ho4No7oNJZiJrf3JTGX8pMrGSDsaZ+uK+DJGwY2+IRa2cfxs34N8pqWC+xwYOHSt
	 6frXnWrxPA6I/XnIHnf4GSYmjz41BzfBCnihDa2kchv5v/tzoyYsir4LBog2Q/0wD2
	 y1D4VcSD1bfAt7LHzNr0ttMSS4NKJ4a3YheUmn3uteYrpaRCosfPdn/kXm+ytNV80v
	 5IQKm8ivwkAXu72OUoUoUfw7O6NybJSpeSTpn8GnPgU76U1JJ/x4+GNMy3ujeWLAkE
	 HVdG8lODQWRKg==
Date: Tue, 25 Feb 2025 13:50:55 +0000
To: usrp-users@lists.ettus.com
From: anjana.krishnan@technosci.com
Message-ID: <rNy1xvMCPUNPS1D1vD47ji2ZG7z7Ht7wYq8BKmVA4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A4vAFttf8nLxu6bHV67A-UXaqe49wLsihNofbP2+xeQHA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: TI7JKXWQEMJ63O6KBBEO55E6PRZ6GD3K
X-Message-ID-Hash: TI7JKXWQEMJ63O6KBBEO55E6PRZ6GD3K
X-MailFrom: anjana.krishnan@technosci.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Build UHD image from GRC file
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TI7JKXWQEMJ63O6KBBEO55E6PRZ6GD3K/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2035109568931489954=="

This is a multi-part message in MIME format.

--===============2035109568931489954==
Content-Type: multipart/alternative;
 boundary="b1_rNy1xvMCPUNPS1D1vD47ji2ZG7z7Ht7wYq8BKmVA4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_rNy1xvMCPUNPS1D1vD47ji2ZG7z7Ht7wYq8BKmVA4
Content-Type: text/plain; charset=us-ascii

Hi Martin,

I have updated to UHD4.8, GNU Radio v3.10.12 and Vivado v2021.1_AR76780 in Ubuntu22.04.

The rfnoc_image_builder is giving error:

`Executing the following command: . ./setupenv.sh && make X310_XG BUILD_DIR=<repo>/uhd/fpga/usrp3/top/x300/build-x310_image_core IMAGE_CORE_NAME=x310_image_core SYNTH=1`

`/bin/sh: 6: ./setupenv.sh: Bad substitution`

`/bin/sh: 8: ./setupenv.sh: declare: not found`

`/bin/sh: 9: ./setupenv.sh: PRODUCT_ID_MAP[X300]=kintex7/xc7k325t/ffg900/-2: not found`

`/bin/sh: 10: ./setupenv.sh: PRODUCT_ID_MAP[X310]=kintex7/xc7k410t/ffg900/-2: not found`

`/bin/sh: 16: ./setupenv.sh: source: not found`

`Build finished with return code 127.`

But when I run the command in terminal,

. ./setupenv.sh && make X310_XG BUILD_DIR=<repo>/uhd/fpga/usrp3/top/x300/build-x310_image_core IMAGE_CORE_NAME=x310_image_core SYNTH=1 

the bistream generation starts and completes successfully. This is observed for both yaml and grc files.

Can you please help resolve the error.

Thank you in advance.

--b1_rNy1xvMCPUNPS1D1vD47ji2ZG7z7Ht7wYq8BKmVA4
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi Martin,</p><p>I have updated to UHD4.8, GNU Radio v3.10.12 and Vivado=
 v2021.1_AR76780 in Ubuntu22.04.</p><p>The rfnoc_image_builder is giving er=
ror:</p><p><code>Executing the following command: . ./setupenv.sh &amp;&amp=
; make X310_XG BUILD_DIR=3D&lt;repo&gt;/uhd/fpga/usrp3/top/x300/build-x310_=
image_core IMAGE_CORE_NAME=3Dx310_image_core SYNTH=3D1</code></p><p><code>/=
bin/sh: 6: ./setupenv.sh: Bad substitution</code></p><p><code>/bin/sh: 8: .=
/setupenv.sh: declare: not found</code></p><p><code>/bin/sh: 9: ./setupenv.=
sh: PRODUCT_ID_MAP[X300]=3Dkintex7/xc7k325t/ffg900/-2: not found</code></p>=
<p><code>/bin/sh: 10: ./setupenv.sh: PRODUCT_ID_MAP[X310]=3Dkintex7/xc7k410=
t/ffg900/-2: not found</code></p><p><code>/bin/sh: 16: ./setupenv.sh: sourc=
e: not found</code></p><p><code>Build finished with return code 127.</code>=
</p><p>But when I run the command in terminal,</p><p>. ./setupenv.sh &amp;&=
amp; make X310_XG BUILD_DIR=3D&lt;repo&gt;/uhd/fpga/usrp3/top/x300/build-x3=
10_image_core IMAGE_CORE_NAME=3Dx310_image_core SYNTH=3D1 </p><p>the bistre=
am generation starts and completes successfully. This is observed for both =
yaml and grc files.</p><p>Can you please help resolve the error.</p><p><br>=
</p><p>Thank you in advance.</p>

--b1_rNy1xvMCPUNPS1D1vD47ji2ZG7z7Ht7wYq8BKmVA4--

--===============2035109568931489954==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2035109568931489954==--
