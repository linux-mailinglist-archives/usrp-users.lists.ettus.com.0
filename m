Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8198942676B
	for <lists+usrp-users@lfdr.de>; Fri,  8 Oct 2021 12:12:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0F811384D18
	for <lists+usrp-users@lfdr.de>; Fri,  8 Oct 2021 06:12:41 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 365FD384878
	for <usrp-users@lists.ettus.com>; Fri,  8 Oct 2021 06:11:50 -0400 (EDT)
Date: Fri, 8 Oct 2021 10:11:50 +0000
To: usrp-users@lists.ettus.com
From: arjan.feta@unifi.it
Message-ID: <nbiZqHiok17KnekP8pw8lbSwWznJd7w2NZWwItqi6Y@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: e7jPoM3RryzLRP0CRwmYzx5Hutr2tAUOf8MBKPUQY@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: NSVA2XRV4VZH47XXSLJLYSZIK6EIAXSG
X-Message-ID-Hash: NSVA2XRV4VZH47XXSLJLYSZIK6EIAXSG
X-MailFrom: arjan.feta@unifi.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Set RX power reference using a power calibration database
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NSVA2XRV4VZH47XXSLJLYSZIK6EIAXSG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7915934876762545401=="

This is a multi-part message in MIME format.

--===============7915934876762545401==
Content-Type: multipart/alternative;
 boundary="b1_nbiZqHiok17KnekP8pw8lbSwWznJd7w2NZWwItqi6Y"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_nbiZqHiok17KnekP8pw8lbSwWznJd7w2NZWwItqi6Y
Content-Type: text/plain; charset=us-ascii

I have found some other methods in the python API but probably passing the wrong arguments to them:

`radio_block.get_rx_power_ref_keys()`

`Out[9]: ['x3xx_pwr_twinrx_rx_rx1', '31F94F0#0']`

`uhd.usrp.cal.database.read_cal_data('31F94F0#0','x3xx_pwr_twinrx_rx')`

`Traceback (most recent call last):`

`  File "<ipython-input-10-19835987c39e>", line 1, in <module>`

`    uhd.usrp.cal.database.read_cal_data('31F94F0#0','x3xx_pwr_twinrx_rx')`

`RuntimeError: LookupError: KeyError: Calibration Data not found for: key=31F94F0#0, serial=x3xx_pwr_twinrx_rx`

--b1_nbiZqHiok17KnekP8pw8lbSwWznJd7w2NZWwItqi6Y
Content-Type: text/html; charset=us-ascii

<p>I have found some other methods in the python API but probably passing the wrong arguments to them:</p><p><code>radio_block.get_rx_power_ref_keys()</code></p><p><code>Out[9]: ['x3xx_pwr_twinrx_rx_rx1', '31F94F0#0']</code></p><p><br></p><p><code>uhd.usrp.cal.database.read_cal_data('31F94F0#0','x3xx_pwr_twinrx_rx')</code></p><p><code>Traceback (most recent call last):</code></p><p><code>  File "&lt;ipython-input-10-19835987c39e&gt;", line 1, in &lt;module&gt;</code></p><p><code>    uhd.usrp.cal.database.read_cal_data('31F94F0#0','x3xx_pwr_twinrx_rx')</code></p><p><code>RuntimeError: LookupError: KeyError: Calibration Data not found for: key=31F94F0#0, serial=x3xx_pwr_twinrx_rx</code></p>


--b1_nbiZqHiok17KnekP8pw8lbSwWznJd7w2NZWwItqi6Y--

--===============7915934876762545401==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7915934876762545401==--
