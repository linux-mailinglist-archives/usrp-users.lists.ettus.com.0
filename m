Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EFE81AA47
	for <lists+usrp-users@lfdr.de>; Wed, 20 Dec 2023 23:59:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5C2ED3851F3
	for <lists+usrp-users@lfdr.de>; Wed, 20 Dec 2023 17:59:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1703113185; bh=FdD4/Nr/m8raiY7g3H+GZvC/v28Cbs6VyOv2kAve3YQ=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ol/40eIe74meDt0R+/ntBdCjEXEt5ph+eNjFBvKFyIEki7nJOYz4MIRGH725T8YJy
	 hKXLMK93YdWL5YWmqtja5GjnoMYm/gHQn7py+wvVOgyncyEzz3D2J3sC+1FuvVomGm
	 bk57nA6hNvpt/Rr7UHP/iSGrFy9dwEHXXgpTW3bdTHbIi56PK1cR013Ngx+FiUQKdG
	 m+WvqbZpE3rTE/CcKcH6AJcgJ3+EsuBOEuaAabJqz/xtg6yPuqWWoxNUD9M5ukTv3o
	 +ieQ9X6Z6W8ly38AvuoE3SiKJkPxo0XA9YvQe+zqTfafPi0nzOWbuVqcAQ+vE5mH/d
	 URYayALB4xcPg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8A72F3851E7
	for <usrp-users@lists.ettus.com>; Wed, 20 Dec 2023 17:59:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1703113152; bh=norrw9zMGzk/CD2vDsxjyIwBZJrRnbjtTJqQCttmn1I=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=HvqmILNNhvWUM1C7KsT2yFPJghEh4SgH4VFllpKO0DzMavNdyB7/z4KTN3D8Z5CB1
	 Ys9+25mb1jW8JxqGywSZ1mUqwLVXkekQeDgL9LIcN6zftWnV0YRLPMl1tRycQuhduS
	 VQCpOlXH9Hk9wn8ltblJxttp/itiwRE6rAZCVBcSQ2237xL7N+YoEnM7idukz0OX9f
	 lZtTpcIA2a/2grgaVgjGAwVmAMhh9WEUNyUMYMsXxo7ZYCRE6x+/YY9BQd1taGMIFh
	 EO5Fd33EwMMHwDSosJdbnXaXUsg73wB6OrPRxiKP39PZp+a1vDbpczS0snPtL7wZhD
	 0pVBer8YhBQmg==
Date: Wed, 20 Dec 2023 22:59:12 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <2Pm2CbIPXdLcV7jUJv26lCGoetOn90kAJgrXA7AAzk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: d327a00d-1e90-498e-a025-ecfe6d22dd92@gmail.com
MIME-Version: 1.0
Message-ID-Hash: LVAKWEZHL5P7QUASNVXEB6U2ZUSU2XMK
X-Message-ID-Hash: LVAKWEZHL5P7QUASNVXEB6U2ZUSU2XMK
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Benchmarking x410 with Mellanox with DPDK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LVAKWEZHL5P7QUASNVXEB6U2ZUSU2XMK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1470915311223795651=="

This is a multi-part message in MIME format.

--===============1470915311223795651==
Content-Type: multipart/alternative;
 boundary="b1_2Pm2CbIPXdLcV7jUJv26lCGoetOn90kAJgrXA7AAzk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_2Pm2CbIPXdLcV7jUJv26lCGoetOn90kAJgrXA7AAzk
Content-Type: text/plain; charset=us-ascii

I tried the command without use_dpdk=1, and it worked fine(aside from the underflows and dropped samples) - if that is what you mean by side-step.

If I specify the type/product(and set use_dpdk=1), I still get errors.

`./benchmark_rate --rx_rate 491.52e6 --rx_channels 0 --tx_rate 491.52e6 --tx_channels 0 --args "addr=192.168.10.2,mgmt_addr=192.168.1.254,use_dpdk=1,type=x4xx,product=x410"`

