Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 478368D359C
	for <lists+usrp-users@lfdr.de>; Wed, 29 May 2024 13:33:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 05BF4380857
	for <lists+usrp-users@lfdr.de>; Wed, 29 May 2024 07:33:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1716982402; bh=EJ7M/Y2RE/LTEjrAKuvIZgQC1jGoeRkE0x7SY8decOA=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ljuJ+IjmsSeY9T9I/QK1hRRJWONZvNmmDzxrXP+nC3x9SICBecsCRjPlsiL+ymiHI
	 Y10zbGmF1hVy7qgI/7/nhmQC47iH46csDa++WAP5Iid0n/f55yQDJ9D/xnYR2mpIkP
	 JhHBryzIlBi2xl1c8i/VLDK5jB7I6mUMxlGjxefxcYZwyjCE8mMFdIIBWJ7xW9f6di
	 SNMqPqJiA+5QcXxQACiKuA/44DKnVHz1IO9Ea1o4dREcZY4wurZiUI5F/KwQ0z0k7c
	 DYPwfk6CjkgQUb2gjVr1dBSl21nz8n6o4OdaaHHiq2DhIB2xZc04GZ+No29dK0DVpX
	 IcqeQvNBY/lqg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E10473854AF
	for <usrp-users@lists.ettus.com>; Wed, 29 May 2024 07:32:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1716982359; bh=PZOBbt2EMqfag1dmVCi2ocsms2zR8OF/ZJCHAcqqDgc=;
	h=Date:To:From:Subject:From;
	b=OAccf4zt5t9TDlJoAhA9Gm6vDhDF9f9EmzCYRlA/l7y1kGE7s1fQBMbTEIdECIf4f
	 q4LrZa11XIGIm82Z2YmSzdcnWQECXn+K/vPqdQmlTCtnK809O5FUEjNvXZUXU30Qtm
	 bMHnpXJld2FdKHtS3Out735/vhcFo4OTkba59a0x/GNy3ZE6jowqlkPBOzQg9BcbNR
	 vsh1fH2kSsdkvNfC1WtChxhjgOMb+Pha/4w2GscJja8ZoGZVLuDscnMetmoIOfPvwR
	 NYR8MKJvFEeUKjFWMlm3g0Dnnk69UOThm3B05Qr5lbdCpvqFxoa2+dcrVlv7NyygbC
	 ssX6r0SI1H9xg==
Date: Wed, 29 May 2024 11:32:39 +0000
To: usrp-users@lists.ettus.com
From: je.amghar@gmail.com
Message-ID: <mZZj2cd8CVH8GK5b5m07VRwrvH34HiHCbxOSjUyDS0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: GEWXPMW7QBYHVPE452DTE4VOXCXRKBTB
X-Message-ID-Hash: GEWXPMW7QBYHVPE452DTE4VOXCXRKBTB
X-MailFrom: je.amghar@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] uhd unable to find header files.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GEWXPMW7QBYHVPE452DTE4VOXCXRKBTB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6389759140243860538=="

This is a multi-part message in MIME format.

--===============6389759140243860538==
Content-Type: multipart/alternative;
 boundary="b1_mZZj2cd8CVH8GK5b5m07VRwrvH34HiHCbxOSjUyDS0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_mZZj2cd8CVH8GK5b5m07VRwrvH34HiHCbxOSjUyDS0
Content-Type: text/plain; charset=us-ascii

After developing a C++ program and placing it in **`/uhd/host/utils`**, I included it in **`CMakeLists.txt`**. However, when attempting to build the program using **`make`** within **`/uhd/host/build`**, UHD is reporting that it's unable to locate the C++ library I've used, specifically when including <libserial/SerialStream.h> and <libserial/SerialPort.h> (libserial library).\
\
How can I specify to UHD the location of the libraries I utilize in my programs?\
Thank you.

--b1_mZZj2cd8CVH8GK5b5m07VRwrvH34HiHCbxOSjUyDS0
Content-Type: text/html; charset=us-ascii

<p>After developing a C++ program and placing it in <strong><code>/uhd/host/utils</code></strong>, I included it in <strong><code>CMakeLists.txt</code></strong>. However, when attempting to build the program using <strong><code>make</code></strong> within <strong><code>/uhd/host/build</code></strong>, UHD is reporting that it's unable to locate the C++ library I've used, specifically when including &lt;libserial/SerialStream.h&gt; and &lt;libserial/SerialPort.h&gt; (libserial library).<br><br>How can I specify to UHD the location of the libraries I utilize in my programs?<br>Thank you.</p>


--b1_mZZj2cd8CVH8GK5b5m07VRwrvH34HiHCbxOSjUyDS0--

--===============6389759140243860538==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6389759140243860538==--
