Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F40C5AD87
	for <lists+usrp-users@lfdr.de>; Fri, 14 Nov 2025 01:51:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8F65F385BF4
	for <lists+usrp-users@lfdr.de>; Thu, 13 Nov 2025 19:51:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1763081494; bh=ZfnzT3zQRNsFY7niOoAHz0ONlm4Lpaf5Ba43Xz5IHqw=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=sqZZe2K6mD2/v0eqquIonJy8OmKrKeDipfzjA0NTFw0rW2QaruHcgXEgxVCddUJ7h
	 JqIP0C4ROUjxmRkj3hhTgL2CMSl0V9hxet/eF1463AytWinZXBCdWGHBe2t9Lju/2y
	 l5jOGbaMkpGm9qWow7MTKnFe/OygLqib5wjAYWNEIGeU8LR7UrDf1sxEtJ5gdGPBW7
	 scfYh7x2DknIMv0GL+6q0WbFj917uucdk+3Co9GqnUeGuG+N7AeP7M1Q5Hvxo378Qq
	 FBN3bJU13Nm6RW5+g4ymXERMrbHBiCnLaLEdTmZqInjBKCcys9laqwZcyC0YAGoC2B
	 ABnN+xl5J0jbA==
Received: from lists.ctbirding.org (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 706863853CC
	for <usrp-users@lists.ettus.com>; Thu, 13 Nov 2025 19:50:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1763081444; bh=+AKkxzodDYvLHbJUREaZV7i9v3MBjHkU9gQsoS65a0U=;
	h=Date:To:From:Subject:From;
	b=wQsJOK9Hknk4cYatV11JFYaqQvWFyoRsYEyA5mos43R+QzTLsrBWudOJ12G6MUZ0K
	 zE0B5E6CZPvQ6rDRlE1UEC0y/MzNPBKUqD6yEWxdjfSI+5eb3TmA9MZNi2Rnn7NnfR
	 7cHYTFQuOpTDWguUb1z/21/rZ9cFVJYIoWx0ssH87RBJGPgxQGW+3LaUH+SX9Kh1/X
	 pp1mOxqDJVKoTPXyUumErkd1WvwbFkGy26XWVHEwefmuty6/ExmSkl/eWDaWtDkrCR
	 GxRaF+gWy4qxRv1j7CMNWtaGFVAg8Fv+hp+MnwhYxXwwfazJgJ0CcWusxq701gOUUa
	 iZriCT4/tA+wQ==
Date: Fri, 14 Nov 2025 00:50:44 +0000
To: usrp-users@lists.ettus.com
Message-ID: <0o0PDbCMb6qYHRUsH86y559fXU0ZyIgIFhgvnL28tc@lists.ctbirding.org>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: NGGRURJWQH4V4PKCFJFGHLLIB3LMNN67
X-Message-ID-Hash: NGGRURJWQH4V4PKCFJFGHLLIB3LMNN67
X-MailFrom: yunxi.chen@tum.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [UHD 4.8 / X410] YAML inheritance error when adding custom RFNoC block + need updated tutorial
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NGGRURJWQH4V4PKCFJFGHLLIB3LMNN67/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "yunxi.chen--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: yunxi.chen@tum.de
Content-Type: multipart/mixed; boundary="===============3001867775666452662=="

This is a multi-part message in MIME format.

--===============3001867775666452662==
Content-Type: multipart/alternative;
 boundary="b1_0o0PDbCMb6qYHRUsH86y559fXU0ZyIgIFhgvnL28tc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_0o0PDbCMb6qYHRUsH86y559fXU0ZyIgIFhgvnL28tc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I=E2=80=99m developing a custom OOT RFNoC block for the **USRP X410** usi=
ng **UHD 4.8**. The block builds correctly (`make` and `make install` wor=
k), but when generating the bitstream with:

```
rfnoc_image_builder -F ~/uhd/fpga -y ~/rfnoc-mymodule/icores/x410_rfnoc_i=
mage_core.yml
```

I always get:

```
ERROR:root:Cannot find parent file x410_radio_base.yml
```

My YAML contains:

```
schema: rfnoc_imagebuilder_args
device: x410
chdr_width: 128

inherit:
  - x410_radio_base.yml
  - x4xx_x4_base.yml

blocks:
  - ISAC_PDSC
```

Both files exist at:

```
~/uhd/fpga/usrp3/top/x400/yaml_include/
```

I tried absolute paths and setting `RFNOC_YAML_PATH`, but the builder sti=
ll cannot locate them.

**My questions:**

1. How does `rfnoc_image_builder` resolve inherited YAML files on UHD 4.8=
 for X410?

2. Does UHD 4.8 support absolute paths in `inherit`, or is there another =
include mechanism?

3. Is there any updated, detailed tutorial for adding a **custom RFNoC IP=
** on UHD 4.8 (beyond the old =E2=80=9CGetting Started with RFNoC in UHD =
4.0=E2=80=9D)?

Any clarification or example would be appreciated.

Best,\
Yunxi

--b1_0o0PDbCMb6qYHRUsH86y559fXU0ZyIgIFhgvnL28tc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi everyone,</p><p>I=E2=80=99m developing a custom OOT RFNoC block for=
 the <strong>USRP X410</strong> using <strong>UHD 4.8</strong>. The block=
 builds correctly (<code>make</code> and <code>make install</code> work),=
 but when generating the bitstream with:</p><pre><code>rfnoc_image_builde=
r -F ~/uhd/fpga -y ~/rfnoc-mymodule/icores/x410_rfnoc_image_core.yml
<br></code></pre><p>I always get:</p><pre><code>ERROR:root:Cannot find pa=
rent file x410_radio_base.yml
<br></code></pre><p>My YAML contains:</p><pre><code>schema: rfnoc_imagebu=
ilder_args
device: x410
chdr_width: 128

inherit:
  - x410_radio_base.yml
  - x4xx_x4_base.yml

blocks:
  - ISAC_PDSC
<br></code></pre><p>Both files exist at:</p><pre><code>~/uhd/fpga/usrp3/t=
op/x400/yaml_include/
<br></code></pre><p>I tried absolute paths and setting <code>RFNOC_YAML_P=
ATH</code>, but the builder still cannot locate them.</p><p><strong>My qu=
estions:</strong></p><ol><li><p>How does <code>rfnoc_image_builder</code>=
 resolve inherited YAML files on UHD 4.8 for X410?</p></li><li><p>Does UH=
D 4.8 support absolute paths in <code>inherit</code>, or is there another=
 include mechanism?</p></li><li><p>Is there any updated, detailed tutoria=
l for adding a <strong>custom RFNoC IP</strong> on UHD 4.8 (beyond the ol=
d =E2=80=9CGetting Started with RFNoC in UHD 4.0=E2=80=9D)?</p></li></ol>=
<p>Any clarification or example would be appreciated.</p><p>Best,<br>Yunx=
i</p>


--b1_0o0PDbCMb6qYHRUsH86y559fXU0ZyIgIFhgvnL28tc--

--===============3001867775666452662==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3001867775666452662==--
