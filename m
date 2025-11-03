Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3CFC2C1AC
	for <lists+usrp-users@lfdr.de>; Mon, 03 Nov 2025 14:33:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 90FA9385F8A
	for <lists+usrp-users@lfdr.de>; Mon,  3 Nov 2025 08:33:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1762176803; bh=MZS5W+1v/K7fsCNgqtXIIBYXgMkDfK9CNUEG/tbeMQI=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=odd9w15YxtJwEhc454G6SWd5RtX+ViCOFbtYMR6paKFl+SSYagQynYw+3i0WL1uNd
	 9ZY9BDEGkzMtWV4Rha8JtufyW2z2HtoFos7QEC+zkfZIwBqRTyxSXOeIIgvyw/q84N
	 +4hQS6VbaAEAaYwvJtE4Es9WTmAjHqitMqIEwdjamqzJhEc7kjaiV/cjFIlb4UvEdu
	 nIDnUe8byJN2YQ48FokNauVUzQ2WEKR0ic4APRBeTI8DZiIwporhpKq0N5xFPj74RC
	 CvLSdPn6Ly78xjsXOGEpSqik09aziQzr2iUlFC3AyCUKVQLL2ZM12gHa2rUbXimvb8
	 IjMfkLjiDdjTw==
Received: from lists.ctbirding.org (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2C9B53862DB
	for <usrp-users@lists.ettus.com>; Mon,  3 Nov 2025 08:32:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1762176738; bh=QufYPCO/krhapEHiPB5sfWScTK54Pbh6iCeZNV3RagQ=;
	h=Date:To:From:Subject:From;
	b=vgjEZHR38HtMJCQAvG/kfWr8hg0I7/gl9x8Sfa7G4q9RO1LBKRlVRopmOo2QBtXbf
	 4+IZCLa63TpLh4T6N+gStwOVCxJU6QySjT0CNQdQYNY9YDNbA9OOEEkdJPa5G8aHPH
	 BsffVVyLlWpvV+0u1K/Vlg7S6/xn9N64KGyN2wBxczjXBLOBtBoQsQEQdajIwk0jv/
	 C10HosNhzvjA9joUqxOGCUXnRKZ0844+vQSltuDUvTTuTVgcm6lDF7tby/5Cn8vjGn
	 a0HA9g2LAPzaq4i4uLTnnBV9fWHi5PupJWDtDzTocZTMCjidE/MFkKv2yaAwozibJZ
	 /2UKiIzWi/zrw==
Date: Mon, 3 Nov 2025 13:32:18 +0000
To: usrp-users@lists.ettus.com
Message-ID: <J5pSHXsUiW5M0MUjtxWxZA2db3K13ik8ZmEjWOrWlA@lists.ctbirding.org>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 4TSPB4YI5GTZ3LSX5MNNSVVEVSKDYWQY
X-Message-ID-Hash: 4TSPB4YI5GTZ3LSX5MNNSVVEVSKDYWQY
X-MailFrom: yunxi.chen@tum.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X410 RFNoC Image Builder Cannot Find x410_radio_base.yml During Inheritance
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4TSPB4YI5GTZ3LSX5MNNSVVEVSKDYWQY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "yunxi.chen--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: yunxi.chen@tum.de
Content-Type: multipart/mixed; boundary="===============1010170414972775396=="

This is a multi-part message in MIME format.

--===============1010170414972775396==
Content-Type: multipart/alternative;
 boundary="b1_J5pSHXsUiW5M0MUjtxWxZA2db3K13ik8ZmEjWOrWlA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_J5pSHXsUiW5M0MUjtxWxZA2db3K13ik8ZmEjWOrWlA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I=E2=80=99m working on a custom OOT RFNoC block for the USRP X410 using U=
HD 4.8 and RFNoC 4.

The block builds successfully (make and make install work), but when I tr=
y to generate the bitstream with:

rfnoc_image_builder -F \~/uhd/fpga -y \~/rfnoc-mymodule/icores/x410_rfnoc=
_image_core.yml

always get this error:  ERROR:root:Cannot find parent file x410_radio_bas=
e.yml requested by /home/yunxi/rfnoc-mymodule/icores/x410_rfnoc_image_cor=
e.yml

My YAML file contains:

schema: rfnoc_imagebuilder_args

device: x410

chdr_width: 128

inherit:

  - 'x410_radio_base.yml'

  - 'x4xx_x4_base.yml'

blocks:

  - ISAC_PDSC

The two base files actually exist at

\~/uhd/fpga/usrp3/top/x400/yaml_include/x410_radio_base.yml

and

\~/uhd/fpga/usrp3/top/x400/yaml_include/x4xx_x4_base.yml.

I have tried:

* using absolute paths in inherit

* setting RFNOC_YAML_PATH=3D/home/yunxi/uhd/fpga/usrp3/top/x400/yaml_incl=
ude

* confirming the files exist

but the builder still says it cannot find them.

Could someone clarify how rfnoc_image_builder resolves inherited YAML fil=
es on UHD 4.8 / X410?

Does it support absolute paths, or is there another way to specify the in=
clude search path?

Any working example for an X410 image with a custom block would be greatl=
y appreciated.

Best,

Yunxi

--b1_J5pSHXsUiW5M0MUjtxWxZA2db3K13ik8ZmEjWOrWlA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi everyone,</p><p><br></p><p>I=E2=80=99m working on a custom OOT RFNoC =
block for the USRP X410 using UHD 4.8 and RFNoC 4.</p><p>The block builds s=
uccessfully (make and make install work), but when I try to generate the bi=
tstream with:</p><p>rfnoc_image_builder -F ~/uhd/fpga -y ~/rfnoc-mymodule/i=
cores/x410_rfnoc_image_core.yml</p><p><br></p><p>always get this error:  ER=
ROR:root:Cannot find parent file x410_radio_base.yml requested by /home/yun=
xi/rfnoc-mymodule/icores/x410_rfnoc_image_core.yml</p><p><br></p><p>My YAML=
 file contains:</p><p>schema: rfnoc_imagebuilder_args</p><p>device: x410</p=
><p>chdr_width: 128</p><p>inherit:</p><p>  - 'x410_radio_base.yml'</p><p>  =
- 'x4xx_x4_base.yml'</p><p>blocks:</p><p>  - ISAC_PDSC</p><p><br></p><p>The=
 two base files actually exist at</p><p>~/uhd/fpga/usrp3/top/x400/yaml_incl=
ude/x410_radio_base.yml</p><p>and</p><p>~/uhd/fpga/usrp3/top/x400/yaml_incl=
ude/x4xx_x4_base.yml.</p><p><br><br></p><p>I have tried:</p><p><br><br></p>=
<ul style=3D""><li><p>using absolute paths in inherit</p></li><li><p>settin=
g RFNOC_YAML_PATH=3D/home/yunxi/uhd/fpga/usrp3/top/x400/yaml_include</p></l=
i><li><p>confirming the files exist</p></li></ul><p><br><br></p><p><br><br>=
</p><p>but the builder still says it cannot find them.</p><p><br><br></p><p=
>Could someone clarify how rfnoc_image_builder resolves inherited YAML file=
s on UHD 4.8 / X410?</p><p>Does it support absolute paths, or is there anot=
her way to specify the include search path?</p><p>Any working example for a=
n X410 image with a custom block would be greatly appreciated.</p><p><br></=
p><p>Best,</p><p>Yunxi</p><p><br><br></p>

--b1_J5pSHXsUiW5M0MUjtxWxZA2db3K13ik8ZmEjWOrWlA--

--===============1010170414972775396==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1010170414972775396==--
