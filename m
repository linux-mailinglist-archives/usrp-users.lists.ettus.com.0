Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B36426722
	for <lists+usrp-users@lfdr.de>; Fri,  8 Oct 2021 11:47:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6E680384A1D
	for <lists+usrp-users@lfdr.de>; Fri,  8 Oct 2021 05:47:52 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 37DD138463A
	for <usrp-users@lists.ettus.com>; Fri,  8 Oct 2021 05:47:04 -0400 (EDT)
Date: Fri, 8 Oct 2021 09:47:04 +0000
To: usrp-users@lists.ettus.com
From: arjan.feta@unifi.it
Message-ID: <e7jPoM3RryzLRP0CRwmYzx5Hutr2tAUOf8MBKPUQY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A6So6xbGVfk8NPRo7Sk3VSQV1hLcE7WXnd3q3_pwasyVw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: VI23C2RIMQZIKERC5C7MKVKNEWBNBS5Q
X-Message-ID-Hash: VI23C2RIMQZIKERC5C7MKVKNEWBNBS5Q
X-MailFrom: arjan.feta@unifi.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Set RX power reference using a power calibration database
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VI23C2RIMQZIKERC5C7MKVKNEWBNBS5Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5670906679465997593=="

This is a multi-part message in MIME format.

--===============5670906679465997593==
Content-Type: multipart/alternative;
 boundary="b1_e7jPoM3RryzLRP0CRwmYzx5Hutr2tAUOf8MBKPUQY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_e7jPoM3RryzLRP0CRwmYzx5Hutr2tAUOf8MBKPUQY
Content-Type: text/plain; charset=us-ascii

Hi Martin and thank you,

yes I confirm that the file has been placed in that directory viz., `$HOME/.local/share/uhd/cal/x3xx_pwr_twinrx_rx_rx2_31F94F0#0.cal`

Unfortunately it gives the same error:

```
*radio_block.set_rx_power_reference(-4.0,0)*
```

*RuntimeError: RuntimeError: Attempting to set power for key x3xx_pwr_twinrx_rx_rx1, but no cal data available!*

Arjan

--b1_e7jPoM3RryzLRP0CRwmYzx5Hutr2tAUOf8MBKPUQY
Content-Type: text/html; charset=us-ascii

<p>Hi Martin and thank you,</p><p class="">yes I confirm that the file has been placed in that directory viz., <code>$HOME/.local/share/uhd/cal/x3xx_pwr_twinrx_rx_rx2_31F94F0#0.cal</code></p><p>Unfortunately it gives the same error:</p><p><br></p><pre><code>*radio_block.set_rx_power_reference(-4.0,0)*</code></pre><p><em>RuntimeError: RuntimeError: Attempting to set power for key x3xx_pwr_twinrx_rx_rx1, but no cal data available!</em></p><p><br></p><p>Arjan</p>


--b1_e7jPoM3RryzLRP0CRwmYzx5Hutr2tAUOf8MBKPUQY--

--===============5670906679465997593==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5670906679465997593==--
