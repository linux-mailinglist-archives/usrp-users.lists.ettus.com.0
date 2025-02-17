Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 258C9A388B4
	for <lists+usrp-users@lfdr.de>; Mon, 17 Feb 2025 17:06:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 19F793863A5
	for <lists+usrp-users@lfdr.de>; Mon, 17 Feb 2025 11:06:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739808390; bh=44fx6WasmDWhlE65m4SYO+KH2p26JFbFGpSgZGimJIw=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=SBL9aWV1tAb2wpmhWwnVL8T19lNy8J39oZMdUENH4qKwYA7aZM96bgVG4s2mA/BoG
	 Xuho2I6asgjMvWVaasse2bX8dxJL5RXmyPBKNPx6dfWeINCSAEHFERlir8lJHXuXAv
	 c6XyUUJGcSsti0paXC6SkvAqZD6cvhNr+UAP4+fXMIMpIUepQwrb1xBZiJY/rYy5uO
	 dBnrKjlP909kKyKIvmLqp3UD7AmBYjxrtSb5FLHsRlGqLgjcSck2TuPTbdmpqpGHAi
	 84EBz0OJvBJYpmfCiMEMlnpBhT9Lldf8iz4o9aac7EUgqWyJ4PReY6oCWW9OR6m5IA
	 8a0u0fsHhqT+g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F12CC385CE7
	for <usrp-users@lists.ettus.com>; Mon, 17 Feb 2025 10:58:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739807913; bh=89QV7pCZphX2d1fnuPe7lOZgma9K5Sc88RfusDYHeRg=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=S3mXM+r19jcqtBomO8YdAc0/TSubCy/1BSajQ9j0F4otZTkOzOcXHNoQwEielj9cG
	 Kqmln/LBJNHfIJZAlAnnwze7QZA860DYOzBYXCMYzH51m3rx7jCuMJNH938MEAMhl6
	 +XWeE/GMhghFKiZbRl3h0Cpl5U+fdjbEYR4qOWn2q94Q7VIqUWd+btkQSKVHvVwvhA
	 GOmHf/2g8b74WZL8jNuH84AS2lg2TOMYC2v5sKYQ+Lnr+DC3kIrBPAJg72vBN2UI39
	 gcyBpTFKBwjfPnYPrg7xapKzq1AnmNkQuahREQg9UOPzv5VexdUwkV0Z9g/vajAJFx
	 PDfMvZNX7TReg==
Date: Mon, 17 Feb 2025 15:58:32 +0000
To: usrp-users@lists.ettus.com
From: cyberphox@gmail.com
Message-ID: <IyZstKxnoxPrwyjlaMj82d0eDiB1iD89qeantfVdCzI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: SA1P110MB1754C2446AE77DCEF0A297D7B7FBA@SA1P110MB1754.NAMP110.PROD.OUTLOOK.COM
MIME-Version: 1.0
Message-ID-Hash: J5UG6AES6BMRNBHA6BYINQFE27D4ZBPK
X-Message-ID-Hash: J5UG6AES6BMRNBHA6BYINQFE27D4ZBPK
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reading/Write registers - Timeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/J5UG6AES6BMRNBHA6BYINQFE27D4ZBPK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7993872895087869673=="

This is a multi-part message in MIME format.

--===============7993872895087869673==
Content-Type: multipart/alternative;
 boundary="b1_IyZstKxnoxPrwyjlaMj82d0eDiB1iD89qeantfVdCzI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_IyZstKxnoxPrwyjlaMj82d0eDiB1iD89qeantfVdCzI
Content-Type: text/plain; charset=us-ascii

Hi David,

At the start where we initialise our siggen block there this snippet of code:

---

```
std::cout << "MB Clock Source: " << graph->get_mb_controller(0)->get_clock_source() << std::endl;
```

```
std::cout << "MB Time Source: " << graph->get_mb_controller(0)->get_time_source() << std::endl;
```

```
std::cout << "MB Sync Source: " << graph->get_mb_controller(0)->get_sync_source().to_pp_string() << std::endl;
```

```
std::cout << "MB Ref lock status: " << graph->get_mb_controller(0)->get_sensor("ref_locked").to_pp_string() << std::endl;
```

```
std::cout << graph->get_mb_controller(0)->get_sensor("gps_locked").to_pp_string() << std::endl;
```

```
// Initialise the USRP time to zero on the next 1 PPS
```

```
graph->get_mb_controller(0)->get_timekeeper(0)->set_time_next_pps(uhd::time_spec_t(0.0));
```

