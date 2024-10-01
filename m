Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD4F98C4B6
	for <lists+usrp-users@lfdr.de>; Tue,  1 Oct 2024 19:41:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3AF5C385437
	for <lists+usrp-users@lfdr.de>; Tue,  1 Oct 2024 13:41:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727804507; bh=skoRi4+MPRw7Tpw5JOts3YyVE7JcYWyJPpzDUtVPxz0=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=vGP/YGm74nuj3f7TCPQO92zQUwdDlXE2DLkSXnInHnIBMTfhif7bx4r9v7JGUHVBi
	 cErcDcZ7O3v+CwO+cwu/RxtTB2Es9RoG8IdaoeziKTU8bSVOOmUn7Lq5ogQxhV5Os6
	 TKi9fKv9Z0PlMu4iSRo1Kmf+KGgexHnzRJ+V1xIVdZ8A1T5P5om54Mo8x2D4bytmIv
	 zpk47AMhCJ9m23Z72Y+NdFO0tZdH7fD7+rwKw6lLKx8NKfERRuJzAafGjSUgv3RH6S
	 G2k9vlt3DXpWNdiAuDPhONza1RF7qP6xY/C0LSHQViLISgMJ0C8uxWva8HDEYXB3dL
	 FNWRoA33i4AbA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 43A663852E7
	for <usrp-users@lists.ettus.com>; Tue,  1 Oct 2024 13:40:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727804450; bh=qwO5srBQYiEXjcdRURxrNPcMXo0cCUVg0kko0C0gVOU=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=KQTXNS1BfbTQ5JZaLAPZJMz16WSeVA+RmSKQnzktrq0S9Q26HhrDlRDFI5ruwsrOP
	 nyYycZkh1fC25QodApwF9k+jHwsrtz5dOF/JVCb66gDFeTOfKFy3EY9fSUOpt5tJXz
	 mHD1aw35nL8LgMBmKNb0pLD3xUFnxfwPzvvWtIi6FX5aEkvQcsx9dV7zNu6vbI3ob1
	 u3Z9v/49aj/wf7Wl+Q6ow8Mr7qsCvRUX6UgTm+ssg8dtnJhm2zbV/cE+Ewd/YlcurQ
	 bB4THpdCEaPK86V9qxmcpGgNbN84AXzOxGlOItKkZHyQ1DfF5tHEG2a4a2mDIKLJ06
	 Nv/R0E0pi09jA==
Date: Tue, 1 Oct 2024 17:40:50 +0000
To: usrp-users@lists.ettus.com
Message-ID: <FFFZmxIlCeOqkxjIY8vdnxwOoqva4FiWkeX96CMXY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAOHuk9AmFZDSQoOL+N8590XaPwfV3V7mN+BwhwbFpPHX4pu5PQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: FGYD2W6RJVGNTXJAFLVEUTHUTVXWOCCO
X-Message-ID-Hash: FGYD2W6RJVGNTXJAFLVEUTHUTVXWOCCO
X-MailFrom: chris.pineda@chaosinc.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc_image_builder on UHD 4.7
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FGYD2W6RJVGNTXJAFLVEUTHUTVXWOCCO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "chris.pineda--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: chris.pineda@chaosinc.com
Content-Type: multipart/mixed; boundary="===============8774955480515256712=="

This is a multi-part message in MIME format.

--===============8774955480515256712==
Content-Type: multipart/alternative;
 boundary="b1_FFFZmxIlCeOqkxjIY8vdnxwOoqva4FiWkeX96CMXY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_FFFZmxIlCeOqkxjIY8vdnxwOoqva4FiWkeX96CMXY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I=E2=80=99ve run into this problem with UHD 4.6. That specific function g=
ot removed in the latest version so in order to make it work, I had to do=
wngrade the ruamel.yaml version with the following:=20

> pip install "ruamel.yaml<0.18.0"

Once you downgrade it, it should work.

--b1_FFFZmxIlCeOqkxjIY8vdnxwOoqva4FiWkeX96CMXY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I=E2=80=99ve run into this problem with UHD 4.6. That specific functio=
n got removed in the latest version so in order to make it work, I had to=
 downgrade the ruamel.yaml version with the following: </p><blockquote><p=
>pip install "ruamel.yaml&lt;0.18.0"</p></blockquote><p>Once you downgrad=
e it, it should work. </p>


--b1_FFFZmxIlCeOqkxjIY8vdnxwOoqva4FiWkeX96CMXY--

--===============8774955480515256712==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8774955480515256712==--