`[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_4.5.0.main-2-ga7657c80`

`[WARNING] [PREFS] Loaded config from /root/.uhd. This location is considered deprecated, consider moving your config file to /root/.config instead.`

`EAL: Detected 32 lcore(s)`

`EAL: Detected 1 NUMA nodes`

`EAL: Multi-process socket /var/run/dpdk/rte/mp_socket`

`EAL: Selected IOVA mode 'PA'`

`EAL: No available hugepages reported in hugepages-1048576kB`

`EAL: Probing VFIO support...`

`EAL: VFIO support initialized`

`EAL: PCI device 0000:06:00.0 on NUMA socket -1`

`EAL:   probe driver: 15b3:1017 net_mlx5`

`EAL: PCI device 0000:06:00.1 on NUMA socket -1`

`EAL:   probe driver: 15b3:1017 net_mlx5`

`[00:00:00.000209] Creating the usrp device with: addr=192.168.10.2,mgmt_addr=192.168.1.254,use_dpdk=1,type=x4xx,product=x410...`

`Error: LookupError: KeyError: No devices found for ----->`

`Device Address:`

`    addr: 192.168.10.2`

`    mgmt_addr: 192.168.1.254`

`    use_dpdk: 1`

`    type: x4xx`

`    product: x410`

--b1_2Pm2CbIPXdLcV7jUJv26lCGoetOn90kAJgrXA7AAzk
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>I tried the command without use_dpdk=3D1, and it worked fine(aside from =
the underflows and dropped samples) - if that is what you mean by side-step=
.</p><p><br></p><p>If I specify the type/product(and set use_dpdk=3D1), I s=
till get errors.</p><p><code>./benchmark_rate --rx_rate 491.52e6 --rx_chann=
els 0 --tx_rate 491.52e6 --tx_channels 0 --args "addr=3D192.168.10.2,mgmt_a=
ddr=3D192.168.1.254,use_dpdk=3D1,type=3Dx4xx,product=3Dx410"</code></p><p><=
code>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; U=
HD_4.5.0.main-2-ga7657c80</code></p><p><code>[WARNING] [PREFS] Loaded confi=
g from /root/.uhd. This location is considered deprecated, consider moving =
your config file to /root/.config instead.</code></p><p><code>EAL: Detected=
 32 lcore(s)</code></p><p><code>EAL: Detected 1 NUMA nodes</code></p><p><co=
de>EAL: Multi-process socket /var/run/dpdk/rte/mp_socket</code></p><p><code=
>EAL: Selected IOVA mode 'PA'</code></p><p><code>EAL: No available hugepage=
s reported in hugepages-1048576kB</code></p><p><code>EAL: Probing VFIO supp=
ort...</code></p><p><code>EAL: VFIO support initialized</code></p><p><code>=
EAL: PCI device 0000:06:00.0 on NUMA socket -1</code></p><p><code>EAL:   pr=
obe driver: 15b3:1017 net_mlx5</code></p><p><code>EAL: PCI device 0000:06:0=
0.1 on NUMA socket -1</code></p><p><code>EAL:   probe driver: 15b3:1017 net=
_mlx5</code></p><p><code>[00:00:00.000209] Creating the usrp device with: a=
ddr=3D192.168.10.2,mgmt_addr=3D192.168.1.254,use_dpdk=3D1,type=3Dx4xx,produ=
ct=3Dx410...</code></p><p><code>Error: LookupError: KeyError: No devices fo=
und for -----&gt;</code></p><p><code>Device Address:</code></p><p><code>   =
 addr: 192.168.10.2</code></p><p><code>    mgmt_addr: 192.168.1.254</code><=
/p><p><code>    use_dpdk: 1</code></p><p><code>    type: x4xx</code></p><p>=
<code>    product: x410</code></p>

--b1_2Pm2CbIPXdLcV7jUJv26lCGoetOn90kAJgrXA7AAzk--

--===============1470915311223795651==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1470915311223795651==--
