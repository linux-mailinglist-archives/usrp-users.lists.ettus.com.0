Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2FF83B0A1
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jan 2024 19:01:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EAC40384E1D
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jan 2024 13:01:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1706119278; bh=GF1zYq1iptWuHwaGv2OVuZJMIDiQnWn2RLudw73gouo=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Qg1BRcjAkpE1MOMXR1Jpf0g33zj3Ivax5u78nYShTLob6B9lyGETYVzkX04rb6rdU
	 h4hp46aULnsLej7XPbVs5CpsVyrDAabjbp+gciajDyuu72HqiuGx1CJv/ipOHSNXwP
	 7c2aBZ2cNZFdIbVIu3L0Qgye5JWOjuXHxsn2oSxa5j1I6wSrw4snylpkMQXuR+3HSw
	 a0zek/hZ519GDu4tT0AhP/YVxDoJ2t54YB21+DIcU8YZZBKfU5tbVwDfNVGeD8iAvP
	 t7qkJT+D3JsrMSshuvPs6UMJlEY7i19qAnCMYjaXEByx0iSOhoF9GW0hKMs4o1Gt8T
	 PDJ0/Crk4upew==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9217B3849AF
	for <usrp-users@lists.ettus.com>; Wed, 24 Jan 2024 13:00:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1706119222; bh=saAJKzXh65xuvvu2uQJfEXQkzQpqhwaNstr+WBGyqe0=;
	h=Date:To:From:Subject:From;
	b=p/7o+K0Ffsfv5mOQPDlu3d/TH6vFsgjPvGvEbUf7Oo2M6CUW/Gvjyu+tXFjI4XAKp
	 Gf6GHiEFGAfZVu4ePEvSyk/f64Ifr7xaBSiYHiVz9XhF6ArhTkB+HADHFkO1DdFvuw
	 PBUYtx2Kpk0Nt/q9ojAgry0WWWiB90Ty/FQAehx94wdflsgeyTA3bPzx+8oHKKFXUL
	 avHyuOq8xPpwq0msYgfsFH9F6uSlqd/EHu0kTItkjqhUw7UnO/DNm3STrxIoEIz8ri
	 8gMWoUcBes1V/VjsUSbx1HYztYlsV6bcWk8z4QWE/704b+3PfL503JifOOnT48ZUAA
	 hZZ/seEqA/g/g==
Date: Wed, 24 Jan 2024 18:00:22 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <jcruQmHQZeKDZZaLSX1gllzmNKa3cT9CH517aGVnU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 6GZBDBOZJ3ROXWHDOQ5VXRTST6JUMQFK
X-Message-ID-Hash: 6GZBDBOZJ3ROXWHDOQ5VXRTST6JUMQFK
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Getting Dropped packets
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6GZBDBOZJ3ROXWHDOQ5VXRTST6JUMQFK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7641729865177810373=="

This is a multi-part message in MIME format.

--===============7641729865177810373==
Content-Type: multipart/alternative;
 boundary="b1_jcruQmHQZeKDZZaLSX1gllzmNKa3cT9CH517aGVnU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_jcruQmHQZeKDZZaLSX1gllzmNKa3cT9CH517aGVnU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I currently have an application where I am burst receiving(about 80 micro=
 per milli second) with the ettus X410 at the full sample rate across 4 c=
hannels. I am getting occasional issues where data is dropped (terminal m=
essages show =E2=80=9CD=E2=80=9D error). I have been able to get DPDK to =
work but that does not seem to have resolved the issue. By my calculation=
, this comes out to a data rate of 5.12\*10^9 Gbit/s

The current host computer has an i9-13900KS, Nvme, 128 GB of RAM, and I a=
m currently using a Mellanox 100 Gbit QSFP network card

I would say in general, I am able to save just under 100% of all the data=
 I request from the x410, however, for our application, it is very critic=
al that we do not lose any data. If I run the default CG_400 image with b=
enchmark rate(1 channel only), I do not get dropped data. The only signif=
icant difference between my custom host software and benchmark_rate.cpp i=
s I save data to a .dat file(similar to rx_samples_to_file.cpp) .

I have looked at the tuning notes here https://kb.ettus.com/Getting_Start=
ed_with_DPDK_and_UHD. I have tried DPDK, core isolation/ disabling system=
 interrupts, nice priority, multithreading/uhd::set_thread_priority, but =
none have seemed to resolve the issue.=20

What I have noticed is that when I get a =E2=80=9CD=E2=80=9D error, it co=
rresponds to recv() returning a number of samples less than samples per b=
uffer, followed by a return value of 0.

My current assumption is that the task of saving data to NVME is creating=
 a critical path that cant be resolved with thread prioritization or  mul=
tithreading. Or, maybe I am just not doing thread priority or multithread=
ing correctly. Either way, it is strange to me that recv() can return a n=
umber of samples less than buffer outside of a stop signal or timeout sig=
nal.

Any help/suggestion are appreciated,

Joe

--b1_jcruQmHQZeKDZZaLSX1gllzmNKa3cT9CH517aGVnU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p><br></p><p>I currently have an application where I am burst=
 receiving(about 80 micro per milli second) with the ettus X410 at the full=
 sample rate across 4 channels. I am getting occasional issues where data i=
s dropped (terminal messages show =E2=80=9CD=E2=80=9D error). I have been a=
ble to get DPDK to work but that does not seem to have resolved the issue. =
By my calculation, this comes out to a data rate of 5.12*10^9 Gbit/s</p><p>=
The current host computer has an i9-13900KS, Nvme, 128 GB of RAM, and I am =
currently using a Mellanox 100 Gbit QSFP network card</p><p>I would say in =
general, I am able to save just under 100% of all the data I request from t=
he x410, however, for our application, it is very critical that we do not l=
ose any data. If I run the default CG_400 image with benchmark rate(1 chann=
el only), I do not get dropped data. The only significant difference betwee=
n my custom host software and benchmark_rate.cpp is I save data to a .dat f=
ile(similar to rx_samples_to_file.cpp) .</p><p>I have looked at the tuning =
notes here https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD. I have t=
ried DPDK, core isolation/ disabling system interrupts, nice priority, mult=
ithreading/uhd::set_thread_priority, but none have seemed to resolve the is=
sue. </p><p>What I have noticed is that when I get a =E2=80=9CD=E2=80=9D er=
ror, it corresponds to recv() returning a number of samples less than sampl=
es per buffer, followed by a return value of 0.</p><p>My current assumption=
 is that the task of saving data to NVME is creating a critical path that c=
ant be resolved with thread prioritization or  multithreading. Or, maybe I =
am just not doing thread priority or multithreading correctly. Either way, =
it is strange to me that recv() can return a number of samples less than bu=
ffer outside of a stop signal or timeout signal.</p><p><br></p><p>Any help/=
suggestion are appreciated,</p><p>Joe</p><p><br></p><p><br></p><p><br></p>

--b1_jcruQmHQZeKDZZaLSX1gllzmNKa3cT9CH517aGVnU--

--===============7641729865177810373==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7641729865177810373==--
