Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A3CB0F982
	for <lists+usrp-users@lfdr.de>; Wed, 23 Jul 2025 19:44:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D8904385BBB
	for <lists+usrp-users@lfdr.de>; Wed, 23 Jul 2025 13:44:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753292669; bh=fquyMYlsKKjQsQ3wHUrsPzGz+9liVBn7VJTO0Pl3EYY=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=KNnlS2AUqCK5cscgSBdZfX20+Xy9klKDkFv/9zBzR8MHcwy33PAkDaHi21JtUrvh7
	 w9WEJhkLizrKJzc4dxYDiiCGxmCXLZt2pkVRZI6dRQEm+NiIRvxO0xKVCkJRmi0Lyx
	 pjRPgGbvfSfBWpet5mSuQjlQu9JalyUZ9eOzCYSKVzOLa6G2K4GgFBd6dyBhGdoS+D
	 Dpy/7O/iIHqcPnLB9PtOUbd3ez6cOpNWcBDzMkowCgi2Zp8OefADFNep06d2fzJCqB
	 r+mzYOEIR6E+JHcA5CMRLNgiTqItD13hxKIq3q5h6mn6q1CbVeCE0l0onUW/dgzs+S
	 m+2zwrRgVGRXQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DC469385B03
	for <usrp-users@lists.ettus.com>; Wed, 23 Jul 2025 13:43:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753292618; bh=7x+DKu9Tl7SKlj2dLrO8ZRS4ZlasF1fIlhK9xbOolHE=;
	h=Date:To:From:Subject:From;
	b=Yx7X5eCVlJzolGT8cuEG/+xxfg22gLA8C8uSbmbq7Z0b57Bsf6At3aWsDsMoAOgF7
	 jRZw9wADZ4wkGnam9UuJcISa8WQkmA/mhLGV1kavxwImS8owdF3i8V0j/8GZmPhSgf
	 NUjFcAvG28pR5K6hu0uhrN+WXVCx6s+nZ7IbUks1xfWnhwmIWmpgwr497xePsMK3uZ
	 ZLNJpJtZyJoI6llt75MZrr1Xsfcn3YSCDZ4idjI/fTJRrr0xIzatavWlR5VEBCP2u5
	 ZXGJ753wrRG0cSRO9sbsk62AD+MkZfbfoXHcA6CwQoUUMFhPtkQkSrWjGQes+XBy7Z
	 Ikhpx2zB1tahw==
Date: Wed, 23 Jul 2025 17:43:38 +0000
To: usrp-users@lists.ettus.com
From: dennis.joosens@uantwerpen.be
Message-ID: <3JSjwAKJn0iIQ7e6LC065e1DOIEjmVGgnUQqG94qg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: DH3H5HD3R2LUAUX4HRE7UYDOCWYKMMVZ
X-Message-ID-Hash: DH3H5HD3R2LUAUX4HRE7UYDOCWYKMMVZ
X-MailFrom: dennis.joosens@uantwerpen.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Power calibration USRP B210 UHD Python API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DH3H5HD3R2LUAUX4HRE7UYDOCWYKMMVZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3426141383227190216=="

This is a multi-part message in MIME format.

--===============3426141383227190216==
Content-Type: multipart/alternative;
 boundary="b1_3JSjwAKJn0iIQ7e6LC065e1DOIEjmVGgnUQqG94qg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_3JSjwAKJn0iIQ7e6LC065e1DOIEjmVGgnUQqG94qg
Content-Type: text/plain; charset=us-ascii

Hi,

I am working on power calibration of the USRP B210 SDR specifically on the RX side.

 

The power calibration worked, I managed to generate four .cal files:

b2xx_pwr_rx_tx+rx_316E278#A.cal

b2xx_pwr_rx_tx+rx_316E278#B.cal

b2xx_pwr_rx_rx2_316E278#A.cal  

b2xx_pwr_rx_rx2_316E278#B.cal  

and I can find them in the default directory \~/.local/share/uhd/cal

Now I am trying to load these .cal files using the UHD Python API. I can check if these files exist and read their contents.

But I am wondering, can I assume that the UHD loads the .cal files when a USRP stream is opened by default from this default folder? I can not seem to find any function or output from API functions that can give me a definite answer on that or even gives the possibility to check this.

If this is not the case. How is this handled by default? This seems a big mystery in the documentation.

Thanks,

Dennis

--b1_3JSjwAKJn0iIQ7e6LC065e1DOIEjmVGgnUQqG94qg
Content-Type: text/html; charset=us-ascii

<p>Hi,</p><p>I am working on power calibration of the USRP B210 SDR specifically on the RX side.</p><p> </p><p>The power calibration worked, I managed to generate four .cal files:</p><p>b2xx_pwr_rx_tx+rx_316E278#A.cal</p><p>b2xx_pwr_rx_tx+rx_316E278#B.cal</p><p>b2xx_pwr_rx_rx2_316E278#A.cal  </p><p>b2xx_pwr_rx_rx2_316E278#B.cal  </p><p>and I can find them in the default directory ~/.local/share/uhd/cal</p><p>Now I am trying to load these .cal files using the UHD Python API. I can check if these files exist and read their contents.</p><p>But I am wondering, can I assume that the UHD loads the .cal files when a USRP stream is opened by default from this default folder? I can not seem to find any function or output from API functions that can give me a definite answer on that or even gives the possibility to check this.</p><p>If this is not the case. How is this handled by default? This seems a big mystery in the documentation.</p><p>Thanks,</p><p>Dennis</p>


--b1_3JSjwAKJn0iIQ7e6LC065e1DOIEjmVGgnUQqG94qg--

--===============3426141383227190216==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3426141383227190216==--