```
// Call this to synchronise all the RFNoC devices (needed for phase alignment?)
```

```
bool synchronised = graph->synchronize_devices(uhd::time_spec_t(2.0), false);

```

---


Then when setting up the PLL's, to try and get phase coherence.

---

```


const uhd::time_spec_t lastPPS = linux_uhd::get_graph()->get_mb_controller(0)->get_timekeeper(0)->get_time_last_pps();
const uhd::time_spec_t now = linux_uhd::get_graph()->get_mb_controller(0)->get_timekeeper(0)->get_time_now();
const uhd::time_spec_t span = uhd::time_spec_t(1.0);

// Specify that the tune should occur aligned with the next 1 PPS
const uhd::time_spec_t command_time = (lastPPS + span);

// Clear any previous timed commands
radio_ctrl[radio_id]->clear_command_time(0);

// Set the time for the LO tune to occur
radio_ctrl[radio_id]->set_command_time(command_time, 0);

// Set the LO frequency in Hz
actual_lo_frequency = radio_ctrl[radio_id]->set_tx_frequency(....


```

---

I am not sure if this could affect the peek and pokes

thank you 

Marino

--b1_IyZstKxnoxPrwyjlaMj82d0eDiB1iD89qeantfVdCzI
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi David,</p><p>At the start where we initialise our siggen block there =
this snippet of code:</p><div contenteditable=3D"false"><hr></div><pre><cod=
e>std::cout &lt;&lt; "MB Clock Source: " &lt;&lt; graph-&gt;get_mb_controll=
er(0)-&gt;get_clock_source() &lt;&lt; std::endl;</code></pre><pre><code>std=
::cout &lt;&lt; "MB Time Source: " &lt;&lt; graph-&gt;get_mb_controller(0)-=
&gt;get_time_source() &lt;&lt; std::endl;</code></pre><pre><code>std::cout =
&lt;&lt; "MB Sync Source: " &lt;&lt; graph-&gt;get_mb_controller(0)-&gt;get=
_sync_source().to_pp_string() &lt;&lt; std::endl;</code></pre><pre><code>st=
d::cout &lt;&lt; "MB Ref lock status: " &lt;&lt; graph-&gt;get_mb_controlle=
r(0)-&gt;get_sensor("ref_locked").to_pp_string() &lt;&lt; std::endl;</code>=
</pre><pre><code>std::cout &lt;&lt; graph-&gt;get_mb_controller(0)-&gt;get_=
sensor("gps_locked").to_pp_string() &lt;&lt; std::endl;</code></pre><pre><c=
ode>// Initialise the USRP time to zero on the next 1 PPS</code></pre><pre>=
<code>graph-&gt;get_mb_controller(0)-&gt;get_timekeeper(0)-&gt;set_time_nex=
t_pps(uhd::time_spec_t(0.0));</code></pre><pre><code>// Call this to synchr=
onise all the RFNoC devices (needed for phase alignment?)</code></pre><pre>=
<code>bool synchronised =3D graph-&gt;synchronize_devices(uhd::time_spec_t(=
2.0), false);

<br></code></pre><div contenteditable=3D"false"><hr></div><p>
Then when setting up the PLL's, to try and get phase coherence.
<br></p><div contenteditable=3D"false"><hr></div><pre><code>

const uhd::time_spec_t lastPPS =3D linux_uhd::get_graph()-&gt;get_mb_contro=
ller(0)-&gt;get_timekeeper(0)-&gt;get_time_last_pps();
const uhd::time_spec_t now =3D linux_uhd::get_graph()-&gt;get_mb_controller=
(0)-&gt;get_timekeeper(0)-&gt;get_time_now();
const uhd::time_spec_t span =3D uhd::time_spec_t(1.0);

// Specify that the tune should occur aligned with the next 1 PPS
const uhd::time_spec_t command_time =3D (lastPPS + span);

// Clear any previous timed commands
radio_ctrl[radio_id]-&gt;clear_command_time(0);

// Set the time for the LO tune to occur
radio_ctrl[radio_id]-&gt;set_command_time(command_time, 0);

// Set the LO frequency in Hz
actual_lo_frequency =3D radio_ctrl[radio_id]-&gt;set_tx_frequency(....


<br></code></pre><div contenteditable=3D"false"><hr></div><p>I am not sure =
if this could affect the peek and pokes</p><p><br></p><p>thank you </p><p>M=
arino</p>

--b1_IyZstKxnoxPrwyjlaMj82d0eDiB1iD89qeantfVdCzI--

--===============7993872895087869673==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7993872895087869673==--
