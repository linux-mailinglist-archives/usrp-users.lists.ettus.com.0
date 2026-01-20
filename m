Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GDEcJ0vjb2n8RwAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Tue, 20 Jan 2026 21:19:23 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B06AF4B2C6
	for <lists+usrp-users@lfdr.de>; Tue, 20 Jan 2026 21:19:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7BB303867F8
	for <lists+usrp-users@lfdr.de>; Tue, 20 Jan 2026 15:19:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1768940361; bh=zP74ABu12Kcx3d060begr1QG4zqoF/HlKI+Ts9lM5hY=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=ls45n7zO+I/OwTp4u8CndkMTZ54eXgHEe0VlfoqpyzW6jbj/BKq60pzsxITmyy+HT
	 QqqTuUDWMavLe8R/LdVSrQFg0r+kXfCBr1JTZVpY5cM9wjKSp7VPxH+9K5DYCbSEZI
	 2M6LTiyvTlf81b1NRKVDXYKCyengF+qdqF7aUsyaFiHoU+XwySszLNVbBojitEbBJ7
	 nWuSn0kSHtqTm6nYhVAeBqXKOBkPZrXoXyEZqXuVTMwHtHjLivgVnnhIskLYI2o2Jx
	 lZuUcvsWRRFGwPYM9LXJhzKQlZ+/9EiWAkIJ9tnIB9FuFthqBpcBfTWg6QUho+Vfsi
	 Mu+hfVECovlZQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D84B3386764
	for <usrp-users@lists.ettus.com>; Tue, 20 Jan 2026 15:18:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1768940292; bh=jLXGW9BffFkOf0wfA74q4/qNU7s7OmLaN8TfRm8O0DU=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=XXAaif/x/5abe/6amuOjOaIPt2nEb/MyxlNSSK3aaSsxrjpPaoNIl24ud/AUGI+Ef
	 FRgLVbgCXldPB9Tg3fCa39DagaIldiy2D3yaJcwPVsplJMQudI9lDvnHT9qj3qppF0
	 p+HZ0IDuiPYXrufhC98xwc/zFNysqNb9vEOuZFA5bR5Oq6z7q1axcPclgNWo/vO2Tn
	 UPBvat0JSiSoB4HK64KUDblG6p2xCXrUGtiggFWCGBk8nZYxrx8CTxeXdkr/k/NNqr
	 Zv8Ic9X8vRj2+YUFE5rLaMS9IyKS20Hc8wwWZirtKfijFywwfcbYvMA73C2oiI5IFQ
	 hVBkrGZu+DJfQ==
Date: Tue, 20 Jan 2026 20:18:12 +0000
To: usrp-users@lists.ettus.com
Message-ID: <cSD3dQhVOls0juDqafYzHJsqXS57QetBIcJdQtPpr4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: sMlLGLRKWHiFIG0jFKd8Cx2lK6U2M32BelF4mjpo@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: H6EKIIUZ74O5W7F4OX2AS26IOG5H5VCU
X-Message-ID-Hash: H6EKIIUZ74O5W7F4OX2AS26IOG5H5VCU
X-MailFrom: joerg.hofrichter@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC Front Panel GPIO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H6EKIIUZ74O5W7F4OX2AS26IOG5H5VCU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "joerg.hofrichter--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: joerg.hofrichter@emerson.com
Content-Type: multipart/mixed; boundary="===============4561129464620688221=="
X-Spamd-Result: default: False [-0.51 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_PHPMAILER_SIG(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	DKIM_MIXED(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	TO_EQ_FROM(0.00)[];
	R_DKIM_REJECT(0.00)[emwd.com:s=harmony];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,emwd.com:-];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[joerg.hofrichter@emerson.com];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[emwd.com:dkim,emerson.com:replyto,lists.ettus.com:mid]
X-Rspamd-Queue-Id: B06AF4B2C6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is a multi-part message in MIME format.

--===============4561129464620688221==
Content-Type: multipart/alternative;
 boundary="b1_cSD3dQhVOls0juDqafYzHJsqXS57QetBIcJdQtPpr4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_cSD3dQhVOls0juDqafYzHJsqXS57QetBIcJdQtPpr4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi again,

unfortunately the formatting of the code listings got lost. Here I am try=
ing again:

* your RFNoC block .yml file (e.g. my_gpio_block.yml) needs to have an IO=
 port of type =E2=80=9Cgpio=E2=80=9D:

```
parameters:
  GPIO_WIDTH: ${ config.device.parameters['FP_GPIO_BANK_WIDTH'] }
(=E2=80=A6)
io_ports:
  gpio:
    type: gpio
    drive: master
    parameters:
      width: "${parameters['GPIO_WIDTH']}"
```

* Your RFNoC block implementation in Verilog (e.g. rfnoc_block_my_gpio_bl=
ock.v) needs these additional signals: =E2=80=9Cmy_gpio_block0=E2=80=9D) =
to the fp_gpio port of the device:

```
noc_blocks:
  (=E2=80=A6)
  my_gpio_block0:
    block_desc: 'my_gpio_block.yml'
connections:
  (=E2=80=A6)
  # BSP connections
  (=E2=80=A6)
  - { srcblk: my_gpio_block0, srcport: gpio,=C2=A0 =C2=A0 dstblk: device,=
=C2=A0 dstport: fp_gpio=C2=A0 =C2=A0 =C2=A0 =C2=A0 }
```

I hope the listings are readable now.

Kind regards,\
J=C3=B6rg

--b1_cSD3dQhVOls0juDqafYzHJsqXS57QetBIcJdQtPpr4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi again,</p><p>unfortunately the formatting of the code listings got =
lost. Here I am trying again:</p><ul><li><p>your RFNoC block .yml file (e=
.g. my_gpio_block.yml) needs to have an IO port of type =E2=80=9Cgpio=E2=80=
=9D:</p></li></ul><pre><code>parameters:
  GPIO_WIDTH: ${ config.device.parameters['FP_GPIO_BANK_WIDTH'] }
(=E2=80=A6)
io_ports:
  gpio:
    type: gpio
    drive: master
    parameters:
      width: "${parameters['GPIO_WIDTH']}"</code></pre><ul><li><p>Your RF=
NoC block implementation in Verilog (e.g. rfnoc_block_my_gpio_block.v) ne=
eds these additional signals: =E2=80=9Cmy_gpio_block0=E2=80=9D) to the fp=
_gpio port of the device:</p></li></ul><pre><code>noc_blocks:
  (=E2=80=A6)
  my_gpio_block0:
    block_desc: 'my_gpio_block.yml'
connections:
  (=E2=80=A6)
  # BSP connections
  (=E2=80=A6)
  - { srcblk: my_gpio_block0, srcport: gpio,&nbsp; &nbsp; dstblk: device,=
&nbsp; dstport: fp_gpio&nbsp; &nbsp; &nbsp; &nbsp; }</code></pre><p>I hop=
e the listings are readable now.</p><p>Kind regards,<br>J=C3=B6rg</p>


--b1_cSD3dQhVOls0juDqafYzHJsqXS57QetBIcJdQtPpr4--

--===============4561129464620688221==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4561129464620688221==--
